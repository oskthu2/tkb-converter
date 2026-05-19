# Öppna frågor och blockerare

Samlade frågor från konverteringsarbetet TKB → FHIR IG.

---

## itintegration.engagementindex v1.0.9

**Status:** blocked
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EI-001]** *(Flyttad till extern issue-lista — se `EXTERNAL_ISSUES.md` EXT-001)*
  Kardinalitetsdiskrepans för fält `clinicalProcessInterestId` i FindContent Request: TKB-fälttabellen anger `0..1`, men informationsmodellen och XSD anger `1..1`. FSH-modellen använder `0..1` (säkrare alternativ). Kräver beslut från domänexpert/förvaltning — kandidat för Jira-ärende.

- [x] **[BLOCK-EI-004]** *(Löst 2026-03-20)* SUSHI-kompilering misslyckades: `hl7.fhir.r4.core#4.0.1` kan inte laddas ner från packages.fhir.org (nätverksåtkomst blockerad i nuvarande miljö). Kör manuellt: `cd igs/TKB_itintegration_engagementindex && sushi .` i en miljö med internetåtkomst. Alternativt: installera paketet lokalt via `fhir install hl7.fhir.r4.core#4.0.1` eller kopiera från ~/.fhir/packages/ på en annan maskin.

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

- [x] **[BLOCK-CLL-001]** *(Löst 2026-03-20)* SUSHI-kompilering misslyckades: `hl7.fhir.r4.core#4.0.1` kan inte laddas ner från packages.fhir.org (nätverksåtkomst blockerad i nuvarande miljö). Kör manuellt: `cd igs/TKB_clinicalprocess_logistics_logistics && sushi .` i en miljö med internetåtkomst. Alternativt: installera paketet lokalt via `fhir install hl7.fhir.r4.core#4.0.1` eller kopiera från ~/.fhir/packages/ på en annan maskin.

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

---

## clinicalprocess.healthcond.actoutcome v4.2.2

**Status:** blocked
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [x] **[BLOCK-CHAO-001]** *(Löst 2026-03-20)* SUSHI-kompilering inte körd: `hl7.fhir.r4.core#4.0.1` kan inte laddas ner från packages.fhir.org (nätverksåtkomst blockerad i nuvarande miljö). Kör manuellt: `cd igs/TKB_clinicalprocess_healthcond_actoutcome && sushi .` i en miljö med internetåtkomst.

- [ ] **[BLOCK-CHAO-002]** `AnyValueType` i `GetLaboratoryOrderOutcome` — fältet `analysis.result.value` är av XSD-typen `AnyValueType` som kan innehålla antingen en numerisk mätning (PQType), en sträng, en boolesk, eller en kodad typ (CVType). FHIR stödjer inte union-typer direkt i Logical-modeller. FSH-modellen har modellerat detta som `string` som fallback. Beslut krävs: ska detta modelleras som en `BackboneElement` med ett fält per möjlig typ (varav exakt ett ska användas), eller accepteras `string`-representationen? Relevant sektion: TKB avsnitt 7.1, fältregler rad `result.value`.

- [ ] **[BLOCK-CHAO-003]** `ExaminationStatusCodeCS` använder kodvärden med svenska tecken (t.ex. `Pågående`). FHIR CodeSystem codes kan innehålla icke-ASCII-tecken men det rekommenderas inte. Beslutsalternativ: (a) behåll svenska kodvärden som-är (troget källsystemet), (b) translitterera till ASCII (t.ex. `Pagaende`), (c) använd ett separat system-URI och håll originalvärdena i `display`. FSH-modellen har translittererat `Pågående` → `#Pagaende` som kompromiss men källvärdet kvarstår i display. Verifiera att dessa koder stämmer med vad källsystem faktiskt skickar — om källsystem skickar `Pågående` (med å) måste koden i CodeSystem matcha exakt.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CHAO-001]** `AnyValueType` (analysresultat i GetLaboratoryOrderOutcome) mappat till FHIR `string` som fallback. Det mest semantiskt korrekta vore `Quantity` för numeriska värden. Om merparten av analysresultat är numeriska (vilket är typiskt för laboratorievärden), bör `Quantity` väljas. Verifieras med tillämpningsanvisningen som medföljer kontraktet (separat dokument `IS_clinicalprocess_healthcond_actoutcome_getLaboratoryOrderOutcome.docx`). Relevant sektion: TKB avsnitt 7.1, fältregler.

- [ ] **[ASSUME-CHAO-002]** `ReferralOutcomeTypeCodeEnum` (GetReferralOutcome) har genererats som ett eget Inera-CodeSystem med canonical `https://fhir.inera.se/CodeSystem/referraloutcometypecode`. OID för detta kodverk är okänd — TKB anger ej OID. Verifiera om ett OID finns registrerat för detta kodverk eller om canonical URL är korrekt approach. Relevant sektion: TKB avsnitt 7.2, `referralOutcomeTypeCode`.

- [ ] **[ASSUME-CHAO-003]** `TypeOfResultCodeEnum` (GetImagingOutcome: PREL/DEF/TILL) har genererats som Inera-CodeSystem. OID okänd. Samma situation som ASSUME-CHAO-002. Verifiera OID och canonical URL. Relevant sektion: TKB avsnitt 7.4.

- [ ] **[ASSUME-CHAO-004]** `SexCodeCS` (GetMaternityMedicalHistory, barnets kön) har skapats lokalt som ett domänspecifikt kodverk. Det kan vara mer korrekt att mappa till HL7 `AdministrativeGender` (male/female/unknown/other) eller SNOMEDs kön-begrepp. Verifieras om det lokala kodverket med numeriska koder (0/1/2/9) är standard eller om ett nationellt/internationellt kodverk ska användas.

- [ ] **[ASSUME-CHAO-005]** `FetalPositionCodeEnum` och `FetalPresentationCodeEnum` delar kodvärden (0=huvud, 1=säte, 2=snedläge, 3=tvärläge). Antagandet att dessa är separata kodverk är gjort utifrån XSD-definitionen (de är separata `simpleType`). Det är möjligt att de ska vara ett enda kodverk. Verifiera med domänexpert.

- [ ] **[ASSUME-CHAO-006]** Sektionsordningen i TKB-dokumentet är icke-standard: avsnitt 5 är "Gemensamma informationskomponenter" och avsnitt 6 är "Tjänstedomänens meddelandemodeller" — omvänt mot den konventionella TKB-strukturen. IG-sidorna har mappats i dokumentets faktiska ordning. Verifiera om den publicerade IG:n ska följa dokumentet eller en standardiserad sidordning.

- [ ] **[ASSUME-CHAO-007]** Tjänstekontraktet GetMaternityMedicalHistory (version 2.0) innehåller en SjD-dokumentation som anger att kontraktet har en SjD (Systemskiftesdokumentation) — se `SjD_TP_GetMaternityMedicalHistory_2.0.docx` i docs-mappen. Antagandet gjordes att TKB-dokumentet innehåller de normativa fältreglerna; SjD-dokumentet är informativt och behöver inte processas för IG-genereringen. Verifiera om SjD innehåller fältregler eller begränsningar som saknas i TKB-fälttabellen.

- [ ] **[ASSUME-CHAO-008]** GetImagingOutcome version 1.0 — denna version är avsevärt äldre än de övriga kontrakten (4.2/3.2/2.0). Antagandet gjordes att version 1.0 fortfarande är den gällande versionen av detta kontrakt i domän 4.2.2. Verifiera att inga nyare versioner av GetImagingOutcome finns i pipeline (inga fler tags i repot matchar imaging-uppdateringar).

### TODO (kan göras utan input)

- [ ] **[TODO-CHAO-001]** Tillämpningsanvisningen `IS_clinicalprocess_healthcond_actoutcome_getLaboratoryOrderOutcome.docx` och SjD-dokumenten (`SjD_TK_GetLaboratoryOrderOutcome_4.2.docx` etc.) är inte parsade. Dessa kan innehålla kompletterande fältregler och implementationsdetaljer. Lägg till en referens i IG:ns sektion 7.1 till tillämpningsanvisningen och överväg att extrahera nyckelpunkter.

- [ ] **[TODO-CHAO-002]** `GetReferralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode` är av typen `ClinicalInformationCodeType` (XSD-definierad med code + codeSystem, ej CVType). OID för kodverket är inte angivet i TKB. Skapa ett CodeSystem-stub eller lägg till en kommentar. Relevant sektion: TKB avsnitt 7.2, fältregler för clinicalInformation.

- [ ] **[TODO-CHAO-003]** `GetReferralOutcome.act.actCode` är av typen `ActCodeType` (XSD: code + codeSystem). OID saknas i TKB. Komplettera CodeSystem-information. Relevant sektion: TKB avsnitt 7.2, fältregler för act.actCode.

- [ ] **[TODO-CHAO-004]** FSH-modellen för `GetLaboratoryOrderOutcome` innehåller `analysis.result.related` (typ `AnalysisType`) med `0..*` kardinalitet men utan fält — rekursiva AnalysisType-definitioner kan inte direkt representeras i FSH Logical med BackboneElement. Lägg till en kommentar om att detta fält representerar referens till relaterade analyser och att den fullständiga strukturen är identisk med föräldreelementet (`analysis`). En explicit FHIR-representation av rekursiva strukturer kräver en Extension eller en Reference-typ.

- [ ] **[TODO-CHAO-005]** Kontrollera att `ExaminationStatusCodeCS` koden `#Pagaende` matchar vad källsystem faktiskt skickar. Om källsystem skickar det svenska `Pågående` (med å) behöver CodeSystem-koden ändras för att FHIR-valideringen ska fungera korrekt.

- [ ] **[TODO-CHAO-006]** `SjD_TK_GetReferralOutcome_3.2.docx` och `SjD_TK_GetImagingOutcome_1.0.docx` är inte parsade. Dessa kan innehålla systemskiftesspecifika regler. Lägg till referenser i respektive kontraktssektion i IG:n.

---

## clinicalprocess.healthcond.description v3.0.5

**Status:** blocked (SUSHI kan inte köras utan nätverksåtkomst)
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [x] **[BLOCK-DESC-001]** *(Löst 2026-03-20)* SUSHI-kompilering kan inte köras i nuvarande miljö: `hl7.fhir.r4.core#4.0.1` kräver nätverksåtkomst för att laddas ner från packages.fhir.org. Kör manuellt: `cd igs/TKB_clinicalprocess_healthcond_description && sushi .` i en miljö med internetåtkomst. IG-innehåll (pagecontent + FSH-modeller) är komplett.

- [x] **[BLOCK-DESC-002]** *(Löst 2026-03-20)* `se.inera.rivta.core: current` är angivet som beroende i sushi-config.yaml men paketets faktiska existens i FHIR-paketregistret är overifierad (se även BLOCK-EI-003 för engagemangsindex). Om paketet inte finns: ta bort beroendet och skapa lokala kopior av gemensamma bastyper (IIType, CVType, etc.) eller referera direkt till `hl7.fhir.r4.core`-typer.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-DESC-001]** `diagnosisCode.codeSystem` i GetDiagnosis är inte explicit angiven i TKB. Antagandet gjordes att diagnoser normalt kodas med ICD-10-SE. Canonical URL för ICD-10-SE i svensk FHIR-kontext är okänd — `http://hl7.org/fhir/sid/icd-10` är den internationella URL:en. Verifieras att rätt OID eller canonical URL används för svensk ICD-10-SE.

- [ ] **[ASSUME-DESC-002]** `typeOfAlertInformation` i GetAlertInformation är av typen CVType med kod från "lokalt kodverk eller nationell standard" (TKB avsnitt 7.3.4). Kodsystem-URL och OID är inte angiven i TKB eller XSD. FSH-modellen använder `CodeableConcept` utan binding. Verifieras vilket kodverk (nationellt eller lokalt) som normalt används för typer av uppmärksamhetssignaler i Sverige.

- [ ] **[ASSUME-DESC-003]** `healthcareProfessionalCareUnitHSAId` (regel 1) är villkorlig i GetDiagnosis, GetAlertInformation och GetFunctionalStatus — modellerad som `0..1` (säkrare alternativ). Villkoret är "Se regel 1" utan explicit specifikation i TKB-tabellen. Verifieras om FHIR-invariant ska läggas till eller om `0..1` med kommentar är tillräckligt.

- [ ] **[ASSUME-DESC-004]** `clinicalDocumentNoteText` och `multimediaEntry` i GetCareDocumentation är ömsesidigt uteslutande (XSD-regel: careDocumentationBody [sch]). Båda är modellerade som `0..1` med kommentar om uteslutning. En FHIR-invariant för att formellt uttrycka denna begränsning har INTE skapats — detta kräver ett beslut om huruvida invarianter ska läggas till generellt eller om kommentarer i beskrivning är tillräckligt.

- [ ] **[ASSUME-DESC-005]** `disability.disabilityAssessment` i GetFunctionalStatus refererar till ICF-kodsystem med OID `1.2.752.116.1.1.3` (nationellt). Inget lokalt CodeSystem för ICF har skapats (det är ett externt standardkodsystem). Canonical URL för ICF i svensk FHIR-kontext: verifieras om `http://hl7.org/fhir/sid/icf` eller OID-URI `urn:oid:1.2.752.116.1.1.3` ska användas.

