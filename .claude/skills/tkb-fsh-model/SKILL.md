---
name: tkb-fsh-model
description: Steg 4–4.5 i TKB-migreringen: skriv FSH (Logical-modeller, CodeSystems, ValueSets, invarianter) enligt projektets konventioner, kör pre-flight-lint och sushi. Innehåller reserverade elementnamn, datatypmappning RIV-TA→FHIR och kända SUSHI-felmönster. Använd alltid innan en .fsh-fil skrivs eller ändras.
---

# FSH-modellering och SUSHI-validering

_Flyttat från CLAUDE.md 2026-09-25, i huvudsak ordagrant (del av omläggningen till en session per domän + PR per domän). Se `.claude/skills/tkb-next-domain/SKILL.md` för hur stegen hänger ihop. Stegnumren hänvisar till den ursprungliga CLAUDE.md-indelningen: Steg 1–2 = `tkb-fetch-convert`, Steg 3 = `tkb-ig-builder`, Steg 4–4.5 ("FSH-konventioner") = `tkb-fsh-model`, Steg 4.6–4.7 = `tkb-ci-feedback`, Steg 5 (QUESTIONS.md-format) = `tkb-next-domain`._

## Steg 4 — Model Builder-agent

**Ge agenten:**
- domain-metadata.json (komplett, inklusive alla kontrakt och `wsdl_files`/`xsd_files`/`doc_files`-inventarier per kontrakt)
- Sökväg till `input/images/` (som IG Builder redan har populerat med bilder OCH WSDL/XSD/docs — se Steg 3, "KRITISKT — det finns bara EN publicerad static-filkatalog")
- FSH-konventioner (se nedan)

**Viktigt:** All output är FSH-källkod (`.fsh`-filer). Agenten producerar aldrig JSON direkt. Logiska modeller används **uteslutande** med `Logical:` — aldrig `Profile:` eller `Resource:`.

**Källfils-index i sektion 7:** Model Builder-agenten ansvarar för att ta fram de exakta filnamnen och bygga källfils-tabellen för varje kontrakt (se mall i IG Builder ovan). Agenten ska:
1. Lista faktiska WSDL/XSD/doc-filer i `input/images/` (de är inte visuellt urskiljbara från bilderna i katalogen, men kan filtreras på filändelse: `find input/images/ -iname "*.wsdl" -o -iname "*.xsd" -o -iname "*.pdf" -o -iname "*.docx"`)
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
| Villkorlig (condition beskriven) | `0..1` + FHIRPath-invariant (alltid, se nedan) |

**Vid villkorlig kardinalitet:** modellera fältet som `0..1` (eller `0..*`) och uttryck villkoret som en FHIRPath-invariant enligt nästa avsnitt. Beskriv villkoret även i fält-description, men fråga **inte** i QUESTIONS.md om en invariant ska läggas till — det är beslutat.

#### Fältregler → FHIRPath-invarianter (KRITISKT)

**Beslut (Oskar, 2026-11-06, BLOCK-CAA-001):** Regler som "exakt en av X/Y/Z", "minst en av", "inte båda", "ska anges om …", "får inte vara äldre än …" och liknande modelleras **alltid** som FHIRPath-invarianter (`Invariant:` + `obeys`) på den logiska modellen. Det gäller alla TKB:er, även kommande. Att bara dokumentera regeln i fältbeskrivningen räcker inte, och frågan "ska en invariant läggas till?" ska aldrig bli en BLOCK-post.

Källor till regler som ska bli invarianter:
- Fälttabellerna i avsnitt 7 (kolumnen "Villkor", "Regel", "Kardinalitet: villkorlig", rader som "Endast en av nedanstående").
- Avsnitten "Övriga regler" / "Regler i svaret" (t.ex. Regel 2.3, ÖR1–ÖR7).
- `xs:choice` i XSD:n: ett val mellan element blir en invariant (exakt ett om valet är obligatoriskt, högst ett om det är valfritt).
- Schematron-filer i testsviten (`constraints.xml`): `assert`/`report` som avser ett enskilt meddelande.

Allvarlighetsgrad:
- `#error` när TKB:n säger "ska", "måste", "exakt", "endast", "får inte" eller när XSD:n kräver det.
- `#warning` bara för rekommendationer ("bör", "om tillgänglig") eller när tolkningen är osäker. Logga då en ASSUME-post (inte BLOCK) som beskriver tolkningen.

**Så här skriver du en invariant:**

