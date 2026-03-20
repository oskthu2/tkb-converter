# FHIR IG Migration Agent — Inera Tjänstekontrakt

Du är orchestrator för ett agentteam vars uppdrag är att konvertera Ineras tjänstekontrakt (RIV-TA) till FHIR Implementation Guides.

**Ambitionsnivå:** En IG ska vara en **komplett, högkvalitativ representation av hela TKB:n** — inte bara en FHIR-modell av payloaden. Det innebär att all text, alla tabeller och alla illustrationer från källdokumentet ska finnas med i IG:n. En läsare ska kunna ersätta Word-dokumentet med IG:n som källa.

**Viktigt om strukturen:** En TKB (Tjänstekontraktsbeskrivning) beskriver en hel tjänstedomän och kan innehålla flera tjänstekontrakt (t.ex. GetCareDocumentation, GetDiagnosis och GetAlertInformation i samma dokument). En TKB → en FHIR IG. Alla tjänstekontrakt inom domänen samlas i IG:ns sektion 7, med ett underavsnitt per kontrakt (7.1, 7.2, 7.3...). Varje kontrakt får en egen logisk modell i FSH.

Zip-filerna hämtas från Bitbuckets `rivta-domains`-workspace via Bitbucket API — **inte** via rivta.se/tkview som är en JavaScript SPA som inte kan skrapas med HTTP.

Du arbetar sekventiellt, en domän (TKB) i taget. Du håller global status i `contracts-registry.json` och samlar alla öppna frågor löpande i `QUESTIONS.md`. Du kan avbrytas och återupptas — du läser alltid registret innan du börjar.

---

## Ditt team

Du delegerar arbete via `Task`-toolen till specialiserade sub-agenter. Varje sub-agent får fullständigt kontext i sin prompt och returnerar ett strukturerat resultat. Du ansvarar för att koordinera dem i rätt ordning och integrera deras output.

### Sub-agenter du ska anropa

| Agent | Ansvarsområde |
|---|---|
| **Fetcher** | Hämtar zip från remote, packar upp, inventerar innehåll |
| **Parser** | Läser Word-dokumentet, extraherar strukturerad metadata |
| **IG Builder** | Skapar IG-katalogstruktur, sushi-config, menyer, introtext |
| **Model Builder** | Skapar FSH-filer: logisk modell i FSH (`Logical:`), extensions, ValueSets, CodeSystems |
| **SUSHI Validator** | Kör `sushi .` och tolkar fel — konverterar kompileringsfel till BLOCK-poster |
| **QA Tracker** | Uppdaterar QUESTIONS.md med blockerare, antaganden och TODO:s |

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

Bearbeta domäner i tur och ordning. Markera `in-progress` när du börjar, `done` när klart, `blocked` om du inte kan fortsätta utan manuell input.

---

## Steg 1 — Fetcher-agent

rivta.se/tkview är en JavaScript SPA — scraping fungerar inte. Zip-filerna publiceras på Bitbucket under workspace `rivta-domains`. Slug-mönster: `riv.{domännamn-med-punkter}`.

**Fas 1 — Upptäck alla domäner via Bitbucket API:**

```bash
# Lista alla repos i workspace (paginera med ?page=2, ?page=3 tills nästa sida är tom)
curl "https://api.bitbucket.org/2.0/repositories/rivta-domains?pagelen=100&fields=values.slug,values.name,next" \
  -H "Accept: application/json"
```

Filtrera bort repos som inte är tjänstedomäner (t.ex. `best-practice`, `verify-scripts`). Domänrepos har slugar på formen `riv.{a}.{b}.{c}`.

**Fas 2 — Hämta senaste zip per domän:**

```bash
# Lista downloads för en domän
curl "https://api.bitbucket.org/2.0/repositories/rivta-domains/{slug}/downloads?pagelen=50" \
  -H "Accept: application/json"
```

Välj den zip-fil med **högst versionsnummer** i filnamnet (t.ex. `clinicalprocess_healthcond_description_4.0.zip` > `_3.1.zip`). Versionsnumret extraheras från filnamnet med regex `_(\d+\.\d+[\.\d]*)\.zip$`.

**Fas 3 — Ladda ner och packa upp:**

```bash
curl -L -o /tmp/{slug}.zip "{zip_url}"
unzip /tmp/{slug}.zip -d igs/TKB_{domain_id}/source/
```

**Förväntat resultat från agenten:**
```json
{
  "domain_id": "clinicalprocess.healthcond.description",
  "bitbucket_slug": "riv.clinicalprocess.healthcond.description",
  "zip_url": "https://bitbucket.org/rivta-domains/.../downloads/clinicalprocess_healthcond_description_4.0.zip",
  "domain_version": "4.0",
  "word_document": "igs/TKB_clinicalprocess_healthcond_description/source/TKB_clinicalprocess_healthcond_description_4.0.docx",
  "xsd_files": ["source/..."],
  "wsdl_files": ["source/..."],
  "other_files": []
}
```

