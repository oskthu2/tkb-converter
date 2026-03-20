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
    """Läs maskinläsbar qa.json (IG Publisher >= 1.4)."""
    with open(qa_json_path, encoding="utf-8") as f:
        raw = json.load(f)

    issues = {"fatal": [], "errors": [], "warnings": [], "hints": []}

    # Format varierar mellan versioner — försök flera kända strukturer
    messages = (
        raw.get("messages") or
        raw.get("issues") or
        raw.get("results") or
        []
    )
    for item in messages:
        level = (item.get("level") or item.get("severity") or "").upper()
        msg   = (item.get("message") or item.get("details") or item.get("text") or "")
        location = item.get("location") or item.get("source") or ""
        full = f"{location}: {msg}" if location else msg
        if level in ("FATAL", "FATALE"):
            issues["fatal"].append(full)
        elif level in ("ERROR",):
            issues["errors"].append(full)
        elif level in ("WARN", "WARNING"):
            issues["warnings"].append(full)
        elif level in ("HINT", "INFORMATION", "INFO"):
            issues["hints"].append(full)

    # Fallback: top-level counts
    if not any(issues.values()):
        for key in ("errors", "warnings", "hints"):
            count = raw.get(key, 0)
            if count:
                issues[key].append(f"({count} {key} — se qa.html för detaljer)")

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
    merged = {}
    for key in ("fatal", "errors", "warnings", "hints"):
        seen = set()
        merged[key] = []
        for item in list(issues.get(key, [])) + list(log_issues.get(key, [])):
            if item not in seen:
                seen.add(item)
                merged[key].append(item)

    summary = {k: len(v) for k, v in merged.items()}
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

    if args.qa_json and args.qa_json.exists():
        meta["source"] = str(args.qa_json)
        qa_issues = parse_qa_json(args.qa_json)
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
