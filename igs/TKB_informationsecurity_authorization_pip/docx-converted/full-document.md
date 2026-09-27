
|  | Behörighetsinformation / informationsecurity.authorization.pip / Version 1.0_RC1 / 2017-06-28 |
| :--- | :--- |
Innehåll
1	Inledning	6
1.1	Svenskt namn	6
2	Versionsinformation	7
2.1	Version 1.0_RC1	7
2.1.1	Oförändrade tjänstekontrakt	7
2.1.2	Nya tjänstekontrakt	7
2.1.3	Förändrade tjänstekontrakt	7
2.1.4	Utgångna tjänstekontrakt	7
2.2	Version tidigare	7
3	Tjänstedomänens arkitektur	7
3.1	Flöden	7
3.1.1	Flöde 1 - Filtrera förseglad information	7
3.1.2	Obligatoriska kontrakt	9
3.2	Adressering	9
3.2.1	Adressering för GetSeals	10
3.3	Aggregering och engagemangsindex	10
4	Tjänstedomänens krav och regler	10
4.1	Informationssäkerhet och juridik	10
4.2	Icke funktionella krav	10
4.2.1	SLA krav	10
4.2.2	Övriga krav	10
4.3	Felhantering	11
4.3.1	Krav på en tjänsteproducent	11
4.3.2	Krav på en tjänstekonsument	11
5	Tjänstedomänens meddelandemodeller	11
5.1	V-MIM	11
5.1.1	GetSeals	11
5.2	Formatregler	12
5.2.1	Format för datum och tidpunkter	12
5.2.2	Tidszon för tidpunkter	12
5.2.3	Format för patientidentitet	12
6	Tjänstekontrakt	12
6.1	GetSeals	12
6.1.1	Version	13
6.1.2	Fältregler	13
6.1.3	Övriga regler	16
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2016-06-21 | Lagt till tjänstekontrakten GetSeal och ListAppsForSharing (ärende https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.patientportal/issues/285). Uppdaterat beskrivningen av stjänstedomänen (ärende https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.patientportal/issues/284). Logisk adress ändrad enligt ärende https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.patientportal/issues/286. | Johan Eltes |  |
| 1.0_RC1 |  | 2016-10-21 | Lagt till dokumentegenskaper. | Malin Ljunggren |  |
| 1.0_RC1 |  | 2016-10-25 | Uppdaterat fältregler för GetSeal / Lagt till övriga regler för svarselement / Lagt till schematronregler / Lagt till testsvit | Khaled Daham |  |
| 1.0_RC1 |  | 2016-10-26 | Uppdaterat MIM / Rättat regexp för patientId för alla kontrakt (tagit bort ^och $ som ej går att använda i xml-regexp) | Khaled Daham |  |
| 1.0_RC1 |  | 2016-10-27 | Bytt domän ifrån infrastructure.eservicesupply.patientportal till informationsecurity.authorization.pip / Uppdaterat mall / Tagit bort unitId ur schema och fältregler / Förtydligat formatregler | Khaled Daham |  |
| 1.0_RC1 |  | 2016-10-28 | Stängt ärenden https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/2/pluralform-f-r-getseal-saknas / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/5/rubrik-5-i-tkb-beh-ver-fixas / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/7/ka-tydligheten-f-r-full-seal | Khaled Daham |  |
| 1.0_RC1 |  | 2016-11-01 | Stängt ärenden / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/1/beskrivning-av-dom-nen-beskriver-ett-av / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/3/inledning-saknas-till-fl-desbeskrivningen / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/4/avsnittet-om-adressering-beh-ver | Khaled Daham |  |
| 1.0_RC1 |  | 2016-11-01 | Korrigerat text i fälten: timeCreated, orgUnitSeal, orgUnitId, careProviderSeal, careProviderId. / Lagt till arbetsflöde. / Uppdaterat beskrivningar för Övriga regler (R1-R3). | Malin Ljunggren |  |
| 1.0_RC1 |  | 2016-11-04 | Stängt ärenden https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/6/missvisande-semantik-i-tskilliga-f / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/8/konsument-regel-beh-ver-tillf-ras / Förtydligat beskrivning till sekevensdiagrammet i flöde 1 | Khaled Daham |  |
| 1.0_RC1 |  | 2016-11-10 | Ändrat kardinalitet på validFrom till 0..1 / Förtydligat att alla förseglingar returneras / Ändrat full försegling ifrån en boolean till en egen klass / Uppdaterat MIM | Khaled Daham |  |
| 1.0_RC1 |  | 2017-02-21 | Tagit bort skrivningar om vårdnadshavare. / Ändra förkortning på övriga regler till ÖR (istället för R). / Lagt till referens (R4). Informationssäkerhet refererar till infospec. | Malin Ljunggren |  |
| 1.0_RC1 |  | 2017-03-09 | Lagt till det treställiga svenska domännamnet. | Malin Ljunggren |  |
| 1.0_RC1 |  | 2017-04-11 | Förtydligat att beslut om försegling görs av invånaren. / Ändrat till invånare (istället för individ eller enskild). | Malin Ljunggren |  |
| 1.0_RC1 |  | 2017-06-28 | Uppdaterat patient-id (endast personnummer). Uppdaterat arbetsflöde och sekvensdiagram. / Lagt till hänvisning till infospec i fälten som berör de olika tidsperioderna. Uppdaterat beskrivning för fältet fullSeal. | Malin Ljunggren |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_informationsecurity_authorization_pip.docx | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på webben | http://rivta.se/ |
| R3 | ISO8601-standarden för tidsformat | Finns på webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R4 | Informationsspecifikation behörighetsinformation journalförsegling | Finns på webben | https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/src/21063fd3757149448ec41bd433e3e6af622076e6/docs/IS_informationsecurity_authorization_pip.docx?at=master&fileviewer=file-view-default |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| pip | Policy information point | Den systemkomponent som är källan till attribut och metadata som en Policy Decision Point behöver för att beslut om behörighet skall kunna tas. |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
informationsecurity: authorization: pip
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänen syftar till att definiera tjänstekontrakt som tillhandahåller beslutsunderlag för åtkomstkontroll. Producenter av dessa tjänstekontrakt har rollen som s.k. "policy information point". Informationen som kan nås via tjänstekontrakten stödjer olika åtkomstkontroll för professionen så väl som invånaren.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
informationssäkerhet.behörighet.behörighetsinformation
Behörighetsinformation

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen informationsecurity: authorization: pip. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0_RC1

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt i denna version av domänen.

