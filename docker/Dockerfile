FROM eclipse-temurin:17-jdk-jammy

# ── Systemberoenden ─────────────────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
        curl ca-certificates jq \
        gnupg \
        build-essential \
        python3 python3-pip \
        ruby-full ruby-bundler \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && gem install jekyll bundler --no-document \
    && npm install -g fsh-sushi \
    && pip3 install --no-cache-dir beautifulsoup4 lxml \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# ── FHIR stub-paket (offline, ingen nätverksåtkomst krävs av SUSHI) ────────
COPY gen_fhir_stubs.py /usr/local/lib/gen_fhir_stubs.py
RUN python3 /usr/local/lib/gen_fhir_stubs.py

# ── FHIR IG-template (offline, laddas ned vid image-bygge) ─────────────────
# fhir.base.template tillhandahåller navigationsfält och layout i IG Publisher.
# packages.fhir.org är blockerad vid runtime — templaten lagras i /opt/fhir-packages/
# och kopieras till /root/.fhir/packages/ av build.sh vid container-start.
RUN mkdir -p /opt/fhir-packages && \
    curl -fsSL "https://packages.fhir.org/fhir.base.template/current" \
         -o /tmp/fhir.base.template.tgz && \
    mkdir -p "/opt/fhir-packages/fhir.base.template#current" && \
    tar -xzf /tmp/fhir.base.template.tgz \
        --strip-components=1 \
        -C "/opt/fhir-packages/fhir.base.template#current" && \
    rm /tmp/fhir.base.template.tgz && \
    echo "[OK] fhir.base.template installerad i /opt/fhir-packages/"

# ── Build-skript ─────────────────────────────────────────────────────────────
COPY docker/build.sh    /usr/local/bin/ig-build
COPY docker/parse-qa.py /usr/local/bin/parse-qa
RUN sed -i 's/\r$//' /usr/local/bin/ig-build /usr/local/bin/parse-qa \
    && chmod +x /usr/local/bin/ig-build /usr/local/bin/parse-qa

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