```fsh
Logical: GetDiagnosis
Id: getdiagnosis
...
Invariant: diagnosis-code-required-when-type
Description: "diagnosCode ska anges när diagnosType är satt"
Expression: "diagnosType.exists() implies diagnosCode.exists()"
Severity: #error

* diagnosCode 0..1 CodeableConcept "Diagnoskod"
  * obeys diagnosis-code-required-when-type
* diagnosType 0..1 CodeableConcept "Diagnostyp"
```

**KRITISKT — `obeys` tar INGEN `^` (caret):** `obeys` är ett eget FSH-nyckelord, inte en caret-path/metadata-regel. `* ^obeys invariant-id` ger felet `Cannot read properties of undefined (reading 'id')` vid `sushi .` (upptäckt vid migrering av `infrastructure.itintegration.registry`). Skriv alltid `* obeys invariant-id` (eller `* elementnamn obeys invariant-id` på samma rad som elementet) — aldrig `* ^obeys ...`.

**Invariantens id** ska följa mönstret `{modell-lowercase}-{kort-beskrivning}`, t.ex. `getdiagnosis-code-required`.

**Vanliga FHIRPath-mönster för RIV-TA-regler:**

| TKB-regel | FHIRPath-uttryck |
|---|---|
| "Ska anges om X är satt" | `X.exists() implies Y.exists()` |
| "Får ej anges om X är satt" | `X.exists() implies Y.empty()` |
| "Antingen A eller B ska finnas" | `A.exists() or B.exists()` |
| "Exakt ett av A, B ska finnas" | `(A.exists() xor B.exists())` |
| "Exakt en av A, B, C, D" (tre eller fler) | `A.count() + B.count() + C.count() + D.count() = 1` |
| "A och B får inte anges tillsammans" | `(A.exists() and B.exists()).not()` |
| "Minst en av start och end" (tidsperiod) | `start.exists() or end.exists()` |
| "Ska anges om status är utförd (kod) eller saknas" | `(status.empty() or status.coding.where(code = '398166005').exists()) implies time.exists()` |
| "Ska anges om typ = 'D'" (strängkod) | `typ = 'D' implies (adress.exists() and postort.exists())` |
| "validTo får inte vara äldre än validFrom" (TS som sträng) | `(validFrom.exists() and validTo.exists()) implies validTo.toDecimal() >= validFrom.toDecimal()` |
| "root ska vara OID för personnummer/samordningsnummer" | `(root = '1.2.752.129.2.1.3.1' or root = '1.2.752.129.2.1.3.3')` |
| Format (regex) | `iiExtension.matches('^[0-9]{8}[0-9pPtTfF][0-9]{3}$')` |

Använd `count()`-summan i stället för en kedja av `xor` när det finns fler än två alternativ: `A xor B xor C` blir sant även när alla tre är satta.

**Placering och kontext:** uttrycket utvärderas i kontexten för det element som har `obeys`. Fäst invarianten på det element vars barn regeln gäller:
- Rotnivå (t.ex. en request där exakt ett av två fält ska anges): `* obeys {id}` direkt efter `* ^version`.
- Punktnotation på kolumn 0: `* activityGroup.additionalParticipant obeys {id}` (uttrycket refererar `person`, `organisation`, …).
- Indragen stil: ett naket `* obeys {id}` indraget som barn under elementet (se exemplet längre ned).

**Invariantens id** ska vara ett giltigt FHIR-id: högst 64 tecken, bara `A–Z a–z 0–9 - .` (SUSHI-fel annars: `does not represent a valid FHIR id`). Förkorta långa kontraktsnamn, t.ex. `getcredentialsprotected-request-hsaid-xor-pnr`.

**Testa uttrycken** mot små JSON-exempel med `fhirpath` (npm) när regeln är mer än ett enkelt `exists()`, t.ex. `npm i fhirpath` i scratch-katalogen och `require('fhirpath').evaluate(obj, expr)`.

| "Värdet ska vara positivt" | `value > 0` |
| "Längst 10 tecken" | `value.length() <= 10` |
| "Om fritext (1), kodvärde krävs ej" | `(type = '1') implies code.empty()` |

**När regeln inte går att avgöra ur meddelandet** (den kräver extern data, kunskap om avsändarens yrkesroll, jämförelse mellan poster i en lista eller tolkningsregler för konsumenten):
- Uttryck den del som går att kontrollera som invariant och skriv i invariantens `Description` vilken del som inte kontrolleras (exempel: `sourceSystemHSAId` krävs om `careContactId` anges — men "vid begäran på reservnummer" kontrolleras inte).
- Går ingen del att kontrollera: beskriv regeln i fält-description och lägg kommentaren `// ingen invariant: <motivering>` i modellen (det tystar lint-varningen nedan). Ingen BLOCK-post.

