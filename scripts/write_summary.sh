#!/usr/bin/env bash
# write_summary.sh — skriver en Markdown-tabell över byggresultatet, avsedd
# att pipas till $GITHUB_STEP_SUMMARY.

set -uo pipefail

QA_RESULTS_DIR="${QA_RESULTS_DIR:-qa-results}"

echo "## FHIR IG-byggresultat"
echo ""

if [ ! -d "$QA_RESULTS_DIR" ] || [ -z "$(find "$QA_RESULTS_DIR" -maxdepth 1 -mindepth 1 2>/dev/null)" ]; then
    echo "_Inga domäner byggdes i denna körning._"
    exit 0
fi

echo "| Domän | Status | Fatal | Fel | Varningar |"
echo "|---|---|---|---|---|"

for status_file in "$QA_RESULTS_DIR"/*/status.json; do
    [ -f "$status_file" ] || continue
    dir="$(dirname "$status_file")"
    qa_file="$dir/qa-errors.json"
    python3 - "$status_file" "$qa_file" <<'PYEOF'
import json, sys
status_path, qa_path = sys.argv[1], sys.argv[2]
status = json.load(open(status_path, encoding="utf-8"))
slug = status["slug"]
try:
    qa = json.load(open(qa_path, encoding="utf-8"))
except FileNotFoundError:
    qa = {}
s = qa.get("summary", {})
# status["status"] speglar publisher-processens faktiska exitkod — den
# auktoritativa signalen. qa.get("passed") bygger enbart på mönstermatchning
# av loggrader och missar t.ex. en rå Java-stacktrace. Båda måste vara gröna.
overall_passed = status.get("status") == "success" and qa.get("passed", True)
icon = "✅" if overall_passed else "❌"
print(f"| {slug} | {icon} | {s.get('fatal', 0)} | {s.get('errors', 0)} | {s.get('warnings', 0)} |")
PYEOF
done
