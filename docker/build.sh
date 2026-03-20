#!/usr/bin/env bash
# ig-build — Kör FHIR IG Publisher för alla (eller valda) domäner i arbetsorden.
#
# Miljövariabler:
#   DOMAINS          Kommaseparerade domän-ID:n, eller "all" (default: all)
#   PUBLISHER_JAR    Sökväg till publisher.jar (default: /publisher/publisher.jar)
#   PUBLISHER_VERSION  GitHub-release att ladda ned om jar saknas (default: latest)
#   TX_SERVER        Terminologiserver URL, eller "n/a" för offline (default: n/a)
#   WORKSPACE        Rotkatalog för repo (default: /workspace)
#   SUSHI_SKIP       Sätt till "1" för att hoppa över sushi-steget (default: 0)
#   NO_COMMIT        Sätt till "1" för att inte skriva tillbaka till registry (default: 0)
#
# Utdata per domän:
#   igs/TKB_{id}/ig-publisher-logs/build.log      — rålogg från IG Publisher
#   igs/TKB_{id}/ig-publisher-logs/qa-errors.json — strukturerade fel/varningar
#   igs/TKB_{id}/output/                          — genererad HTML-IG

set -euo pipefail

WORKSPACE="${WORKSPACE:-/workspace}"
REGISTRY="$WORKSPACE/contracts-registry.json"
PUBLISHER_JAR="${PUBLISHER_JAR:-/publisher/publisher.jar}"
PUBLISHER_VERSION="${PUBLISHER_VERSION:-latest}"
TX_SERVER="${TX_SERVER:-n/a}"
SUSHI_SKIP="${SUSHI_SKIP:-0}"
NO_COMMIT="${NO_COMMIT:-0}"

# ── Hjälpfunktioner ──────────────────────────────────────────────────────────

log()  { echo "[ig-build] $*"; }
warn() { echo "[ig-build] WARN: $*" >&2; }
err()  { echo "[ig-build] ERROR: $*" >&2; }

# Uppdatera ett fält i contracts-registry.json
registry_set() {
    local domain_id="$1" key="$2" value="$3"
    python3 - <<PYEOF
import json
from datetime import datetime, timezone
with open('$REGISTRY') as f:
    r = json.load(f)
for d in r.get('domains', []):
    if d['id'] == '$domain_id':
        d['$key'] = $value
        break
r['last_updated'] = datetime.now(timezone.utc).strftime('%Y-%m-%dT%H:%M:%SZ')
with open('$REGISTRY', 'w') as f:
    json.dump(r, f, indent=2, ensure_ascii=False)
PYEOF
}

registry_set_json() {
    local domain_id="$1" key="$2" json_value="$3"
    python3 - <<PYEOF
import json
from datetime import datetime, timezone
with open('$REGISTRY') as f:
    r = json.load(f)
for d in r.get('domains', []):
    if d['id'] == '$domain_id':
        d['$key'] = json.loads(r'''$json_value''')
        break
r['last_updated'] = datetime.now(timezone.utc).strftime('%Y-%m-%dT%H:%M:%SZ')
with open('$REGISTRY', 'w') as f:
    json.dump(r, f, indent=2, ensure_ascii=False)
PYEOF
}