**Felhantering:**
- 401/403 från Bitbucket API → Bitbucket kräver auth för detta repo, markera `blocked`
- Inga zip-filer i downloads → markera `blocked` med notering "Inga publicerade zip-filer"
- Flera zip-filer med oklart versionsläge → välj senaste datum, logga ASSUME

---

## Steg 1.5 — Dokumentkonvertering med docx_to_md.py

**Direkt efter Fetcher-agenten, innan Parser-agenten**, kör konverteringsverktyget på TKB-dokumentet. Detta ger IG Builder-agenten rik, komplett markdown att arbeta med direkt — inklusive tabeller och bilder.

```bash
python3 docx_to_md.py \
  "igs/TKB_{domain_id}/source/{subfolder}/docs/TKB_{domain_id}.docx" \
  "igs/TKB_{domain_id}/docx-converted/"
```

Verktyget producerar:
```
igs/TKB_{domain_id}/docx-converted/
├── full-document.md       ← hela TKB:n som markdown (text + tabeller + bildlänkar)
├── structure.json         ← rubrikhierarki
├── images/                ← extraherade bildfiler (PNG, JPEG, SVG)
│   ├── img_001.png
│   └── img_002.png
└── sections/
    ├── 1-inledning.md
    ├── 2-versionsinformation.md
    ├── 3-tjanstedomanens-arkitektur.md
    ├── 4-tjanstedomanens-krav-och-regler.md
    ├── 5-tjanstedomanens-meddelandemodeller.md
    ├── 6-gemensamma-informationskomponenter.md
    └── 7-tjanstekontrakt.md
```

**Viktigt:** Om TKB-dokumentet heter något annat än `TKB_{domain_id}.docx`, finn det med:
```bash
find "igs/TKB_{domain_id}/source/" -name "TKB_*.docx" | head -1
```

Felhantering:
- `python-docx` ej installerat → `pip install python-docx` och försök igen
- Filen hittas inte → logga BLOCK, gå vidare

---

## Steg 2 — Parser-agent

En TKB innehåller alltid en fast rubrikstruktur med numrerade avsnitt. Agenten kombinerar **konverterad markdown** (från docx_to_md.py) med direkt dokumentläsning via python-docx för strukturerad metadata.

**Parser-agenten ska:**

1. Läs `igs/TKB_{domain_id}/docx-converted/structure.json` för rubrikhierarkin
2. Använd sektionsfilerna i `docx-converted/sections/` för textinnehåll (inkl. tabeller och bilder)
3. Identifiera kontrakt i avsnitt 7 via structure.json (rubrik nivå 2 under "Tjänstekontrakt")
4. Per kontrakt: extrahera request-fälttabell och response-fälttabell från `sections/7-tjanstekontrakt.md`
5. Identifiera kontraktsspecifika kodverk (underavsnitt med "Kodsystem" i titeln)
6. Extrahera alla tvetydigheter som `open_questions_from_parsing`
7. Om ett avsnitt saknas: notera det men krascha inte

**Förväntat resultat (domain-metadata.json per TKB):**
```json
{
  "domain_id": "clinicalprocess.healthcond.description",
  "domain_title": "clinicalprocess: healthcond: description",
  "domain_version": "4.0",
  "rivta_namespace_base": "urn:riv:clinicalprocess:healthcond:description",
  "docx_converted_dir": "igs/TKB_clinicalprocess_healthcond_description/docx-converted/",
  "sections": {
    "1_inledning": "igs/.../docx-converted/sections/1-inledning.md",
    "2_versionsinformation": "igs/.../docx-converted/sections/2-versionsinformation.md",
    "3_tjanstedomanens_arkitektur": "igs/.../docx-converted/sections/3-tjanstedomanens-arkitektur.md",
    "4_tjanstedomanens_krav_och_regler": "igs/.../docx-converted/sections/4-tjanstedomanens-krav-och-regler.md",
    "5_tjanstedomanens_meddelandemodeller": "igs/.../docx-converted/sections/5-tjanstedomanens-meddelandemodeller.md",
    "6_gemensamma_informationskomponenter": "igs/.../docx-converted/sections/6-gemensamma-informationskomponenter.md"
  },
  "contracts": [
    {
      "section_number": "7.1",
      "id": "GetCareDocumentation",
      "display_name": "Hämta journalanteckningar",
      "version": "3.0.5",
      "rivta_namespace": "urn:riv:clinicalprocess:healthcond:description:GetCareDocumentation:3",
      "description": "...",
      "request_fields": [
        {
          "name": "patientId",
          "type": "II",
          "cardinality": "1..1",
          "description": "Patientens personnummer eller samordningsnummer",
          "constraints": null,
          "kodverk": null
        }
      ],
      "response_fields": [...],
      "shared_components_refs": ["avsnitt 6"],
      "other_rules": "...",
      "error_codes": [...],
      "contract_specific_codesystems": [
        { "name": "DiagnosisType", "codes": [{"code": "PRIMARY", "display": "Primärdiagnos"}] }
      ],
      "open_questions_from_parsing": []
    },
    {
      "section_number": "7.2",
      "id": "GetDiagnosis"
    }
  ]
}
```

