#!/usr/bin/env python3
"""
set_ig_version.py — för in domänens version från contracts-registry.json i IG:n.

Registret är källan: `source_tag` (Bitbucket-taggen IG:n byggs från),
`domain_version` (TKB:ns etikett, t.ex. "2.0") och `ig_version` (SemVer
enligt scripts/tkb_version.py, t.ex. "2.0.0"). Skriptet skriver:

  sushi-config.yaml  version, status, releaseLabel och apply-version: false
  FSH-resurser       * ^version: kontraktets major.minor på kontraktens logiska
                     modeller (registrets contracts), annars IG:ns version
  index.md           en versionsrad under rubriken, mellan markörerna nedan

Kör om efter varje ändring av registrets versionsfält:
    scripts/set_ig_version.py igs/TKB_x [igs/TKB_y ...]
    scripts/set_ig_version.py --all
"""

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
REGISTRY = ROOT / "contracts-registry.json"
MARK_START = "<!-- tkb-version -->"
MARK_END = "<!-- /tkb-version -->"


def release_label(ig_version: str) -> str:
    pre = ig_version.partition("-")[2]
    if not pre:
        return "release"
    if pre.startswith("rc"):
        return "RC"
    if pre.endswith("snapshot"):
        return "snapshot"
    return pre.split(".")[0]


def set_key(text: str, key: str, value: str) -> str:
    pat = re.compile(rf"^{key}:.*$", re.M)
    line = f"{key}: {value}"
    if pat.search(text):
        return pat.sub(line, text, count=1)
    return re.sub(r"^(version:.*)$", rf"\1\n{line}", text, count=1, flags=re.M)


def update_config(ig: Path, entry: dict):
    cfg = ig / "sushi-config.yaml"
    text = cfg.read_text(encoding="utf-8")
    v = entry["ig_version"]
    text = set_key(text, "version", v)
    text = set_key(text, "status", "active" if "-" not in v else "draft")
    text = set_key(text, "releaseLabel", release_label(v))
    if re.search(r"^\s+apply-version:", text, re.M):
        text = re.sub(r"^(\s+apply-version:).*$", r"\1 false", text, count=1, flags=re.M)
    else:
        text = re.sub(r"^parameters:\n", "parameters:\n  apply-version: false\n", text, count=1, flags=re.M)
    cfg.write_text(text, encoding="utf-8")


def contract_versions(entry: dict) -> dict:
    return {c["id"].lower(): str(c["version"]) for c in entry.get("contracts", [])}


def update_resources(ig: Path, entry: dict) -> int:
    """`* ^version` på varje Logical, CodeSystem och ValueSet.

    En logisk modell för ett tjänstekontrakt (X, XRequest, XResponse) får
    kontraktets major.minor; övriga resurser får IG:ns version. apply-version
    är avstängt, så det som står här är det som publiceras.
    """
    versions = contract_versions(entry)
    n = 0
    for f in sorted((ig / "input" / "fsh").rglob("*.fsh")):
        text = f.read_text(encoding="utf-8")
        parts = re.split(r"(?=^(?:Logical|CodeSystem|ValueSet|Invariant):\s*\S+)", text, flags=re.M)
        changed = False
        for i, part in enumerate(parts):
            m = re.match(r"(Logical|CodeSystem|ValueSet):\s*(\S+)", part)
            if not m:
                continue
            ver = entry["ig_version"]
            if m.group(1) == "Logical":
                base = re.sub(r"(Request|Response)$", "", m.group(2)).lower()
                ver = versions.get(base) or versions.get(m.group(2).lower()) or ver
            rule = f'* ^version = "{ver}"'
            if re.search(r"^\* \^version\s*=.*$", part, re.M):
                new = re.sub(r"^\* \^version\s*=.*$", rule, part, count=1, flags=re.M)
            else:
                first = re.search(r"^\*", part, re.M)
                if first:
                    new = part[:first.start()] + rule + "\n" + part[first.start():]
                else:
                    body = part.rstrip("\n")
                    new = body + "\n" + rule + "\n" + part[len(body):].lstrip("\n") + ("\n" if part.endswith("\n\n") else "")
            if new != part:
                parts[i] = new
                changed = True
            n += 1
        if changed:
            f.write_text("".join(parts), encoding="utf-8")
    return n


PAGES_BASE = "https://oskthu2.github.io/tkb-converter/"


def pages_url(entry: dict) -> str:
    """Publicerad adress: TKB_x/ för aktuell version, TKB_x/<semver>/ för en äldre major."""
    parts = Path(entry["output_dir"].rstrip("/")).parts  # igs, TKB_x[, versions, v]
    path = "/".join([parts[1]] + list(parts[3:]))
    return f"{PAGES_BASE}{path}/index.html"


def other_versions(entry: dict, domains: list) -> list:
    """Övriga levande huvudversioner av samma domän, nyaste först."""
    base = entry.get("version_of") or entry["id"]
    out = [d for d in domains
           if d is not entry and (d["id"] == base or d.get("version_of") == base) and d.get("output_dir")]
    return sorted(out, key=lambda d: [int(x) if x.isdigit() else 0 for x in re.split(r"[.-]", d.get("ig_version") or "0")],
                  reverse=True)


def update_index(ig: Path, entry: dict, domains: list = ()):
    idx = ig / "input" / "pagecontent" / "index.md"
    if not idx.exists():
        return
    text = idx.read_text(encoding="utf-8")
    tag = entry.get("source_tag")
    commit = (entry.get("source_commit") or "")[:12]
    if tag and entry.get("source_kind") == "tag":
        src = f"Bitbucket-tagg `{tag}`"
    elif tag:
        src = f"Bitbucket-commit `{commit}`, efter taggen `{tag}`"
    else:
        src = f"Bitbucket-commit `{commit}` (ingen tagg)"
    block = (f"{MARK_START}\n**TKB-version:** {entry['domain_version']} · **IG-version:** {entry['ig_version']} · "
             f"**Källa:** {src}")
    others = other_versions(entry, list(domains))
    if others:
        links = ", ".join(f"[{d['domain_version']}]({pages_url(d)})" for d in others)
        block += f" · **Andra huvudversioner:** {links}"
    block += f"\n{MARK_END}"
    if MARK_START in text:
        text = re.sub(re.escape(MARK_START) + r".*?" + re.escape(MARK_END), lambda _: block, text, count=1, flags=re.S)
    else:
        m = re.search(r"^# .*\n", text, re.M)
        at = m.end() if m else 0
        text = text[:at] + "\n" + block + "\n" + text[at:]
    text = re.sub(r"(för tjänstedomänen \*\*[^*\n]+\*\* version )\S+?(\.?)$",
                  lambda m: m.group(1) + entry["domain_version"] + m.group(2), text, flags=re.M)
    idx.write_text(text, encoding="utf-8")


def main():
    args = sys.argv[1:]
    if not args:
        sys.exit(__doc__)
    domains = json.loads(REGISTRY.read_text(encoding="utf-8"))["domains"]
    by_dir = {d["output_dir"].rstrip("/"): d for d in domains if d.get("output_dir")}
    dirs = sorted(by_dir) if args == ["--all"] else [a.rstrip("/") for a in args]
    for rel in dirs:
        entry = by_dir.get(rel)
        if not entry or not entry.get("ig_version"):
            print(f"{rel}: ingen ig_version i registret — hoppar över")
            continue
        ig = ROOT / rel
        update_config(ig, entry)
        n = update_resources(ig, entry)
        update_index(ig, entry, domains)
        print(f"{rel}: {entry['ig_version']} ({n} resurser)")


if __name__ == "__main__":
    main()