**Lint:** `scripts/preflight_lint.py` ger fel för `obeys` som saknar `Invariant:` och för ogiltiga invariant-id, och en varning för en `Logical:` vars text innehåller en regelformulering ("exakt ett", "minst en av", "exklusiv", "xs:choice", "obligatorisk om" …) men saknar `obeys`. Åtgärda varningen med en invariant eller med `// ingen invariant: …`.

**Undantag:** Enklare kardinalitetsregler (obligatorisk/valfri) behöver ingen invariant — de hanteras via kardinalitet. Invarianter används bara för villkorliga regler som inte kan uttryckas med `0..1` / `1..1` ensamt.

#### Namnkonventioner

- Logical model namn: PascalCase = interaktionsnamnet, t.ex. `GetCareDocumentation`
- Logical model Id: lowercase = interaktionsnamnet, t.ex. `getcaredocumentation`
- Request-modell Id: `{interaktion-lowercase}-request`, t.ex. `getcaredocumentation-request`
- CodeSystem Id: `{kodverk-slug}-cs`, t.ex. `diagnosistype-cs`
- ValueSet Id: `{kodverk-slug}-vs`, t.ex. `diagnosistype-vs`
- Extension Id: `{koncept-slug}-extension`
- Canonical base: `https://fhir.inera.se/`
- IG-katalognamn: `TKB_{domain_id_with_underscores}`, t.ex. `TKB_clinicalprocess_healthcond_description`

#### Reserverade FHIR-elementnamn (KRITISKT — orsakar byggrefel i IG Publisher)

Vissa elementnamn är reserverade i FHIR R4 och **får inte användas direkt** som fältnamn i `Logical:`-modeller. IG Publisher kastar fel av typen `"Element name 'id' is not valid"` eller liknande om dessa används.

**Reserverade namn som ALDRIG får användas som fältnamn:**

| Reserverat namn | Konsekvent ersättning |
|---|---|
| `id` | `{modellPrefix}Id` (t.ex. `careDocumentationId`, `patientId`) |
| `text` | `{modellPrefix}Text` (t.ex. `noteText`, `documentText`) |
| `code` | `{modellPrefix}Code` (t.ex. `diagnosisCode`, `activityCode`) |
| `status` | `{modellPrefix}Status` (t.ex. `careStatus`, `certificateStatus`) |
| `value` | `{modellPrefix}Value` (t.ex. `measurementValue`, `numericValue`) |
| `name` | `{modellPrefix}Name` (t.ex. `unitName`, `personName`) |
| `type` | `{modellPrefix}Type` (t.ex. `documentType`, `diagnosisType`) |
| `version` | `{modellPrefix}Version` (t.ex. `contractVersion`) |
| `language` | `{modellPrefix}Language` |
| `meta` | `{modellPrefix}Meta` |
| `extension` | (använd aldrig som fältnamn — reserverat FHIR-koncept) |
| `contained` | (använd aldrig) |
| `implicitRules` | (använd aldrig) |

**Principen:** Prefixet ska vara det begrepp som fältet tillhör på svenska eller engelska, t.ex.:
- RIV-TA-fält `id` på en `CareDocumentation`-struktur → `careDocumentationId`
- RIV-TA-fält `code` på en `Diagnosis`-struktur → `diagnosisCode`
- RIV-TA-fält `status` på toppnivå i modellen → `{ContractName}Status`, t.ex. `getCertificateStatus`

**Nästlade BackboneElements:** Även inom nästlade strukturer gäller samma regel — **på alla nästlingsnivåer, inte bara toppnivån**. Om elementet heter `address.type` i TKB:n, skriv det som `addressType` i FSH. Detta är den enskilt vanligaste orsaken till byggfel i praktiken: ett fält fem nivåer ner i en BackboneElement-kedja (t.ex. `requestActivity.header.record.id`) är lika förbjudet som ett fält på toppnivån, men glöms betydligt oftare bort eftersom det är lätt att fokusera på strukturens toppnivåfält när man skriver modellen.

**OBLIGATORISK självkontroll innan en FSH-fil anses klar (KRITISKT — hoppa aldrig över detta steg):** Kör följande sökning mot filen du precis skrivit, innan du går vidare till nästa fil:

