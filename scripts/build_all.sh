#!/usr/bin/env bash
# build_all.sh — kör build_ig.sh för varje domän i $DOMAINS_FILE, sedan
# genererar en rot-index.html för GitHub Pages-sajten.
#
# Avslutar alltid med kod 0 (best-effort) — kvalitetsgrinden hanteras separat
# av scripts/check_quality_gate.sh så att alla domäner hinner byggas och
# artefakter laddas upp innan jobbet eventuellt markeras rött.

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOMAINS_FILE="${DOMAINS_FILE:-domains.txt}"
export SITE_DIR="${SITE_DIR:-_site}"
export QA_RESULTS_DIR="${QA_RESULTS_DIR:-qa-results}"

mkdir -p "$SITE_DIR" "$QA_RESULTS_DIR"

if [ ! -s "$DOMAINS_FILE" ]; then
    echo "[build_all] Inga domäner att bygga ($DOMAINS_FILE är tom)."
    exit 0
fi

while IFS= read -r dir; do
    [ -z "$dir" ] && continue
    "$SCRIPT_DIR/build_ig.sh" "$dir"
done < "$DOMAINS_FILE"

echo "[build_all] Genererar rot-index för Pages-sajten..."
python3 "$SCRIPT_DIR/generate_index.py" --qa-results "$QA_RESULTS_DIR" --site "$SITE_DIR"

echo "[build_all] Klart."
