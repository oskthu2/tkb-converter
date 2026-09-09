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
for status_file in "$QA_RESULTS_DIR"/*/status.json; do
    [ -f "$status_file" ] || continue
    slug="$(basename "$(dirname "$status_file")")"
    qa_file="$(dirname "$status_file")/qa-errors.json"

    # status.json speglar det FAKTISKA exitkoden från java -jar publisher.jar.
    # Detta är den auktoritativa signalen — qa-errors.json bygger på
    # mönstermatchning av loggrader (ERROR:/FATAL:) och kan missa fel som
    # syns som en rå Java-stacktrace istället (t.ex. en krascschande
    # subprocess som Jekyll). Båda måste vara gröna för att domänen godkänns.
    status=$(python3 -c "import json;print(json.load(open('$status_file')).get('status', 'unknown'))")
    if [ "$status" != "success" ]; then
        echo "[check_quality_gate] ✗ $slug: IG Publisher-processen avslutades med status=$status (se status.json) — även om qa-errors.json inte fångade det som ERROR/FATAL"
        failed=1
        continue
    fi

    if [ -f "$qa_file" ]; then
        passed=$(python3 -c "import json;print(json.load(open('$qa_file')).get('passed', False))")
        if [ "$passed" != "True" ]; then
            echo "[check_quality_gate] ✗ $slug har fatal/error-nivåfel — se qa-errors.json"
            failed=1
        fi
    fi
done

if [ "$failed" -ne 0 ]; then
    echo "[check_quality_gate] Kvalitetsgrinden underkänd — se sammanfattningen ovan och qa-results/*/qa-errors.json"
    exit 1
fi

echo "[check_quality_gate] Alla byggda domäner passerade kvalitetsgrinden."
