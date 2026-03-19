# Öppna frågor och blockerare

Samlade frågor från konverteringsarbetet TKB → FHIR IG.

---

## itintegration.engagementindex v1.0.9

**Status:** blocked
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EI-001]** *(Flyttad till extern issue-lista — se `EXTERNAL_ISSUES.md` EXT-001)*
  Kardinalitetsdiskrepans för fält `clinicalProcessInterestId` i FindContent Request: TKB-fälttabellen anger `0..1`, men informationsmodellen och XSD anger `1..1`. FSH-modellen använder `0..1` (säkrare alternativ). Kräver beslut från domänexpert/förvaltning — kandidat för Jira-ärende.

- [ ] **[BLOCK-EI-004]** SUSHI-kompilering misslyckades: `hl7.fhir.r4.core#4.0.1` kan inte laddas ner från packages.fhir.org (nätverksåtkomst blockerad i nuvarande miljö). Kör manuellt: `cd igs/TKB_itintegration_engagementindex && sushi .` i en miljö med internetåtkomst. Alternativt: installera paketet lokalt via `fhir install hl7.fhir.r4.core#4.0.1` eller kopiera från ~/.fhir/packages/ på en annan maskin.

- [x] **[BLOCK-EI-002]** *(Löst 2026-03-19)* Fälten `creationTime`, `updateTime` och `owner` är nu inkluderade i `UpdateRequest`-modellen med tydlig dokumentation om att konsumenten INTE ska sätta dessa fält — de sätts automatiskt av engagemangsindexinstansen.

- [x] **[BLOCK-EI-003]** *(Löst 2026-03-19)* `se.inera.rivta.core`-paketet existerar inte i referens-IGs (bekräftat via `https://bitbucket.org/ineraservices/fhir`). Beroendet har tagits bort från `sushi-config.yaml`. Referens-IGs använder `dependencies: {}` eller enbart `hl7.fhir.r4.core`.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-EI-001]** Fältet `dataController` förekommer i alla tre kontrakt (FindContent, Update, ProcessNotification) och är definierat som `String` i TKB. Fältet accepterar heterogena identitetstyper: organisationsnummer, HSA-id (`urn:oid:1.2.752.129.2.1.4.1`) eller en källsystemsintern identitet. FHIR-modellen har använt `string` som fallback. Alternativet `Identifier` med valfritt `system`-element vore semantiskt korrekt men kräver att konsumenter kan hantera alla tre fall — verifieras att `string` är acceptabelt eller om `Identifier` ska användas. Relevant sektion: TKB avsnitt 4 (Personuppgiftsansvar) och fälttabeller i avsnitt 6/7.

- [ ] **[ASSUME-EI-002]** ProcessNotification-kontraktet används i en ovanlig dubbel producent/konsument-roll: engagemangsindexinstansen agerar både tjänsteproducent (tar emot notifieringar) och tjänstekonsument (skickar notifieringar). Detta är atypiskt för RIV-TA-kontrakt. Antagandet gjordes att en enda logisk FSH-modell räcker och att rollen förklaras i fri text i IG:ns avsnitt 7.3. Verifiera att detta är tillräckligt eller om separata modeller för producent- respektive konsumentrollen behövs.

- [ ] **[ASSUME-EI-003]** TKB saknar explicit numrering för avsnitt 7.x (kontrakten är beskrivna i separata kapitel per målgrupp snarare än numrerade underavsnitt). Sektionsnumren 7.1 (FindContent), 7.2 (Update) och 7.3 (ProcessNotification) är tilldelade av parsern baserat på kontraktsordning. Verifieras att denna ordning och numrering är korrekt och acceptabel för publicering.

- [ ] **[ASSUME-EI-004]** TKB saknar ett explicit avsnitt 6 "Gemensamma informationskomponenter" i traditionell mening. Mappningen gjordes mot det kapitel som behandlar tjänstekontraktens tekniska beskrivning och domänspecifika attribut. Filen `6-gemensamma-informationskomponenter.md` har genererats med detta innehåll. Verifiera att detta är en godtagbar mappning eller om avsnittet ska lämnas tomt med en hänvisning till avsnitt 5.