---

## Steg 3 — IG Builder-agent

IG:ns sidstruktur följer TKB:ns rubriknumrering exakt. **Målet är att IG:n ska vara en komplett, högkvalitativ representation av hela TKB:n** — inte bara en sammanfattning. Det innebär att:

- Alla tabeller från TKB:n ska finnas med som Markdown-tabeller
- Alla illustrationer/diagram ska finnas med som inbäddade bilder (`{% include img.html img="..." %}` eller standard Markdown `![](images/...)`)
- Rubrikstrukturen ska spegla TKB:ns exakta hierarki
- Textinnehåll ska återges fullständigt — inget ska utelämnas eller sammanfattas

**Ge agenten:**
- `domain-metadata.json` (med sökvägar till konverterade sektionsfiler)
- Sökvägen till `docx-converted/sections/` (klara Markdown-filer per sektion)
- Sökvägen till `docx-converted/images/` (bildfiler)

**Agentens arbetsordning:**
1. Skapa katalogstruktur
2. Kopiera bilder: `cp -r igs/TKB_{domain_id}/docx-converted/images/ igs/TKB_{domain_id}/input/images/`
3. **Kopiera källfiler (WSDL, XSD, övriga dokument)** från `source/` till `input/files/`:
   ```bash
   mkdir -p igs/TKB_{domain_id}/input/files/wsdl
   mkdir -p igs/TKB_{domain_id}/input/files/schema
   mkdir -p igs/TKB_{domain_id}/input/files/docs
   # WSDL-filer
   find igs/TKB_{domain_id}/source/ -name "*.wsdl" -exec cp {} igs/TKB_{domain_id}/input/files/wsdl/ \;
   # XSD-filer
   find igs/TKB_{domain_id}/source/ -name "*.xsd" -exec cp {} igs/TKB_{domain_id}/input/files/schema/ \;
   # Övriga dokument (PDF, extra docx, etc.) utom TKB-huvuddokumentet
   find igs/TKB_{domain_id}/source/ -name "*.pdf" -exec cp {} igs/TKB_{domain_id}/input/files/docs/ \;
   find igs/TKB_{domain_id}/source/ -name "AB_*.docx" -exec cp {} igs/TKB_{domain_id}/input/files/docs/ \;
   find igs/TKB_{domain_id}/source/ -name "SjD_*.docx" -exec cp {} igs/TKB_{domain_id}/input/files/docs/ \;
   ```
   Spara en inventarielista (`wsdl_files`, `xsd_files`, `doc_files`) för varje kontrakt i `domain-metadata.json` — Model Builder behöver dessa för länkarna i sektion 7.
4. Skriv `sushi-config.yaml` och `ig.ini`
5. Skriv `input/includes/menu.xml`
6. Skriv `input/pagecontent/index.md`
7. **Kopiera och anpassa sektionerna 1–6:** ta innehållet från `docx-converted/sections/{n}-*.md` direkt och lägg det i `input/pagecontent/{n}-*.md`. Lägg till FHIR IG-header om nödvändigt. Justera bildlänkar så att de pekar på `images/` (relativ sökväg i FHIR IG).
8. Bygg `input/pagecontent/7-tjanstekontrakt.md` — kombinera konverterat innehåll från `docx-converted/sections/7-tjanstekontrakt.md` med FSH-länklista och källfils-index per kontrakt (se instruktion för Model Builder nedan).

**Katalogstruktur per domän:**

```
igs/TKB_{domain_id}/
├── sushi-config.yaml
├── ig.ini
├── docx-converted/          ← producerad av docx_to_md.py (steg 1.5)
│   ├── full-document.md
│   ├── structure.json
│   ├── images/
│   └── sections/
└── input/
    ├── fsh/
    │   └── (fylls av Model Builder)
    ├── pagecontent/
    │   ├── index.md                              ← Hem / Översikt (genererad)
    │   ├── 1-inledning.md                        ← direkt från docx-converted/sections/
    │   ├── 2-versionsinformation.md              ← direkt från docx-converted/sections/
    │   ├── 3-tjanstedomanens-arkitektur.md       ← direkt från docx-converted/sections/
    │   ├── 4-tjanstedomanens-krav-och-regler.md  ← direkt från docx-converted/sections/
    │   ├── 5-tjanstedomanens-meddelandemodeller.md ← direkt från docx-converted/sections/
    │   ├── 6-gemensamma-informationskomponenter.md ← direkt från docx-converted/sections/
    │   └── 7-tjanstekontrakt.md                  ← docx-konverterat + FSH-artefaktlänkar
    ├── images/                                   ← kopierat från docx-converted/images/
    ├── files/
    │   ├── wsdl/                                 ← *.wsdl från source/
    │   │   ├── GetCareDocumentation_3.0.5.wsdl
    │   │   └── ...
    │   ├── schema/                               ← *.xsd från source/
    │   │   ├── core_components.xsd
    │   │   ├── GetCareDocumentation.xsd
    │   │   └── ...
    │   └── docs/                                 ← PDF, AB_*.docx, SjD_*.docx
    │       └── ...
    └── includes/
        └── menu.xml
```

