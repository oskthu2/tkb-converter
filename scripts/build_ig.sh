#!/usr/bin/env bash
# build_ig.sh <ig_dir> — bygger en enskild IG: SUSHI → IG Publisher → QA-parsning.
#
# Skriver aldrig till contracts-registry.json direkt (matrisen/loopen kör
# flera domäner efter varandra i samma jobb; registret uppdateras i ett
# separat steg, scripts/commit_qa_results.py, efter att alla domäner byggts).
#
# Förutsätter att SUSHI och Java finns på PATH, samt att PUBLISHER_JAR pekar
# på en giltig publisher.jar (se scripts/fetch_ig_publisher.sh).
#
# Utdata:
#   $ig_dir/ig-publisher-logs/build.log       — rålogg (ej incheckad, se .gitignore)
#   $ig_dir/ig-publisher-logs/qa-errors.json  — strukturerat QA-resultat (checkas in)
#   $QA_RESULTS_DIR/<slug>/qa-errors.json     — kopia för CI-aggregering
#   $QA_RESULTS_DIR/<slug>/status.json        — kort sammanfattning för rapport/gate
#   $SITE_DIR/<slug>/                         — publicerad HTML-IG (för GitHub Pages)

set -uo pipefail  # inte -e: vi vill fortsätta och rapportera fel per domän

IG_DIR="${1:?Användning: build_ig.sh <ig_dir>}"
IG_DIR="${IG_DIR%/}"
SLUG="$(basename "$IG_DIR")"

TX_SERVER="${TX_SERVER:-n/a}"
PUBLISHER_JAR="${PUBLISHER_JAR:?PUBLISHER_JAR måste sättas}"
SITE_DIR="${SITE_DIR:-_site}"
QA_RESULTS_DIR="${QA_RESULTS_DIR:-qa-results}"

log()  { echo "[build_ig:$SLUG] $*"; }
warn() { echo "[build_ig:$SLUG] VARNING: $*" >&2; }
err()  { echo "[build_ig:$SLUG] FEL: $*" >&2; }

LOG_DIR="$IG_DIR/ig-publisher-logs"
BUILD_LOG="$LOG_DIR/build.log"
QA_JSON="$LOG_DIR/qa-errors.json"
mkdir -p "$LOG_DIR" "$QA_RESULTS_DIR/$SLUG"
: > "$BUILD_LOG"

write_status() {
    # write_status <status> <sushi_exit> <ig_publisher_exit> <note>
    python3 - "$SLUG" "$IG_DIR" "$1" "$2" "$3" "$4" "$QA_RESULTS_DIR/$SLUG/status.json" <<'PYEOF'
import json, sys
from datetime import datetime, timezone
slug, ig_dir, status, sushi_exit, publisher_exit, note, out_path = sys.argv[1:8]
doc = {
    "slug": slug,
    "dir": ig_dir + "/",
    "status": status,
    "sushi_exit": int(sushi_exit),
    "ig_publisher_exit": int(publisher_exit),
    "note": note,
    "ran_at": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
}
with open(out_path, "w", encoding="utf-8") as f:
    json.dump(doc, f, indent=2, ensure_ascii=False)
PYEOF
}

log "══════════════════════════════════════════════"
log "Bygger: $IG_DIR"
log "══════════════════════════════════════════════"

# ── Steg 1: SUSHI ────────────────────────────────────────────────────────────
log "Steg 1/3: SUSHI..."
sushi_exit=0
(cd "$IG_DIR" && sushi . 2>&1) | tee -a "$BUILD_LOG" || sushi_exit=$?
if [ "$sushi_exit" -ne 0 ]; then
    warn "SUSHI avslutades med exitkod $sushi_exit — fortsätter ändå med IG Publisher"
fi

# ── Steg 2: Fixa ig.ini ──────────────────────────────────────────────────────
log "Steg 2/3: Uppdaterar ig.ini..."
IG_ID="$(grep -m1 '^id:' "$IG_DIR/sushi-config.yaml" | awk '{print $2}' | tr -d '"\r')"
SUSHI_IG_REL="fsh-generated/resources/ImplementationGuide-${IG_ID}.json"
RESOURCES_DIR="$IG_DIR/fsh-generated/resources"

