#!/usr/bin/env python3
"""
parse-qa — Extrahera strukturerade fel/varningar från IG Publisher-output.

Läser qa.json (nyare IG Publisher) eller qa.html (äldre) och/eller
skannar build.log för ERROR/WARN/FATAL-rader. Skriver ett JSON-dokument
som Claude kan läsa och agera på.

Användning (körs av build.sh):
    parse-qa --qa-json output/qa.json --domain my.domain --log build.log --output qa-errors.json
    parse-qa --qa-html output/qa.html --domain my.domain --log build.log --output qa-errors.json
    parse-qa                          --domain my.domain --log build.log --output qa-errors.json
"""

import argparse
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path


# ── Log-parsning ──────────────────────────────────────────────────────────────

# IG Publisher loggar ser ut ungefär så här:
#   00:01:23.456 [main] INFO  ig.publisher.Publisher - Processing ...
#   00:01:24.789 [main] ERROR ig.publisher.Publisher - Error processing ...
# Alternativt (äldre format):
#   ERROR: ...
#   WARN: ...
LOG_PATTERN = re.compile(
    r'(?:'
    r'\d{2}:\d{2}:\d{2}\.\d+ \[.*?\] (ERROR|WARN|FATAL|INFO)\s+\S+ - (.*)'
    r'|'
    r'(ERROR|WARN|FATAL|HINT|INFO):\s*(.*)'
    r')', re.IGNORECASE
)


def parse_log(log_path: Path) -> dict:
    """Extrahera ERROR/WARN/FATAL ur build.log."""
    issues = {"fatal": [], "errors": [], "warnings": [], "hints": []}
    if not log_path or not log_path.exists():
        return issues

    with open(log_path, encoding="utf-8", errors="replace") as f:
        for line in f:
            m = LOG_PATTERN.match(line.strip())
            if not m:
                continue
            level = (m.group(1) or m.group(3) or "").upper()
            msg   = (m.group(2) or m.group(4) or "").strip()
            if not msg:
                continue
            if level == "FATAL":
                issues["fatal"].append(msg)
            elif level == "ERROR":
                issues["errors"].append(msg)
            elif level == "WARN":
                issues["warnings"].append(msg)
            elif level == "HINT":
                issues["hints"].append(msg)

    return issues


# ── qa.json-parsning ─────────────────────────────────────────────────────────

def parse_qa_json(qa_json_path: Path) -> dict:
    """Läs maskinläsbar qa.json (IG Publisher >= 1.4).

    IG Publisher qa.json kan ha olika format beroende på version:
    - Äldre: {"errors": N, "warnings": N, "hints": N}  (enbart summor)
    - Nyare: {"messages": [{level, message, location, ...}]}
    - Alternativt: {"issues": [...]} eller {"results": [...]}
    """
    with open(qa_json_path, encoding="utf-8") as f:
        raw = json.load(f)

    issues = {"fatal": [], "errors": [], "warnings": [], "hints": []}

    # Försök läsa individuella meddelanden (nyare format)
    messages = (
        raw.get("messages") or
        raw.get("issues") or
        raw.get("results") or
        []
    )
    for item in messages:
        if not isinstance(item, dict):
            continue
        level = (item.get("level") or item.get("severity") or item.get("type") or "").upper()
        msg   = (item.get("message") or item.get("details") or item.get("text") or "")
        location = item.get("location") or item.get("source") or item.get("file") or ""
        full = f"{location}: {msg}" if location else msg
        if level in ("FATAL", "FATALE"):
            issues["fatal"].append(full)
        elif level in ("ERROR",):
            issues["errors"].append(full)
        elif level in ("WARN", "WARNING"):
            issues["warnings"].append(full)
        elif level in ("HINT", "INFORMATION", "INFO", "NOTE"):
            issues["hints"].append(full)

    # Fallback: top-level counts (äldre format — returnerar summor, inga detaljer)
    # Returnerar en sentinel-sträng så att build.sh kan försöka qa.html istället.
    if not any(issues.values()):
        has_counts = False
        for count_key, issue_key in [
            ("errors", "errors"), ("errorCount", "errors"),
            ("warnings", "warnings"), ("warningCount", "warnings"),
            ("hints", "hints"), ("hintCount", "hints"),
        ]:
            count = raw.get(count_key, 0)
            if isinstance(count, int) and count > 0:
                has_counts = True
                issues[issue_key].append(f"__COUNT_ONLY_{count}__")
        if not has_counts:
            # Helt tomt — ingen info alls
            pass

    return issues