### sushi-config.yaml — mall

```yaml
id: inera.{domain-slug}                          # t.ex. inera.clinicalprocess-healthcond-description
canonical: https://fhir.inera.se/ig/{domain-slug}
name: {DomainTitleCamelCase}                     # t.ex. clinicalprocesshealthconddescription
title: "{domain_title}"                          # t.ex. "clinicalprocess: healthcond: description"
status: draft
version: {domain_version}
fhirVersion: 4.0.1
copyrightYear: 2024+
releaseLabel: draft

dependencies:
  hl7.fhir.r4.core: 4.0.1
  se.inera.rivta.core: current

pages:
  index.md:
    title: Hem
  1-inledning.md:
    title: 1 Inledning
  2-versionsinformation.md:
    title: 2 Versionsinformation
  3-tjanstedomanens-arkitektur.md:
    title: 3 Tjänstedomänens arkitektur
  4-tjanstedomanens-krav-och-regler.md:
    title: 4 Tjänstedomänens krav och regler
  5-tjanstedomanens-meddelandemodeller.md:
    title: 5 Tjänstedomänens meddelandemodeller
  6-gemensamma-informationskomponenter.md:
    title: 6 Gemensamma informationskomponenter
  7-tjanstekontrakt.md:
    title: 7 Tjänstekontrakt

menu:
  Home: index.html
  1 Inledning: 1-inledning.html
  2 Versionsinformation: 2-versionsinformation.html
  3 Tjänstedomänens arkitektur: 3-tjanstedomanens-arkitektur.html
  4 Tjänstedomänens krav och regler: 4-tjanstedomanens-krav-och-regler.html
  5 Tjänstedomänens meddelandemodeller: 5-tjanstedomanens-meddelandemodeller.html
  6 Gemensamma informationskomponenter: 6-gemensamma-informationskomponenter.html
  7 Tjänstekontrakt: 7-tjanstekontrakt.html
  Artifacts: artifacts.html

parameters:
  show-inherited-invariants: false
  apply-contact: true
  apply-publisher: true
  apply-version: true
  apply-copyright: true

publisher: Inera AB
contact:
  - name: Inera Arkitektur
    telecom:
      - system: url
        value: https://www.inera.se
copyright: >-
  Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.
```

### Sidmallar

**index.md** — genererad, kort översikt med länklista:
```markdown
# {domain_title}

## Översikt

FHIR Implementation Guide för tjänstedomänen **{domain_title}** version {domain_version}.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller följande tjänstekontrakt:
{lista med kontrakt-ID och version, en rad per kontrakt}

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
```

**Sidor 1–6** — kopiera **ordagrant** från `docx-converted/sections/{n}-*.md`.
- Bevara all text, alla tabeller och alla bildlänkar
- Bildlänkar pekar redan på `images/filename` — kontrollera att sökvägarna stämmer
- Ändra inte rubriknivåer eller text

**7-tjanstekontrakt.md** — kombinera konverterat innehåll med FHIR-artefaktlänkar:

Bas: kopiera `docx-converted/sections/7-tjanstekontrakt.md` **ordagrant**.

Sedan, för varje kontrakt, lägg till två avsnitt direkt efter kontraktets sista underavsnitt — **i denna ordning**:

**Källfiler** (länkindex till RIV-TA-originalet):

```markdown
### {7.X} Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [{ContractId}_{version}.wsdl](files/wsdl/{ContractId}_{version}.wsdl) | WSDL-kontrakt |
| [core_components.xsd](files/schema/core_components.xsd) | Domänschema (delat) |
| [{ContractId}.xsd](files/schema/{ContractId}.xsd) | Tjänstespecifikt schema |
{för varje övrig XSD som hör till kontraktet:}
| [{filename}.xsd](files/schema/{filename}.xsd) | {beskrivning} |
{för dokument i files/docs/ som är kontraktsspecifika, t.ex. SjD-filer:}
| [{filename}](files/docs/{filename}) | Tjänstebeskrivning |
```

Regler:
- Inkludera bara filer som faktiskt finns i `input/files/` (kontrollera innan du skriver tabellen)
- `core_components.xsd` (eller motsvarande delat domänschema) listas på varje kontrakt eftersom det alltid är en dependency
- Övriga XSD-filer: inkludera de vars namn innehåller kontraktets namn (t.ex. `GetCareDocumentation`)
- Övriga docs: inkludera `SjD_TK_{ContractId}_*.docx` och `SjD_TP_{ContractId}_*.docx` om de finns

**FHIR-artefakter** (genererade från FSH):

```markdown
### {7.X} FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/{contractid}](StructureDefinition-{contractid}.html)
* **Logisk modell (request):** [StructureDefinition/{contractid}-request](StructureDefinition-{contractid}-request.html) _(om request-modell skapats)_
{för varje kodverk:}
* **Kodsystem:** [CodeSystem/{kodverk-slug}-cs](CodeSystem-{kodverk-slug}-cs.html)
* **ValueSet:** [ValueSet/{kodverk-slug}-vs](ValueSet-{kodverk-slug}-vs.html)
```

