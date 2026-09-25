---
name: tkb-ig-builder
description: Steg 3 i TKB-migreringen: bygg IG-katalogen (sushi-config.yaml, ig.ini, menu.xml, index.md, sidor 1–7, källfilsindex) för en domän. Innehåller reglerna för input/images/, bildlänkar, filnamn utan mellanslag och ankarformat i 7-tjanstekontrakt.md. Använd när IG-strukturen eller pagecontent skrivs eller ändras.
---

# Bygg IG-strukturen för en TKB-domän

_Flyttat från CLAUDE.md 2026-09-25, i huvudsak ordagrant (del av omläggningen till en session per domän + PR per domän). Se `.claude/skills/tkb-next-domain/SKILL.md` för hur stegen hänger ihop. Stegnumren hänvisar till den ursprungliga CLAUDE.md-indelningen: Steg 1–2 = `tkb-fetch-convert`, Steg 3 = `tkb-ig-builder`, Steg 4–4.5 ("FSH-konventioner") = `tkb-fsh-model`, Steg 4.6–4.7 = `tkb-ci-feedback`, Steg 5 (QUESTIONS.md-format) = `tkb-next-domain`._

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
3. **Kopiera källfiler (WSDL, XSD, övriga dokument)** från `source/` till **`input/images/`** (se "KRITISKT — det finns bara EN publicerad static-filkatalog" nedan för varför — det finns ingen `input/files/`-motsvarighet som IG Publisher känner igen):
   ```bash
   # Alla källfilstyper i EN gemensam, flat katalog tillsammans med bilderna
   find igs/TKB_{domain_id}/source/ -name "*.wsdl" -exec cp {} igs/TKB_{domain_id}/input/images/ \;
   find igs/TKB_{domain_id}/source/ -name "*.xsd" -exec cp {} igs/TKB_{domain_id}/input/images/ \;
   find igs/TKB_{domain_id}/source/ -name "*.pdf" -exec cp {} igs/TKB_{domain_id}/input/images/ \;
   find igs/TKB_{domain_id}/source/ -name "AB_*.docx" -exec cp {} igs/TKB_{domain_id}/input/images/ \;
   find igs/TKB_{domain_id}/source/ -name "SjD_*.docx" -exec cp {} igs/TKB_{domain_id}/input/images/ \;
   ```
   Kontrollera innan kopiering att inget filnamn redan finns i `input/images/` (namnkollision skulle skriva över en bild eller en annan källfil eftersom katalogen är flat) — mycket osannolikt i praktiken men billigt att kontrollera:
   ```bash
   comm -12 <(find igs/TKB_{domain_id}/docx-converted/images -type f -printf '%f\n' | sort) \
            <(find igs/TKB_{domain_id}/source/ \( -name "*.wsdl" -o -name "*.xsd" -o -name "*.pdf" -o -name "AB_*.docx" -o -name "SjD_*.docx" \) -printf '%f\n' | sort)
   ```
   Spara en inventarielista (`wsdl_files`, `xsd_files`, `doc_files`) för varje kontrakt i `domain-metadata.json` — Model Builder behöver dessa för länkarna i sektion 7.
4. Skriv `sushi-config.yaml` och `ig.ini`
5. Skriv `input/includes/menu.xml`
6. Skriv `input/pagecontent/index.md`
7. **Kopiera och anpassa sektionerna 1–6:** ta innehållet från `docx-converted/sections/{n}-*.md` direkt och lägg det i `input/pagecontent/{n}-*.md`. Lägg till FHIR IG-header om nödvändigt. **Ta bort `images/`-prefixet från bildlänkar** (kör `sed -i 's/\](images\//](/g' input/pagecontent/{n}-*.md` — se "KRITISKT — det finns bara EN publicerad static-filkatalog" nedan).
8. Bygg `input/pagecontent/7-tjanstekontrakt.md` — kombinera konverterat innehåll från `docx-converted/sections/7-tjanstekontrakt.md` med FSH-länklista och källfils-index per kontrakt (se instruktion för Model Builder nedan). Källfils-länkarna ska peka direkt på filnamnet (t.ex. `[GetX.wsdl](GetX.wsdl)`) — **inte** på `files/wsdl/GetX.wsdl` eller liknande underkatalog, av samma anledning.