- [ ] **[ASSUME-DESC-006]** Versionen "3.0.5" är TKB-dokumentversionen, inte enskilda kontraktsversioner. GetCareDocumentation är v3.0, de övriga tre är v2.0. IG-versionen är satt till 3.0.5 (TKB-version) som identifierar hela domänpaketets revision. Verifiera att detta är rätt versionssättningsstrategi för publicering.

- [ ] **[ASSUME-DESC-007]** GetCareDocumentation-kontraktet hämtades via Bitbucket-tagg `3.0.5` (lateste tag) eftersom Bitbucket downloads-API returnerade tom lista (inga publicerade zip-filer). Det faktiska zip-innehållet är identiskt med källkoden i taggen. Verifieras att tag `3.0.5` representerar den senaste stabila versionen av domänen.

### TODO (kan göras utan input)

- [ ] **[TODO-DESC-001]** Lägg till FHIR-invarianter för ömsesidiga uteslutningar i GetCareDocumentation: `clinicalDocumentNoteText` XOR `multimediaEntry`, och `multimediaEntry/value` XOR `multimediaEntry/reference`. Kräver FSH `Invariant:` resurser och `obeys`-regler på BackboneElement-nivå.

- [ ] **[TODO-DESC-002]** Lägg till FHIR-invariant för `healthcareProfessionalCareUnitHSAId` (regel 1) i GetDiagnosis, GetAlertInformation och GetFunctionalStatus när villkorsspecifikationen är känd (se ASSUME-DESC-003).

- [ ] **[TODO-DESC-003]** Lägg till binding för `typeOfAlertInformation.coding.system` i GetAlertInformation när rätt kodsystem är identifierat (se ASSUME-DESC-002). Skapa ett externt ValueSet eller referens till nationellt kodverk.

- [ ] **[TODO-DESC-004]** `MultimediaType.mediaType` bör bindas till en ValueSet med tillåtna MIME-typer (definierade i `MediaTypeEnum` i enum XSD v2.1). Skapa ett ValueSet `MediaTypeVS` baserat på enum-värdena och lägg till binding i `GetCareDocumentation.careDocumentation.body.multimediaEntry.mediaType`.

- [ ] **[TODO-DESC-005]** Parsa SjD-dokumenten (`SjD_TK_GetCareDocumentation_3.0.docx`, `SjD_TK_GetDiagnosis_2.0.docx`, `SjD_TK_GetAlertInformation_2.0.docx`, `SjD_TK_GetFunctionalStatus_2.0.docx`) för systemskiftesspecifika regler och komplettera IG-sidorna med eventuella tillägg.

- [ ] **[TODO-DESC-006]** `DissentingOpinion` i GetCareDocumentation: personId root-OID för personnummer angiven som `1.2.752.129.2.1.3.1`. Lägg till en kommentar i FSH-modellen med OID-lista för samordningsnummer och nationellt reservnummer när dessa är verifierade.

- [ ] **[TODO-DESC-007]** Kontrollera XSD-filer för GetAlertInformationResponder_2.0.xsd för att identifiera eventuella ytterligare fält i `alertInformationBody` som inte täcks av TKB-tabellen (tabellen avbröts vid rad 50 i extraktion — ytterligare fält kan finnas).

---

## clinicalprocess.activityprescription.prescribe v2.0

**Status:** blocked (SUSHI kan inte köras utan nätverksåtkomst)
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [x] **[BLOCK-PRESC-001]** *(Löst 2026-03-20)* SUSHI-kompilering kan inte köras i nuvarande miljö: `hl7.fhir.r4.core#4.0.1` kräver nätverksåtkomst för att laddas ner från packages.fhir.org. Kör manuellt: `cd igs/TKB_clinicalprocess_activityprescription_prescribe && sushi .` i en miljö med internetåtkomst. IG-innehåll (pagecontent + FSH-modeller för 15 kontrakt + 7 CodeSystems + 7 ValueSets) är komplett.

- [ ] **[BLOCK-PRESC-002]** Domänen är märkt som version 2.0 (från filnamnet i zip-taggen `clinicalprocess_activityprescription_prescribe_2.0_RC1` — **RC1 = Release Candidate**). Det är oklart om detta är den officiella stabila versionen eller om en godkänd 2.0 final finns. Verifiera med domänförvaltning att RC1-taggen är den gällande produktionssatta versionen. Relevant: TKB-dokumentet avsnitt 2 nämner version 2.0 men har ingen explicit stabilitetsmarkering.

- [ ] **[BLOCK-PRESC-003]** Domänens XSD-schema refererar till externa scheman i `generated/generated_xsd_nod/` (bl.a. `MedicationPrescription.xsd`, `MedicationDispenseAuthorization.xsd` etc.) och `generated/generated_xsd_dosage/` (Dosage-schema). Dessa typer är inte inkluderade i FSH-modellerna — de är refererade som `BackboneElement`. Beslut krävs: ska separata FSH `Logical:`-typer skapas för t.ex. `MedicationPrescription`, `MedicationDispenseAuthorization` och `Dosage`? Detta skulle ge ett mer komplett informationsmodell men kräver betydande arbete.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-PRESC-001]** `patientInformation` i RegisterMedicationPrescription och RegisterMedicationDispenseAuthorization kan innehålla antingen personnummer (`patientId`) eller demografiska uppgifter (namn, födelsedatum, kön, adress). Antagandet gjordes att exakt ett av dessa alternativ ska anges (XOR-villkor). FSH-modellen har `patientId 0..1` och demografiska fält som `0..1`. Verifiera om en FHIR-invariant ska formalisera detta XOR-villkor. Relevant sektion: TKB avsnitt 7.2 och 7.6, fältregler `patientInformation`.

- [ ] **[ASSUME-PRESC-002]** `medicationStatus`-filtret i GetMedicationPrescriptions refererar till FHIR MedicationRequest status-koder (`http://www.hl7.org/fhir/valueset-medicationrequest-status.html`). Detta är en ovanlig direkt referens till FHIR-kodverk från ett RIV-TA-kontrakt (troligtvis ett designval i version 2.0). Antagandet gjordes att FHIR-status-URL:en är korrekt. Verifiera att implementatörer ska använda FHIR `active|on-hold|cancelled|completed|entered-in-error|stopped|draft|unknown` för detta filter.

- [ ] **[ASSUME-PRESC-003]** `medicationListVersion` är av typen `Identifier` i TKB-fälttabellerna. Från avsnitt 5 (Formatregler) framgår att versionen är ett UUID. FSH-modellen har mappat detta till `Identifier`. Verifiera om `string` eller `id` (FHIR primitive) är mer korrekt givet att det är ett UUID-värde utan separat system-URI.

- [ ] **[ASSUME-PRESC-004]** `GenderEnum` i XSD-schemat definierar koderna `Male`, `Female`, `Unspecified` (engelska). Antagandet gjordes att dessa koder är domenspecifika och inte mappar direkt till FHIR `AdministrativeGender` (som använder `male`, `female`, `other`, `unknown` — lowercase). FSH-modellen skapar ett eget `GenderCS` med engelska koder. Verifiera om FHIR:s AdministrativeGender-kodverk ska användas istället för att öka interoperabilitet.

- [ ] **[ASSUME-PRESC-005]** `EHMAuthenticationSupplement` är ett EHM-specifikt (Elektronisk HandelsMatch / apoteksystemet) fält i `GetMedicationDispenseAuthorizationsRequest`. Det används "enbart då NOD anropar underliggande tjänst" (enligt TKB-fälttabellen). FSH-modellen har modellerat detta som `BackboneElement` med `0..1` kardinalitet. Verifiera om detta fält ska modelleras mer detaljerat (läs `EHMAuthenticationSupplement.xsd`) eller om det är tillräckligt att dokumentera det som valfritt EHM-specifikt fält.

- [ ] **[ASSUME-PRESC-006]** Domänen innehåller kontrakt för **apoteksinteraktion** (expedieringsunderlag, uthämtade läkemedel, samtycken) som hör till NOD-ekosystemet (Nationell Ordinationsdatabas). Dessa kontrakt skiljer sig funktionellt från de "rena" ordinationskontrakten. FSH-modellerna behandlar alla 15 kontrakt enhetligt. Verifiera om apoteksinteraktionskontrakten (7.5–7.12) ska ha separata modellgrupperingar eller FHIR-profiler.

- [ ] **[ASSUME-PRESC-007]** `Dosage`-typen refereras i MedicationPrescription (se `clinicalprocess_activityprescription_dosage_2.0.xsd`) men är inte inkluderad i FSH-modellerna. Antagandet gjordes att Dosage är en komplex extern domän (RIVTA dosage-domän) som inte ska dupliceras i denna IG. FSH-modellen refererar Dosage-strukturen som `BackboneElement`. Verifiera om dosage-schemat ska importeras eller om en referens till `clinicalprocess:activityprescription:dosage`-domänen är tillräcklig.

### TODO (kan göras utan input)

- [ ] **[TODO-PRESC-001]** `MediaTypeEnum` i enum XSD definierar 20 MIME-typer. Skapa ett ValueSet `MediaTypeVS` baserat på dessa och bind `dispensedDrugMultimedia.mediaType` i GetDispensedDrugs. Relevant sektion: TKB avsnitt 7.9, fältregler för multimedia-svarstyp.

- [ ] **[TODO-PRESC-002]** `DiscontinueMedication`-kontraktet (7.3) — fälttabellen innehåller `RevocationEnum` för utsättningsorsak. Extrahera koderna från `RevocationEnum.xsd` och skapa `RevocationCodeCS` + `RevocationCodeVS`. Lägg till binding i `DiscontinueMedication.medicationPrescription.revocation.revocationReason`.

- [ ] **[TODO-PRESC-003]** Tillämpningsanvisningen `VIS_clinicalprocess_activityprescription_prescribe.docx` och arbetsbok `AB_clinicalprocess_activityprescription_prescribe.docx` är inte parsade. Dessa kan innehålla kompletterande fältregler och implementationsdetaljer. Lägg till referenser till dessa dokument i IG:ns sektion 1 (Inledning).

- [ ] **[TODO-PRESC-004]** `SetMedicationListReviewed` (7.13) och `SetMedicationListReviewNeeded` (7.14) har i princip identisk request-struktur (patientId + medicationListVersion + reviewer-info). Verifiera om de kan dela en gemensam request-modell `SetMedicationListReviewBaseRequest` eller om de ska modelleras separat.

- [ ] **[TODO-PRESC-005]** `CheckMedicationListVersion` (7.15) och `GetDispensedDrugsConsent` (7.10) är enkla kontrakt med minimal request (2 fält). FSH request-modeller har inte skapats för dessa (under gränsen för 3-4 fält). Dokumentationen av request-fälten finns i `7-tjanstekontrakt.md` avsnitt 7.10.3 och 7.15.3.

- [ ] **[TODO-PRESC-006]** `GetDispensedDrugs` (7.9) — request innehåller fältet `typeOfResponse` av typen `DispensedDrugsTypeOfResponseEnum` (TEXT/MULTIMEDIA/BOTH). Lägg till binding i en eventuell request-modell och verifiera att `DispensedDrugsTypeOfResponseVS` är korrekt. Relevant sektion: TKB avsnitt 7.9, fältregler.

- [ ] **[TODO-PRESC-007]** Parsa `VIS_clinicalprocess_activityprescription_dosage.docx` för att förstå koppling mellan ordination (prescribe-domänen) och dosering (dosage-domänen). Detta kan vara nödvändigt för att komplettera FSH-modellerna med Dosage-strukturen. Se ASSUME-PRESC-007.

---

## clinicalprocess.activityprescription.actoutcome v2.2.1

**Status:** blocked (SUSHI kan inte köras utan nätverksåtkomst)
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [x] **[BLOCK-ACT-001]** *(Löst 2026-03-20)* SUSHI-kompilering kan inte köras i nuvarande miljö: `hl7.fhir.r4.core#4.0.1` kräver nätverksåtkomst för att laddas ner från packages.fhir.org. Kör manuellt: `cd igs/TKB_clinicalprocess_activityprescription_actoutcome && sushi .` i en miljö med internetåtkomst. IG-innehåll (pagecontent + FSH-modeller för 2 kontrakt + 5 CodeSystems + 5 ValueSets) är komplett.

- [ ] **[BLOCK-ACT-002]** GetMedicationHistory — fälttabellen (Table 16, 659 rader) är extremt komplex med djupt nästlade typer `DispensationAuthorizationType`, `AdministrationType` och `RelationType` (varsamma rader 315, 405 resp. 621 i tabellen). Dessa är inte fullständigt extraherade i FSH-modellen — de är representerade som `BackboneElement` med kommentar "kontrollera manuellt". Beslut krävs: ska separata FSH `Logical:`-typer skapas för dessa komplexa undertyper, eller räcker kommentarerna i den existerande modellen?