#### Nya tjänstekontrakt
GetSeals 1.0

#### Förändrade tjänstekontrakt
Inga förändrade kontrakt i denna version av domänen.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Inga tidigare versioner.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Flöde 1 - Filtrera förseglad information
Användning av förseglingsinformation i syfte att undanhålla förseglad journalinformation från invånaren.

##### Arbetsflöde
Invånaren har behov av att läsa sin journalinformation. Antingen görs en sökning via en e-tjänst för direktåtkomst eller så får invånaren tillgång till journalinformation via utlämnande som görs via en e-tjänst. En sökning görs därefter för att hitta journalinformation som är förseglad och som ej ska visas upp för invånaren. När sökningen är genomförd visas den filtrerade journalinformationen för invånaren. Filtreringen innebär att förseglad journalinformation ej visas för invånaren.

![img_003.jpg](images/img_003.jpg)
Flödet är internt inom e-tjänster som ska kunna förseglas. Sådan e-tjänst ska anropa den nationella tjänsteproducenten för GetSeals och sedan använda erhållen förseglingsinformation för att filtrera bort journalinformation som matchar förseglingsinformationen. Flödet beskrivs grafiskt i nedanstående sekvensdiagram.

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person som är användare av e-tjänst. |
| E-tjänst | Tjänst som ger invånaren direktåtkomst till journalinformation (ex. Journalen) eller som lämnar ut journalinformation till invånaren (ex. API Gateway). |
| Nationell master | En nationellt adresserad tjänst som innehåller alla förseglingar (enligt principen master data management). Dvs. en nationell tjänsteproducent för tjänstekontraktet GetSeals. |
| Journalinformationsssystem | System som innehåller invånarens journalinformation. / Dvs. en tjänsteproducent för något av tjänstekontrakten för återbruk av journalinformation (ex GetMedicationHistory och GetCareDocumentation) |

