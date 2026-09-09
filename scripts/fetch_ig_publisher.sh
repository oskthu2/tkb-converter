#!/usr/bin/env bash
# fetch_ig_publisher.sh — hämtar (och cachar) IG Publisher-jar + fhir.base.template.
#
# Körs i GitHub Actions-runnern, som har riktig internetåtkomst (till skillnad
# från den sandboxade utvecklingsmiljön). Ingen offline-stub behövs här —
# SUSHI och IG Publisher hämtar hl7.fhir.r4.core från det officiella
# paketregistret vid körning.
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

# fhir.base.template ger navigation/layout åt IG Publisher. Hämtas en gång
# och cachas i ~/.fhir/packages (cachas mellan körningar via actions/cache).
TEMPLATE_DIR="$HOME/.fhir/packages/fhir.base.template#current"
if [ -d "$TEMPLATE_DIR" ]; then
    echo "[fetch_ig_publisher] fhir.base.template redan cachad: $TEMPLATE_DIR"
else
    echo "[fetch_ig_publisher] Hämtar fhir.base.template..."
    mkdir -p "$TEMPLATE_DIR"
    curl -fsSL "https://packages.fhir.org/fhir.base.template/current" -o /tmp/fhir.base.template.tgz
    tar -xzf /tmp/fhir.base.template.tgz --strip-components=1 -C "$TEMPLATE_DIR"
    rm -f /tmp/fhir.base.template.tgz
    echo "[fetch_ig_publisher] fhir.base.template installerad"
fi

echo "PUBLISHER_JAR=$PUBLISHER_JAR" >> "$GITHUB_ENV"