- [ ] **[BLOCK-ACT-003]** GetMedicationHistory — fältet `drug` (DrugChoiceType) är ett XOR-val mellan fem alternativ: `unstructuredDrugInformation`, `merchandise`, `drugArticle`, `drug` och `generics`. Exakt ett av dessa ska anges. FHIR kan inte uttrycka XOR-kardinalitet direkt (alla är `0..1`). FSH-modellen dokumenterar villkoret i fältbeskrivningen. Beslut: ska en FHIR-invariant `Exactly one of unstructured/merchandise/drugArticle/drug/generics must be present` läggas till? Relevant sektion: TKB avsnitt 7.2, fältregler rad 128.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-ACT-001]** GetMedicationHistory version i TKB-dokumentet: avsnitt 7.2.1 anger version "2.1" men domänversionen är 2.2.1 och WSDL-filen heter `GetMedicationHistoryInteraction_2.2_RIVTABP21.wsdl`. Antagandet gjordes att kontraktsversionen är 2.2 (i enlighet med WSDL och XSD-schema) och att texten "2.1" i avsnitt 7.2.1 är ett redaktionellt fel i TKB-dokumentet. Verifiera med domänexpert.

- [ ] **[ASSUME-ACT-002]** `TypeOfPrescriptionEnum` (I/U) har inte en kopplad OID i XSD-schemat. Kodsystemet har skapats som ett Inera-internt CodeSystem med canonical `https://fhir.inera.se/CodeSystem/typeofprescription`. Verifiera om ett nationellt OID finns registrerat för detta kodverk.

- [ ] **[ASSUME-ACT-003]** XOR-villkor för `DrugChoiceType.drug` (se BLOCK-ACT-003) har modellerats som fem separata `0..1`-fält utan FHIR-invariant. Antagandet att dokumentation i fältbeskrivningen är tillräckligt som interimslösning. Verifiera om formell invariant krävs för publicering.

- [ ] **[ASSUME-ACT-004]** `vaccineName` i GetVaccinationHistory refererar till NPL-id med OID `1.2.752.129.2.1.5.2`. TKB anger "I code ska anges företrädelsevis NPL-id". Antagandet gjordes att NPL-id är rekommenderat men inte obligatoriskt, och att lokala kodverk accepteras. FSH-modellen har `CodeableConcept` utan fast binding. Verifiera om ett ValueSet med NPL-id som preferred binding ska skapas.

- [ ] **[ASSUME-ACT-005]** `gender` i `AdditionalPatientInformationType` (båda kontrakten) refererar till KV Kön (OID 1.2.752.129.2.2.1.1). Inget eget CodeSystem har skapats — nationellt kodverk förväntas. Canonical URL för KV Kön i FHIR-kontext är okänd (möjliga alternativ: `urn:oid:1.2.752.129.2.2.1.1` eller Socialstyrelsens FHIR canonical). Verifiera rätt canonical URL.

- [ ] **[ASSUME-ACT-006]** Engagemangsindex-attributen (Categorization) för de två kontrakten är `caa-gvh` (GetVaccinationHistory) och `caa-gmh` (GetMedicationHistory). Dessa är extraherade från TKB tabell 8. Antagandet att dessa värden är stabila och korrekta för registrering i EI. Verifiera med EI-förvaltning.

### TODO (kan göras utan input)

- [ ] **[TODO-ACT-001]** Parsa `AB_clinicalprocess_activityprescription_actoutcome.docx` (tillämpningsanvisningen) för kompletterande fältregler och implementationsdetaljer för GetMedicationHistory. Lägg till nyckelinformation från AB-dokumentet i IG:ns avsnitt 7.2.

- [ ] **[TODO-ACT-002]** GetMedicationHistory `DispensationAuthorizationType` (rad 315 i fälttabellen) och `AdministrationType` (rad 405) är komplexa undertyper med egna nästlade strukturer. Extrahera dessa som separata FSH `Logical:` typer (`MedicationDispensationAuthorization` och `MedicationAdministration`) för att ge mer komplett informationsmodell.

- [ ] **[TODO-ACT-003]** GetMedicationHistory `RelationType` (rad 621) — sambandsklass. Extrahera och skapa FSH `Logical: MedicationRelation`. Relevant sektion: TKB avsnitt 7.2, fältregler rad 621.

- [ ] **[TODO-ACT-004]** Parsa schematron-filer för ytterligare begränsningsregler. TKB tabell 14 (GetVaccinationHistory, 9 rader) och tabell 17 (GetMedicationHistory, 23 rader) listar schematron-regler. Extrahera dessa och dokumentera i IG:ns övriga-regler-avsnitt samt överväg om de ska läggas till som FHIR-invarianter.

- [ ] **[TODO-ACT-005]** `riskCategory` och `patientAdverseEffect` i GetVaccinationHistory används med CVType (CodeableConcept). Kodverk för dessa är inte specificerade i TKB. Lägg till kommentarer i FSH-modellen om förväntade kodverk (t.ex. SNOMED CT för biverkningar).

- [ ] **[TODO-ACT-006]** `typeOfVaccine` och `vaccineTargetDisease` i GetVaccinationHistory refererar till vaccinklassificering respektive sjukdomsklassificering. Lägg till kommentarer om lämpliga internationella kodverk (t.ex. SNOMED CT, ATC, Folkhälsomyndighetens vaccinregisterkoder).

- [ ] **[TODO-ACT-007]** SjD-dokumenten (`SjD_TK_GetMedicationHistory_2.1.docx`, `SjD_TK_GetVaccinationHistory_2.0.docx`) är inte parsade. Dessa kan innehålla systemskiftesspecifika regler. Lägg till referenser i respektive kontraktssektion i IG:n.

---

## IG Publisher-byggen 2026-03-20 — sammanfattning

**Körda domäner:** itintegration.engagementindex, clinicalprocess.healthcond.description, clinicalprocess.activityprescription.actoutcome

| Domän | Errors | Warnings | Hints | Status |
|-------|--------|----------|-------|--------|
| itintegration.engagementindex | 0 | 92 | 0 | ✅ passerade |
| clinicalprocess.healthcond.description | 0 | 0 | 0 | ✅ rent bygge |
| clinicalprocess.activityprescription.actoutcome | 0 | 51 | 9 | ✅ passerade |

**Ej körda domäner (kör `make build-one D=...`):**
- `clinicalprocess.logistics.logistics`
- `clinicalprocess.healthcond.actoutcome`
- `clinicalprocess.activityprescription.prescribe`

### TODO — granska varningar i IG Publisher-output

- [ ] **[TODO-IGP-001]** `igs/TKB_itintegration_engagementindex/` — 92 varningar i IG Publisher-bygget. Granska `output/qa.html` för att identifiera och kategorisera varningarna. Typiska orsakar: saknade display-värden i CodeSystem, terminology-bindings mot okänd server, snapshot-generering.

- [ ] **[TODO-IGP-002]** `igs/TKB_clinicalprocess_activityprescription_actoutcome/` — 51 varningar + 9 hints. Granska `output/qa.html`. Troliga orsaker: komplexa typer som BackboneElement utan snapshot (TODO-ACT-002, ACT-003) och XOR-kardinalitetsvarningar.

- [ ] **[TODO-IGP-003]** Bygg de tre återstående domänerna med IG Publisher och ladda upp qa-errors.json: `clinicalprocess.logistics.logistics`, `clinicalprocess.healthcond.actoutcome`, `clinicalprocess.activityprescription.prescribe`.

---

## ehr.accesscontrol v1.0.6 — `igs/TKB_ehr_accesscontrol/`

**Status:** done
**Senast uppdaterad:** 2026-03-24

### Blockerare (kräver svar innan IG kan anses komplett)

Inga blockerare.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-EA-001]** `igs/TKB_ehr_accesscontrol/sushi-config.yaml`
  Dependency `se.inera.rivta.core#current` borttagen från sushi-config.yaml eftersom paketet inte finns tillgängligt i den lokala FHIR-cachen och nätverket är blockerat. Övriga IGs i projektet saknar också denna dependency. Verifiera om paketet behövs och i så fall hur det ska göras tillgängligt.

- [ ] **[ASSUME-EA-002]** `igs/TKB_ehr_accesscontrol/input/fsh/logical-models/AssertCareEngagement.fsh` · fält `hasCareEngagement`
  Fältnamnet anges som `HasCareEngagement` (versalt H) i TKB-tabellen men som `hasCareEngagement` i XSD. Normaliserat till camelCase (`hasCareEngagement`) i FHIR-modellen. Verifiera att detta är korrekt.
  Kardinaliteten anges som `1` (utan punktnotation) i TKB — tolkat som `1..1`. Verifiera om `1..*` var avsett.

- [ ] **[ASSUME-EA-003]** `igs/TKB_ehr_accesscontrol/input/fsh/logical-models/AssertCareEngagementRequest.fsh`
  Alla fyra requestfält (performer, subjectOfCareId, careUnitHsaIdentity, careGiverHsaIdentity) mappade till `Identifier` eftersom de är HSA-id och personnummer. TKB-tabellen anger typ som `sträng/Sträng` — ett riv-ta-tekniskt begrepp. System-URL:er (urn:oid:1.2.752.129.2.1.4.1 för HSA) anges i kommentarer men saknar formell bindning i FSH-modellen. Verifiera om explicitare Identifier.system-bindningar behövs.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-EA-001]** `igs/TKB_ehr_accesscontrol/`
  Bygg IG med IG Publisher (`make build-one D=ehr.accesscontrol`) och granska qa.html för eventuella varningar.

- [ ] **[TODO-EA-002]** `igs/TKB_ehr_accesscontrol/input/pagecontent/6-gemensamma-informationskomponenter.md`
  Avsnitt 6 saknas i källdokumentet. Kontrollera om domänen har gemensamma komponenter som bör dokumenteras här.

---

## crm.requeststatus v2.0.1 — `igs/TKB_crm_requeststatus/`

**Status:** done
**Senast uppdaterad:** 2026-03-24T11:00:00Z

**Not om datahämtning:** Inga zip-filer finns i Bitbucket Downloads för detta repo. Källfiler hämtades direkt från repots `src/master/`-träd via Bitbucket API.

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CRM-001]** `igs/TKB_crm_requeststatus/input/fsh/codesystems/KvStatusVardbegaranCS.fsh`
  KvStatusVardbegaran (OID: 1.2.752.129.2.2.2.43) är inte komplett listad i TKB. Koder 1 (Skickad), 7 (Svar mottaget) och 11 (Makulerad) nämns i "Övriga regler", men hela listan saknas. Hämta fullständig kodlista från [R5] (hänvisning i TKB) och komplettera CodeSystem-filen. Tills vidare är `^content = #fragment` satt.
  Källa: TKB avsnitt 7.1 "Övriga regler", rad statusCode [sch].

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CRM-001]** `igs/TKB_crm_requeststatus/input/fsh/logical-models/GetRequestActivities.fsh`
  Domänens namespace antaget till `urn:riv:crm:requeststatus` baserat på domännamnet och WSDL-filens namn. Verifiera mot WSDL-filens targetNamespace.

- [ ] **[ASSUME-CRM-002]** `igs/TKB_crm_requeststatus/input/fsh/codesystems/KvFramstallantypCS.fsh` · kodsystem KvFramstallantyp
  Koderna 1, 2, 4 (röntgenremiss, labbremiss, allmänremiss) är listade i TKB som "giltiga värden". Övriga koder i OID 1.2.752.129.2.2.2.24 kan existera — `^content = #fragment` är satt. Verifiera om fullständig lista behövs för korrekt validering.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-CRM-001]** `igs/TKB_crm_requeststatus/`
  Bygg IG med IG Publisher (`make build-one D=crm.requeststatus`) och granska qa.html för eventuella varningar.

- [ ] **[TODO-CRM-002]** `igs/TKB_crm_requeststatus/sushi-config.yaml`
  SUSHI-varning: "Configuration property publisher has a value with an unexpected type." Troligen ett SUSHI-versionsspecifikt problem med hur `publisher` och `contact` kombineras. Granska sushi-config.yaml om IG Publisher-bygget ger fel relaterade till detta.


---

## crm.carelisting v1.0 — `igs/TKB_crm_carelisting/`

**Status:** done
**Senast uppdaterad:** 2026-03-24

> **Anmärkning:** Källdokumentet för denna domän (RIV_spec_Nationell_Listningsstjänsten.docx) är en informationsspecifikation snarare än en TKB med standard-rubriknumrering (avsnitt 1–7). Bitbucket-repositoriet saknar en `downloads`-sektion; zip hämtades från tagged commit `TD_CARELISTING_1_0_R`.

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CARELISTING-001]** `igs/TKB_crm_carelisting/input/fsh/logical-models/GetListing.fsh` · alla kontrakt
  Källdokumentet saknar ett dedikerat avsnitt 7 (Tjänstekontrakt). Kontraktsspecifikationerna är baserade på XSD-analys och V-MIM-avsnitt i informationsspecifikationen. Verifiera med domänexpert att alla fält, kardinaliteter och beskrivningar är korrekta mot den ursprungliga avsedda specifikationen.
  Källa: RIV_spec_Nationell_Listningsstjänsten.docx — avsnitt saknas.

