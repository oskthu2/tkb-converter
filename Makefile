# Makefile — bekvämlighetskommandon för lokal utveckling.
#
# Det fullständiga bygget (SUSHI + IG Publisher) och publiceringen till
# GitHub Pages sker i GitHub Actions — se .github/workflows/build-and-publish.yml.
# Det finns inget lokalt eller Docker-baserat sätt att bygga en fullständig,
# publicerad IG längre; kör workflowen (push till main, eller "Run workflow"
# i GitHub-fliken Actions för en enskild domän) och läs resultatet i
# igs/TKB_{domain}/ig-publisher-logs/qa-errors.json eller på Pages-sajten.
#
# Kommandona nedan är enbart snabba lokala kontroller under utveckling av
# FSH-modeller (kräver att `sushi` finns på PATH, se https://fshschool.org).
#
# Snabbstart:
#   make sushi            # Kör SUSHI för alla domäner (summering)
#   make sushi-one D=TKB_itintegration_engagementindex
#   make qa D=itintegration.engagementindex
#   make fhir-stubs        # Generera offline FHIR R4-stubpaket (för denna sandboxade miljö)

SHELL := /bin/bash

.PHONY: help sushi sushi-one fhir-stubs logs qa qa-summary clean-logs clean-output

help: ## Visa den här hjälptexten
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) | \
	  awk 'BEGIN {FS = ":.*##"}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

# ── SUSHI (lokal FSH-kompilering, ingen IG Publisher) ─────────────────────────

sushi: ## Kör SUSHI för alla domäner
	@for dir in igs/TKB_*/; do \
	  echo "=== $$dir ==="; \
	  sushi "$$dir" 2>&1 | grep -E "Errors|Warnings" | tail -1; \
	done

sushi-one: ## Kör SUSHI för en domän: make sushi-one D=TKB_itintegration_engagementindex
	@test -n "$(D)" || (echo "Ange katalognamn med D=TKB_<domain>"; exit 1)
	sushi igs/$(D)/

# ── Logg- och QA-visning (resultat skrivna av GitHub Actions) ────────────────

logs: ## Visa build.log för en domän (endast tillgänglig lokalt om du kört build_ig.sh själv): make logs D=itintegration.engagementindex
	@test -n "$(D)" || (echo "Ange domän med D=<domain-id>"; exit 1)
	@log=$$(find igs/ -path "*$(D)*/ig-publisher-logs/build.log" | head -1); \
	test -f "$$log" && cat "$$log" || echo "Ingen logg hittad för $(D) — build.log checkas inte in, se GitHub Actions-körningen istället"

qa: ## Visa qa-errors.json för en domän: make qa D=itintegration.engagementindex
	@test -n "$(D)" || (echo "Ange domän med D=<domain-id>"; exit 1)
	@qa=$$(find igs/ -path "*$(D)*/ig-publisher-logs/qa-errors.json" | head -1); \
	test -f "$$qa" && python3 -m json.tool "$$qa" || echo "Ingen QA-rapport hittad för $(D) — kör GitHub Actions-workflowen först"

qa-summary: ## Sammanfatta alla incheckade QA-rapporter
	@echo "=== QA-sammanfattning ==="; \
	for qa in igs/*/ig-publisher-logs/qa-errors.json; do \
	  [ -f "$$qa" ] || continue; \
	  domain=$$(python3 -c "import json; d=json.load(open('$$qa')); print(d.get('domain_id','?'))"); \
	  passed=$$(python3 -c "import json; d=json.load(open('$$qa')); print('PASS' if d.get('passed') else 'FAIL')"); \
	  s=$$(python3 -c "import json; d=json.load(open('$$qa')); s=d['summary']; print(f\"fatal={s['fatal']} err={s['errors']} warn={s['warnings']}\")"); \
	  echo "  $$passed $$domain — $$s"; \
	done

# ── FHIR-paket ────────────────────────────────────────────────────────────────

fhir-stubs: ## Generera offline FHIR R4 stub-paket (~/.fhir/packages/) — för sandboxade miljöer utan nätverksåtkomst
	python3 gen_fhir_stubs.py

# ── Städning ─────────────────────────────────────────────────────────────────

clean-logs: ## Ta bort lokalt genererade build.log-filer (qa-errors.json behålls — den är incheckad)
	@find igs/ -name "build.log" -path "*/ig-publisher-logs/*" -delete 2>/dev/null; \
	echo "build.log-filer borttagna"

clean-output: ## Ta bort lokalt genererade IG Publisher output/-kataloger
	@read -p "Är du säker? Detta tar bort alla output/-kataloger [y/N] " r; \
	[ "$$r" = "y" ] && find igs/ -name "output" -type d -exec rm -rf {} + 2>/dev/null; \
	echo "output/ borttagen"