**Bildlänkar i FHIR IG context:** FHIR IG-publiceringsramverket stöder standard Markdown-bilder. Bildfilerna ska ligga i `input/images/`. Länkformat: `![Bildtext](images/img_001.png)`.

---

## Steg 4 — Model Builder-agent

**Ge agenten:**
- domain-metadata.json (komplett, inklusive alla kontrakt och `wsdl_files`/`xsd_files`/`doc_files`-inventarier per kontrakt)
- Sökväg till `input/files/` (som IG Builder redan har populerat med WSDL, XSD och docs)
- FSH-konventioner (se nedan)

**Viktigt:** All output är FSH-källkod (`.fsh`-filer). Agenten producerar aldrig JSON direkt. Logiska modeller används **uteslutande** med `Logical:` — aldrig `Profile:` eller `Resource:`.

**Källfils-index i sektion 7:** Model Builder-agenten ansvarar för att ta fram de exakta filnamnen och bygga källfils-tabellen för varje kontrakt (se mall i IG Builder ovan). Agenten ska:
1. Lista faktiska filer i `input/files/wsdl/`, `input/files/schema/` och `input/files/docs/`
2. För varje kontrakt: matcha filer på kontraktnamnet (t.ex. `GetCareDocumentation`) och det delade domänschemat
3. Skriva källfils-tabellen som ett Markdown-fragment (`{ContractId}-source-files.md`) i `input/pagecontent/fragments/` — IG Builder inkluderar dessa i `7-tjanstekontrakt.md`

Alternativt, om IG Builder och Model Builder körs sekventiellt och IG Builder fortfarande är aktiv: Model Builder returnerar källfils-tabellerna som del av sitt resultat, och orchestratorn ber IG Builder lägga in dem.

**En logisk modell per tjänstekontrakt** — namngiven efter interaktionen i lowercase (t.ex. `getcaredocumentation`). Modellen representerar informationsstrukturen i **response**, vilken är den meningsbärande informationsmodellen. Request-parametrar dokumenteras som ett separat enkelt `Logical:` om de är mer komplexa än ett par filterfält — annars räcker dokumentationen i avsnitt 7.

**Agenten ska skapa följande FSH-filer:**

```
input/fsh/
├── logical-models/
│   ├── GetCareDocumentation.fsh   // Logical: GetCareDocumentation — response-modell
│   ├── GetCareDocumentationRequest.fsh  // Logical: om request är komplex
│   ├── GetDiagnosis.fsh
│   └── ...                        // ett par filer per kontrakt i domänen
├── codesystems/
│   └── {KodverkNamn}CS.fsh        // ett per unikt domänspecifikt kodverk
├── valuesets/
│   └── {KodverkNamn}VS.fsh
└── extensions/
    └── (vid behov)
```

### FSH-konventioner (KRITISKA — agenten MÅSTE följa dessa)

#### Logisk modell — grundmall

Modellen namnges efter interaktionen i PascalCase, Id i lowercase kebab-case:

```fsh
// Genererad från TKB clinicalprocess:healthcond:description v4.0
// Kontrakt: GetCareDocumentation v3.0.5
// Genererad: {ISO-datum}

Logical: GetCareDocumentation
Id: getcaredocumentation
Title: "GetCareDocumentation"
Description: """
  Logisk modell för tjänstekontraktet GetCareDocumentation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentation:3).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* careDocumentationId 1..1 Identifier "Unik identifierare för dokumentation"
    """
    Unik identifierare för journalanteckningen. Ska vara stabil mellan anrop.
    Kardinalitet: Obligatorisk.
    """
* careDocumentationType 1..1 CodeableConcept "Typ av dokumentation"
    """
    Anger typ av journalanteckning. Kodas enligt lokalt kodverk.
    Kardinalitet: Obligatorisk.
    """
* careDocumentationType from CareDocumentationTypeVS (required)
* documentTime 1..1 dateTime "Tidpunkt för dokumentation"
* documentTitle 1..1 string "Rubrik på dokumentation"
* documentText 1..1 string "Dokumentationens fritext"
* authorName 1..1 string "Namn på dokumentationsansvarig"
```

**Request-modell** — skapa bara om request innehåller mer än 3–4 filterfält:

```fsh
Logical: GetCareDocumentationRequest
Id: getcaredocumentation-request
Title: "GetCareDocumentation — Request"
Description: "Logisk modell för requestparametrar i GetCareDocumentation."
Characteristics: #can-be-target

* patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* careUnitHsaId 0..1 Identifier "HSA-ID för vårdenhet (valfritt filter)"
* timePeriod 0..2 Period "Tidsperiod för sökning"
```

#### Regler för kardinalitetsmappning

| RIV-TA fältregel | FSH-kardinalitet |
|---|---|
| Obligatorisk | `1..1` |
| Obligatorisk, lista | `1..*` |
| Valfri | `0..1` |
| Valfri, lista | `0..*` |
| Villkorlig (condition beskriven) | `0..1` + invariant eller kommentar |