- [ ] **[BLOCK-CARELISTING-002]** `igs/TKB_crm_carelisting/input/fsh/logical-models/GetListing.fsh` · fält `listingType` i alla kontrakt
  Listningstyp (t.ex. BVC, HLM, FL) är definierad som `xs:string` i XSD utan centralt kodverk. Källdokumentet anger explicit "KV Listningstyp: Finns inte för tillfället, istället använd en fritext." Ska FHIR-modellen använda `string` (nuvarande) eller ska ett lokalt CodeSystem med `#fragment` skapas som platshållare?

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CARELISTING-001]** `igs/TKB_crm_carelisting/input/fsh/logical-models/GetListing.fsh` · fält `facilityId` och `resourceId`
  HSA-ID (HsaIdType i XSD) är mappat till FHIR `Identifier`. Antagandet är att system-OID `urn:oid:1.2.752.129.2.1.4.1` används. Verifiera mot hur HSA-ID ska representeras i FHIR-context.

- [ ] **[ASSUME-CARELISTING-002]** `igs/TKB_crm_carelisting/input/fsh/logical-models/GetListing.fsh` · BackboneElements för nästlade strukturer
  Nästlade XSD-typer (Facility, Resource, SubjectOfCare, Listing) är modellerade som `BackboneElement` i den logiska modellen. Dessa existerar inte som separata FHIR-resurser. Verifiera om de bör brytas ut till egna `Logical:` resurser för återanvändbarhet.

- [ ] **[ASSUME-CARELISTING-003]** `igs/TKB_crm_carelisting/sushi-config.yaml`
  `se.inera.rivta.core#current`-dependency borttagen eftersom paketet inte är tillgängligt offline och inte används i andra domän-IGs. Verifiera om det behövs för gemensamma bastyper.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-CARELISTING-001]** `igs/TKB_crm_carelisting/`
  Bygg IG med IG Publisher (`make build-one D=crm.carelisting`) och granska qa.html för eventuella varningar.

- [ ] **[TODO-CARELISTING-002]** `igs/TKB_crm_carelisting/sushi-config.yaml`
  SUSHI-varning: "Configuration property publisher has a value with an unexpected type." Troligen SUSHI-versionsspecifikt problem. Granska om IG Publisher-bygget ger relaterade fel.

- [ ] **[TODO-CARELISTING-003]** `igs/TKB_crm_carelisting/input/fsh/logical-models/`
  SUSHI-varning: "Type characteristics code system not found" för alla 10 logiska modeller. Detta är en offline-varning (codesystem-uri inte laddad) och hindrar inte kompilering. Kan ignoreras tills IG Publisher körs.

- [ ] **[TODO-CARELISTING-004]** `igs/TKB_crm_carelisting/input/includes/menu.xml`
  SUSHI-varning om menu.xml-dublett (både i sushi-config.yaml och som fil). menu-property i sushi-config ignoreras. Rätt beteende — menu.xml-filen används. Ingen åtgärd krävs.

---

## crm.scheduling v1.1 — `igs/TKB_crm_scheduling/`

**Status:** done
**Senast uppdaterad:** 2026-03-24

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CRM-001]** `igs/TKB_crm_scheduling/input/fsh/logical-models/GetBookingDetails.fsh` · fält `timeslotDetail.purpose`
  Elementet `purpose` har kardinalitet `0..1` men är beskrivs i TKB som obligatoriskt om `isInvitation = true` (kallelse). Villkorlig kardinalitet kräver en FHIR-invariant. FSH-modellen använder `0..1` med kommentar om villkoret.
  Källa: TKB avsnitt 7.8 (GetBookingDetails), Övriga regler.
  Förslag: Lägg till en invariant `purpose.exists() or isInvitation = false` om semantiken ska modelleras formellt i FHIR.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CRM-001]** `igs/TKB_crm_scheduling/input/fsh/logical-models/GetAllPerformers.fsh` · fält `performerInfos.performer`
  I XSD-schemat stavas fältnamnet `perfomer` (ett 'r' saknas, issue id 19 i källrepo). FSH-modellen använder korrekt stavning `performer`. Verifiera att detta är rätt beslut — alternativet vore att matcha XSD-stavningen exakt.
  Källa: TKB avsnitt 7.4 (GetAllPerformers).

- [ ] **[ASSUME-CRM-002]** `igs/TKB_crm_scheduling/input/fsh/codesystems/ResultCodeCS.fsh`
  ResultCodeEnum (OK/INFO/ERROR) är inte ett explicit kodverk i TKB, utan en enum i XSD-schemat. Skapades som CodeSystem med de tre koderna. Verifiera att enumvärdena är kompletta och att det inte finns fler möjliga värden.
  Källa: `crm_scheduling_1.1.xsd`.

- [ ] **[ASSUME-CRM-003]** Allmänt — inga zip-filer i Bitbucket downloads.
  Domänens källfiler hämtades direkt från Bitbucket repository source-katalog (commit `d5bfa3372dce578af559cf352be132e51fd109dd`). Det saknas zip-artefakt i downloads-sektionen. Verifiera att denna commit representerar den senaste godkända versionen av domänen.
  Källa: `https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.crm.scheduling/downloads` (tom).

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-CRM-001]** `igs/TKB_crm_scheduling/input/fsh/logical-models/` — alla filer
  Flera fältnamn innehåller underscore (t.ex. `healthcare_facility`, `subject_of_care`, `cancel_booking_allowed`). SUSHI genererar 72 varningar om `Inadvisable path`. Dessa matchar de ursprungliga RIV-TA-fältnamnen. Överväg att antingen byta till camelCase-ekvivalenter i FSH (t.ex. `healthcareFacility`) och dokumentera mappningen, eller acceptera varningarna.
  Ref: SUSHI-varning `eld-20`.

- [ ] **[TODO-CRM-002]** `igs/TKB_crm_scheduling/input/pagecontent/6-gemensamma-informationskomponenter.md`
  Avsnitt 6 saknas i källdokumentet TKB_crm_scheduling.docx. En platshållar-sida skapades. De komplexa typerna (TimeslotType, SubjectOfCareType m.fl.) som definieras i avsnitt 8 i källdokumentet bör läggas till i avsnitt 6 eller sammanfogas med avsnitt 7-tjanstekontrakt.md.

- [ ] **[TODO-CRM-003]** `igs/TKB_crm_scheduling/sushi-config.yaml` — SUSHI-varning om publisher-typ
  SUSHI rapporterar: "Configuration property publisher has a value with an unexpected type." Verifiera sushi-config.yaml publisher-formatets korrekthet mot senaste SUSHI-specifikation.

- [ ] **[TODO-CRM-004]** `igs/TKB_crm_scheduling/input/fsh/` — komplextyper som egna Logical-modeller
  De gemensamma datatyperna `TimeslotType`, `SubjectOfCareType`, `PerformerInfoType`, `HealthcareFacilityInfoType` etc. är inbäddade som `BackboneElement` i respektive kontrakt. Överväg att modellera dem som egna `Logical:`-definitioner och referera till dessa från kontrakt-modellerna — skulle minska duplicering och öka återanvändbarhet.

---

## ehr.commission v1.0 — `igs/TKB_ehr_commission/`

**Status:** done
**Senast uppdaterad:** 2026-04-09

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EC-001]** `igs/TKB_ehr_commission/input/fsh/logical-models/GetCommissionsForPerson.fsh` · fält `selectionPerformed`
  Konflikt mellan TKB-tabell och XSD: TKB-tabell (avsnitt 7.1 Fältregler) anger kardinalitet `1` (obligatorisk) för `selectionPerformed` i GetCommissionsForPersonResult. XSD-schemat `ehr_commission_1.0.xsd` definierar elementet med `minOccurs="0"` (valfritt). FSH-modellen har modellerats som `0..1` i enlighet med XSD (säkrare val). Verifiera vilket som är korrekt — XSD eller TKB-tabell?
  Källa: TKB avsnitt 7.1 Fältregler rad `selectionPerformed`; `ehr_commission_1.0.xsd` typ `GetCommissionsForPersonResultType`.

- [ ] **[BLOCK-EC-002]** `igs/TKB_ehr_commission/input/fsh/logical-models/GetCommissionsForPerson.fsh` · fält `commissions.healthCareProviderHsaId` och `commissions.healthCareProviderName`
  Konflikt mellan TKB-tabell och XSD: TKB-tabell (avsnitt Datatyper — commissionservice:Commission) anger kardinalitet `1` (obligatorisk) för `healthCareProviderHsaId` och `healthCareProviderName`. XSD-schemat `ehr_commission_1.0.xsd` definierar dessa element med `minOccurs="0"` (valfria) i `CommissionType`. FSH-modellen har modellerats som `0..1` i enlighet med XSD. Verifiera vilket som är korrekt.
  Källa: TKB avsnitt Datatyper — commissionservice:Commission; `ehr_commission_1.0.xsd` typ `CommissionType`.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-EC-001]** `igs/TKB_ehr_commission/input/fsh/logical-models/GetCommissionsForPersonRequest.fsh` och `SetSelectedCommissionForPersonRequest.fsh` · fälten `personalHsaId` och `personalIdentityNumber`
  Båda fälten modelleras som `0..1` eftersom regeln "exakt ett av dessa ska anges" är en affärsregel som inte kan uttryckas som enkel kardinalitet. Villkoret dokumenteras som kommentar i fältbeskrivningarna. En FHIR-invariant (constraint) vore korrekt modellering men har inte skapats — det kräver ett beslut om hur invarianter ska hanteras i IG:n generellt.
  Källa: TKB avsnitt 7.1 och 7.2 — Regler.

- [ ] **[ASSUME-EC-002]** Allmänt — inga zip-filer i Bitbucket downloads.
  Domänens källfiler hämtades direkt från Bitbucket repository source-katalog (master-gren). Det saknas zip-artefakt i downloads-sektionen för `riv.ehr.commission`. Dokumentet är märkt `1.0_RC1` (Release Candidate 1). Verifiera om detta är den senaste/slutliga versionen eller om det finns en nyare version.
  Källa: `https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.ehr.commission/downloads` (tom).

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-EC-001]** `igs/TKB_ehr_commission/input/pagecontent/5-tjanstedomanens-meddelandemodeller.md` och `6-gemensamma-informationskomponenter.md`
  Avsnitt 5 och 6 saknas i källdokumentet TKB_ehr_commission_1.0_RC1.docx. Platshållar-sidor skapades. Datatyperna (`CommissionType`, `GetCommissionsForPersonResultType`, `ResultType`, `HsaId`, `PersonalIdentityNumber`) som dokumenteras i källdokumentets "Datatyper"-kapitel bör läggas till i avsnitt 6 (Gemensamma informationskomponenter).

- [ ] **[TODO-EC-002]** `igs/TKB_ehr_commission/input/fsh/logical-models/` — gemensamma datatyper som egna Logical-modeller
  De delade datatyperna `CommissionType` och `ResultType` är inbäddade som `BackboneElement` i `GetCommissionsForPerson`-modellen. Överväg att modellera dessa som egna `Logical:`-definitioner och referera till dem från kontrakt-modellerna.

- [ ] **[TODO-EC-003]** `igs/TKB_ehr_commission/sushi-config.yaml` — SUSHI-varning om publisher-typ
  SUSHI rapporterar: "Configuration property publisher has a value with an unexpected type." Verifiera sushi-config.yaml publisher-formatets korrekthet mot senaste SUSHI-specifikation (gemensamt problem med andra IGs — se TODO-CRM-003).

- [ ] **[TODO-EC-004]** `igs/TKB_ehr_commission/input/fsh/logical-models/GetCommissionsForPerson.fsh` och `SetSelectedCommissionForPerson.fsh`
  SUSHI varnar: "Type characteristics code system not found. Skipping validation of characteristics for [Logical name]." Detta är förväntat i offline-miljön (sushi-r5forR4-paketet saknar code system för `#can-be-target`). Bekräfta att varningarna försvinner i en online-miljö eller med komplett paketcache.

---

## ehr.log v1.2.3 — `igs/TKB_ehr_log/`

**Status:** done
**Senast uppdaterad:** 2026-04-09

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EL-001]** `igs/TKB_ehr_log/sushi-config.yaml` — dependency `se.inera.rivta.core`
  Beroendet `se.inera.rivta.core#current` finns inte tillgängligt lokalt och kan inte laddas hem (nätverket blockerat). Beroendet togs bort för att SUSHI ska köra utan fel. Verifiera om detta beroende behövs och hur det ska lösas — antingen via lokal paketkopia eller ett alternativt paket. De domänspecifika bastyperna (log:HsaId, log:PersonId, etc.) är för tillfället modellerade direkt som `Identifier` och `string` i FSH-filerna.
  Källa: SUSHI-fel: "Failed to load se.inera.rivta.core#current".