```bash
grep -nE '(^\*\s+id|\.id)\s+[0-9]+\.\.[0-9*]+' input/fsh/logical-models/{Filnamn}.fsh
```

Varje träff är ett fält som bryter mot reglerna ovan och MÅSTE döpas om innan filen är klar. Detta gäller även om fältet "ser rätt ut" vid en snabb genomläsning — sökningen är mekanisk och missar inget, medan manuell genomläsning av en lång nästlad modell historiskt sett har missat träffar konsekvent (10 filer över 7 domäner hade detta felet samtidigt vid ett tillfälle, trots att regeln redan fanns dokumenterad ovan). Kör motsvarande sökning för övriga reserverade namn (`text`, `code`, `status`, `value`, `name`, `type`, `version`, `language`, `meta`) om du är osäker på om något av dem använts som fältnamn på en nästlad nivå.

**Verifiera alltid efter SUSHI:** Om SUSHI ger fel med `"Element name ... is not valid"` eller `"Cannot override ... in differential"`, byt namn på det berörda elementet och kör om.

#### Nästlade BackboneElements: blanda aldrig indrag och full punktnotation (KRITISKT)

Välj **ett** sätt att uttrycka nästling per modell. Antingen indrag med enbart lövnamnet på varje nivå (rekommenderat):

```fsh
* personPost 1..1 BackboneElement "Personpost"
  * personId 1..1 Identifier "Personnummer"
  * relationer 1..1 BackboneElement "Relationer"
    * relation 0..* BackboneElement "Relation"
      * relationstyp 1..1 code "Relationstyp"
```

eller full punktnotation **utan** indrag (`* personPost.relationer.relation.relationstyp 1..1 code ...` på kolumn 0). Skriver man full punktnotation **och** indrag samtidigt tolkar SUSHI sökvägen relativt det indragna sammanhanget och dubblerar prefixet. Felsignatur: `The element or path you referenced does not exist: personPost.personPost.relationer.personPost.relationer.relation...` (upptäckt 2026-09-17 i `population_residentmaster`, 91 fel i en enda modell).

En invariant som refererar syskonfält på en nästlad nivå fästs med ett naket `* obeys {id}` indraget **under** det element vars barn uttrycket refererar (uttrycket utvärderas i det elementets kontext):

```fsh
      * relationId 1..1 BackboneElement "Identitet"
        * relationPersonNr 0..1 Identifier "Personnummer"
        * relationFodelsetidNr 0..1 Identifier "Födelsetid+nollor"
        * obeys lookupresidentforfullprofile-relation-id-xor   // Expression: "relationPersonNr.exists() xor relationFodelsetidNr.exists()"
```

Upprepa **inte** fältnamnet på samma nivå som dess egna barn (`* relationId obeys ...` indraget under `relationId` blir `relationId.relationId`).

#### Kort- och långbeskrivning: använd en form per fält

`* fält 1..1 string "kort" "definition"` (två citerade strängar) och `* fält 1..1 string "kort"` följt av ett indraget `"""..."""`-block är båda giltiga — men **inte** båda samtidigt på samma fält. Kombinationen ger `extraneous input '"""...' expecting {<EOF>, ...}` (inträffade två gånger 2026-09-16/17). Välj ett-strängsform + `"""`-block för längre texter.

#### Elementbeskrivningar från fälttabellen (KRITISKT — beslut 2026-11-06)

Varje element i de logiska modellerna ska ha **samma information som raden i TKB:ns fälttabell** (avsnitt "Fältregler" i `7-tjanstekontrakt.md`). Läsaren av StructureDefinition-sidorna (`...-definitions.html`) ska inte behöva gå till tjänstekontraktssidan för att förstå ett fält. Det gäller alla TKB:er, även kommande.

Det görs mekaniskt, inte för hand:

```bash
scripts/sync_field_descriptions.py igs/TKB_{domain_id}            # skriver/uppdaterar
scripts/sync_field_descriptions.py --report igs/TKB_{domain_id}   # rader/element som inte matchade
scripts/sync_field_descriptions.py --explain igs/TKB_{domain_id}  # vilken rad hamnade på vilket element
```

Skriptet skriver en RuleSet per modell till `input/fsh/field-descriptions/{Modell}FieldDescriptions.fsh` och lägger `* insert {Modell}FieldDescriptions` sist i modellen:

- `^definition` = hela Beskrivning/Kommentar-cellen. Wordstyckena (`<br/>` i cellen, i äldre sidor " / ") blir markdownstycken.
- `^comment` = TKB-fältets namn/XPath, TKB-typ och kardinalitet, hela texten för varje regel som raden hänvisar till ("Regel 2.1" → raden i Övriga regler), extrakolumner (Kodverk, Mappning, Fältlängder), en notering om modellens kardinalitet avviker, och tidigare modelltext (ASSUME/TODO) under "Modellanteckning".
- `^short` lämnas orörd: den handskrivna korta etiketten i modellen.
- Barn till element vars TKB-typ har en egen tabell (OrgUnitType, CVType, JoL-header ...) i någon sida under `pagecontent/` får texten från typtabellen.

Regler:

- **Redigera aldrig filerna i `field-descriptions/` för hand.** Ändra tabellen i `7-tjanstekontrakt.md` (källan) och kör skriptet igen. Skriv inte heller tabelltexten som `"""`-block i modellen: den skrivs över av RuleSeten och blir dubbel.
- Kör skriptet efter varje ändring av fälttabellen eller av modellens elementstruktur (nya/omdöpta element). `preflight_lint.py` felmarkerar en modell vars RuleSet är inaktuell.
- Matchningen tål modellens omdöpningar av reserverade namn (`signature/id` → `signature.signatureId`, `patientId/extension` → `patientId.iiExtension`) och alla hierarkinotationer i tabellerna (`//*:a/*:b`, `../../x`, `.. ..x`, `a.b.c`, rubrikerna Begäran/Svar eller `{Kontrakt}Type`/`{Kontrakt}ResponseType`). Ett element utan matchande rad behåller sin modelltext.
- `--report` listar också **tabellrader utan modellelement**. Det är oftast datatypernas underfält (code/codeSystem på CVType, root/extension på IIType), som är väntade eftersom de mappas till FHIR-datatyper. Andra rader där betyder att modellen saknar ett fält som TKB:n har. Lägg då till fältet i modellen och kör skriptet igen.
- Ny tabellnotation som skriptet inte förstår (många "rad utan element" som uppenbart finns i modellen): utöka `name_to_path`/`classify` i skriptet i stället för att handskriva texter.

Lokalt kräver caret-regler på element att offline-stubben har `ElementDefinition` (finns i `gen_fhir_stubs.py` sedan 2026-11-06). Felsignatur om stubben är gammal: `Cannot read properties of undefined (reading 'id')` på rader i `field-descriptions/*.fsh`. Kör `python3 gen_fhir_stubs.py` igen.

#### Datatyper enligt schemat (sedan 2026-11-06, pilot)

Oskars beslut 2026-11-06: modellerna ska **inte** längre översätta RIV-TA-datatyper till FHIR-datatyper (Identifier, CodeableConcept, instant …). Varje fält ska ha samma namn, kardinalitet och typ som i tjänstekontraktets XSD. Grunddatatyperna definieras en gång, globalt, i `igs/rivta-datatyper` (paket `inera.rivta.datatypes`, canonical `https://fhir.inera.se/ig/rivta-datatypes`), och alla TKB-IG:er refererar dit.

- **Gemensamma typer:** `scripts/rivta_datatypes.py` genererar FSH och startsidan ur RIV-TA Best Practice "De facto-konventioner för datatyper" (vendrad i `igs/rivta-datatyper/source-xsd/`) plus HSAIdType och UUIDType. Sammansatta typer är Logical (`Characteristics: #can-be-type`). Enkla typer är profiler på `string` med schemats mönster som invariant. Redigera aldrig FSH-filerna där för hand.
- **Kontraktsmodeller:** `scripts/xsd_logical_models.py igs/TKB_x --contract Kontrakt` genererar elementen ur `{Kontrakt}Responder_*.xsd` och behåller filhuvudet och `* insert …FieldDescriptions`. Kör sedan `sync_field_descriptions.py` och `set_ig_version.py`.
  - Domänens sammansatta typer (HeaderType, …BodyType) skrivs nästlat med typen `Base` och schemats typnamn som `^short`. TKB:ns fälttabell beskriver fälten i sitt sammanhang, så de måste ligga på var sitt element.
  - Inga namnbyten: under `Base` finns inga egna `id`/`extension`, så schemats `id`, `type`, `code`, `value` används rakt av. `preflight_lint.py` tillåter reserverade namn under ett `Base`-element, men aldrig under `BackboneElement`.
  - En domäntyp som är **identisk** med en gemensam typ refereras direkt (`* x 1..1 IIType`, eller `* x 1..1 string` + `* x only TimeStampType`). En typ med **samma element men snävare kardinalitet** blir en lokal typ med samma namn som ärver den gemensamma (`input/fsh/datatypes/`). En typ som **skiljer sig på annat sätt** blir domänens egen (nästlad, eller en lokal profil för en enkel typ).
  - Rekursion blir `contentReference`, xs:choice en invariant och uppräkningar `code` bundet till `{Typ}VS` om det finns.