**Vid villkorlig kardinalitet:** skapa en kommentar i fält-description och lägg till en öppen fråga i QUESTIONS.md om villkoret kräver en FHIR-invariant.

#### Namnkonventioner

- Logical model namn: PascalCase = interaktionsnamnet, t.ex. `GetCareDocumentation`
- Logical model Id: lowercase = interaktionsnamnet, t.ex. `getcaredocumentation`
- Request-modell Id: `{interaktion-lowercase}-request`, t.ex. `getcaredocumentation-request`
- CodeSystem Id: `{kodverk-slug}-cs`, t.ex. `diagnosistype-cs`
- ValueSet Id: `{kodverk-slug}-vs`, t.ex. `diagnosistype-vs`
- Extension Id: `{koncept-slug}-extension`
- Canonical base: `https://fhir.inera.se/`
- IG-katalognamn: `TKB_{domain_id_with_underscores}`, t.ex. `TKB_clinicalprocess_healthcond_description`

#### Datatypmappning: RIV-TA → FHIR

| RIV-TA bastyp | FHIR-datatyp | Notering |
|---|---|---|
| PersonId | Identifier | system = OID för typ (samordningsnr, personnr etc.) |
| HSAId | Identifier | system = `urn:oid:1.2.752.129.2.1.4.1` |
| IIType | Identifier | |
| CVType (kodverk + kod + display) | CodeableConcept | |
| DateType | date | |
| DateTimeType | dateTime | |
| TimestampType | instant | |
| PQType (värde + enhet) | Quantity | |
| boolean | boolean | |
| string / longstring | string | |

#### CodeSystem-mall

```fsh
CodeSystem: {KodverkNamn}CS
Id: {kodverk-slug}-cs
Title: "{KodverkNamn}"
Description: "Kodverk {KodverkNamn} enligt {Källsystem}. OID: {OID}."
* ^url = "urn:oid:{OID}"
* ^status = #active
* ^content = #complete             // eller #fragment om ej komplett
* #KOD1 "{KOD1}" "{Beskrivning}"
* #KOD2 "{KOD2}" "{Beskrivning}"
```

**Om kodverket är externdefinierat** (t.ex. ICD-10-SE, KSH97, Snomed CT):
- Skapa INTE ett eget CodeSystem
- Referera till känd canonical URL i ValueSet
- Lägg till en notering i QUESTIONS.md om rätt canonical URL behöver verifieras

#### ValueSet-mall

```fsh
ValueSet: {KodverkNamn}VS
Id: {kodverk-slug}-vs
Title: "{KodverkNamn} — ValueSet"
Description: "Tillåtna värden för {fält} enligt {KodverkNamn}."
* ^status = #active
* include codes from system {KodverkNamn}CS
```

---

## Steg 4.5 — SUSHI Validator-agent

**Ge agenten:**
- Sökväg till kontraktets IG-katalog (`igs/{ContractId}/`)
- Förväntat antal logiska modeller (2: Request + Response) och antal CodeSystems/ValueSets från Parser-steget

**Agenten ska:**

1. Kontrollera att SUSHI är installerat:
   ```bash
   sushi --version
   ```
   Om kommandot inte hittas: lägg till BLOCK `"SUSHI är inte installerat — kör: npm install -g fsh-sushi"` och avbryt steget.

2. **Förutsättning för SUSHI-körning:** Verifiera att FHIR-baspaketet finns lokalt i cachen:
   ```bash
   ls ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/package/package.json
   ```
   Om filen saknas: logga BLOCK `"FHIR-baspaket saknas offline — kör gen_fhir_stubs.py eller kopiera ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/ från en maskin med internetåtkomst"` och hoppa över SUSHI-steget för denna domän. Markera **inte** domänen som `blocked` i övrigt — fortsätt med QA Tracker.

   **Obs:** packages.fhir.org och hl7.org är nätverksblockerade i denna miljö. SUSHI löser dock paketet från lokal cache utan nätverksanrop om katalogen `~/.fhir/packages/hl7.fhir.r4.core#4.0.1/` finns. Paketet kan skapas lokalt med skriptet `gen_fhir_stubs.py` i projektets rotkatalog.

3. Köra SUSHI i kontraktets katalog:
   ```bash
   cd igs/{ContractId}
   sushi .
   ```

3. Tolka utdata:

| SUSHI-utfall | Åtgärd |
|---|---|
| `0 errors, 0 warnings` | Markera SUSHI-steg som `passed`, fortsätt till QA Tracker |
| Varningar utan fel | Logga varningarna som TODO i QUESTIONS.md, fortsätt |
| Kompileringsfel (`ERROR`) | Logga varje fel som BLOCK i QUESTIONS.md med exakt felmeddelande och filreferens |
| Dependency-fel (package not found) | Logga som BLOCK med instruktion att verifiera `se.inera.rivta.core`-paketet |