- [ ] **[BLOCK-EL-002]** `igs/TKB_ehr_log/` — Ingen zip-fil i Bitbucket downloads
  Källfiler för domänen saknas som publicerad zip i Bitbucket downloads (`https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.ehr.log/downloads`). Filer hämtades direkt från master-branchen via Bitbucket source API. Verifiera att master-branchen innehåller den senaste/slutliga versionen (TKB v1.2.3 daterad 2016-06-21). Eventuellt finns en nyare version.
  Källa: `https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.ehr.log/downloads` (returnerade tom lista).

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-EL-001]** `igs/TKB_ehr_log/input/fsh/logical-models/` — icke-standardiserad kapitelstruktur
  TKB:n för ehr.log följer inte standard TKB-rubrikstruktur (avsnitt 1-7). Istället har dokumentet kapitlen: 1=Inledning, 2=Generella regler, 3-9=tjänstekontrakt (StoreLog, GetLogsForCareProvider, GetLogsForUser, GetLogsForPatient, GetAccessLogsForPatient, GetInfoLogsForCareProvider, GetInfoLogsForPatient), 10=Datatyper. IG-sidstrukturen är anpassad: 1-inledning.md, 2-generella-regler.md, 7-tjanstekontrakt.md, 8-datatyper.md. Avsnitt 3–6 existerar inte i källdokumentet och har inte skapats som placeholder-sidor.

- [ ] **[ASSUME-EL-002]** `igs/TKB_ehr_log/input/fsh/logical-models/StoreLogRequest.fsh` — kardinalitet på `log.resources.resource.patient` och `log.resources.resource.careProvider`
  TKB-tabellen anger `careProvider` som obligatorisk (kardinalitet `1`) men inte `patient`. I XSD-schemat (`ehr_log_1.0.xsd`) är `Patient` optional (`minOccurs="0"`). Patient modelleras som `0..1` och CareProvider som `1..1` för resursen, i linje med XSD. Verifiera detta mot domänspecifikation — en resurs kan principiellt vara av annan typ än patient men torde alltid ha en ägande vårdgivare.
  Källa: TKB avsnitt Datatyper — log:Resource; `ehr_log_1.0.xsd`.

- [ ] **[ASSUME-EL-003]** `igs/TKB_ehr_log/input/fsh/codesystems/ActivityTypeCS.fsh` — ActivityType är en enumeration, inte ett kodverk med OID
  ActivityType (log:ActivityTypeValue) representeras i TKB:n som en enumeration med svenska värden: Läsa, Skriva, Signera, Utskrift, Vidimera, Radera, Nödöppning. Dessa modelleras som ett FHIR CodeSystem med URL `https://fhir.inera.se/CodeSystem/activitytype-cs`. Inget OID finns dokumenterat i TKB:n. Verifiera om ett officiellt OID borde användas för detta kodverk.
  Källa: TKB avsnitt Datatyper — log:ActivityType.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-EL-001]** `igs/TKB_ehr_log/input/fsh/logical-models/` — delade datatyper som egna Logical-modeller
  De delade datatyperna log:Log, log:Activity, log:User, log:Resources, log:Resource, log:CareProvider, log:CareUnit, log:Patient, log:System är återanvända i fem av sju kontrakt. För tillfället är de inbäddade som BackboneElement i varje kontrakt. Överväg att extrahera dessa som egna `Logical:`-definitioner och referera till dem.

- [ ] **[TODO-EL-002]** `igs/TKB_ehr_log/input/pagecontent/8-datatyper.md`
  Datatype-sidan innehåller alla datatypbeskrivningar från TKB. Dessa bör eventuellt länkas från de enskilda logiska modellerna (StructureDefinition-sidor) med direktreferenser till relevant avsnitt i 8-datatyper.html.

- [ ] **[TODO-EL-003]** SUSHI-varning: "Type characteristics code system not found" (19 varningar)
  Alla 14 logiska modeller ger varningen "Type characteristics code system not found. Skipping validation of characteristics for [Logical name]." Detta är förväntat i offline-miljön. Bekräfta att varningarna försvinner i en online-miljö eller med komplett paketcache.

---

## ehr.blocking v3.2.2 — `igs/TKB_ehr_blocking/`

**Status:** done
**Senast uppdaterad:** 2026-04-22

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EB-001]** `igs/TKB_ehr_blocking/sushi-config.yaml` — dependency `se.inera.rivta.core`
  Beroendet `se.inera.rivta.core#current` finns inte tillgängligt lokalt och kan inte laddas hem (nätverket blockerat). Beroendet togs bort för att SUSHI ska köra utan fel. Verifiera om detta beroende behövs och hur det ska lösas — antingen via lokal paketkopia eller alternativt paket. De domänspecifika bastyperna (HsaId, PatientId etc.) är för tillfället modellerade direkt som `string` eller `Identifier` i FSH-filerna.
  Källa: SUSHI-varning: "Failed to load se.inera.rivta.core#current".

- [ ] **[BLOCK-EB-002]** `igs/TKB_ehr_blocking/input/fsh/logical-models/RegisterTemporaryExtendedRevoke.fsh` — saknad request-modell
  Kontraktet `RegisterTemporaryExtendedRevoke` saknar en request-modell (ingen `RegisterTemporaryExtendedRevokeRequest.fsh`). Alla övriga 14 kontrakt har separata request-modeller. Verifiera om request-parametrarna för detta kontrakt är identiska med `RegisterTemporaryRevoke` (återanvändning) eller om en egen request-modell behöver skapas.
  Källa: `igs/TKB_ehr_blocking/input/fsh/logical-models/` — ingen `RegisterTemporaryExtendedRevokeRequest.fsh` finns.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-EB-001]** `igs/TKB_ehr_blocking/input/fsh/logical-models/` — HSA-ID och patient-ID som `string`
  Fält av typerna HSAId och PatientId (personnummer/samordningsnummer) är modellerade som `string` i stället för `Identifier` med OID-system, eftersom `se.inera.rivta.core`-paketet (som definierar dessa bastyper) inte är tillgängligt offline. I en produktionsmiljö med paketet tillgängligt bör dessa modelleras som `Identifier` med `system = "urn:oid:1.2.752.129.2.1.4.1"` (HSA) respektive lämpliga OID:er för personnummer. Verifiera korrekt OID-val.
  Källa: `igs/TKB_ehr_blocking/input/fsh/logical-models/GetBlocks.fsh` fält `patientId`, `informationCareUnitId`, `informationCareProviderId`.

- [ ] **[ASSUME-EB-002]** `igs/TKB_ehr_blocking/input/fsh/logical-models/CheckBlocks.fsh` — `checkStatus` som `code`
  Fältet `checkStatus` returnerar ett av värdena BLOCKED/UNBLOCKED/VALIDATIONERROR men ingen formell kodverksdefinition finns i TKB:n för detta fält (det är en inline-enumeration i texten, inte ett namngivet kodverk). Antagandet gjordes att `code` med fritext-enumeration är tillräcklig och att inget eget CodeSystem behöver skapas. Om ett formellt kodverk krävs: skapa `CheckStatusCS` och tillhörande `CheckStatusVS`.
  Källa: `igs/TKB_ehr_blocking/input/fsh/logical-models/CheckBlocks.fsh` fält `checkStatus`.

- [ ] **[ASSUME-EB-003]** `igs/TKB_ehr_blocking/` — domänens tjänstekontrakt grupperas i sub-namespaces
  TKB ehr:blocking innehåller tjänstekontrakt i fyra sub-namespaces: `accesscontrol` (CheckBlocks), `querying` (GetBlocks, GetBlocksForPatient, GetAllBlocks, GetAllBlocksForPatient), `administration` (RegisterBlock, RegisterExtendedBlock, GetExtendedBlocksForPatient, DeleteExtendedBlock, RegisterTemporaryRevoke, RegisterTemporaryExtendedRevoke, RevokeExtendedBlock, UnregisterBlock, GetPatientIds) och `synchronization` (GetBlocks, GetBlocksForPatient, GetAllBlocks, UnregisterBlock, RegisterBlock, RegisterTemporaryRevoke, UnregisterTemporaryRevoke). Antagandet gjordes att alla modelleras i samma IG (TKB_ehr_blocking). Verifiera om sub-namespacen ska ge separata IGs eller om sammanslagen IG är korrekt.
  Källa: `// Kontrakt:`-kommentarerna i FSH-filerna (namespace anges i parentes).

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-EB-001]** `igs/TKB_ehr_blocking/ig.ini` — pekar på fsh-generated
  `ig.ini` uppdaterades från `input/ImplementationGuide-inera.ehr-blocking.json` till `fsh-generated/resources/ImplementationGuide-inera.ehr-blocking.json` och `template = fhir.base.template#current` lades till (krävdes för att SUSHI inte skulle rapportera error). IG Publisher körs separat med `make build-one D=ehr.blocking`.

- [ ] **[TODO-EB-002]** SUSHI-varning: "Type characteristics code system not found" (29 varningar)
  Alla 29 logiska modeller ger varningen. Förväntat i offline-miljön — bekräfta att varningarna försvinner i en online-miljö med komplett paketcache.

- [ ] **[TODO-EB-003]** SUSHI-varning: "menu property ignored — menu.xml found"
  Både `menu`-egenskapen i `sushi-config.yaml` och `input/includes/menu.xml` existerar. SUSHI ignorerar sushi-config-menyn och använder menu.xml. Verifiera att menu.xml är korrekt och komplett — eller ta bort den och låt SUSHI generera menu.xml från sushi-config.

- [ ] **[TODO-EB-004]** `igs/TKB_ehr_blocking/input/fsh/` — delade datatyper som egna Logical-modeller
  BlockType-relaterade fält (`blockId`, `blockType`, `patientId`, `informationCareProviderId`, `informationCareUnitId`) återkommer i GetBlocks, GetBlocksForPatient, GetAllBlocks, GetAllBlocksForPatient och GetExtendedBlocksForPatient. Överväg att extrahera en gemensam `BlockType`-Logical och referera till den från kontrakt-modellerna.

- [ ] **[TODO-EB-005]** `igs/TKB_ehr_blocking/input/pagecontent/` — sidor saknas
  IG:n har bara 4 sidor (index, 1-inledning, 2-generella-regler, 7-tjanstekontrakt). Standard TKB-struktur kräver avsnitt 3–6. Verifiera om dessa avsnitt finns i källdokumentet och komplettera i så fall med sidor för 3-tjanstedomanens-arkitektur.md, 4-tjanstedomanens-krav-och-regler.md, 5-tjanstedomanens-meddelandemodeller.md och 6-gemensamma-informationskomponenter.md.

---

## clinicalprocess.activity.actions v1.3 — `igs/TKB_clinicalprocess_activity_actions/`

**Status:** done
**Senast uppdaterad:** 2026-05-18

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CAA-001]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh` · fält `activityGroup.additionalParticipant` · exklusivitet person/organisation/device/location
  Fälttabellen anger att exakt en av `person`, `organisation`, `device` eller `location` ska anges i `additionalParticipant`. Denna exklusivitetsbegränsning (choice) kan inte modelleras direkt i FHIR Logical utan slice eller invariant. Nuvarande modell har alla fyra som valfria (0..1). Ska en FSH-invariant läggas till (`obeys` med ett villkor att exakt ett av fälten är satt), eller är det tillräckligt att dokumentera detta i fältbeskrivningen?
  Källa: TKB avsnitt 7.1 Svarsdel activityGroup/additionalParticipant.

- [ ] **[BLOCK-CAA-002]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh` · fält `activityGroup.activity.time`
  TKB Regel 2.3 anger att `activity.time` är obligatorisk (1..1) när status är utförd eller saknas, men valfri (0..1) när status är planerad. Detta är en villkorlig kardinalitet som inte kan modelleras direkt i FSH utan en invariant. Nuvarande modell sätter `0..1` (säkrare alternativ). Ska en FHIR-invariant skapas för detta villkor?
  Källa: TKB avsnitt 7.1 Svarsdel activityGroup/activity, Regel 2.3.

- [ ] **[BLOCK-CAA-003]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh` · fält `activityGroup.legalAuthenticator`
  TKB Regel 2.4 anger att minst ett av `legalAuthenticator.id` eller `legalAuthenticator.name` ska anges. Nuvarande modell har båda som `0..1`. Ska en FHIR-invariant läggas till som kräver att minst ett av dem är satt?
  Källa: TKB avsnitt 7.1 Svarsdel activityGroup/legalAuthenticator, Regel 2.4.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CAA-001]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh` · fält `activityGroup.activity.status`
  Status-kodsystemet är SNOMED CT refset aktivitetsstatus (SCTID: 56421000052109, `1.2.752.116.2.1.1`). Inget eget CodeSystem har skapats — koder refereras direkt via OID-baserad URL i fältbeskrivning. Verifiera att SNOMED CT refset SCTID 56421000052109 är rätt referens och att canonical URL `urn:oid:1.2.752.116.2.1.1` är korrekt för snomed-ct-se.
  Källa: TKB avsnitt 7.1 Svarsdel activityGroup/activity fält `status`.