# ── qa.html-parsning ─────────────────────────────────────────────────────────

def parse_qa_html(qa_html_path: Path) -> dict:
    """Extrahera fel ur qa.html med BeautifulSoup (fallback: regex)."""
    issues = {"fatal": [], "errors": [], "warnings": [], "hints": []}

    with open(qa_html_path, encoding="utf-8", errors="replace") as f:
        content = f.read()

    try:
        from bs4 import BeautifulSoup
        soup = BeautifulSoup(content, "html.parser")

        # Hitta tabeller med errors/warnings — IG Publisher märker dem med
        # CSS-klasser eller h2/h3-rubriker
        current_level = None
        for el in soup.find_all(["h2", "h3", "tr"]):
            if el.name in ("h2", "h3"):
                text = el.get_text(strip=True).lower()
                if "fatal" in text:
                    current_level = "fatal"
                elif "error" in text:
                    current_level = "errors"
                elif "warn" in text:
                    current_level = "warnings"
                elif "hint" in text or "info" in text:
                    current_level = "hints"
                else:
                    current_level = None
            elif el.name == "tr" and current_level:
                cells = [td.get_text(" ", strip=True) for td in el.find_all("td")]
                if cells:
                    msg = " | ".join(c for c in cells if c)
                    if msg:
                        issues[current_level].append(msg)

    except ImportError:
        # BeautifulSoup inte installerat — fall tillbaka till regex
        # Extrahera rader i error/warning-tabeller med enkel regex
        for level, pattern in [
            ("errors",   r'class=["\']error["\'][^>]*>([^<]+)'),
            ("warnings", r'class=["\']warning["\'][^>]*>([^<]+)'),
            ("fatal",    r'class=["\']fatal["\'][^>]*>([^<]+)'),
        ]:
            for m in re.finditer(pattern, content, re.IGNORECASE):
                issues[level].append(m.group(1).strip())

        # Enkel fallback: leta efter kända fraser
        if not any(issues.values()):
            counts = re.findall(r'(\d+)\s+(error|warn|fatal)', content, re.IGNORECASE)
            for count, kind in counts:
                kind = kind.lower() + "s"
                issues.setdefault(kind, []).append(
                    f"({count} {kind} — installera beautifulsoup4 för detaljer)"
                )

    return issues


# ── Sammanställ output-JSON ──────────────────────────────────────────────────