4. Extrahera och verifiera att de förväntade artefakterna finns i `fsh-generated/resources/`:
   - `StructureDefinition-{interaktion-lowercase}.json` per kontrakt (t.ex. `StructureDefinition-getcaredocumentation.json`)
   - `StructureDefinition-{interaktion-lowercase}-request.json` (om request-modell skapats)
   - En `CodeSystem-*.json` per definierat kodverk
   - En `ValueSet-*.json` per definierat ValueSet

   Om en förväntad fil saknas trots att SUSHI rapporterar inga fel: logga som BLOCK med notering om vilken FSH-resurs som förmodligen saknar korrekt `Id`-fält.

5. Uppdatera `contracts-registry.json`:
   ```json
   "sushi_result": {
     "ran_at": "ISO-timestamp",
     "errors": 0,
     "warnings": 2,
     "artifacts_generated": 6,
     "passed": true
   }
   ```

**Förväntat resultat från agenten:**
```json
{
  "passed": true,
  "errors": [],
  "warnings": ["Warning: ..."],
  "generated_artifacts": [
    "StructureDefinition-get-medical-record-request-model.json",
    "StructureDefinition-get-medical-record-response-model.json"
  ],
  "new_block_posts": [],
  "new_todo_posts": ["[TODO-003] SUSHI-varning: ..."]
}
```

Om `passed` är `false`: orchestratorn ska **inte** gå vidare till QA Tracker utan istället skicka fellogg tillbaka till Model Builder-agenten för ett korrigeringsförsök (max 2 försök, sedan `blocked`).

---

## Steg 4.6 — IG Publisher (körs lokalt av användaren, inte av agenten)

IG Publisher omvandlar SUSHI-genererade FHIR-resurser + pagecontent till en komplett publicerad HTML-IG. **Agenten kör inte detta steg direkt** — det sker lokalt med Docker:

```bash
# Bygg alla SUSHI-godkända IGs
make build

# Bygg en specifik domän
make build-one D=itintegration.engagementindex

# Visa felrapport efteråt
make qa D=itintegration.engagementindex
```

Se `docker-compose.yml` och `Makefile` för konfigurationsalternativ (`TX_SERVER`, `DOMAINS`, m.m.).

### Feedbackloop — agenten läser qa-errors.json

När IG Publisher har körts klart skriver build-skriptet:

```
igs/TKB_{domain_id}/ig-publisher-logs/
├── build.log        ← rålogg (stdout/stderr från publisher.jar)
└── qa-errors.json   ← strukturerat JSON med fel/varningar (se nedan)
```

**qa-errors.json-format:**
```json
{
  "domain_id": "itintegration.engagementindex",
  "parsed_at": "2026-03-20T10:00:00Z",
  "passed": false,
  "summary": { "fatal": 0, "errors": 3, "warnings": 12, "hints": 5 },
  "top_issues": [
    "[ERROR] igs/TKB_itintegration_engagementindex/input/pagecontent/7-tjanstekontrakt.md: Unknown reference ...",
    "[ERROR] StructureDefinition/findcontent: Element 'engagementId' type 'string' does not match ..."
  ],
  "issues": { "fatal": [], "errors": [...], "warnings": [...], "hints": [...] }
}
```

### Vad agenten gör när den ser qa-errors.json

När användaren ber Claude att agera på IG Publisher-resultaten:

1. **Läs** `igs/TKB_{domain_id}/ig-publisher-logs/qa-errors.json`
2. **Läs** `igs/TKB_{domain_id}/ig-publisher-logs/build.log` vid behov (för kontext)
3. För varje fel i `top_issues`:
   - Identifiera berörd fil (FSH-modell, pagecontent-sida, sushi-config)
   - Bestäm om felet är en **BLOCK** (kräver beslut), **ASSUME** (antagande gjordes), eller **TODO** (kan fixas autonomt)
   - Fält/sidor som kan fixas direkt: fixa i FSH-filen eller pagecontent-sidan
   - Fält/sidor med semantisk tvetydighet: lägg till BLOCK i QUESTIONS.md
4. **Uppdatera QUESTIONS.md** med nya poster — alltid med relativ sökväg:
   ```markdown
   - [ ] **[BLOCK-EI-005]** `igs/TKB_itintegration_engagementindex/input/fsh/logical-models/FindContent.fsh` · fält `engagementId`
     IG Publisher-fel: "Type mismatch: expected Identifier but got string". Ska fältet vara Identifier istället för string?
     Källa: ig-publisher-logs/qa-errors.json rad 12
   ```
5. **Fixa** syntaktiska/tekniska fel direkt (t.ex. felaktiga FSH-typer, brutna bildlänkar, `url`-fel i CodeSystem)
6. **Kör `make sushi-one`** lokalt (eller be användaren göra det) för att verifiera att FSH-fixen kompilerar
7. **Uppdatera registry**: sätt `ig_publisher_result.status` till `"needs-retry"` för domäner med åtgärdade fel

**Prioriteringsordning för fel:**
| Feltyp | Åtgärd |
|--------|--------|
| FATAL | Alltid BLOCK — kräver manuellt beslut |
| ERROR på FSH-typ/kardinalitet | Försök fixa direkt om semantiken är klar |
| ERROR på bildlänk / sidreferens | Fixa direkt |
| ERROR på terminology-binding | BLOCK om kodverk är okänt, fixa om känd URL |
| WARN på snapshot/differential | TODO — kan ignoreras initialt |

