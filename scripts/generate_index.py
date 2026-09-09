#!/usr/bin/env python3
"""
generate_index.py — bygger rot-index.html för GitHub Pages-sajten som listar
alla byggda FHIR IG:ar med status (SUSHI/IG Publisher/QA) och länkar in till
varje IG:s egen publicerade sida.

Läser qa-results/<slug>/status.json + qa-errors.json (skrivna av build_ig.sh)
och skriver <site>/index.html.
"""

import argparse
import html
import json
import re
from pathlib import Path


def read_title(ig_dir: Path) -> str:
    cfg = ig_dir / "sushi-config.yaml"
    if not cfg.exists():
        return ig_dir.name
    m = re.search(r'^title:\s*"?([^"\n]+)"?\s*$', cfg.read_text(encoding="utf-8"), re.MULTILINE)
    return m.group(1).strip() if m else ig_dir.name


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--qa-results", type=Path, required=True)
    parser.add_argument("--site", type=Path, required=True)
    args = parser.parse_args()

    entries = []
    for status_file in sorted(args.qa_results.glob("*/status.json")):
        status = json.loads(status_file.read_text(encoding="utf-8"))
        slug = status["slug"]
        qa_file = status_file.parent / "qa-errors.json"
        qa = json.loads(qa_file.read_text(encoding="utf-8")) if qa_file.exists() else {}
        summary = qa.get("summary", {})
        entries.append({
            "slug": slug,
            "title": read_title(Path(status["dir"])),
            "status": status["status"],
            "passed": qa.get("passed", status["status"] == "success"),
            "fatal": summary.get("fatal", 0),
            "errors": summary.get("errors", 0),
            "warnings": summary.get("warnings", 0),
            "hints": summary.get("hints", 0),
            "ran_at": status.get("ran_at", ""),
        })

    entries.sort(key=lambda e: e["title"].lower())

    n_pass = sum(1 for e in entries if e["passed"])
    n_fail = len(entries) - n_pass

    def badge(e):
        if e["passed"]:
            return '<span class="badge pass">✓ OK</span>'
        return f'<span class="badge fail">✗ {e["fatal"]} fatal / {e["errors"]} fel</span>'

    rows = "\n".join(
        f'''<tr>
      <td><a href="{html.escape(e["slug"])}/index.html">{html.escape(e["title"])}</a></td>
      <td>{badge(e)}</td>
      <td>{e["warnings"]}</td>
      <td><a href="{html.escape(e["slug"])}/qa.html">qa.html</a></td>
    </tr>'''
        for e in entries
    )

    page = f"""<!doctype html>
<html lang="sv">
<head>
<meta charset="utf-8">
<title>Inera TKB → FHIR IG:ar</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  body {{ font-family: -apple-system, Segoe UI, Helvetica, Arial, sans-serif; max-width: 960px; margin: 2rem auto; padding: 0 1rem; color: #1a1a1a; }}
  h1 {{ font-size: 1.5rem; }}
  .summary {{ color: #555; margin-bottom: 1.5rem; }}
  table {{ width: 100%; border-collapse: collapse; }}
  th, td {{ text-align: left; padding: 0.5rem 0.75rem; border-bottom: 1px solid #ddd; }}
  th {{ background: #f5f5f5; }}
  a {{ color: #0b5fff; text-decoration: none; }}
  a:hover {{ text-decoration: underline; }}
  .badge {{ padding: 0.15rem 0.5rem; border-radius: 0.25rem; font-size: 0.85rem; font-weight: 600; }}
  .badge.pass {{ background: #e3f7e8; color: #147a34; }}
  .badge.fail {{ background: #fde8e8; color: #a3231d; }}
  footer {{ margin-top: 2rem; color: #888; font-size: 0.85rem; }}
</style>
</head>
<body>
<h1>Inera TKB → FHIR Implementation Guides</h1>
<p class="summary">{len(entries)} tjänstedomäner byggda — {n_pass} OK, {n_fail} med fel. Genererad av GitHub Actions.</p>
<table>
  <thead><tr><th>Tjänstedomän</th><th>Status</th><th>Varningar</th><th>QA-rapport</th></tr></thead>
  <tbody>
{rows}
  </tbody>
</table>
<footer>Byggd automatiskt från <code>igs/</code> via SUSHI + HL7 IG Publisher. Källa: <a href="https://github.com">GitHub-repot</a>.</footer>
</body>
</html>
"""

    args.site.mkdir(parents=True, exist_ok=True)
    (args.site / "index.html").write_text(page, encoding="utf-8")
    print(f"[generate_index] Skrev {args.site / 'index.html'} med {len(entries)} domäner "
          f"({n_pass} OK, {n_fail} fel)")


if __name__ == "__main__":
    main()