##### Sekvensdiagram

![img_002.png](images/img_002.png)
*Figur 1: Exempel på hur e-tjänst filtrerar förseglad information.*

| Invånare begär att titta på journalinformation / E-tjänst hämtar alla gällande förseglingar genom att anropa GetSeals med invånarens personnummer. / E-tjänst hämtar efterfrågad journalinformation, t.ex vårddokumentation, vårdkontakter / E-tjänst filtrerar bort journalinformation enligt de aktiva förseglingar som finns, exempelvis all vårddokumentation där organisationsenheten i en aktiv försegling matchar organisationsenhet i vårddokumentationen. / Efter filtrering visar e-tjänsten sedan återstående journalinformation till invånaren. / Alternativt / Invånare begär att titta på journalinformation / E-tjänst hämtar alla gällande förseglingar genom att anropa GetSeals med invånarens personnummer. / E-tjänstens begäran till GetSeals timear out eller får ett transient fel. / E-tjänst visar ingen information till invånaren. |
| :--- |

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 |
| :--- | :--- |
| GetSeals | X |

### Adressering
Domänen har idag ingen generell adresseringsmodell utan respektive tjänstekontrakt har en specifik adresseringsmodell tillämpad.

#### Adressering för GetSeals
Alla anrop för att hämta information om försegling är riktade mot en nationell tjänsteproducent.
Därför används Ineras HSA-id som logisk adress.

| Åtkomstbehov för etjänst | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id: 5565594230 |

### Aggregering och engagemangsindex
Inga krav på engagemangsindex eller aggregering finns.

## Tjänstedomänens krav och regler

### Informationssäkerhet och juridik
Se informationsspecifikationen [R4].

### Icke funktionella krav
Inga särskilda krav är definierade.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | 100 ms för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 50 anrop per sekund. |  |
| Aktualitet | Information i producent ska alltid vara aktuell när den visas för mottagaren (uppdatering är ej aktuell) |  |
| Återställningstid |  | 1 dygn. Vid katastrof som bortfall av drifthall. |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Inga krav på producent.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav på konsument.

##### Tekniska fel
Inga krav på konsument.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För mappning mot Nationell Informationsstruktur 2017, se informationsspecifikationen.

### V-MIM

#### GetSeals

![img_001.png](images/img_001.png)

### Formatregler

#### Format för datum och tidpunkter
Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R3]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för patientidentitet
Format för personnummer: ”ÅÅÅÅMMDDNNNN”

## Tjänstekontrakt

