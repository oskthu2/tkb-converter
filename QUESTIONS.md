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

---

## clinicalprocess.healthcond.actoutcome v4.2.2

**Status:** blocked
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-CHAO-001]** SUSHI-kompilering inte körd: `hl7.fhir.r4.core#4.0.1` kan inte laddas ner från packages.fhir.org (nätverksåtkomst blockerad i nuvarande miljö). Kör manuellt: `cd igs/TKB_clinicalprocess_healthcond_actoutcome && sushi .` i en miljö med internetåtkomst.

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

- [ ] **[BLOCK-DESC-001]** SUSHI-kompilering kan inte köras i nuvarande miljö: `hl7.fhir.r4.core#4.0.1` kräver nätverksåtkomst för att laddas ner från packages.fhir.org. Kör manuellt: `cd igs/TKB_clinicalprocess_healthcond_description && sushi .` i en miljö med internetåtkomst. IG-innehåll (pagecontent + FSH-modeller) är komplett.

- [ ] **[BLOCK-DESC-002]** `se.inera.rivta.core: current` är angivet som beroende i sushi-config.yaml men paketets faktiska existens i FHIR-paketregistret är overifierad (se även BLOCK-EI-003 för engagemangsindex). Om paketet inte finns: ta bort beroendet och skapa lokala kopior av gemensamma bastyper (IIType, CVType, etc.) eller referera direkt till `hl7.fhir.r4.core`-typer.

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
