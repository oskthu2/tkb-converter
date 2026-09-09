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
    slug="$(python3 -c "import json;print(json.load(open('$status_file'))['slug'])")"
    qa_file="$dir/qa-errors.json"
    if [ -f "$qa_file" ]; then
        python3 - "$slug" "$qa_file" <<'PYEOF'
import json, sys
slug, qa_path = sys.argv[1], sys.argv[2]
qa = json.load(open(qa_path, encoding="utf-8"))
s = qa.get("summary", {})
icon = "✅" if qa.get("passed") else "❌"
print(f"| {slug} | {icon} | {s.get('fatal', 0)} | {s.get('errors', 0)} | {s.get('warnings', 0)} |")
PYEOF
    else
        echo "| $slug | ⚠️ (ingen qa-errors.json) | - | - | - |"
    fi
done