- [ ] **[ASSUME-CAA-002]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh` · fält `activityGroup.activity.additionalInformation.value`
  Källdokumentet anger typen som `Any` — kan vara antingen `PartialTimeStampType` (för `Planeringstid`) eller CVType-kodning (för `Orsak`). Modelleras som `string` i FSH som fallback. Rätt modellering vore en `choice[x]`-typ med `dateTime` och `CodeableConcept`, men det kräver att sushi-logiken för val-element fungerar med Logical. Verifiera om `string` är acceptabelt eller om en mer typat modell behövs.
  Källa: TKB avsnitt 7.1 Svarsdel activityGroup/activity, fält `additionalInformation.value`.

- [ ] **[ASSUME-CAA-003]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivitiesRequest.fsh` · fält `interactionAgreementId`
  Fältet är obligatoriskt (1..1) i TKB men tjänar inget syfte — TKB anger att det ska sättas till ett fast UUID-värde och "används inte". Modelleras som `string` med beskrivning av det fasta värdet. Verifiera om detta fält bör tas bort helt från FHIR-modellen eller behållas för fullständighet.
  Källa: TKB avsnitt 7.1 Begäransfälttabell rad `interactionAgreementId`.

- [ ] **[ASSUME-CAA-004]** `igs/TKB_clinicalprocess_activity_actions/` — avsnitt 6 saknas
  Källdokumentet `TKB_clinicalprocess_activity_actions.docx` saknar avsnitt 6 (Gemensamma informationskomponenter). En platshållarsida har skapats med hänvisning till avsnitt 5. Verifiera om detta avsnitt avsiktligt utelämnats i källdokumentet eller om det ska fyllas i från ett annat källdokument.
  Källa: docx_to_md.py-konverteringen rapporterade `sections/6-gemensamma-informationskomponenter.md: SAKNAS i källdokumentet`.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-CAA-001]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh` · fält `activityGroup.activity.code`
  Möjliga kodsystem för `activity.code` nämns i TKB men specificeras inte explicit (t.ex. KVÅ för åtgärder). Om specifika ValueSets behöver bindas till `activity.code`, `activity.status`, `activity.targetSite`, `activity.method` behöver dessa ValueSet + CodeSystem-resurser skapas. Avvaktar domänkompetens om vilka kodverk som är obligatoriska.
  Källa: TKB avsnitt 7.1 Svarsdel activityGroup/activity, fält `code`.

- [ ] **[TODO-CAA-002]** `igs/TKB_clinicalprocess_activity_actions/input/fsh/logical-models/GetActivities.fsh`
  Lägg till FSH-invarianter för blockerare BLOCK-CAA-001, BLOCK-CAA-002 och BLOCK-CAA-003 när beslut har fattats om korrekt modellering.

- [ ] **[TODO-CAA-003]** `igs/TKB_clinicalprocess_activity_actions/input/pagecontent/6-gemensamma-informationskomponenter.md`
  Komplettera med faktiskt innehåll när källdokument för avsnitt 6 identifieras (se ASSUME-CAA-004).

---

## clinicalprocess.healthcond.basic v2.0 — `igs/TKB_clinicalprocess_healthcond_basic/`

**Status:** done
**Senast uppdaterad:** 2026-05-18

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CHB-001]** `igs/TKB_clinicalprocess_healthcond_basic/input/fsh/logical-models/GetObservationsRequest.fsh` · fält `relation/referredInformationCategorization`
  Fältet modelleras med kardinalitet 1..1 i begäran, men TKB-tabell för relation-filtret är otydlig om huruvida detta fält alltid är obligatoriskt. Källdokument (TKB avsnitt 7.1, fälttabell Begäran, rad `relation/referredInformationCategorization`) anger `1..1` men kontextuellt är det oklart om detta kan vara 0..1 när `relationType` anges utan `referredInformationId`. Verifiera korrekt kardinalitet med domänexpert.
  Källa: TKB avsnitt 7.1, Begäranstabell, rad `relation/referredInformationCategorization`.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-CHB-001]** `igs/TKB_clinicalprocess_healthcond_basic/input/fsh/logical-models/GetObservations.fsh` · fält `observations.observationBody.value`
  ValueANYType är en union-typ (exklusiv eller): cv, pq, ivl_pq, ts, ivl_ts, st, int. FSH:s `BackboneElement` kan inte uttrycka exklusiv-or direkt — alla alternativ modelleras som 0..1-fält med kommentaren att exakt ett måste väljas. Verifiera om FHIR-invariant ska läggas till för att tvinga exklusiviteten, eller om prosatext i beskrivningen räcker.
  Källa: TKB avsnitt 5.1 V-MIM samt avsnitt 7.1 Svarsdel, ValueANYType.

- [ ] **[ASSUME-CHB-002]** `igs/TKB_clinicalprocess_healthcond_basic/input/fsh/logical-models/GetObservations.fsh` · fält `observations.observationBody.participation`
  Deltagandetyp-fältet (type) refererar till Snomed CT urval (urvals-id: 53351000052100) och obs-statusfältet refererar till Snomed CT urval (urvals-id: 56431000052106). Dessa urval administreras av Socialstyrelsen. Inget lokalt CodeSystem har skapats — värden hämtas från Snomed CT via OID 1.2.752.116.2.1.1. Verifiera att referensen urn:oid:1.2.752.116.2.1.1 är korrekt canonical för Snomed CT-SE i FHIR-kontext.
  Källa: TKB avsnitt 7.1 Svarsdel, fälttabeller för `participation/type`, `status`, `relation/type`.

- [ ] **[ASSUME-CHB-003]** `igs/TKB_clinicalprocess_healthcond_basic/` — avsnitt 6 saknas
  Källdokumentet `TKB_clinicalprocess_healthcond_basic.docx` saknar avsnitt 6 (Gemensamma informationskomponenter). Ingen sida `6-gemensamma-informationskomponenter.md` har skapats — sidan saknas även från sushi-config.yaml. Verifiera om avsnitt 6 avsiktligt utelämnats i källdokumentet (dokumentet anger att gemensamma komponenter beskrivs i avsnitt 5.1 V-MIM istället) eller om det ska hämtas från separat dokument.
  Källa: docx_to_md.py-konverteringen rapporterade `sections/6-gemensamma-informationskomponenter.md: SAKNAS i källdokumentet`.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-CHB-001]** `igs/TKB_clinicalprocess_healthcond_basic/input/fsh/logical-models/GetObservations.fsh`
  Kontraktet refererar till Interaktionsöverenskommelser (IO) för semantiska deklarationer om specifika observationstyper. Dessa IO är externa dokument och ingår inte i TKB. Lägg till en not i index.md och sektion 7 som förklarar att IO-dokumenten måste läsas komplementärt för att förstå vilka observationstyper en specifik producent stödjer.
  Källa: TKB avsnitt 1 Inledning och avsnitt 3 Tjänstedomänens arkitektur.

- [ ] **[TODO-CHB-002]** `igs/TKB_clinicalprocess_healthcond_basic/sushi-config.yaml`
  Beroendet `se.inera.rivta.core#current` har tagits bort eftersom paketet inte existerar lokalt eller i kända FHIR-paketregister. Om paketet skapas i framtiden bör det läggas tillbaka. Verifiera med Inera arkitektur om detta paket ska finnas och var det publiceras.
  Källa: contracts-registry.json BLOCK-EI-003 (samma problem identifierat för EI-domänen).

---

## ehr.patientconsent v1.0.1 — `igs/TKB_ehr_patientconsent/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

SUSHI kördes och genererade 21 artefakter (14 logiska modeller, 3 CodeSystems, 3 ValueSets, 1 ImplementationGuide). Kvarstående SUSHI-"error" är nätverksrelaterat (se.inera.rivta.core#current kan inte laddas — packages.fhir.org blockerat), inte ett FSH-kompileringsfel. Alla 7 tjänstekontrakt modellerade med response- och request-modeller.

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-PC-001]** `igs/TKB_ehr_patientconsent/sushi-config.yaml` · beroende `se.inera.rivta.core#current`
  Paketet `se.inera.rivta.core#current` kan inte laddas ned (packages.fhir.org nätverksblockerat i denna miljö). SUSHI rapporterar detta som ERROR men FSH-kompileringen lyckas ändå utan paketet. Om/när nätverksåtkomst finns, eller om paketet installeras manuellt i `~/.fhir/packages/`, bör detta beroende kopplas in. Verifiera med Inera arkitektur om paketet är publicerat och var.
  Källa: SUSHI-körning 2026-05-19, rad "Failed to load se.inera.rivta.core#current".

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-PC-001]** `igs/TKB_ehr_patientconsent/input/fsh/logical-models/` · alla modeller med fältet `startDate`/`endDate`
  TKB använder `xs:dateTime` för datum/tid-fälten `startDate` och `endDate` på PDLAssertion. FSH-modellerna mappar dessa till `dateTime`. Om det i praktiken alltid räcker med datumdel (utan tidsdel), kan `date` vara mer lämpligt. Verifiera med domänexpert om `dateTime` eller `date` är korrekt representation i FHIR-kontext för giltighetstider på samtycken.
  Källa: TKB avsnitt 10 (Datatyper), `patientconsent:PDLAssertion`, fälten `startDate` och `endDate`.

- [ ] **[ASSUME-PC-002]** `igs/TKB_ehr_patientconsent/input/fsh/logical-models/GetConsentsForCareProvider.fsh` · fält `moreOnOrAfter`
  Fältet `moreOnOrAfter` returneras alltid (kardinalitet 1..1) enligt TKB:n, även när inga fler intyg finns. Det modelleras som `1..1 dateTime`. TKB anger att om inga fler finns, representerar värdet "nästa möjliga hämtningstidpunkt". Verifiera att denna semantik är korrekt och att 1..1 är rätt kardinalitet, inte 0..1 (fältet kan i princip alltid saknas om implementation väljer att inte returnera det vid `hasMore = false`).
  Källa: TKB avsnitt 10 (Datatyper), `patientconsent:GetAllAssertionsResult`, fältet `moreOnOrAfter`.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-PC-001]** `igs/TKB_ehr_patientconsent/input/pagecontent/10-datatyper.md`
  Sidan `10-datatyper.md` skapades från `docx-converted/full-document.md` eftersom sektionsfilen saknades i `docx-converted/sections/` (konverteraren splittrade inte på kapitel 10). Kontrollera att innehållet är komplett och stämmer mot källdokumentet.
  Källa: TKB kapitel 10 (Datatyper).

---

## informatics.terminology v1.4

**Status:** done (SUSHI 0 errors, 7 warnings)
**Senast uppdaterad:** 2026-05-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-IT-001]** `igs/TKB_informatics_terminology/` · WSDL- och XSD-källfiler saknas i IG:n
  Bitbucket API returnerade HTTP 429 (rate-limit) vid nedladdning av alla binärfiler (WSDL, XSD). Källfilerna finns i Bitbuckets repo men kunde inte kopieras till `input/files/`. Sidan `4-tjanstekontrakt.md` har en platshållarnotis istället för en filförteckning.
  Åtgärd: Kör nedladdningen manuellt när rate-limit hävts:
  ```bash
  COMMIT="ad00410ceb4eee0f5da4f586729f18303ab2481e"
  BASE="https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.informatics.terminology/src/${COMMIT}"
  # Ladda ner från schemas/interactions/ och schemas/core_components/
  ```

- [ ] **[BLOCK-IT-002]** `igs/TKB_informatics_terminology/` · GetTerminologySubsetVersion-kontraktet saknar TKB-dokumentation
  Interaktionskatalogen innehåller en andra interaktion (`GetTerminologySubsetVersionInteraction_1.0_RIVTABP21.wsdl`) men TKB-dokumentet beskriver den inte alls. Oklart om kontraktet är aktivt, deprecated, eller avsett att dokumenteras i en separat TKB.
  Åtgärd: Verifiera med domänansvarig om `GetTerminologySubsetVersion` ska inkluderas i IG:n.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-IT-001]** `igs/TKB_informatics_terminology/input/fsh/logical-models/GetTerminologySubsetRequest.fsh` · fält `termType`
  Fältet `TermType` har ett fixt värde `DisplayName` enligt TKB. Antagandet gjordes att detta modelleras som en `string`-typ med dokumentation om det fasta värdet, snarare än som en explicit `fixed value`-bindning i FSH. En FSH fixed-value-constraint (`* termType = "DisplayName"`) skulle förhindra att fältet används med andra värden i framtida versioner.
  Verifiera: Ska fixed value-constraint användas, eller är dokumentation tillräckligt?

- [ ] **[ASSUME-IT-002]** `igs/TKB_informatics_terminology/domain-metadata.json` · domain_version
  TKB-dokumentet saknar ett explicit versionsnummer — "TKB-version". Senaste revisionen är P1.4 daterad 2013-04-09. Versionsnumret `1.4` har antagits baserat på revisionsnummret P1.4 (P = preliminär/produktion, 1.4 = revisionsnummer).
  Verifiera: Är `1.4` rätt versionsnummer att använda för IG:n?