- **Beroende:** IG:ns `sushi-config.yaml` har `inera.rivta.datatypes: 1.0.0` under `dependencies`. Lokalt: `python3 scripts/install_datatypes_package.py` innan `sushi`. I CI bygger `build_all.sh` datatyps-IG:n först och installerar IG Publishers paket.
- **Utrullning:** hittills bara piloten (actoutcome GetLaboratoryOrderOutcome). Tabellen nedan gäller övriga modeller tills de är genererade om.

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

#### Redeklarera aldrig ett subelement på en komplex datatyp med fel FHIR-typ (KRITISKT)

När ett fält har en komplex FHIR-datatyp (`Identifier`, `CodeableConcept`, `Quantity`, `Period`, `Coding`, `HumanName`, ...) händer det att man vill dokumentera eller ytterligare begränsa ett av dess inbyggda subelement, t.ex. för att beskriva vad `system`-värdet ska innehålla. Om du då skriver en egen `*`-rad för subelementet **måste typen matcha exakt** vad FHIR R4 redan definierar för det subelementet — SUSHI/IG Publisher tillåter inte att ett ärvt element "omtypas". Detta är samma underliggande mekanism som gör `id` reserverat (se ovan), men drabbar här ett *specifikt* fältnamn (`system`, `value`, `use` ...) enbart när det står under ett fält av just den datatypen.

**Vanligaste felet i praktiken:** `Identifier.system` felaktigt typat som `string` istället för `uri` (SUSHI-felet ser ut som `invalid constrained type string from uri in http://hl7.org/fhir/StructureDefinition/Base`). De inbyggda subelementen på `Identifier` är:

| Identifier-subelement | FHIR-typ (oföränderlig) |
|---|---|
| `use` | `code` |
| `type` | `CodeableConcept` |
| `system` | `uri` |
| `value` | `string` |
| `period` | `Period` |
| `assigner` | `Reference` |

Samma princip gäller för alla andra komplexa datatyper (t.ex. `Quantity.value` är `decimal`, `Quantity.unit`/`Quantity.code` är `string`/`code`, `Quantity.system` är `uri`; `Coding.system` är `uri`, `Coding.code` är `code`). Slå upp exakt typ i FHIR R4-specifikationen (hl7.org/fhir/R4/datatypes.html) om du är osäker.

**Säkraste regeln:** Om du inte behöver begränsa kardinaliteten eller lägga till en binding på subelementet, **redeklarera det inte alls** — dokumentera istället tolkningen i fält-description på föräldrafältet (t.ex. `patientId 1..1 Identifier "Patientens id" """ system = OID för personnummer/samordningsnummer, value = själva numret """`). Att helt utelämna en subelementdeklaration är alltid säkert; en felaktig typ är alltid ett byggfel som stoppar hela domänens IG Publisher-körning.

**Självkontroll:** Om du ändå redeklarerar `Identifier`-subelement, kör:

```bash
grep -nE '\.(system|use|assigner)\s+[0-9]+\.\.[0-9*]+\s+(string|integer|boolean|CodeableConcept)' input/fsh/logical-models/{Filnamn}.fsh
```

En träff betyder nästan alltid fel typ (system/use/assigner ska aldrig vara string/integer/boolean, och use/system ska aldrig vara CodeableConcept).

#### CodeSystem-mall

```fsh
CodeSystem: {KodverkNamn}CS
Id: {kodverk-slug}-cs
Title: "{KodverkNamn}"
Description: "Kodverk {KodverkNamn} enligt {Källsystem}. OID: {OID}."
* ^url = "https://fhir.inera.se/CodeSystem/{kodverk-slug}-cs"
* ^status = #active
* ^content = #complete             // eller #fragment om ej komplett
* #KOD1 "{KOD1}" "{Beskrivning}"
* #KOD2 "{KOD2}" "{Beskrivning}"
```

**KRITISKT — `special-url` i sushi-config.yaml:** Eftersom CodeSystem-URL:en `https://fhir.inera.se/CodeSystem/...` ligger utanför IG:ns canonical namespace (`https://fhir.inera.se/ig/{domain-slug}`), **måste** varje CodeSystem-URL listas under `special-url` i `sushi-config.yaml`. Annars genererar IG Publisher `RESOURCE_CANONICAL_MISMATCH`-fel som gör bygget rött. Lägg till ett `special-url`-block i `parameters`-sektionen för **varje** CodeSystem du skapar:

