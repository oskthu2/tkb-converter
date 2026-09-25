# FHIR IG Migration Agent — Inera Tjänstekontrakt

Detta repo konverterar Ineras tjänstekontrakt (RIV-TA) till FHIR Implementation Guides.

**Ambitionsnivå:** En IG ska vara en **komplett, högkvalitativ representation av hela TKB:n** — inte bara en FHIR-modell av payloaden. Det innebär att all text, alla tabeller och alla illustrationer från källdokumentet ska finnas med i IG:n. En läsare ska kunna ersätta Word-dokumentet med IG:n som källa.

**Viktigt om strukturen:** En TKB (Tjänstekontraktsbeskrivning) beskriver en hel tjänstedomän och kan innehålla flera tjänstekontrakt (t.ex. GetCareDocumentation, GetDiagnosis och GetAlertInformation i samma dokument). En TKB → en FHIR IG. Alla tjänstekontrakt inom domänen samlas i IG:ns sektion 7, med ett underavsnitt per kontrakt (7.1, 7.2, 7.3...). Varje kontrakt får en egen logisk modell i FSH.

Zip-filerna hämtas från Bitbuckets `rivta-domains`-workspace via Bitbucket API — **inte** via rivta.se/tkview som är en JavaScript SPA som inte kan skrapas med HTTP.

Du arbetar sekventiellt, en domän (TKB) i taget. Du håller global status i `contracts-registry.json` och samlar alla öppna frågor löpande i `QUESTIONS.md`. Du kan avbrytas och återupptas — du läser alltid registret innan du börjar.

---

## Hur arbetet körs (sedan 2026-09-25)

**En session per domän, en PR per domän.** En Routine (`TKB-migrering: nästa domän`, timvis) startar varje timme en ny session som följer skillen **`tkb-next-domain`**. Sessionen gör något av följande och avslutas sedan:

1. En röd `main`-körning finns: den rättas först, eftersom den blockerar publiceringen av alla domäner.
2. Pipelinens öppna PR hanteras: en grön slås ihop, en övergiven (inaktiv i mer än 3 timmar) tas över, och en aktiv lämnas ifred.
3. Annars tas nästa `pending`-domän igenom hela kedjan, fram till en grön och ihopslagen PR.

Allt tillstånd ligger i repot (`contracts-registry.json`, `QUESTIONS.md`) och i öppna PR:er med titeln `TKB: …`. Ingenting hänger på att en enskild session lever vidare. Startar du en session för hand och vill migrera fler domäner: ladda `tkb-next-domain` och följ den.

**Godkänt av användaren (2026-09-25):** pipeline-sessioner får slå ihop sina egna `TKB:`- och `TKB-fix:`-PR:er när CI är grön och domänen saknar öppna BLOCK-poster. Pusha aldrig direkt till `main`.

### Var kunskapen finns

Detaljinstruktionerna ligger i skills under `.claude/skills/`. De laddas när steget är aktuellt:

| Skill | Innehåll (motsvarar tidigare avsnitt i denna fil) |
|---|---|
| `tkb-next-domain` | Orkestrering, PR-flöde, sammanslagning, blockerat, QUESTIONS.md-format (Steg 5) |
| `tkb-fetch-convert` | Bitbucket-hämtning, docx_to_md.py, .doc-fallback (LibreOffice/antiword), domain-metadata.json (Steg 1–2) |
| `tkb-ig-builder` | Katalogstruktur, sushi-config-mall, sidmallar, `input/images/`, filnamn och ankare (Steg 3) |
| `tkb-fsh-model` | FSH-konventioner, reserverade namn, datatypmappning, invarianter, SUSHI (Steg 4–4.5) |
| `tkb-ci-feedback` | GitHub Actions, qa-errors.json, jobbloggar, `[LINK-CHECK]`, felprioritering (Steg 4.6–4.7) |

### Verktyg

- `scripts/preflight_lint.py igs/TKB_x` — alla kända, mekaniskt upptäckbara felmönster. Kör före varje push (exit 0 krävs).
- `make sushi-one D=TKB_x` — lokal SUSHI-kompilering (0 errors krävs).
- `scripts/registry_update.py` — alla ändringar i `contracts-registry.json`.
- `.claude/hooks/session-start.sh` — installerar sushi, python-docx, antiword och FHIR-baspaketet (offline-stub) i nya sessioner.