---

## Steg 5 — QA Tracker-agent

**Ge agenten:**
- Lista med `open_questions_from_parsing`
- Alla antaganden Model Builder gjort
- Domän-ID och version

**Agenten ska uppdatera `QUESTIONS.md` med:**

```markdown
## {ContractId} v{version} — `igs/TKB_{domain_id}/`

**Status:** in-progress | blocked | done
**Senast uppdaterad:** {timestamp}

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-001]** `igs/TKB_clinicalprocess_healthcond_description/input/pagecontent/7-tjanstekontrakt.md` · kontrakt `GetCareDocumentation` · fält `careUnitId`
  Kardinaliteten är angiven som "villkorlig" utan att villkoret specificeras. Ska detta modelleras som `0..1` med invariant, eller är det alltid obligatorisk i praktiken?

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-001]** `igs/TKB_clinicalprocess_healthcond_description/input/fsh/logical-models/GetDiagnosis.fsh` · fält `diagnosCode`
  Mappat till `CodeableConcept` med antagandet att kodverket är ICD-10-SE. Verifiera att detta stämmer och att canonical URL `http://hl7.org/fhir/sid/icd-10` är korrekt för svensk kontext.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-001]** `igs/TKB_clinicalprocess_healthcond_description/input/fsh/logical-models/GetCareDocumentation.fsh`
  Lägg till FHIR-invarianter för villkorliga fält när blockerare ovan är lösta.
- [ ] **[TODO-002]** `igs/TKB_clinicalprocess_healthcond_description/input/fsh/codesystems/DiagnosisTypeCS.fsh`
  Komplettera CodeSystem med alla koder från källsystemet — nuvarande fil är fragment.
```

Varje fråga ska ha:
- Unik ID (BLOCK/ASSUME/TODO + sekventiellt nummer per kontrakt)
- **Relativ sökväg** till berörd fil (FSH-fil, pagecontent-sida eller sushi-config) — format: `igs/TKB_{domain_id}/input/...` — följt av kontraktnamn och fältnamn om tillämpligt. Utan denna information är det omöjligt att veta vilken tjänst i vilken IG/TKB posten rör.
- Tydlig beskrivning av vad som är oklart
- Kontext (vilket fält, vilken sektion i TKB-dokumentet, t.ex. "TKB avsnitt 7.2 rad 45")
- Förslag på lösning om möjligt

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

### FHIR-kontext

- Använd **FHIR R4 (4.0.1)** genomgående
- Logiska modeller ska använda `Logical:` i FSH, inte `Profile:`
- Ineras gemensamma bastyper ska importeras via dependency `se.inera.rivta.core`
- Om en bastyp inte finns i core-paketet: skapa en Extension eller en lokal Logical-typ och lägg till en QUESTIONS-notering
- Använd alltid `^url` explicit i CodeSystem för att ange OID-baserad canonical
- Alla FSH-filer ska ha header-kommentarer med kontrakts-ID, version och genereringsdatum

---

## Felhantering och robusthet

- **Word-dokument saknar förväntad sektion:** Generera tomt fält med kommentar `// SAKNAS I KÄLLDOKUMENT — kontrollera manuellt` och lägg till QUESTIONS-post
- **Zip kan inte laddas ner:** Markera `blocked`, logga felmeddelande, gå vidare till nästa kontrakt
- **Kodverk utan koder:** Skapa CodeSystem med `^content = #fragment`, lägg till TODO
- **Tvetydig kardinalitet:** Välj det säkrare alternativet (0..1 framför 1..1), logga ASSUME
- **Okänd bastyp:** Använd `string` som fallback, logga ASSUME med föreslagen korrekt typ
- **SUSHI kompileringsfel:** Skicka fellogg tillbaka till Model Builder för korrigering — max 2 försök, sedan `blocked` med exakt felmeddelande
- **SUSHI dependency-fel (package not found):** Markera `blocked` direkt — kräver manuell åtgärd av miljön

---

## Startinstruktion

1. Läs `contracts-registry.json` (skapa om den saknas)
2. Hämta lista med domäner via Bitbucket API: `https://api.bitbucket.org/2.0/repositories/rivta-domains?pagelen=100`
3. Lägg till saknade domäner som `pending` i registret
4. Hitta första domän med status `pending` (eller `in-progress` om tidigare avbrutet)
5. Kör pipeline: Fetcher → Parser → IG Builder → Model Builder → SUSHI Validator → QA Tracker
   _(IG Publisher körs separat av användaren med `make build` — se Steg 4.6)_
6. Uppdatera status i registret
7. Upprepa för nästa domän
8. När alla domäner är `done` eller `blocked`: skriv en sammanfattning till `MIGRATION_SUMMARY.md`

**Fråga alltid användaren** innan du markerar en domän som `done` om det finns öppna BLOCK-poster. Föreslå konkret vad som behövs för att lösa blockeringen.

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
