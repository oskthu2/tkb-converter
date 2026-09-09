#!/usr/bin/env bash
# fetch_ig_publisher.sh — hämtar (och cachar) IG Publisher-jar.
#
# Körs i GitHub Actions-runnern, som har riktig internetåtkomst (till skillnad
# från den sandboxade utvecklingsmiljön). Ingen offline-stub behövs här —
# SUSHI och IG Publisher hämtar hl7.fhir.r4.core och fhir.base.template från
# de officiella paketregistren vid körning.
#
# fhir.base.template (och andra "#current"-paket) hämtas INTE här manuellt —
# de paketen ligger på FHIR:s CI build-server (build.fhir.org), inte på
# packages.fhir.org, och IG Publisher har sin egen inbyggda paketklient som
# löser detta automatiskt första gången den behöver templaten. Ett tidigare
# försök att förhämta den via packages.fhir.org/fhir.base.template/current
# gav 404 (fel registry för "current"-paket) — se GitHub Actions-körning
# 34348289539 för felloggen. ~/.fhir/packages cachas ändå via actions/cache
# i workflowen, så Publisherns egen nedladdning återanvänds mellan körningar.
#
# Miljövariabler:
#   PUBLISHER_VERSION   GitHub-release-tagg för HL7/fhir-ig-publisher (t.ex. "1.7.3")
#   PUBLISHER_JAR        Sökväg där jar-filen ska cachas (default: ~/.cache/ig-publisher/publisher.jar)

set -euo pipefail

PUBLISHER_VERSION="${PUBLISHER_VERSION:?PUBLISHER_VERSION måste sättas}"
PUBLISHER_JAR="${PUBLISHER_JAR:-$HOME/.cache/ig-publisher/publisher.jar}"
GITHUB_ENV="${GITHUB_ENV:-/dev/null}"

mkdir -p "$(dirname "$PUBLISHER_JAR")"

if [ -f "$PUBLISHER_JAR" ]; then
    echo "[fetch_ig_publisher] Använder cachad publisher.jar: $PUBLISHER_JAR"
else
    URL="https://github.com/HL7/fhir-ig-publisher/releases/download/${PUBLISHER_VERSION}/publisher.jar"
    echo "[fetch_ig_publisher] Laddar ned IG Publisher ${PUBLISHER_VERSION} från $URL"
    curl -fsSL -o "$PUBLISHER_JAR" "$URL"
    echo "[fetch_ig_publisher] Klar: $(du -m "$PUBLISHER_JAR" | cut -f1) MB"
fi

echo "PUBLISHER_JAR=$PUBLISHER_JAR" >> "$GITHUB_ENV"