if [ ! -f "$IG_DIR/$SUSHI_IG_REL" ]; then
    warn "Kan inte hitta SUSHI-genererad IG-resurs: $IG_DIR/$SUSHI_IG_REL"
    FALLBACK="$(find "$RESOURCES_DIR" -maxdepth 1 -type f -name 'ImplementationGuide-*.json' 2>/dev/null | sort | head -1 || true)"
    if [ -n "$FALLBACK" ]; then
        SUSHI_IG_REL="fsh-generated/resources/$(basename "$FALLBACK")"
        warn "Använder fallback-IG-resurs: $SUSHI_IG_REL"
    else
        err "Ingen ImplementationGuide-*.json hittades — hoppar över IG Publisher för $SLUG"
        cat > "$QA_JSON" <<EOF
{
  "domain_id": "$SLUG",
  "passed": false,
  "summary": {"fatal": 1, "errors": 0, "warnings": 0, "hints": 0},
  "issues": {"fatal": ["Ingen ImplementationGuide-*.json genererad av SUSHI — kontrollera Id-fältet i sushi-config.yaml"], "errors": [], "warnings": [], "hints": []},
  "top_issues": ["[FATAL] Ingen ImplementationGuide-*.json genererad av SUSHI"]
}
EOF
        cp "$QA_JSON" "$QA_RESULTS_DIR/$SLUG/qa-errors.json"
        write_status "failed" "$sushi_exit" "-1" "Ingen ImplementationGuide-resurs — SUSHI-fel eller fel Id i sushi-config.yaml"
        exit 0
    fi
fi

# IG Publisher lägger till core-paketet implicit; ett explicit dependsOn för
# core kan orsaka dublettfel vid package.json-generering.
python3 - "$IG_DIR/$SUSHI_IG_REL" <<'PYEOF'
import json, sys
path = sys.argv[1]
with open(path, encoding='utf-8') as f:
    ig = json.load(f)
depends = ig.get('dependsOn', [])
filtered = [d for d in depends if d.get('packageId') != 'hl7.fhir.r4.core']
if len(filtered) != len(depends):
    if filtered:
        ig['dependsOn'] = filtered
    else:
        ig.pop('dependsOn', None)
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(ig, f, ensure_ascii=False, indent=2)
PYEOF

cat > "$IG_DIR/ig.ini" <<INI
[IG]
ig = $SUSHI_IG_REL
template = fhir.base.template#current
usage-stats-opt-out = true
INI
log "ig.ini uppdaterad: ig = $SUSHI_IG_REL"

# ── Steg 3: IG Publisher ─────────────────────────────────────────────────────
log "Steg 3/3: IG Publisher (tx=$TX_SERVER)..."
publisher_exit=0
java -Xmx4g -jar "$PUBLISHER_JAR" \
    -ig "$IG_DIR/ig.ini" \
    -version 4.0.1 \
    -no-sushi \
    -tx "$TX_SERVER" \
    2>&1 | tee -a "$BUILD_LOG" || publisher_exit=$?

fatal=$(grep -cE "^\s*(FATAL|Fatal):" "$BUILD_LOG" 2>/dev/null || echo 0)
errors=$(grep -cE "^\s*(ERROR|Error):" "$BUILD_LOG" 2>/dev/null || echo 0)
warnings=$(grep -cE "^\s*(WARN|Warning):" "$BUILD_LOG" 2>/dev/null || echo 0)

status="success"
if [ "$publisher_exit" -ne 0 ] || [ "$fatal" -gt 0 ]; then
    status="failed"
fi
log "Resultat: status=$status exit=$publisher_exit fatal=$fatal errors=$errors warnings=$warnings"

# ── Parsa QA-rapport ─────────────────────────────────────────────────────────
QA_HTML="$IG_DIR/output/qa.html"
QA_JSON_SRC="$IG_DIR/output/qa.json"
parse_args=(--domain "$SLUG" --log "$BUILD_LOG" --output "$QA_JSON")
[ -f "$QA_JSON_SRC" ] && parse_args+=(--qa-json "$QA_JSON_SRC")
[ -f "$QA_HTML" ]     && parse_args+=(--qa-html "$QA_HTML")
python3 "$(dirname "$0")/parse_qa.py" "${parse_args[@]}"

cp "$QA_JSON" "$QA_RESULTS_DIR/$SLUG/qa-errors.json"
write_status "$status" "$sushi_exit" "$publisher_exit" "exit=$publisher_exit fatal=$fatal errors=$errors warnings=$warnings"

# ── Kopiera publicerad HTML-IG till sajtstaging ─────────────────────────────
if [ -d "$IG_DIR/output" ]; then
    mkdir -p "$SITE_DIR/$SLUG"
    cp -r "$IG_DIR/output/." "$SITE_DIR/$SLUG/"
    log "Publicerad IG kopierad till $SITE_DIR/$SLUG/"
else
    warn "Ingen output/-katalog — IG Publisher misslyckades förmodligen tidigt"
fi

log "Klar: $SLUG ($status)"
echo ""
exit 0