**KRITISKT — det finns bara EN publicerad static-filkatalog (`input/images/`), ingen `input/files/`:** FHIR IG Publisher (`fhir.base.template`) känner bara igen ett fåtal fasta katalognamn under `input/` (`pagecontent`, `images`, `includes`, `fsh` m.fl.). En egenpåhittad katalog som `input/files/wsdl/` publiceras **aldrig** — filerna hamnar inte ens flata i utdata, de försvinner helt tyst utan att SUSHI eller IG Publisher klagar. Detta upptäcktes 2026-09-16 genom att inspektera `gh-pages`-branchen direkt: **noll** WSDL/XSD/PDF-filer var publicerade i någon av de 31 dåvarande domänerna, trots att `input/files/{wsdl,schema,docs}/` innehöll dem och `7-tjanstekontrakt.md` länkade till dem — se "Publicerings-QA missar detta" nedan och "Steg 4.7 — Publicerings-verifiering" i `tkb-ci-feedback`. `input/images/` är däremot dokumenterat och bekräftat att fungera som en generisk "kopiera allt platt till webbplatsens rot"-katalog, oavsett filändelse (verifierat: `.svg`, `.png`, `.jpg`, `.gif` kopieras alla). Lösningen är därför att lägga **alla** statiska filer — bilder, WSDL, XSD, PDF, kompletterande docx — i samma `input/images/`-katalog (flat, inga underkataloger), och referera dem i Markdown med enbart filnamnet, utan katalogprefix.