# ── Kopiera förinstallerade FHIR-paket (inkl. template) till runtime-cachen ──
# Paketen laddades ned under docker build och lagrades i /opt/fhir-packages/.
# /root/.fhir är volymonterad från värddatorn — de förinstallerade paketen
# kopieras dit om de saknas, så att IG Publisher hittar dem offline.
ensure_fhir_packages() {
    local pkg_base="/opt/fhir-packages"
    [ -d "$pkg_base" ] || return 0
    mkdir -p "/root/.fhir/packages"
    for pkg_dir in "$pkg_base"/*/; do
        [ -d "$pkg_dir" ] || continue
        local pkg_name
        pkg_name=$(basename "$pkg_dir")
        local target="/root/.fhir/packages/$pkg_name"
        if [ ! -d "$target" ]; then
            log "Installerar förinstallerat FHIR-paket: $pkg_name"
            cp -r "$pkg_dir" "$target"
        fi
    done
}

# ── Ladda ned IG Publisher om jar saknas ─────────────────────────────────────
ensure_publisher() {
    if [ -f "$PUBLISHER_JAR" ]; then
        log "IG Publisher hittad: $PUBLISHER_JAR"
        return
    fi
    log "publisher.jar saknas — laddar ned från GitHub (version: $PUBLISHER_VERSION)..."
    mkdir -p "$(dirname "$PUBLISHER_JAR")"
    if [ "$PUBLISHER_VERSION" = "latest" ]; then
        URL="https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar"
    else
        URL="https://github.com/HL7/fhir-ig-publisher/releases/download/$PUBLISHER_VERSION/publisher.jar"
    fi
    if curl -fsSL -o "$PUBLISHER_JAR" "$URL"; then
        log "Nedladdning klar: $(du -m "$PUBLISHER_JAR" | cut -f1) MB"
    else
        err "Kunde inte ladda ned publisher.jar från $URL"
        exit 1
    fi
}

# ── Välj domäner att bygga ───────────────────────────────────────────────────
resolve_domains() {
    local requested="${DOMAINS:-all}"
    python3 - <<PYEOF
import json, sys
with open('$REGISTRY') as f:
    r = json.load(f)
requested = '$requested'
if requested == 'all':
    ready = [
        d['id'] for d in r.get('domains', [])
        if d.get('sushi_result', {}).get('passed')
        and d.get('ig_publisher_result', {}).get('status') not in ('success',)
    ]
else:
    ready = [s.strip() for s in requested.split(',') if s.strip()]
print('\n'.join(ready))
PYEOF
}

# ── Hämta output_dir för en domän ur registry ────────────────────────────────
get_output_dir() {
    local domain_id="$1"
    python3 - <<PYEOF
import json
with open('$REGISTRY') as f:
    r = json.load(f)
d = next((d for d in r.get('domains', []) if d['id'] == '$domain_id'), None)
if d:
    print('$WORKSPACE/' + d.get('output_dir', '').rstrip('/'))
PYEOF
}

# ── Fixa ig.ini så att den pekar på SUSHI-genererad IG-resurs ───────────────
fix_ig_ini() {
    local ig_dir="$1"
    ig_dir="${ig_dir//$'\r'/}"
    # Hitta IG-ID från sushi-config.yaml
    local ig_id
    ig_id=$(grep -m1 '^id:' "$ig_dir/sushi-config.yaml" | awk '{print $2}' | tr -d '"\r')
    local sushi_ig="fsh-generated/resources/ImplementationGuide-${ig_id}.json"
    local resources_dir="$ig_dir/fsh-generated/resources"

    if [ ! -f "$ig_dir/$sushi_ig" ]; then
        warn "Kan inte hitta SUSHI-genererad IG-resurs: $ig_dir/$sushi_ig"
        if [ -d "$resources_dir" ]; then
            local fallback
            fallback=$(find "$resources_dir" -maxdepth 1 -type f -name 'ImplementationGuide-*.json' | sort | head -1 || true)
            if [ -n "$fallback" ]; then
                sushi_ig="fsh-generated/resources/$(basename "$fallback")"
                warn "Använder fallback-IG-resurs: $sushi_ig"
            else
                warn "Ingen ImplementationGuide-*.json hittades i: $resources_dir"
                warn "Kör sushi först eller kontrollera att sushi-config.yaml har rätt id:"
                return 1
            fi
        else
            warn "Resurskatalog saknas: $resources_dir"
            warn "Kör sushi först eller kontrollera att sushi-config.yaml har rätt id:"
            return 1
        fi
    fi

    # IG Publisher lägger till core-paket implicit; explicit dependsOn för core
    # kan orsaka dublettfel vid package.json-generering.
    python3 - "$ig_dir/$sushi_ig" <<'PYEOF'
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

    cat > "$ig_dir/ig.ini" <<INI
[IG]
ig = $sushi_ig
template = fhir.base.template#current
usage-stats-opt-out = true
INI
    log "ig.ini uppdaterad: ig = $sushi_ig"
}

# ── Kör SUSHI ────────────────────────────────────────────────────────────────
run_sushi() {
    local ig_dir="$1"
    log "Kör SUSHI i $ig_dir..."
    (cd "$ig_dir" && sushi . 2>&1) | tee -a "$2"
}

# ── Räkna fel i logg ─────────────────────────────────────────────────────────
count_in_log() {
    local log_file="$1" pattern="$2"
    grep -cE "$pattern" "$log_file" 2>/dev/null || echo "0"
}

# ── Bygg en domän ─────────────────────────────────────────────────────────────
build_domain() {
    local domain_id="$1"
    local ig_dir
    ig_dir=$(get_output_dir "$domain_id")

    if [ -z "$ig_dir" ]; then
        err "Domän $domain_id hittades inte i $REGISTRY"
        return 1
    fi

    log "══════════════════════════════════════════════"
    log "Bygger: $domain_id"
    log "Katalog: $ig_dir"
    log "══════════════════════════════════════════════"

    local log_dir="$ig_dir/ig-publisher-logs"
    local build_log="$log_dir/build.log"
    local qa_json="$log_dir/qa-errors.json"
    mkdir -p "$log_dir"
    : > "$build_log"  # töm/skapa build.log

    # Markera som "running"
    [ "$NO_COMMIT" = "0" ] && registry_set "$domain_id" "publish_status" '"running"'

    # Steg 1: Kör SUSHI (om inte hoppad)
    if [ "$SUSHI_SKIP" != "1" ]; then
        log "Steg 1/3: SUSHI..."
        if ! run_sushi "$ig_dir" "$build_log"; then
            warn "SUSHI avslutades med fel — fortsätter ändå med IG Publisher"
        fi
    fi

    # Steg 2: Fixa ig.ini
    log "Steg 2/3: Uppdaterar ig.ini..."
    fix_ig_ini "$ig_dir" || {
        err "Kan inte fixa ig.ini — hoppar över $domain_id"
        [ "$NO_COMMIT" = "0" ] && registry_set "$domain_id" "publish_status" '"failed"'
        return 1
    }

    # Steg 3: Kör IG Publisher
    log "Steg 3/3: IG Publisher (tx=$TX_SERVER)..."
    local exit_code=0
    java -Xmx4g -jar "$PUBLISHER_JAR" \
        -ig "$ig_dir/ig.ini" \
        -no-sushi \
        -tx "$TX_SERVER" \
        2>&1 | tee -a "$build_log" || exit_code=$?

    # Räkna fel i loggen (IG Publisher-format: "ERROR: ..." och WARN/FATAL)
    local errors warnings fatal
    errors=$(count_in_log "$build_log" "^\s*(ERROR|Error):")
    warnings=$(count_in_log "$build_log" "^\s*(WARN|Warning):")
    fatal=$(count_in_log "$build_log" "^\s*(FATAL|Fatal):")

    # Bestäm status
    local status="success"
    if [ "$exit_code" -ne 0 ] || [ "$fatal" -gt 0 ]; then
        status="failed"
    fi

    log "Resultat: status=$status exit=$exit_code fatal=$fatal errors=$errors warnings=$warnings"

    # Parsa QA-rapport
    local qa_html="$ig_dir/output/qa.html"
    local qa_json_src="$ig_dir/output/qa.json"

    # Skicka alltid med BÅDA --qa-json och --qa-html när de finns.
    # parse-qa.py kombinerar dem: qa.json för summor, qa.html för detaljer
    # (äldre IG Publisher-format har enbart summor i qa.json).
    local parse_args=(--domain "$domain_id" --log "$build_log" --output "$qa_json")
    [ -f "$qa_json_src" ] && parse_args+=(--qa-json "$qa_json_src")
    [ -f "$qa_html" ]     && parse_args+=(--qa-html "$qa_html")

    if [ -f "$qa_json_src" ] || [ -f "$qa_html" ]; then
        log "Parsar QA-rapport (json=$([ -f "$qa_json_src" ] && echo ja || echo nej), html=$([ -f "$qa_html" ] && echo ja || echo nej))..."
        python3 /usr/local/bin/parse-qa "${parse_args[@]}"
    else
        log "Ingen QA-rapport hittad (output/ saknas?)"
        python3 /usr/local/bin/parse-qa "${parse_args[@]}"
    fi

    # Skriv tillbaka till registry
    if [ "$NO_COMMIT" = "0" ]; then
        local now
        now=$(python3 -c "from datetime import datetime,timezone; print(datetime.now(timezone.utc).strftime('%Y-%m-%dT%H:%M:%SZ'))")
        local result_json
        result_json=$(cat <<JSON
{
  "ran_at": "$now",
  "exit_code": $exit_code,
  "fatal": $fatal,
  "errors": $errors,
  "warnings": $warnings,
  "status": "$status",
  "log_file": "$(realpath --relative-to="$WORKSPACE" "$build_log")",
  "qa_file": "$(realpath --relative-to="$WORKSPACE" "$qa_json")"
}
JSON
)
        registry_set_json "$domain_id" "ig_publisher_result" "$result_json"
        registry_set "$domain_id" "publish_status" "\"$status\""
        [ "$status" = "success" ] && registry_set "$domain_id" "completed_at" "\"$now\""
    fi

    log "Klar: $domain_id ($status)"
    echo ""
}

# ── Huvudprogram ──────────────────────────────────────────────────────────────
main() {
    log "FHIR IG Publisher Build Script"
    log "Workspace: $WORKSPACE"
    log "Registry:  $REGISTRY"

    ensure_fhir_packages
    ensure_publisher

    local domain_ids
    domain_ids=$(resolve_domains)

    if [ -z "$domain_ids" ]; then
        log "Inga domäner att bygga (alla är antingen ej SUSHI-godkända eller redan publicerade)."
        log "Sätt DOMAINS=all för att bygga alla SUSHI-godkända, eller ange specifika ID:n."
        exit 0
    fi

    log "Domäner att bygga:"
    echo "$domain_ids" | while read -r id; do log "  • $id"; done
    echo ""

    local failed=0
    while IFS= read -r domain_id; do
        [ -z "$domain_id" ] && continue
        build_domain "$domain_id" || failed=$((failed + 1))
    done <<< "$domain_ids"

    log "══════════════════════════════════════════════"
    if [ "$failed" -eq 0 ]; then
        log "Alla byggen klara."
    else
        log "$failed byggen misslyckades — se ig-publisher-logs/build.log per domän."
        exit 1
    fi
}

main "$@"
