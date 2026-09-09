#!/usr/bin/env bash
# check_quality_gate.sh — sista steget i CI-jobbet: avslutar med kod 1 om
# någon byggd domän har fatal- eller error-nivåfel. Detta är kvalitetsgrinden
# som gör CI-jobbet rött på pull requests och i push-till-main-körningar.
#
# Körs EFTER att artefakter (Pages-sajt, QA-resultat) redan laddats upp, så
# att ett rött jobb ändå ger tillgängliga byggresultat att felsöka från.

set -uo pipefail

QA_RESULTS_DIR="${QA_RESULTS_DIR:-qa-results}"

if [ ! -d "$QA_RESULTS_DIR" ] || [ -z "$(find "$QA_RESULTS_DIR" -maxdepth 1 -mindepth 1 2>/dev/null)" ]; then
    echo "[check_quality_gate] Inga domäner byggdes — inget att kontrollera."
    exit 0
fi

failed=0
for qa_file in "$QA_RESULTS_DIR"/*/qa-errors.json; do
    [ -f "$qa_file" ] || continue
    slug="$(basename "$(dirname "$qa_file")")"
    passed=$(python3 -c "import json;print(json.load(open('$qa_file')).get('passed', False))")
    if [ "$passed" != "True" ]; then
        echo "[check_quality_gate] ✗ $slug har fatal/error-nivåfel — se qa-errors.json"
        failed=1
    fi
done

if [ "$failed" -ne 0 ]; then
    echo "[check_quality_gate] Kvalitetsgrinden underkänd — se sammanfattningen ovan och qa-results/*/qa-errors.json"
    exit 1
fi

echo "[check_quality_gate] Alla byggda domäner passerade kvalitetsgrinden."