- [ ] **[ASSUME-EI-005]** TKB:ns kapitelstruktur är icke-standard (kapitelnamn utan konsekvent numrering). Avsnitten 1–6 i IG:n har mappats från kapitelnamn/innehåll snarare än numrerade avsnitt. Antagandet gjordes att innehållet är korrekt identifierat. Verifiera manuellt att rätt text hamnat under respektive avsnitt i IG:n.

### TODO (kan göras utan input)

- [ ] **[TODO-EI-001]** FindContent Response saknar explicita fältregler för `creationTime` och `updateTime` i TKB:ns fälttabell — dessa fält är med i XSD-schemat men dokumenteras inte i tabellen. Komplettera beskrivningen i `7-tjanstekontrakt.md` och FSH-modellen med en notis om att fältreglerna hämtats från XSD snarare än TKB-tabellen. Relevant sektion: TKB avsnitt 7.1 (FindContent), svarstabell.

- [ ] **[TODO-EI-002]** ProcessNotification: Tydliggör i IG:ns avsnitt 7.3 att nationellt engagemangsindex fr.o.m. version 1.0.9 **inte** längre agerar konsument (skickar) ProcessNotification till lokala index — nationellt index är enbart producent. Lokala index kan agera konsument mot nationellt index. Denna förändring är viktig för implementerare och bör framgå tydligt i introduktionstexten till kontraktet.

- [ ] **[TODO-EI-003]** Lägg till en förklarande sektion i `index.md` eller `3-tjanstedomanens-arkitektur.md` om engagemangsindexets arkitektur med flera instanser (nationell + lokala) och hur ProcessNotification används för konsolidering. Diagrambeskrivningarna i TKB avsnitt 3 innehåller sekvensdiagram som kan parafraseras i Markdown.

- [ ] **[TODO-EI-004]** Verifiera att `mostRecentContent`-fältet (typ `TS`, format `YYYYMMDDhhmmss`) är korrekt mappat till FHIR `dateTime` i FSH-modellerna. TKB version 1.0.9 tog bort alla regler kring uppdatering av `MostRecentContent` — notera detta i fältbeskrivningen och referera till respektive tjänstedomäns TKB för domänspecifika regler.

- [ ] **[TODO-EI-005]** Kontrollera att FHIR-representationen av `registeredResidentIdentification` (personnummer/samordningsnummer/nationellt reservnummer, 12 tecken) är korrekt modellerad som `Identifier` med lämpliga OID-system-URL:er. Formatreglerna i TKB avsnitt 5 (regexp `[0-9]{8}[0-9A-Zptf]{4}`) bör eventuellt uttryckas som en FHIR-invariant på identifieraren.

---

## clinicalprocess.logistics.logistics v3.0.13

**Status:** blocked
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CLL-001]** SUSHI-kompilering misslyckades: `hl7.fhir.r4.core#4.0.1` kan inte laddas ner från packages.fhir.org (nätverksåtkomst blockerad i nuvarande miljö). Kör manuellt: `cd igs/TKB_clinicalprocess_logistics_logistics && sushi .` i en miljö med internetåtkomst. Alternativt: installera paketet lokalt via `fhir install hl7.fhir.r4.core#4.0.1` eller kopiera från ~/.fhir/packages/ på en annan maskin.

- [ ] **[BLOCK-CLL-002]** Villkorlig kardinalitet för `sourceSystemHSAId` i request för båda kontrakten: fältet är `0..1` i XSD men enligt fältregelstabellen i TKB är det tvingande (villkorligt obligatoriskt) om `careContactId` angivits eller vid begäran på reservnummer. FSH-modellen använder `0..1` (säkrare alternativ). Beslut behövs: ska en FHIR-invariant modellera villkoret, eller räcker dokumentation i fältbeskrivningen? Relevant sektion: TKB avsnitt 7.1 och 7.2, fältregler för sourceSystemHSAId.