### GetSeals
Tjänstekontraktet GetSeals används för att vårdgivare skall kunna försegla invånarens åtkomst till sin egen information. Invånarens information blir då ej tillgänglig för invånaren via självbetjäningstjänster. Används då det finns risk att invånaren befinner sig i vanmaktssituation eller då invånaren ej önskar åtkomst alls till sin journalinformation. Beslut om att försegla journalinformation ligger hos invånaren. Efter taget beslut kan försegling göras av invånaren själv (endast full försegling) eller av vårdpersonal hos vårdgivare som hjälper invånaren att försegla delar av (vårdgivarförsegling eller enhetsförsegling) alternativt all journalinformation (full försegling).

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | IIType | Identitet på den patient som konsument vill hämta förseglingar för. / Patientens personnummer. / root: / personnummer: 1.2.752.129.2.1.3.1 / extension: patientens identitet / personnummer: ÅÅÅÅMMDDNNNN | 1..1 |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| seal | SealType | Försegling av patientens åtkomst till den egna informationen. / En försegling kan göras på enhetsnivå, vårdgivarnivå eller en full försegling. / En full försegling ersätter alla andra förseglingar där tidsperioden överlappar. | 0..* |
| ../patientId* | IIType | Identitet på den patient som förseglingen avser. Patientens personnummer. / root: / personnummer: 1.2.752.129.2.1.3.1 / extension: patientens identitet / personnummer: ÅÅÅÅMMDDNNNN | 1..1 |
| ../timeCreated* | TimeStampType | Tidpunkt då förseglingen skapades. | 1..1 |
| ../timeLastUpdated | TimeStampType | Den tidpunkt som förseglingen senast uppdaterades. Är samma tidpunkt som timeCreated om ingen uppdatering har gjorts efter timeCreated. | 1..1 |
| ../validFrom* | DateType | Det datum som förseglingen börjar gälla från och med. / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../validTo* | DateType | Eventuellt datum för då förseglingen upphör att gälla. / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../deactivationDate | DateType | Datum för en forcerad deaktivering. / Fältet anger inget värde om förseglingen är aktiv eller om validTo-datum passerats. / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../orgUnitSeal* | OrgUnitSealType | Försegling av information från en specifik organisationsenhet. / En enhetsförsegling ställer krav på att tjänstekonsumenten (invånarens direktåtkomst eller utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i Journal- och läkemedels-kontrakten i något av dessa fält: / accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId / accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId / Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter. / Det kan endast finnas en orgUnitSeal, careProviderSeal eller ingen. | 0..1 |
| ../../orgUnitId | IIType | HSA-id för den enhet som förseglingen avser. / root: 1.2.752.129.2.1.4.1 / extension: id på enhet | 1..1 |
| ../../sealPeriod | DatePeriodType | Används för att ange händelsetidpunkt för journalinformationen. / Exempel: / Invånare vill skapa en försegling som skall gälla mellan 2016 och framåt i två år och innefatta journalinformation som har händelsetidpunkt mellan 2012 och 2016. / validFrom: 20160101 / validTo: 20180101 / sealPeriod/start: 20120101 / sealPeriod/end: 20160101 / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../../../start | DateType | Start på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../../../end | DateType | Slut på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../careProviderSeal* | CareProviderSealType | Försegling av all information från en vårdgivare. / Det kan endast finnas en orgUnitSeal, careProviderSeal eller ingen. | 0..1 |
| ../../careProviderId | IIType | HSA-id för den vårdgivare som förseglingen avser. / root: 1.2.752.129.2.1.4.1 / extension: id på vårdgivare | 1..1 |
| ../../sealPeriod | DatePeriodType | Används för att ange händelsetidpunkt för journalinformationen. / Exempel: / Invånare vill skapa en försegling som skall gälla mellan 2016 och framåt i två år och innefatta journalinformation som har händelsetidpunkt mellan 2012 och 2016. / validFrom: 20160101 / validTo: 20180101 / sealPeriod/start: 20120101 / sealPeriod/end: 20160101 / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../../../start | DateType | Start på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../../../end | DateType | Slut på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../fullSeal* | FullSealType | När klassen är instansierad så gäller full försegling. / orgUnitSeal eller careProviderSeal får ej förekomma vid en fullständig försegling. / Om fullSeal är instansierad och det ändå finns en orgUnitSeal eller careProviderSeal så gäller fullSeal. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - Svarselement
ÖR1: Full försegling innebär att orgUnitSeal och careProviderSeal utelämnas och att fullSeal är angiven.
ÖR2: Försegling på vårdgivarnivå anges med att careProviderSeal anges och att orgUnitSeal och fullSeal utelämnas.
ÖR3: Försegling på enhetsnivå anges med att orgUnitSeal anges och att careProviderSeal och fullSeal utelämnas.
ÖR4: validTo får inte vara äldre än validFrom
ÖR5: timeLastUpdated får inte vara äldre än timeCreated
ÖR6: patientId root får endast sättas till pnr sam samt formatet måste följa (utan bindestreck)
ÖR7: Listan av seal (0..*) får inte innehålla tidsmässigt överlappande information om en försegling, som skulle kunna skapa tvetydighet i tolkningen av listan. Exempelvis försegling på samma vårdenhet med överlappande datum.
För att validera ett svarsmeddelande enligt ovanstående regler finns det en schematron-fil medpaketerad under katalogen test-suite/GetSeals som heter constraints.xml.

##### Icke funktionella krav
Inga krav utöver de i kap 4.2

###### SLA-krav
Inga krav utöver de i kap 4.2.1