**KRITISKT — undvik mellanslag i källfilnamn (döp om vid behov):** Källfiler (särskilt PDF:er) har ibland mellanslag i originalfilnamnet (t.ex. `Skatteverket XML-struktur Navet Avisering v1.34.pdf`). `scripts/check_links.py` (Steg 4.7) URL-avkodar **inte** `href`/`src` innan det jämför mot filsystemet, så en Markdown-länk skriven med procentkodade mellanslag (`Skatteverket%20XML-struktur...pdf`) matchar **aldrig** den faktiska filen på disk (som har riktiga mellanslag, inte `%20`), och tvärtom en oencodad länk med bokstavliga mellanslag i `href` är i sig ogiltig HTML/URL-syntax. Båda ger `[LINK-CHECK]`-fynd som slår `failed-link-check` (upptäckt 2026-09-17 i `population_residentmaster`, källfilen `Skatteverket XML-struktur Navet Avisering v1.34.pdf`). Lösningen är att **döpa om källfilen** vid kopiering till `input/images/` så att den saknar mellanslag (t.ex. `Skatteverket_XML-struktur_Navet_Avisering_v1.34.pdf`) och länka till det nya, mellanslagsfria filnamnet rakt av — inte att försöka procentkoda länken korrekt. Uppdatera i så fall även referenser till filnamnet i `domain-metadata.json` och `docx-converted/sections/*.md`.

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
    │                                                 OCH alla källfiler (WSDL/XSD/PDF/docx) —
    │                                                 flat, EN gemensam katalog (se "KRITISKT" ovan)
    │   ├── img_001.png
    │   ├── GetCareDocumentation_3.0.5.wsdl
    │   ├── core_components.xsd
    │   └── ...
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
  # OBS: lägg INTE till `se.inera.rivta.core: current` här — paketet är
  # aspirationellt och har aldrig publicerats (finns inte på build.fhir.org
  # eller packages.fhir.org). IG Publisher kraschar direkt vid
  # dependency-upplösning om det står med. Se "FHIR-kontext" nedan för hur
  # gemensamma bastyper hanteras istället.

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
  special-url:                                     # lägg till en rad per CodeSystem med https://fhir.inera.se/CodeSystem/...-url
    - https://fhir.inera.se/CodeSystem/{kodverk-slug-1}-cs
    # ... fler CodeSystem-URL:er

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

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCareDocumentation](7-tjanstekontrakt.html#getcaredocumentation) | 3.0 | ... |
| [GetDiagnosis](7-tjanstekontrakt.html#getdiagnosis) | 2.0 | ... |
```

**KRITISKT — ankarformat:** Rubrikerna i `7-tjanstekontrakt.md` är alltid `### GetContractName` (utan nummerprefixet 7.1, 7.2). Ankaret blir då `#getcontractname` (lowercase). Skriv **aldrig** `#71-getcontractname` eller `#7.1-getcontractname` — dessa ankare existerar inte och ger brutna länkar vid validering. (Verkligt exempel på avvikelsen: `eservicesupply_eoffering` hade `## 7.1 GetAvailableEServices` istället för `### GetAvailableEServices`, vilket gav ett trasigt ankare — upptäckt och fixat 2026-09-16 av `check_links.py`, se Steg 4.7.)

**Ytterligare ett upptäckt mönster som kan förstöra ankare längre ner på sidan:** rå `<taggliknande text>` (RIV-TA-fältsökvägar i vinkelklamrar, t.ex. `<hasMoreReference>`, `<multimediaEntry/value>`) i en Markdown-tabellcell kan tolkas som (trasig/oavslutad) rå HTML av sidgenereringsverktyget, vilket i värsta fall får **alla efterföljande rubriker på samma sida** att sluta renderas som riktiga `<h3>`-element — de blir kvar som bokstavlig `### Text`-sträng i utdatan, vilket i sin tur ger trasiga ankare för varje kontrakt efter den skadade tabellen (inträffade i `clinicalprocess_healthcond_description`, där en tabellrad dessutom bröts över flera rader utan `|` i början av fortsättningsraden — se fix 2026-09-16). Om `check_links.py` (Steg 4.7) rapporterar ett trasigt ankare **utan** motsvarande `images/`- eller `files/`-prefix i felmeddelandet: leta efter rå `<...>`-text i tabeller på samma sida före den brutna rubriken, och slå in den i backticks (`` `<hasMoreReference>` ``) samt slå ihop eventuella flerradiga tabellrader till en enda rad.

```markdown

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

**Sidor 1–6** — kopiera **ordagrant** från `docx-converted/sections/{n}-*.md`, med ett enda mekaniskt undantag för bildlänkar (se nedan).
- Bevara all text, alla tabeller och alla bildlänkar
- **KRITISKT — ta bort `images/`-prefixet från bildlänkar när du kopierar in i `input/pagecontent/`:** `docx_to_md.py` skriver bildlänkar som `![alt](images/img_001.png)`, vilket är korrekt för det fristående `docx-converted/`-paketet (där `images/` är en verklig undermapp bredvid `full-document.md`). Men FHIR IG Publisher **plattar ut** `input/images/*` till webbplatsens rot vid publicering — det skapas **ingen** `images/`-undermapp i den publicerade IG:n. En bildlänk som fortfarande pekar på `images/img_001.png` i `input/pagecontent/` blir därför en trasig länk (404) i den publicerade sajten, även om SUSHI och IG Publisher inte flaggar detta som fel (se nedan, "Publicerings-QA missar detta"). Kör därför alltid, för varje sida du kopierar in:
  ```bash
  sed -i 's/\](images\//](/g' input/pagecontent/{n}-*.md
  ```
  Resultat: `![img_001.png](images/img_001.png)` → `![img_001.png](img_001.png)`.
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
| [{ContractId}_{version}.wsdl]({ContractId}_{version}.wsdl) | WSDL-kontrakt |
| [core_components.xsd](core_components.xsd) | Domänschema (delat) |
| [{ContractId}.xsd]({ContractId}.xsd) | Tjänstespecifikt schema |
{för varje övrig XSD som hör till kontraktet:}
| [{filename}.xsd]({filename}.xsd) | {beskrivning} |
{för dokument som är kontraktsspecifika, t.ex. SjD-filer:}
| [{filename}]({filename}) | Tjänstebeskrivning |
```

**KRITISKT — länkarna ska peka direkt på filnamnet, utan katalogprefix** (t.ex. `[GetX.wsdl](GetX.wsdl)`, **inte** `files/wsdl/GetX.wsdl` eller `files/schema/GetX.xsd`). Alla källfiler ligger flata i `input/images/` (se "KRITISKT — det finns bara EN publicerad static-filkatalog" i Steg 3) och publiceras därför flata på webbplatsens rot, precis som bilderna.

Regler:
- Inkludera bara filer som faktiskt finns i `input/images/` (kontrollera innan du skriver tabellen)
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

**Bildlänkar i FHIR IG context (KRITISKT):** FHIR IG-publiceringsramverket stöder standard Markdown-bilder. Bildfilerna ska ligga i `input/images/` — men IG Publisher **plattar ut** dessa till webbplatsens rot vid publicering (bekräftat genom att inspektera den faktiskt publicerade `gh-pages`-branchen: `input/images/img_001.png` hamnar på `TKB_{domain}/img_001.png`, **inte** `TKB_{domain}/images/img_001.png`). Länkformat i `input/pagecontent/*.md` ska därför vara `![Bildtext](img_001.png)` **utan** `images/`-prefix, trots att källfilen fysiskt ligger i katalogen `input/images/`. Se sed-kommandot i "Sidor 1–6" ovan.

**Publicerings-QA missar detta:** IG Publishers egen `qa.json`/`qa.html` validerar FHIR-resurser (StructureDefinitions, CodeSystems etc.), inte om `<img src>`- eller `<a href>`-referenser i den renderade HTML:n faktiskt pekar på existerande filer. En domän kan rapportera "0 errors, 0 warnings" i `qa-errors.json` samtidigt som samtliga bilder på sidan är trasiga (404) i den publicerade IG:n — detta hände faktiskt i 29 av de första 31 migrerade domänerna innan felet upptäcktes 2026-09-16 genom att direkt inspektera `gh-pages`-branchens innehåll. Lita därför **inte** enbart på `qa-errors.json` för att avgöra om en IG är komplett — se "Steg 4.7 — Publicerings-verifiering" i skillen `tkb-ci-feedback` för den kompletterande kontroll som numera körs i CI.

---