def build_output(domain_id: str, issues: dict, log_issues: dict, meta: dict) -> dict:
    """Bygg det strukturerade JSON-dokument som återförs till Claude."""

    # Slå ihop issues från QA-rapport och logg (deduplicera)
    # Ta bort sentinel-strängar __COUNT_ONLY_N__ — dessa ersätts av log_issues
    def clean(lst):
        return [x for x in lst if not x.startswith("__COUNT_ONLY_")]

    # Extrahera rena count från sentinels (används i summary om inga detaljer finns)
    def count_from_sentinel(lst):
        for x in lst:
            if x.startswith("__COUNT_ONLY_"):
                try:
                    return int(x.split("_")[-1])
                except ValueError:
                    pass
        return 0

    merged = {}
    for key in ("fatal", "errors", "warnings", "hints"):
        seen = set()
        merged[key] = []
        cleaned_qa = clean(issues.get(key, []))
        for item in cleaned_qa + list(log_issues.get(key, [])):
            if item not in seen:
                seen.add(item)
                merged[key].append(item)

    # Om inga detaljerade meddelanden alls men vi har counts från qa.json — bevara counts
    for key in ("fatal", "errors", "warnings", "hints"):
        if not merged[key]:
            n = count_from_sentinel(issues.get(key, []))
            if n:
                merged[key] = [f"({n} {key} — se qa.html för detaljer)"]

    summary = {}
    for key in ("fatal", "errors", "warnings", "hints"):
        lst = merged[key]
        if len(lst) == 1 and lst[0].startswith("(") and "se qa.html" in lst[0]:
            # Sentinel — extrahera antal
            try:
                summary[key] = int(lst[0].split()[0][1:])
            except (ValueError, IndexError):
                summary[key] = 1
        else:
            summary[key] = len(lst)

    passed = summary["fatal"] == 0 and summary["errors"] == 0

    return {
        "domain_id": domain_id,
        "parsed_at": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "passed": passed,
        "summary": summary,
        "issues": merged,
        "meta": meta,
        # Komprimerad lista för snabb Claude-läsning (max 20 fel)
        "top_issues": (
            [f"[FATAL] {m}" for m in merged["fatal"][:5]] +
            [f"[ERROR] {m}" for m in merged["errors"][:10]] +
            [f"[WARN]  {m}" for m in merged["warnings"][:5]]
        )[:20],
    }


# ── CLI ───────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--qa-json",  type=Path, help="Sökväg till output/qa.json")
    parser.add_argument("--qa-html",  type=Path, help="Sökväg till output/qa.html")
    parser.add_argument("--log",      type=Path, help="Sökväg till build.log")
    parser.add_argument("--domain",   required=True, help="Domän-ID")
    parser.add_argument("--output",   type=Path, required=True, help="Utdatafil (JSON)")
    args = parser.parse_args()

    qa_issues = {}
    meta = {}

    # Försök qa.json först; om det bara innehåller summor (COUNT_ONLY-sentinels),
    # försök också qa.html för individuella meddelanden.
    if args.qa_json and args.qa_json.exists():
        meta["source"] = str(args.qa_json)
        qa_issues = parse_qa_json(args.qa_json)

        # Kolla om vi bara fick summor — prova då qa.html för detaljer
        is_counts_only = all(
            not v or all(x.startswith("__COUNT_ONLY_") for x in v)
            for v in qa_issues.values()
        )
        if is_counts_only and args.qa_html and args.qa_html.exists():
            html_issues = parse_qa_html(args.qa_html)
            if any(html_issues.values()):
                meta["source"] = f"{args.qa_json} + {args.qa_html}"
                # Bevara summor från qa.json, men byt ut sentinels mot HTML-detaljer
                for key in ("fatal", "errors", "warnings", "hints"):
                    if html_issues.get(key):
                        qa_issues[key] = html_issues[key]
    elif args.qa_html and args.qa_html.exists():
        meta["source"] = str(args.qa_html)
        qa_issues = parse_qa_html(args.qa_html)
    else:
        meta["source"] = "log-only"

    log_issues = parse_log(args.log) if args.log else {}

    output = build_output(args.domain, qa_issues, log_issues, meta)

    args.output.parent.mkdir(parents=True, exist_ok=True)
    with open(args.output, "w", encoding="utf-8") as f:
        json.dump(output, f, indent=2, ensure_ascii=False)

    # Skriv sammanfattning till stdout
    s = output["summary"]
    status = "PASS" if output["passed"] else "FAIL"
    print(f"[parse-qa] {args.domain}: {status} — "
          f"fatal={s['fatal']} errors={s['errors']} warnings={s['warnings']} hints={s['hints']}")
    if output["top_issues"]:
        print("[parse-qa] Topp-problem:")
        for issue in output["top_issues"][:10]:
            print(f"  {issue}")


if __name__ == "__main__":
    main()
