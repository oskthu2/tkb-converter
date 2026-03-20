# Makefile — bekvämlighetskommandon för FHIR IG Publisher-byggen
#
# Förutsättningar: Docker + Docker Compose installerat.
#
# Snabbstart:
#   make build           # Bygg alla SUSHI-godkända IGs
#   make build-one D=itintegration.engagementindex
#   make logs D=itintegration.engagementindex
#   make qa   D=itintegration.engagementindex
#   make sushi           # Kör bara SUSHI (ingen IG Publisher)
#   make docker-build    # Bygg Docker-imagen

SHELL := /bin/bash
COMPOSE := docker compose
IMAGE   := tkb-ig-publisher:latest

.PHONY: help build build-one sushi docker-build logs qa clean-logs

# ── Standardmål ──────────────────────────────────────────────────────────────

help: ## Visa den här hjälptexten
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) | \
	  awk 'BEGIN {FS = ":.*##"}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

docker-build: ## Bygg Docker-imagen (kör efter ändringar i docker/)
	$(COMPOSE) build --no-cache

build: ## Bygg alla SUSHI-godkända IGs som ännu inte är publicerade
	$(COMPOSE) run --rm ig-publisher

build-one: ## Bygg en specifik domän: make build-one D=itintegration.engagementindex
	@test -n "$(D)" || (echo "Ange domän med D=<domain-id>"; exit 1)
	DOMAINS=$(D) $(COMPOSE) run --rm ig-publisher

build-force: ## Bygg om alla, oavsett tidigare status
	$(COMPOSE) run --rm -e DOMAINS=all ig-publisher

sushi: ## Kör bara SUSHI (ingen IG Publisher) för alla domäner
	@for dir in igs/TKB_*/; do \
	  echo "=== $$dir ==="; \
	  sushi "$$dir" 2>&1 | grep -E "Errors|Warnings" | tail -1; \
	done

sushi-one: ## Kör SUSHI för en domän: make sushi-one D=TKB_itintegration_engagementindex
	@test -n "$(D)" || (echo "Ange katalognamn med D=TKB_<domain>"; exit 1)
	sushi igs/$(D)/

# ── Logg- och QA-visning ──────────────────────────────────────────────────────

logs: ## Visa build.log för en domän: make logs D=itintegration.engagementindex
	@test -n "$(D)" || (echo "Ange domän med D=<domain-id>"; exit 1)
	@log=$$(find igs/ -path "*$(D)*/ig-publisher-logs/build.log" | head -1); \
	test -f "$$log" && cat "$$log" || echo "Ingen logg hittad för $(D)"

qa: ## Visa qa-errors.json för en domän: make qa D=itintegration.engagementindex
	@test -n "$(D)" || (echo "Ange domän med D=<domain-id>"; exit 1)
	@qa=$$(find igs/ -path "*$(D)*/ig-publisher-logs/qa-errors.json" | head -1); \
	test -f "$$qa" && python3 -m json.tool "$$qa" || echo "Ingen QA-rapport hittad för $(D)"

qa-summary: ## Sammanfatta alla QA-rapporter
	@echo "=== QA-sammanfattning ==="; \
	for qa in igs/*/ig-publisher-logs/qa-errors.json; do \
	  domain=$$(python3 -c "import json; d=json.load(open('$$qa')); print(d.get('domain_id','?'))"); \
	  passed=$$(python3 -c "import json; d=json.load(open('$$qa')); print('PASS' if d.get('passed') else 'FAIL')"); \
	  s=$$(python3 -c "import json; d=json.load(open('$$qa')); s=d['summary']; print(f\"fatal={s['fatal']} err={s['errors']} warn={s['warnings']}\")"); \
	  echo "  $$passed $$domain — $$s"; \
	done

# ── FHIR-paket ────────────────────────────────────────────────────────────────

fhir-stubs: ## Generera offline FHIR R4 stub-paket (~/.fhir/packages/)
	python3 gen_fhir_stubs.py

# ── Städning ─────────────────────────────────────────────────────────────────

clean-logs: ## Ta bort alla ig-publisher-logs/ (men behåll output/)
	@find igs/ -name "ig-publisher-logs" -type d -exec rm -rf {} + 2>/dev/null; \
	echo "ig-publisher-logs/ borttagen"

clean-output: ## Ta bort alla IG Publisher-genererade output/-kataloger
	@read -p "Är du säker? Detta tar bort alla output/-kataloger [y/N] " r; \
	[ "$$r" = "y" ] && find igs/ -name "output" -type d -exec rm -rf {} + 2>/dev/null; \
	echo "output/ borttagen"
