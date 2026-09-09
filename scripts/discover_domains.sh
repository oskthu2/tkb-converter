#!/usr/bin/env bash
# discover_domains.sh — avgör vilka igs/TKB_*-kataloger som ska byggas.
#
# En katalog är "redo" om den har en sushi-config.yaml (dvs. IG Builder +
# Model Builder har producerat FSH-källkod för den). Skriver katalogsökvägar,
# en per rad, till $DOMAINS_FILE (default: domains.txt) och sätter output
# any_ready=true/false på $GITHUB_OUTPUT.
#
# Urval beroende på händelse:
#   pull_request        → bara kataloger med ändrade filer i denna PR (snabb kvalitetscheck)
#   workflow_dispatch    → DISPATCH_DOMAINS ("all" eller kommaseparerad lista med katalognamn)
#   push / schedule      → alla redo-kataloger (fullständig ombyggnad, håller Pages-sajten konsekvent)

set -euo pipefail

DOMAINS_FILE="${DOMAINS_FILE:-domains.txt}"
EVENT_NAME="${EVENT_NAME:-push}"
GITHUB_OUTPUT="${GITHUB_OUTPUT:-/dev/null}"

mapfile -t READY_DIRS < <(find igs -maxdepth 2 -name 'sushi-config.yaml' -printf '%h\n' | sort)

: > "$DOMAINS_FILE"

case "$EVENT_NAME" in
  pull_request)
    BASE_SHA="${BASE_SHA:?BASE_SHA krävs för pull_request}"
    HEAD_SHA="${HEAD_SHA:?HEAD_SHA krävs för pull_request}"
    mapfile -t CHANGED < <(git diff --name-only "$BASE_SHA" "$HEAD_SHA" -- igs/ | cut -d/ -f1-2 | sort -u)
    for dir in "${READY_DIRS[@]}"; do
      for changed in "${CHANGED[@]}"; do
        if [ "$dir" = "$changed" ]; then
          echo "$dir" >> "$DOMAINS_FILE"
          break
        fi
      done
    done
    ;;
  workflow_dispatch)
    REQUESTED="${DISPATCH_DOMAINS:-all}"
    if [ -z "$REQUESTED" ] || [ "$REQUESTED" = "all" ]; then
      printf '%s\n' "${READY_DIRS[@]}" > "$DOMAINS_FILE"
    else
      IFS=',' read -ra NAMES <<< "$REQUESTED"
      for name in "${NAMES[@]}"; do
        name="$(echo "$name" | xargs)"  # trimma whitespace
        [ -z "$name" ] && continue
        dir="igs/${name#igs/}"
        if [ -f "$dir/sushi-config.yaml" ]; then
          echo "$dir" >> "$DOMAINS_FILE"
        else
          echo "[discover_domains] VARNING: hoppar över '$name' — ingen sushi-config.yaml i $dir" >&2
        fi
      done
    fi
    ;;
  *)
    # push till main, schema (cron), eller annat — full ombyggnad
    printf '%s\n' "${READY_DIRS[@]}" > "$DOMAINS_FILE"
    ;;
esac

COUNT=$(grep -c . "$DOMAINS_FILE" || true)
echo "[discover_domains] $COUNT domän(er) att bygga (event=$EVENT_NAME):"
cat "$DOMAINS_FILE"

if [ "$COUNT" -gt 0 ]; then
  echo "any_ready=true" >> "$GITHUB_OUTPUT"
else
  echo "any_ready=false" >> "$GITHUB_OUTPUT"
fi