- [ ] **[ASSUME-IT-003]** `igs/TKB_informatics_terminology/input/fsh/logical-models/GetTerminologySubset.fsh` · fält `concept.codeSystem`
  Fältet `ConceptType.CodeSystem` är modellerat som `string` (identifierare för kodsystem, t.ex. `ICD-10`, `SNOMED CT`, `ATC`). Alternativet vore `uri` eller `CodeableConcept`. Eftersom källsystemet skickar ett fritt identifikationsuttryck (inte en URI) valdes `string` som fallback.
  Verifiera: Ska `codeSystem` vara `uri` för maskinläsbarhet, eller är `string` acceptabelt?

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-IT-001]** `igs/TKB_informatics_terminology/input/pagecontent/5-tillgangliga-urval.md`
  Tabellen över tillgängliga SubsetId:n (6 kända värden) är statisk och daterad från 2013. Kontrollera om listan är aktuell och om fler urval har tillkommit i produktionssystemet. SubsetId:na är UUID:n och korresponderar mot Infektionsverktygets terminologier.

- [ ] **[TODO-IT-002]** `igs/TKB_informatics_terminology/input/fsh/logical-models/GetTerminologySubset.fsh`
  `metadata.name`-fältet är generiskt (`string`) men TKB nämner att metadata behövs för att veta vilka OpenEHR-template-delar som ska fyllas i. Om kända metadata-nycklar finns dokumenterade bör ett CodeSystem skapas för dessa. Verifiera med implementerande system vilka `Name`-värden som faktiskt förekommer i produktionen.

---

## infrastructure.directory.employee v4.0 — `igs/TKB_infrastructure_directory_employee/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

### Blockerare (kräver svar innan IG kan anses komplett)

_Inga blockerare._

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-DE-001]** `igs/TKB_infrastructure_directory_employee/input/fsh/logical-models/GetEmployeeIncludingProtectedPerson.fsh` · fält `personInformation.telephoneHour.fromTime` / `toTime`
  TKB anger typen `Time` (ISO-8601-format) för telefontider. FSH-primitiven `time` stöds tekniskt men gav SUSHI-kompileringsfel (sdType undefined) i lokal offline-miljö. Tidsfälten är därför modellerade som `string` med dokumentation om ISO-8601-format. Verifiera att `string` är acceptabelt eller om specifik FHIR-tidsdatatyp bör användas vid online-kompilering med fullt pakestöd.

- [ ] **[ASSUME-DE-002]** `igs/TKB_infrastructure_directory_employee/input/fsh/logical-models/GetEmployeeIncludingProtectedPerson.fsh` · fält `personInformation.age` / `gender`
  Fälten `age` och `gender` är villkorliga — de returneras enbart då requestparametern `profile` är satt till `extended1`. Kardinaliteten är modellerad som `0..1` med beskrivning av villkoret i fältkommentaren. Alternativet vore att skapa en FHIR-invariant. Verifiera att dokumentationskommentar är tillräckligt eller om en formell invariant krävs.

- [ ] **[ASSUME-DE-003]** `igs/TKB_infrastructure_directory_employee/input/fsh/` · inga CodeSystems/ValueSets skapade
  Domänen refererar till flera kodverk: legitimerad yrkesgrupp (hsaTitle), commissionPurpose (hsaCommissionPurpose), commissionRights (hsaCommissionRight). Dessa är externt definierade i Informationsspecifikationen för Katalogtjänst HSA [R5] och har inga kända FHIR-canonicals. ANTAGANDE: Inga lokala CodeSystems skapas — kodverken dokumenteras som `string`-fält med hänvisning till [R5]. Verifiera om HSA-kodverk ska modelleras som FHIR CodeSystems eller om texthänvisning är tillräckligt.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-DE-001]** `igs/TKB_infrastructure_directory_employee/input/pagecontent/6-gemensamma-informationskomponenter.md`
  Avsnitt 6 saknades i källdokumentet (TKB innehåller inget avsnitt 6 — innehållet från avsnitt 6 finns inbäddat i avsnitt 7). Sidan innehåller en notis om detta. Verifiera om sidan ska tas bort från IG:n (och menyn uppdateras) eller om en hänvisning till avsnitt 7 är tillräcklig.

- [ ] **[TODO-DE-002]** `igs/TKB_infrastructure_directory_employee/input/pagecontent/7-tjanstekontrakt.md` · GetEmployee och GetCommissionMembers
  Dessa två kontrakt är beskrivna kortfattat i TKB som "identiska med IncludingProtectedPerson-varianten förutom att skyddade personer aldrig returneras". Sektion 7 hänvisar tillbaka till respektive IncludingProtectedPerson-kontrakt för fullständiga fältregler. Verifiera att denna hänvisningsstil är acceptabel för publicering eller om hela fälttabellen ska upprepas.

---

## followup.processdevelopment.infections v1.0.2 — `igs/TKB_followup_processdevelopment_infections/`

**Status:** in-progress (SUSHI passerat, inväntar manuell IG Publisher-körning)
**Senast uppdaterad:** 2026-05-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-FPI-001]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/DeletePrescriptionReason.fsh` · fält `activityId` och `conditionId`
  Regeln kräver att exakt en av `activityId` eller `conditionId` ska anges (XOR-villkor). Båda är modellerade som `0..1`. Ska detta modelleras som en FHIR-invariant (`obeys`-regel)? Kräver beslut — en invariant kräver att vi formulerar en FHIRPath-expression.
  Källa: TKB avsnitt 7.2 "Övriga regler", Fält 1.

- [ ] **[BLOCK-FPI-002]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/ProcessLaboratoryReport.fsh` · fält `patient`
  TKB-fälttabellen för ProcessLaboratoryReport anger `Patient | PersonType` — dvs. två olika typer. XSD-schemat definierar `PatientType` (med id, birthTime, gender). Är det `PatientType` eller `PersonType` som gäller? Modellen antar `PatientType` (säkrare). Verifiera med domänexpert.
  Källa: TKB avsnitt 7.4 fälttabell rad "Patient".

- [ ] **[BLOCK-FPI-003]** `igs/TKB_followup_processdevelopment_infections/` · dependency `se.inera.rivta.core#current`
  SUSHI kan inte ladda ner `se.inera.rivta.core#current` (nätverksåtkomst blockerad). FSH-kompilering passerade men utan validering mot Ineras bastyper. Kör SUSHI i en miljö med internetåtkomst för fullständig validering. Alternativt: ta bort dependency och lägg till en notering om att bastyper inte kan valideras offline.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-FPI-001]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/ProcessPrescriptionReason.fsh`
  Fälten `conditionId`, `conditionCode`, `source` är `0..1` i TKB-fälttabellen men `1..1` i XSD-schemat. Antagit TKB-fälttabellen som normativ (0..1) eftersom XSD kan vara en äldre version. Verifiera vilket som gäller.
  Källa: jämförelse mellan TKB avsnitt 7.1 och XSD `followup_processdevelopment_infections_1.0.xsd`.

- [ ] **[ASSUME-FPI-002]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/ProcessCareEncounter.fsh` · fält `careEncounter.type`, `careEncounter.status`
  TKB-fälttabellen anger kardinalitet "1" (utan ..1) för type och status. XSD-schemat anger `0..1`. Antagit XSD-definition (0..1) som normativ. Verifiera med domänexpert.

- [ ] **[ASSUME-FPI-003]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/ProcessCareEncounter.fsh` · fält `careEncounter.location.name`
  TKB anger "1" (obligatorisk) för LocationType.name men regeln är villkorlig: obligatorisk endast när PerformerRole.id anges. Modellerat som `1..1` i FSH med kommentar om villkoret. Verifiera om `0..1` är korrekt med invariant.

- [ ] **[ASSUME-FPI-004]** `igs/TKB_followup_processdevelopment_infections/` · versionsnummer
  Repository saknar publicerade zip-filer. Källan är master-branchen (commit b9bb3968). Tag `followup_processdevelopment_infections_1.0.2_RC1` finns — antaget att version 1.0.2 är senaste. Verifiera om versionen är korrekt.

- [ ] **[ASSUME-FPI-005]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/ProcessCareEncounter.fsh` · fält `careEncounter.performerRole.careUnit`
  XSD-schemat (CareEncounterType) anger `performerRole.careUnit` som obligatorisk (1..1 CareUnitType). TKB-tabellen listar den som `1` utan tydlig kardinalitet. Modellerat som `0..1` i FSH (säkrare, XSD verkar inkonsekvent med TKB för detta fält). Verifiera.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-FPI-001]** `igs/TKB_followup_processdevelopment_infections/input/pagecontent/6-gemensamma-informationskomponenter.md`
  Avsnitt 6 saknas i källdokumentet. Sidan innehåller en notis om detta. Verifiera om sidan ska tas bort från IG:n eller om innehållet finns i annat avsnitt.

- [ ] **[TODO-FPI-002]** `igs/TKB_followup_processdevelopment_infections/input/files/schema/`
  Interaktions-specifika XSD-filer (ProcessCareEncounterResponder_1.0.xsd m.fl.) laddades inte ner pga Bitbucket rate-limiting (HTTP 429). Dessa bör laddas ner manuellt och läggas in i `input/files/schema/` för en komplett källfils-referens. Kör: `curl -L -o input/files/schema/ProcessCareEncounterResponder_1.0.xsd "https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.followup.processdevelopment.infections/src/master/schemas/interactions/ProcessCareEncounterInteraction/ProcessCareEncounterResponder_1.0.xsd"` (och motsvarande för de 6 övriga interaktionsschemana).

- [ ] **[TODO-FPI-003]** `igs/TKB_followup_processdevelopment_infections/sushi-config.yaml`
  Varning: `Configuration property publisher has a value with an unexpected type.` — SUSHI förväntar sig en mer komplex publisher-struktur (object). Uppdatera till: `publisher: {name: "Inera AB", url: "https://www.inera.se"}` om varningen ska elimineras.

- [ ] **[TODO-FPI-004]** `igs/TKB_followup_processdevelopment_infections/input/fsh/logical-models/`
  SUSHI-varning: "Type characteristics code system not found" för alla 14 modeller. Detta beror på att `se.inera.rivta.core#current` inte laddades (se BLOCK-FPI-003). Ignorera tills nätverksåtkomst finns.

- [ ] **[TODO-FPI-005]** `igs/TKB_followup_processdevelopment_infections/input/pagecontent/7-tjanstekontrakt.md`
  Källfils-tabellerna refererar inte de interaktions-specifika XSD-schemana (se TODO-FPI-002) eftersom de inte laddades ner. Uppdatera tabellerna när XSD-filerna finns på plats.

---

## infrastructure.directory.authorizationmanagement — `igs/TKB_infrastructure_directory_authorizationmanagement/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-IDAM-001]** `igs/TKB_infrastructure_directory_authorizationmanagement/input/fsh/logical-models/GetCredentialsForPerson.fsh`
  Datamappningar antagna baserat på XSD-struktur och domänkunskap. Fält som `personalIdentity` (personnummer) modellerades som BackboneElement med `root`/`extension` i stället för FHIR Identifier, för att bättre spegla IIType i RIV-TA. Verifiera kardinaliteter och typmappningar med domänexpert.

- [ ] **[ASSUME-IDAM-002]** `igs/TKB_infrastructure_directory_authorizationmanagement/input/fsh/codesystems/HospOperationCS.fsh`
  Kodverket HospOperationCS skapades med koderna `#add` och `#remove` baserat på kontextbeskrivningen i TKB för HandleHospCertificationPerson. Inget OID eller officiell källreferens identifierades. Verifiera om kodverket har ett definierat OID i Ineras terminologiregister, och uppdatera `^url` till `urn:oid:{OID}` om tillämpligt.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-IDAM-001]** `igs/TKB_infrastructure_directory_authorizationmanagement/input/fsh/logical-models/`
  SUSHI-varning: "Type characteristics code system not found" för alla 13 logiska modeller. Beror på att `se.inera.rivta.core#current` inte laddades (paket ej tillgängligt offline). Ignorera tills nätverksåtkomst finns eller paketet installeras lokalt.

---

## eservicesupply.eoffering v1.0.0 — `igs/TKB_eservicesupply_eoffering/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EO-001]** `igs/TKB_eservicesupply_eoffering/input/fsh/logical-models/GetAvailableEServices.fsh` · fält `availableEServices.eservice.restrictions.referalTypeId`
  Fältet refererar till "KV Framställantyp" (kodverk för remisstyper 1–8). Canonical URL för detta kodverk är okänd. Ska fältet bindas till ett externt ValueSet (om KV Framställantyp har känd FHIR-URL), eller ska ett lokalt CodeSystem/ValueSet skapas?
  Källa: domain-metadata.json, open_questions_from_parsing.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-EO-001]** `igs/TKB_eservicesupply_eoffering/input/fsh/codesystems/GenderEofferingCS.fsh`
  Fältet `gender` är av typen `genderType (string)` i XSD-schemat utan enumeration. TKB-texten anger värdena 1=Man, 2=Kvinna. Antagande: modellat med ett domänspecifikt ValueSet (GenderEofferingVS) med koder `#1` och `#2`. Verifiera om ett standardiserat FHIR-kodverk (t.ex. `http://hl7.org/fhir/administrative-gender`) vore mer lämpligt. Notera dock att RIV-TA-koderna (1/2) inte matchar FHIR:s `male`/`female`.