```yaml
parameters:
  show-inherited-invariants: false
  apply-contact: true
  apply-publisher: true
  apply-version: false
  apply-copyright: true
  special-url:
    - https://fhir.inera.se/CodeSystem/{kodverk-slug-1}-cs
    - https://fhir.inera.se/CodeSystem/{kodverk-slug-2}-cs
```

Alternativt kan du använda OID-baserad canonical om kodverket har ett känt OID: `* ^url = "urn:oid:{OID}"` — OID-URL:er utlöser aldrig `RESOURCE_CANONICAL_MISMATCH` och behöver inte listas i `special-url`.

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

**Sedan 2026-09-25: kör `scripts/preflight_lint.py igs/TKB_{domain_id}`** — det samlar grep-kontrollerna nedan plus fler kända mönster (indrag+punktnotation, `special-url` som saknas, länkar med `images/`/`files/`-prefix eller mellanslag, länkmål som inte finns i `input/images/`, trasiga `#ankare` från index.md). Exit-kod 1 = fel som måste åtgärdas; varningar är konventionsbrott som inte stoppar bygget.

**Empirisk precisering av "reserverade namn" (2026-09-25):** av namnen i tabellen ovan är det bara `id` (samt `extension`, `modifierExtension`, `contained`, `implicitRules`) som faktiskt får SUSHI/IG Publisher att fallera på alla nivåer — de krockar med `Element`/`BackboneElement`s egna barn. Nästlade `name`, `code`, `type`, `value`, `text`, `status`, `version` bygger grönt i CI i ett tiotal domäner (t.ex. `activityGroup.performerRole.code`). Konventionen att prefixa gäller fortsatt för nya modeller (läsbarhet och konsekvens), men lägg ingen fix-runda på befintliga nästlade förekomster, och räkna dem inte som byggfel. `preflight_lint.py` felmarkerar därför bara de hårda namnen och varnar för de övriga på rotnivå.

**`Cannot read properties of undefined (reading 'sdType')` lokalt (2026-09-26, `orgmaster.hsa`):** elementets FHIR-typ saknas i den lokala offline-stubben av `hl7.fhir.r4.core` (i det fallet `time`, från `xs:time`). CI hämtar det riktiga paketet och påverkas inte. Lägg till typen i listorna i `gen_fhir_stubs.py` och kör `python3 gen_fhir_stubs.py` igen. Ändra inte modellen.

1. **Pre-flight lint (KRITISKT — kör detta FÖRE `sushi .`, oavsett om Model Builder redan sagt sig ha gjort sin egen självkontroll):** De vanligaste byggfelen i denna migrering är mekaniska mönster som är billigare att hitta med `grep` än att låta SUSHI/IG Publisher krascha på dem en och en. Kör mot **alla** filer i `input/fsh/`:
   ```bash
   # Reserverade elementnamn på valfri nästlingsnivå (id, text, code, status, value, name, type, version, language, meta)
   grep -rnE '(^\*\s+|\.)(id|text|code|status|value|name|type|version|language|meta)\s+[0-9]+\.\.[0-9*]+' input/fsh/logical-models/

   # Identifier/Coding-subelement med fel inbyggd typ (system/use/assigner ska aldrig vara string/integer/boolean/CodeableConcept)
   grep -rnE '\.(system|use|assigner)\s+[0-9]+\.\.[0-9*]+\s+(string|integer|boolean|CodeableConcept)' input/fsh/logical-models/

   # Trasig, aldrig publicerad dependency
   grep -n "se.inera.rivta.core" sushi-config.yaml

   # Felaktig obeys-syntax (obeys tar ALDRIG caret — "^obeys" kraschar sushi)
   grep -rn '\^obeys' input/fsh/
   ```
   Varje träff är ett känt byggfelsmönster (se "FSH-konventioner" ovan för exakt åtgärd per mönster) — fixa alla träffar innan du går vidare till steg 2. Detta är inte en ersättning för `sushi .`/IG Publisher-körningen, utan ett snabbt första filter som fångar de mönster som historiskt återkommit flest gånger.

2. Kontrollera att SUSHI är installerat:
   ```bash
   sushi --version
   ```
   Om kommandot inte hittas: lägg till BLOCK `"SUSHI är inte installerat — kör: npm install -g fsh-sushi"` och avbryt steget.