- [ ] **[BLOCK-CLL-003]** Villkorlig kardinalitet för `content.value`/`content.reference` i `CarePlanBodyType` (GetCarePlans): antingen `value` eller `reference` ska anges, men ej båda. Detta är ett XOR-villkor som inte kan uttryckas direkt i FSH-kardinaliteten (båda är `0..1`). FSH-modellen dokumenterar villkoret i fältbeskrivningarna. Beslut: ska en FHIR-invariant `Exactly one of value or reference must be present` läggas till på `carePlan.content`? Relevant sektion: TKB avsnitt 7.2, fältregler för CarePlanBody.content.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CLL-001]** `careContactCode` och `careContactStatus` i GetCareContacts är mappade till `CodeableConcept` (FHIR). TKB anger CVType som underliggande RIV-TA-typ. Antagandet gjordes att CVType → CodeableConcept är korrekt mappning eftersom CVType innehåller code, codeSystem, displayName och originalText. Verifiera att detta är acceptabelt eller om en annan FHIR-typ är mer lämplig.

- [ ] **[ASSUME-CLL-002]** `typeOfCarePlan` i GetCarePlans är i XSD-schemat av typen `TypeOfCarePlanEnum` (en enkel string-enum), men TKB-fälttabellen anger att attributnamnet i XSD är `typeOfCarePlanEnum`. FSH-modellen använder fältnamnet `typeOfCarePlan` (kortform) och binder det till `TypeOfCarePlanVS`. Verifieras att fältnamnet i FSH-modellen överensstämmer med hur konsumenter förväntar sig att se fältet benämnt. Relevant sektion: TKB avsnitt 7.2, fältregler rad 45 (OBS-notering).

- [ ] **[ASSUME-CLL-003]** `participatingCareUnitHSAId` i `CarePlanBodyType` är av typen `IIType` i XSD (root + extension). Mappning vald: FHIR `Identifier` (system = root OID, value = extension). Om root-fältet alltid innehåller en känd OID för HSA-id-rymden (`urn:oid:1.2.752.129.2.1.4.1`) kan `system` sättas till denna OID. Verifieras om OID för HSA-id-rymden ska vara fast i modellen eller om det varierar per källsystem.

### TODO (kan göras utan input)

- [ ] **[TODO-CLL-001]** `CareContactCodeEnum` i XSD-schemat (`clinicalprocess_logistics_logistics_enum_3.0.xsd`) definierar numeriska koder (1=Besök, 2=Telefon, 3=Vårdtillfälle, 4=Dagsjukvård, 5=Annan) för vårdkontakttyp. TKB avsnitt 7.1 hänvisar dock till KV Vårdkontakttyp (OID 1.2.752.129.2.2.2.x) som ett CV-kodverk snarare än enumen. Skapa ett FSH CodeSystem för `CareContactCodeEnum` och ett ValueSet, eller verifiera att det externa KV Vårdkontakttyp-kodverket täcker samma värden.

- [ ] **[TODO-CLL-002]** `AdditionalPatientInformation.gender` binder till KV Kön (OID 1.2.752.129.2.2.1.1). Verifiera canonical URL för detta kodverk och lägg till en explicit `from`-bindning i FSH-modellen när canonical-URL är bekräftad.

- [ ] **[TODO-CLL-003]** `MediaTypeEnum` i XSD-schemat definierar ett komplett set MIME-typer (25 värden). TKB avsnitt 7.2 begränsar tillåtna format till: text/plain, text/html, image/jpeg, image/png, application/pdf. Skapa ett begränsat ValueSet `AllowedMediaTypeVS` med de fem tillåtna värdena och bind `carePlan.content.mediaType` till detta ValueSet, alternativt lägg till en invariant.
