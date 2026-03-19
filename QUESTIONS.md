# Öppna frågor och blockerare

Samlade frågor från konverteringsarbetet TKB → FHIR IG.

---

## itintegration.engagementindex v1.0.9

**Status:** in-progress
**Senast uppdaterad:** 2026-03-19

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-EI-001]** Kardinalitetsdiskrepans för fält `clinicalProcessInterestId` i FindContent Request: TKB-fälttabellen anger kardinalitet `0..1`, men informationsmodellen och XSD anger `1..1`. FSH-modellen har modellerats med `0..1` (säkrare alternativ), men detta kan vara felaktigt. Behöver verifieras mot auktoritativ XSD-fil och/eller domänexpert innan IG kan anses korrekt. Relevant sektion: TKB avsnitt 7.1 (FindContent), fälttabell för Request.

- [ ] **[BLOCK-EI-002]** Fälten `creationTime`, `updateTime` och `owner` i Update-kontraktets request: TKB noterar explicit (Table 12) att konsumenten SKA INTE sätta dessa fält — de genereras av engagemangsindexinstansen. Dessa fält finns dock i XSD-typen `EngagementType`. Det är oklart om den logiska FSH-modellen för UpdateRequest ska exkludera dessa fält helt, eller inkludera dem med en förklarande invariant/notering om att de inte får sättas av konsumenten. Utan ett tydligt beslut här kan IG:n ge missvisande information till implementerare.

- [ ] **[BLOCK-EI-003]** `se.inera.rivta.core`-paketet refereras som FHIR-dependency i `sushi-config.yaml`. Det är oklart om detta paket är publicerat och tillgängligt på `packages.fhir.org` (eller annan FHIR-paketregistry). Om paketet saknas kommer SUSHI att misslyckas med ett dependency-fel och IG:n kan inte byggas. Verifiera att paketet finns och att rätt version anges, eller ersätt med korrekt paketidentitet.

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