3. **Förutsättning för SUSHI-körning:** Verifiera att FHIR-baspaketet finns lokalt i cachen:
   ```bash
   ls ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/package/package.json
   ```
   Om filen saknas: logga BLOCK `"FHIR-baspaket saknas offline — kör gen_fhir_stubs.py eller kopiera ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/ från en maskin med internetåtkomst"` och hoppa över SUSHI-steget för denna domän. Markera **inte** domänen som `blocked` i övrigt — fortsätt med QA Tracker.

   **Obs:** packages.fhir.org och hl7.org är nätverksblockerade i denna miljö. SUSHI löser dock paketet från lokal cache utan nätverksanrop om katalogen `~/.fhir/packages/hl7.fhir.r4.core#4.0.1/` finns. Paketet kan skapas lokalt med skriptet `gen_fhir_stubs.py` i projektets rotkatalog.

4. Köra SUSHI i kontraktets katalog:
   ```bash
   cd igs/{ContractId}
   sushi .
   ```

5. Tolka utdata:

| SUSHI-utfall | Åtgärd |
|---|---|
| `0 errors, 0 warnings` | Markera SUSHI-steg som `passed`, fortsätt till QA Tracker |
| Varningar utan fel | Logga varningarna som TODO i QUESTIONS.md, fortsätt |
| Kompileringsfel (`ERROR`) | Logga varje fel som BLOCK i QUESTIONS.md med exakt felmeddelande och filreferens |
| Dependency-fel (package not found) | Kontrollera att `se.inera.rivta.core` inte av misstag lagts till i `dependencies:` (paketet finns inte publicerat — se sushi-config.yaml-mallen ovan) och ta bort raden. Annars logga som BLOCK med exakt paketnamn/version |

6. Extrahera och verifiera att de förväntade artefakterna finns i `fsh-generated/resources/`:
   - `StructureDefinition-{interaktion-lowercase}.json` per kontrakt (t.ex. `StructureDefinition-getcaredocumentation.json`)
   - `StructureDefinition-{interaktion-lowercase}-request.json` (om request-modell skapats)
   - En `CodeSystem-*.json` per definierat kodverk
   - En `ValueSet-*.json` per definierat ValueSet

   Om en förväntad fil saknas trots att SUSHI rapporterar inga fel: logga som BLOCK med notering om vilken FSH-resurs som förmodligen saknar korrekt `Id`-fält.

7. Uppdatera `contracts-registry.json`:
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

### FHIR-kontext

- Använd **FHIR R4 (4.0.1)** genomgående
- Logiska modeller ska använda `Logical:` i FSH, inte `Profile:`
- Det finns **inget** publicerat `se.inera.rivta.core`-paket (varken på build.fhir.org eller packages.fhir.org) — deklarera det **aldrig** som dependency i sushi-config.yaml, det får IG Publisher att krascha vid dependency-upplösning (bekräftat i CI, se GitHub Actions-körning 34356588086). Ineras gemensamma bastyper hanteras istället lokalt: skapa en Extension eller en lokal `Logical:`-typ i domänens egen `input/fsh/` och lägg till en QUESTIONS-notering
- Använd alltid `^url` explicit i CodeSystem för att ange OID-baserad canonical
- Alla FSH-filer ska ha header-kommentarer med kontrakts-ID, version och genereringsdatum
- Varje Logical, CodeSystem och ValueSet har `* ^version` som första regel: kontraktets major.minor (ur XSD-filnamnet, t.ex. `"3.0"`) på kontraktets begärans- och svarsmodell, annars IG:ns version. Skriv dem inte för hand, kör `scripts/set_ig_version.py` (se `tkb-ig-builder`, Versioner). Lokalt kräver regeln att FHIR-stubben har `StructureDefinition.version`; kör `make fhir-stubs` om SUSHI säger "The element or path you referenced does not exist: version"

---

**Tomt svar ger ingen svarsmodell (2026-09-27, `financial_patientfees_exemption`).** Asynkrona kontrakt kan ha en svarstyp med bara `xs:any` (t.ex. RequestExemptionStatusesResponse). `xsd_to_ig.py` genererar då ingen svarsmodell, och en länk till `StructureDefinition-{kontrakt}.html` blir trasig i CI (`[LINK-CHECK]`). Länka bara modeller vars `.fsh` finns och skriv i stället att svaret saknar fält. `preflight_lint.py` jämför nu artefaktlänkar mot `fsh-generated/resources/` efter en lokal sushi-körning.
