#!/bin/bash
# SessionStart-hook: ser till att verktygen som TKB-pipelinen behöver finns i
# en ny Claude Code on the web-session. Idempotent — installerar bara det som
# saknas. Misslyckade installationer loggas men stoppar inte sessionen;
# pipelinen upptäcker då själv vad som fattas (se tkb-fsh-model, Steg 4.5).
set -uo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-$(pwd)}"
log() { echo "[session-start] $*" >&2; }
missing=()

# SUSHI (FSH → FHIR JSON)
if ! command -v sushi >/dev/null 2>&1; then
  log "installerar fsh-sushi"
  npm install -g fsh-sushi >/dev/null 2>&1 || missing+=("sushi")
fi

# python-docx (docx_to_md.py)
if ! python3 -c "import docx" >/dev/null 2>&1; then
  log "installerar python-docx"
  pip install --quiet python-docx >/dev/null 2>&1 || missing+=("python-docx")
fi

# antiword (fallback för legacy .doc-TKB:er när LibreOffice inte kan läsa filen)
if ! command -v antiword >/dev/null 2>&1; then
  log "installerar antiword"
  { apt-get update -qq && apt-get install -y -qq antiword; } >/dev/null 2>&1 || missing+=("antiword")
fi

# FHIR R4-baspaketet — packages.fhir.org är inte nåbart härifrån, så SUSHI
# behöver en lokal (stub-)kopia i ~/.fhir/packages. CI hämtar det riktiga paketet.
if [ ! -f "$HOME/.fhir/packages/hl7.fhir.r4.core#4.0.1/package/package.json" ]; then
  log "genererar offline-stub för hl7.fhir.r4.core#4.0.1"
  python3 gen_fhir_stubs.py >/dev/null 2>&1 || missing+=("hl7.fhir.r4.core-stub")
fi

if [ ${#missing[@]} -gt 0 ]; then
  log "VARNING: kunde inte installera: ${missing[*]}"
else
  log "alla verktyg på plats (sushi, python-docx, antiword, FHIR R4-baspaket)"
fi
exit 0