**När du hittar ett nytt återkommande felmönster:** dokumentera det i rätt skill med felsignatur och åtgärd, och lägg till en kontroll i `preflight_lint.py` om det går att upptäcka mekaniskt. QUESTIONS.md läses inte av nästa domäns session. Skills och linten gör det.

---

## Global state: contracts-registry.json

Innan du gör något: läs `contracts-registry.json`. Om den inte finns, skapa den.

Registret trackar **domäner** (= TKBer = en IG var), inte enskilda kontrakt.

```json
{
  "last_updated": "ISO-timestamp",
  "domains": [
    {
      "id": "clinicalprocess.healthcond.description",
      "bitbucket_slug": "riv.clinicalprocess.healthcond.description",
      "zip_url": "https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/downloads/clinicalprocess_healthcond_description_4.0.zip",
      "domain_version": "4.0",
      "status": "pending | in-progress | done | blocked",
      "blocked_reason": null,
      "output_dir": "igs/TKB_clinicalprocess_healthcond_description/",
      "contracts": [
        { "id": "GetCareDocumentation", "version": "3.0.5" },
        { "id": "GetDiagnosis", "version": "3.0.5" }
      ],
      "questions_count": 0,
      "sushi_result": null,
      "started_at": null,
      "completed_at": null
    }
  ]
}
```

Bearbeta domäner i tur och ordning. Markera `in-progress` när du börjar, `done` när klart, `blocked` om du inte kan fortsätta utan manuell input. **Redigera aldrig registret för hand** — använd `scripts/registry_update.py` (se `tkb-next-domain`), så att sammanslagningskonflikter mot CI-botens commits kan lösas mekaniskt.

---

---

## Domänkunskap agenten MÅSTE ha

### Svenska hälso-IT-begrepp

- **RIV-TA**: Regelverk för interoperabilitet vid vård- och omsorgstjänster — definierar WSDL/SOAP-baserade tjänstekontrakt
- **NTjP**: Nationell tjänsteplattform — infrastruktur för meddelandeförmedling
- **HSA-ID**: Hälso- och sjukvårdens adressregister — identifierare för vårdenheter och personal
- **PDL**: Patientdatalagen — styr åtkomstkontroll och loggning
- **Engagement index**: Katalog över var patientinformation finns registrerad

### Vanliga RIV-TA domänprefix

| Prefix | Domän |
|---|---|
| `clinicalprocess:activity:actions` | Journalhandlingar |
| `clinicalprocess:healthcond:description` | Diagnoser, hälsotillstånd |
| `clinicalprocess:logistics:referral` | Remisser |
| `scheduling:activity:request` | Bokningar |
| `insuranceprocess:healthreporting` | Försäkring |
| `infrastructure:itintegration:engagementindex` | Engagemangsindex |

## Felhantering och robusthet

- **Word-dokument saknar förväntad sektion:** Generera tomt fält med kommentar `// SAKNAS I KÄLLDOKUMENT — kontrollera manuellt` och lägg till QUESTIONS-post
- **Zip kan inte laddas ner:** Markera `blocked` (se `tkb-next-domain` steg 7), logga felmeddelande
- **Kodverk utan koder:** Skapa CodeSystem med `^content = #fragment`, lägg till TODO
- **Tvetydig kardinalitet:** Välj det säkrare alternativet (0..1 framför 1..1), logga ASSUME
- **Okänd bastyp:** Använd `string` som fallback, logga ASSUME med föreslagen korrekt typ
- **SUSHI kompileringsfel:** åtgärda och kör om; hanteras som CI-fel (max 3 fix-försök per domän, sedan `blocked` — se `tkb-next-domain` steg 7)
- **SUSHI dependency-fel (package not found):** Markera `blocked` direkt — kräver manuell åtgärd av miljön

---

## Miljövariabler (sätt innan start)

```bash
BITBUCKET_WORKSPACE=rivta-domains    # Workspace med alla domänrepos
OUTPUT_BASE_DIR=./igs                # Lokal katalog för genererade IGs
INERA_CANONICAL_BASE=https://fhir.inera.se
# Valfritt: Bitbucket-auth om privata repos behövs
BITBUCKET_USERNAME=...
BITBUCKET_APP_PASSWORD=...
```
