FROM eclipse-temurin:17-jdk-jammy

# ── Systemberoenden ─────────────────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        curl ca-certificates jq \
        python3 python3-pip \
        nodejs npm \
        ruby-full ruby-bundler \
    && gem install jekyll bundler --no-document \
    && npm install -g fsh-sushi \
    && pip3 install --no-cache-dir beautifulsoup4 lxml \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# ── FHIR stub-paket (offline, ingen nätverksåtkomst krävs av SUSHI) ────────
COPY gen_fhir_stubs.py /usr/local/lib/gen_fhir_stubs.py
RUN python3 /usr/local/lib/gen_fhir_stubs.py

# ── Build-skript ─────────────────────────────────────────────────────────────
COPY docker/build.sh    /usr/local/bin/ig-build
COPY docker/parse-qa.py /usr/local/bin/parse-qa
RUN chmod +x /usr/local/bin/ig-build /usr/local/bin/parse-qa

# ── IG Publisher (cachas i namngivna volymen /publisher) ────────────────────
#    Nedladdning sker vid första körning via build.sh om jar saknas.
#    Montera en lokal kopia för snabbare uppstart:
#      -v /path/to/publisher.jar:/publisher/publisher.jar:ro
RUN mkdir -p /publisher

WORKDIR /workspace

# Miljövariabler
ENV PUBLISHER_JAR=/publisher/publisher.jar \
    PUBLISHER_VERSION=latest \
    TX_SERVER=n/a \
    DOMAINS=all \
    WORKSPACE=/workspace

ENTRYPOINT ["/usr/local/bin/ig-build"]