- [ ] **[ASSUME-EO-002]** `igs/TKB_eservicesupply_eoffering/input/fsh/logical-models/GetAvailableEServices.fsh` · fält `availableEServices.eservice.securitylevel`
  Autentiseringsnivåerna AL1–AL4 modellerades med ett domänspecifikt CodeSystem (SecurityLevelCS). Inget OID hittades i källmaterialet. Verifiera om detta kodverk har ett registrerat OID i Ineras terminologiregister — om så är fallet, uppdatera `^url` i SecurityLevelCS.fsh till `urn:oid:{OID}` och ta bort motsvarande rad ur `special-url` i sushi-config.yaml.

- [ ] **[ASSUME-EO-003]** `igs/TKB_eservicesupply_eoffering/` · TKB-version
  TKB-dokumentet är version 0.3 (utkast, 2011-04-18). Det är oklart om detta är den senaste publicerade versionen eller om nyare versioner existerar. IG:n använder version 1.0.0 (baserat på tjänstekontraktets version 1.0). Verifiera med Inera om TKB har uppdaterats efter 2011.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-EO-001]** `igs/TKB_eservicesupply_eoffering/input/fsh/logical-models/GetAvailableEServices.fsh`
  SUSHI-varning: "Type characteristics code system not found" för GetAvailableEServices logisk modell. Beror på att `se.inera.rivta.core#current` inte laddades (paket ej tillgängligt offline). Ignorera tills nätverksåtkomst finns eller paketet installeras lokalt.

---

## infrastructure.eservicesupply.forminteraction v2.1 — `igs/TKB_infrastructure_eservicesupply_forminteraction/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

SUSHI: 0 errors, 46 warnings. 20 StructureDefinitions, 5 CodeSystems, 5 ValueSets, 1 ImplementationGuide genererade.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-FI-001]** `igs/TKB_infrastructure_eservicesupply_forminteraction/input/fsh/codesystems/FormCategoryCS.fsh`
  KV Formulärkategori saknar explicita koder i TKB-dokumentet. TKB nämner exempel ("Anmälan, registrering, hälsodeklaration") men listar inga officiella kodvärden. CodeSystem skapades med `^content = #fragment`. Verifiera fullständig kodlista med Inera formulärmotorförvaltning.

- [ ] **[ASSUME-FI-002]** `igs/TKB_infrastructure_eservicesupply_forminteraction/input/fsh/codesystems/PublishStatusCS.fsh`
  KV Publicerings status saknar explicita koder i TKB-dokumentet (v2.1). TKB refererar till kodverket men listar inga koder. CodeSystem skapades med `^content = #fragment`. Verifiera fullständig kodlista med Inera.

- [ ] **[ASSUME-FI-003]** `igs/TKB_infrastructure_eservicesupply_forminteraction/input/fsh/logical-models/CreateForm.fsh`
  Logical model för CreateForm request (Id: `createform-request`) namnges `CreateFormInput` i FSH-källan istället för `CreateFormRequest` för att undvika namnkollision med det separata tjänstekontraktet `CreateFormRequest` (Id: `createformrequest`). Namnvalet är tekniskt korrekt men avviker från konventionen — verifiera att detta är acceptabelt.

- [ ] **[ASSUME-FI-004]** `igs/TKB_infrastructure_eservicesupply_forminteraction/input/fsh/logical-models/GetFormTemplate.fsh`
  Villkorlig kardinalitet för `GetFormTemplateRequest`: TKB anger att minst ett av `healthcare_facility_CareUnit` eller `templateId` måste anges, men båda är modellerade som `0..1`. En FHIR-invariant skulle kunna formalisera detta krav. Bedömning: komplexiteten motiverar ej en invariant i detta skede — notera som antagande.

- [ ] **[ASSUME-FI-005]** `igs/TKB_infrastructure_eservicesupply_forminteraction/input/fsh/logical-models/`
  Elementnamn med underscore (`healthcare_CareGiver`, `healthcare_facility_CareUnit` m.fl.) orsakar SUSHI-varningar "Inadvisable path" (eld-20). Namnen behålls för att spegla RIV-TA-originalet och underlätta mappning mot WSDL/XSD. En framtida refaktorering kan byta till camelCase om IG Publisher ger fel.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-FI-001]** `igs/TKB_infrastructure_eservicesupply_forminteraction/input/fsh/codesystems/FormCategoryCS.fsh` och `PublishStatusCS.fsh`
  Komplettera CodeSystems med faktiska koder när kodlistorna är kända. Nuvarande filer är fragment (`^content = #fragment`).

---

## infrastructure.directory.organization v5.0 — `igs/TKB_infrastructure_directory_organization/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-IDO-001]** `igs/TKB_infrastructure_directory_organization/input/fsh/logical-models/GetUnit.fsh` · fält `telephoneHour.fromTime`, `telephoneHour.toTime` (och motsvarande i `dropInHour`, `surgeryHour`, `visitingHour`, `unitFunction.telephoneHour`)
  FHIR-primitiven `time` orsakade SUSHI-krascher ("Cannot read properties of undefined (reading 'sdType')") i nästlade BackboneElement-fält. Tidsfälten har modellerats som `string` med kommentaren "Format: HH:MM (ISO-8601)" som workaround. Om SUSHI-stödet för `time` förbättras i en framtida version kan dessa fält återkonverteras till korrekt FHIR-typ.

- [ ] **[ASSUME-IDO-002]** `igs/TKB_infrastructure_directory_organization/input/fsh/logical-models/GetUnit.fsh` · fält `unit.financingOrganization`
  Fältet modelleras som `0..* string` (organisationsnummer). Korrekt FHIR-typ vore `Identifier` med system för organisationsnummer, men `string` används som fallback eftersom kodformatet inte specificeras tydligt i TKB. Verifiera med domänexpert om `Identifier` är mer lämpligt.

- [ ] **[ASSUME-IDO-003]** `igs/TKB_infrastructure_directory_organization/input/fsh/logical-models/GetUnit.fsh` · fält `unit.jpegPhoto`, `unit.jpegLogotype`
  Base-64-kodade bildfält modelleras som `0..1 string`. Korrekt FHIR-typ vore `base64Binary`. Konservativt val gjordes för att undvika valideringsfel — verifiera om `base64Binary` ska användas istället.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-IDO-001]** `igs/TKB_infrastructure_directory_organization/input/fsh/logical-models/GetUnit.fsh`
  Tidsfälten (`fromTime`, `toTime`) i tidsfönster-BackboneElements (telephoneHour, dropInHour, surgeryHour, visitingHour, unitFunction/telephoneHour) är modellerade som `string`. Om framtida SUSHI-version stöder `time` i nästlade BackboneElements: konvertera till `time` för semantisk korrekthet.

## processmanagement.decisionsupport.insurancemedicinedecisio v1.0 — `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-PMD-001]** `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/input/fsh/logical-models/GetFmb.fsh` · fält `beslutsunderlag.villkor`
  Villkor-strukturen är komplex (AND/OR-logik över UrvalArbetsbelastning, UrvalSjukdomsforlopp, etc.). TKB specificerar att villkor är OCH-villkor mellan urvalklasser men ELLER-villkor inom ett urval. Ska detta modelleras med FHIR-invarianter, eller är en textuell beskrivning tillräckligt? Nuvarande modell använder BackboneElement utan invarianter.
  Källa: TKB avsnitt 7.1, stycket "Villkor" (övriga regler för GetFmb)

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-PMD-001]** `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/input/fsh/logical-models/GetFmb.fsh` · fält `beslutsunderlag.sjukskrivningsgrad`
  CVType (kod + kodverk + display) mappas till `CodeableConcept`. Kodverket är lokalt (Socialstyrelsen) och innehåller minst "Heltid" och "Deltid". Inget OID anges i TKB. ASSUME: `CodeableConcept` utan bundet ValueSet. Verifiera om ett formellt kodverk finns med OID för sjukskrivningsgrad.
  Källa: TKB avsnitt 7.1, fältregel för `../sjukskrivningsgrad`

- [ ] **[ASSUME-PMD-002]** `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/input/fsh/logical-models/GetFmb.fsh` · fält `beslutsunderlag.sjukskrivningstidVarde` och `beslutsunderlag.sjukskrivningstidEnhet`
  PQType (värde + enhet) mappas till separata `decimal` + `string` fält (istället för FHIR `Quantity`). Valet gjordes för att undvika nästlingskomplexitet i BackboneElement. Verifiera om `Quantity` är mer semantiskt korrekt och tekniskt möjligt i SUSHI-versionen.
  Källa: TKB avsnitt 7.1, fältregler för `../sjukskrivningstid`

- [ ] **[ASSUME-PMD-003]** `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/input/fsh/logical-models/GetDiagnosInformation.fsh` · fält `diagnosInformation.aktivitetsbegransning.kod` och `diagnosInformation.funktionsnedsattning.kod`
  CVType (kodverk + kod) mappas till `CodeableConcept`. TKB anger ej vilket kodverk som används. ASSUME: lokala kodverk för aktivitetsbegränsning och funktionsnedsättning (troligen ICF). Verifiera kodverksreferenser med Socialstyrelsen/Inera.
  Källa: TKB avsnitt 7.2, fältregler för aktivitetsbegransning och funktionsnedsattning

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-PMD-001]** `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/sushi-config.yaml`
  Domänen har inga egna CodeSystems definierade — alla kodverk refererar till externa system (ICD-10-SE, lokala Socialstyrelsen-kodverk). Om Socialstyrelsen publicerar sina kodverk med formella OID:er eller FHIR-CodeSystem-URLs, lägg till dessa som `special-url` och skapa ValueSets med bindningar.

- [ ] **[TODO-PMD-002]** `igs/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/input/fsh/logical-models/GetFmb.fsh`
  Lägg till ValueSet-bindningar för diagnoskoder (ICD-10-SE) i fälten `beslutsunderlag.huvudDiagnos.varde` och `beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet` när blockerare PMD-001 är löst och rätt canonical URL för ICD-10-SE är verifierad.

---

## masterdata.organisationalresources.licensetopractice v2.0 — `igs/TKB_masterdata_organisationalresources_licensetopractice/`

**Status:** done
**Senast uppdaterad:** 2026-05-19

### Blockerare (kräver svar innan IG kan anses komplett)

Inga blockerare.

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-LTP-001]** `igs/TKB_masterdata_organisationalresources_licensetopractice/input/fsh/codesystems/KonCS.fsh` · kodverk `kon`
  TKB-dokumentet anger OID `1.2.752.116.3.1.3` för kön, men XSD-filen (KonType) anger `1.2.752.129.2.2.1.1`. FSH-modellen använder `KonVS` med OID `1.2.752.129.2.2.1.1` (XSD som källa). Verifiera att korrekt OID används — det är en diskrepans mellan TKB-dokumenttexten och XSD-schemat.

- [ ] **[ASSUME-LTP-002]** `igs/TKB_masterdata_organisationalresources_licensetopractice/input/fsh/logical-models/GetHospPersonForPublicHealthcare.fsh` · kontraktsversion
  TKB-dokumentet uppger version "1.1" för GetHospPersonForPublicHealthcare och GetHospPersonForIVO i sektion 7 (versionsinformation), men domänversionen är 2.0 och XSD-namespace anger version 2. WSDL-filerna anger 2.0. FSH-modellen är skapad som v2.0 i enlighet med domänversionen och WSDL. Verifiera om tjänstekontrakt-versionerna i sektion 7 i TKB är felaktiga (1.1/1.0 istället för 2.0).

- [ ] **[ASSUME-LTP-003]** `igs/TKB_masterdata_organisationalresources_licensetopractice/input/fsh/logical-models/GetHospPersonForIVO.fsh` · fält `skyddadIdentitet` och `utvandrad`
  TKB (GetHospPersonForPublicHealthcare) inkluderar inte fälten `skyddadIdentitet`, `mellannamn`, `tilltalsnamn`, `kon`, `lan`, `kommun`, `folkbokforingsort`, `avliden`, `utvandrad` men GetHospPersonForIVO inkluderar dem. XSD:n `HospPersonType` definierar alla fält. Antagande: den publika tjänsten returnerar en delmängd av HospPersonType medan IVO-tjänsten returnerar den fullständiga typen. Detta stämmer med säkerhetskravet att skydda känsliga personuppgifter.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-LTP-001]** `igs/TKB_masterdata_organisationalresources_licensetopractice/sushi-config.yaml`
  Lägg till `se.inera.rivta.core`-dependency om/när det paketet publiceras och innehåller gemensamma RIV-TA-bastyper. För nuvarande är inget core-paket tillgängligt.

- [ ] **[TODO-LTP-002]** `igs/TKB_masterdata_organisationalresources_licensetopractice/input/fsh/logical-models/GetHospPersonForIVO.fsh` · fält `ovrigBehorighet.behorighet`
  OIDer för övrig behörighet (utbildningskoder) saknas i TKB-dokumentet — det hänvisas till informationsspecifikationen. Komplettera ValueSet-bindning när OIDer är kända.
