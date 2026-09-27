
|  | Screeningstöd livmoderhals / Tjänstekontraktsbeskrivning / Version 1.0_RC4 / ARK_0015 / 2020-12-09 |
| :--- | :--- |
Innehåll
Revisionshistorik	4
Referenser	6
Förkortningar	6
1	Inledning	7
1.1	Svenskt namn	7
1.1.1	Svenskt kortnamn	7
2	Versionsinformation	8
2.1	Version 1.0_RC3	8
2.1.1	Oförändrade tjänstekontrakt	8
2.1.2	Nya tjänstekontrakt	8
2.1.3	Förändrade tjänstekontrakt	8
2.1.4	Utgångna tjänstekontrakt	8
2.2	Version tidigare	8
3	Tjänstedomänens arkitektur	8
3.1	Flöden	8
3.2	Sekvensdiagram	9
3.3	Obligatoriska kontrakt	10
3.4	Adressering	10
3.4.1	Sammanfattning av adresseringsmodell	11
4	Tjänstedomänens krav och regler	11
4.1	Informationssäkerhet och juridik	11
4.1.1	Informationssäkerhet	11
4.1.2	Juridik	11
4.2	Icke funktionella krav	11
4.2.1	Omsändning när tjänsteproducent är otillgänglig	12
4.2.2	SLA krav	12
4.2.3	Övriga krav	12
4.3	Felhantering	13
4.3.1	Krav på en tjänsteproducent	13
4.3.2	Krav på en tjänstekonsument	13
5	Tjänstedomänens meddelandemodeller	14
5.1	V-MIM	14
5.1.1	process:cervix:screening:information	14
5.2	Formatregler	15
5.2.1	Format för datum	15
5.2.2	Format för tidpunkter	15
5.2.3	Tidszon för tidpunkter	15
5.2.4	Format på personidentitet	15
6	Tjänstekontrakt	15
6.1	ProcessCervixScreeningInformation	16
6.1.1	Frivillighet	16
6.1.2	Version	16
6.1.3	Fältregler	16
6.1.4	Övriga regler	20
6.1.5	Annan information om kontraktet	20

## Revisionshistorik

| Version | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| 0.50 | 2018-10-05 | Första version | Michael Schneider |  |
| 0.51 | 2019-01-23 | Lagt till beskrivningar i tjänstedomänens meddelande | Michael Schneider |  |
| 0.60 | 2019-01-29 | Korrigeringar efter informatik granskning / Tagit bort termer och beskrivning / Kortat ned beskrivning i avsnitt 3.1 Flöden – hänvisning till IS / Kortat ned avsnitt 4.1 Informationssäkerhet och juridik – hänvisning till IS och Legal analys / Avsnitt 4.2 Icke funktionella krav – borttagen / Lagt till fältregler / Lagt till tekniskt domännamn / Regelverk för CVType | Michael Schneider | Emmy Damberg / / Katrin Abdulal |
| 0.61 | 2019-01-30 | Ändrat svenskt namn/kortnamn / Uppdaterad MIM-schema | Michael Schneider |  |
| 0.62 | 2019-02-01 | Korrigerat allmän regel R1 | Michael Schneider |  |
| 0.70 | 2019-02-08 | Diverse rättningar och korrigeringar i avsnittet 3.1 Flöden / Korrigerat avsnitt 3.3 Obligatoriska kontrakt – samma namn på flödesbeskrivning som i avsnitt 3.1 Flöden / Lagt till formatregel för Datum / Korrigerat beskrivning personId/IIType / Korrigerat beskrivning sendingRegion/RegionType / Rättat felaktig formatangivelse registeredAt/DateType / Korrigerat beskrivning riskGroups/RiskGroupType / Rättat felaktig formatangivelse inclusionDate/DateType / Korrigerat beskrivning specimen/SpecimenType / Korrigerat beskrivning HPVstatusList/HPVStatusType / Reviderat skrivningar om SLA | Michael Schneider |  |
| 0.75 | 2019-02-27 | Modifierat sekvensdiagram – lagt till aktör (manuell sekretessprövning) | Michael Schneider |  |
| 0.76 | 2019-03-12 | Bytt namn på klassen Riskgrupp till Uppföljningsgrupp och ändrat engelskt nanm | Michael Schneider |  |
| 0.77 | 2019-03-19 | Förtydligat att uppföljningsgrupp innebär det som vårdprogrammet kallar kontrollfil. / Rättat beskrivning av fältet HPVstatusList/value i avsnitt 6.1.3. | Emmy Damberg |  |
| 0.80 | 2019-03-20 | Korrigeringar införda efter granskning av NMT | Michael Schneider |  |
| 0.81 | 2019-04-11 | Lagt till SNOMED CT koder / Lagt till OID SNOMED CT kod (1.2.752.116.2.1.1) / Uppdaterat Flöde – Kvinna flyttar mellan regioner | Michael Schneider |  |
| 1.0_RC1 | 2019-04-25 | Version för (I, S och T) kvalitetssäkring | Michael Schneider |  |
| 1.0 | 2019-05-22 | Granskad och godkänd version | Michael Schneider | A&R |
| 1.0.1 | 2019-06-19 | Lagt till referens till kodverket kv/län 1.2.752.129.2.2.1.18 (verksamhetsadressering) | Michael Schneider | Thomas Siltberg
(TK-förvaltningen) |
| 1.0.2 | 2919-09-15 | Ny klass för att förmedla nästa planerade kallelsetillfälle - PlannedInvitationType | Thomas Fafoutis |  |
| 1.0_RC2 | 2019-09-25 | Version för (I, S och T) kvalitetssäkring | Michael Schneider |  |
| 1.0_RC3 | 2019-10-21 | Version för I&S granskning. T granskning godkänd sedan tidigare för version 1.0_RC2 | Michael Schneider |  |
| 1.0_RC4 | 2020-10-20 | Lagt till ett förtydligande om att urvalet av SNOMED CT koder kan komma att förändras vid förändringar i vårdprogrammet / I avsnitt 4.3.1.1. användes fältnamnet comment istället för resultText / Lag till ny orsak till exkludering: patient ej lämplig för åtgärd på grund av medicinskt tillstånd | Oscar Möller |  |

## Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Screeningstöd livmoderhals | Obligatoriskt | Bitbucket |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation | Finns på Webben | Bitbucket |
| R4 | Lista över vanligt förekommande kodverk och identifierare | Finns på Webben | https://bitbucket.org/rivta-domains/best-practice/wiki/ListOfCommonlyUsedCodeSystems |
| R5 | Nationellt vårdprogram för prevention av livmoderhalscancer | Finns på webben | https://www.cancercentrum.se/samverkan/vara-uppdrag/prevention-och-tidig-upptackt/gynekologisk-cellprovskontroll/vardprogram/gallande-vardprogram/ |
| R6 | Sammanfattning av legal analys screeningstöd | Finns på webben | Bitbucket |
| R7 | Verksamhetsregelverk | Finns på webben | Bitbucket |

## Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Anslutningspunkt (AP) | Den server som hanterar inkommande anrop som förmedlats av en tjänsteplattform. Anslutningspunkten uppvisar ett server-certifikat som är betrott av tjänsteplattformen. | Se referens R2 |
| Källsystem (KS) | Det verksamhetssystem där originalinformationen skapas (t.ex. en driftsinstans av ett Kallelsesyste, LIS eller Journalsystem. | Se referens R2 |
| Tjänstekonsument (TK) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens R2 |
| Tjänsteproducent (TP) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens R2 |

## Inledning
Detta är beskrivning av tjänstekontraktet i tjänstedomänen
clinicalprocess:logistic:cervixscreening.
Tjänstekontraktet är baserad på RIVTA 2.1 [R2] och reglerad genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.
Syftet med denna domän är att specifikt kommunicera och utbyta information relaterat till Nationellt vårdprogram för prevention av livmoderhalscancer ([R5]) mellan sjuvårdhuvudmännens kallelsekanslier.
Informationen är nödvändig att utbyta i syfte att säkerställa en obruten vårdkedja för att hälso- och sjukvården skall kunna erbjuda screening för livmoderhalscancer till kvinnor i åldern 23-64 år.  Oaktat vart en kvinna är folkbokförd. Eller vart en kvinna beslutar sig (via det fria vårdvalet) för att lämna ett cellprov eller genomgå eventuell nödvändig vård och behandling.

### Svenskt namn
vård- och omsorg kärnprocess: logistik: livmoderhalsscreening

#### Svenskt kortnamn
Livmoderhalsscreening

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen logistics: logistics: cervixscreening.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0_RC4

#### Oförändrade tjänstekontrakt
Ingen tidigare version av tjänstekontrakt finns.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
ProcessCervixScreeningInformation, version 1.0_RC4

#### Förändrade tjänstekontrakt
Ingen tidigare version av tjänstekontrakt finns.

#### Utgångna tjänstekontrakt
Ingen tidigare version av tjänstekontrakt finns.

### Version tidigare
Ingen tidigare version av tjänstekontrakt finns.

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.

### Flöden
För detaljerad beskrivning av verksamhetsscenarion och informationsflöden hänvisas till [R3].
Nedan redovisas en kortfattad beskrivning av verksamhetsscenarion för att underlätta förståelsen av den tekniska lösningen.
Kvinna flyttar mellan regioner (flyttar över länsgräns) – Händelsen ”kvinna har flyttat” triggar system i kvinnas tidigare hemregion att skicka kallelsegrundande screeninginformation till system hos kallelsekansliet i den nya hemregionen. Kallelsekansliet i den nya hemregionen tar emot information i och med att det nu har ansvaret att fortsatt kalla kvinna vid rätt tidpunkt och med rätt underlag
Överförd information (i tillämpliga fall)
Datum för provtagning, senaste bedömbara provet
HPV-status om provet analyserats för HPV
Uppföljningsgrupp (kontrollfil) HPV 16, 18, non 16/18
Uppföljningsgrupp (kontrollfil) efter behandling av cellförändringar
Exkludering från kallelse pga. total hysterektomi
Exkludering från kallelse pga. egen begäran
Kvinna lämnar prov i annan region – Kvinna nyttjar det fria vårdvalet. Och lämnar ett cellprov i annan provtagande region än hemregionen.
Resultatet av det analyserade cellprovet registreras i system hörandes till provtagande region.
Provtagande region kontrollerar och upptäcker att provet tillhör kvinna som bor i annat län.
Vilket triggar system i den provtagande region att skicka relevant kallelsegrundande information till kallelsekansliet i kvinnas hemregion. 
System hos kallelsekansli hörandes till kvinnas hemregion tar emot information från system i provtagande region
Överförd information
Datum för provtagning, senaste bedömbara provet
HPV-status om provet analyserats för HPV
Kvinna behandlas i annan region – Kvinna nyttjar det fria vårdvalet för att genomgå behandling. Och söker vård och behandling i annan region än hemregionen.
Behandlande region kontrollerar och upptäcker att kvinna bor i annat län. Detta triggar system i den behandlande regionen att skicka relevant kallelsegrundande information om utförd vård och behandling till kallelsekansli i kvinnas hemregion
Överförd information (i tillämpliga fall)
Uppföljningsgrupp efter behandling av cellförändringar
Exkludering från kallelse pga. total hysterektomi

### Sekvensdiagram
Nedanstående sekvensdiagram är tillämpligt för de olika scenariona enligt ovan. Dvs systeminteraktionen är densamma.
Tjänstekontraktet ProcessCervixScreeningInformation används i alla tre fallen för att överföra relevant kallelsegrundande information från sändande tjänstekonsument till mottagande tjänsteproducent.

![img_002.png](images/img_002.png)
I sekvensdiagrammet ovan föregås varje enskilt elektroniska utlämnande av en manuell sekretessprövning (aktören Användare). I de fall den manuella sekretessprövningen medger ett elektroniskt utlämnande initierar tjänstekonsumenten interaktionen via anrop av tjänstekontraktet. Om utlämnande ej medges skall inget anrop av tjänstekontraktet ske.
Hur den manuella sekretessprövningen implementeras i respektive region beskrivs inte närmare i detta dokument. Det är upp till varje region (huvudman) att säkerställa att elektroniskt utlämnande sker på ett korrekt sätt enligt [R6].

### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Kvinna flyttar mellan regioner
(flyttar över länsgräns) | Kvinna lämnar prov i annan region | Kvinna behandlas i annan region |
| :--- | :--- | :--- | :--- |
| ProcessCervixScreeningInformation | X | X | X |

### Adressering
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt (version 2.0.4 – 2018-08-27) avsnitt 8.3 där mer information kan hittas.
Tjänstedomänen tillämpar verksamhetsadressering.
Inom denna domänen används en regions länskod som logisk adress. Endast en logisk adress per region är tillåten i kommunikationsrutinen.
Enligt nationella vårdprogrammet [R5] är det en kvinnas folkbokföringsadress (länskoden) som avgör vilken region (huvudman) som har till ansvar att kalla en kvinna till screening.

#### Sammanfattning av adresseringsmodell

| Informationsförsörjning kallelseinformation | Logisk adress |
| :--- | :--- |
| För en region | Länskod (kv/län -- 1.2.752.129.2.2.1.18) |

## Tjänstedomänens krav och regler
I version 1.0 av detta dokument gäller följande krav och regler för tjänstekontraktet ProcessCervixScreeningInformation.

### Informationssäkerhet och juridik

#### Informationssäkerhet
Informationen innehåller information om personuppgifter, se vidare [R3] för utförligare beskrivning avseende informationssäkerhet.

#### Juridik
Följande lagrum reglerar informationshanteringen:
Patientdatalag (2008:355)
Dataskyddsförordningen (GDPR, The General Data Protection Act)
Offentlighets- och sekretesslag (2009:400)
Se vidare den legala analysen [R6] för hur den kallelsegrundande informationen får hanteras.

### Icke funktionella krav

#### Omsändning när tjänsteproducent är otillgänglig
Regler och riktlinjer för omsändning vid otillgänglig tjänsteproducent finns beskrivna i RIVTA BP 2.1.2 regel #22. Dessa regler är tillämpliga för tjänstekonsumenter av ProcessCervixScreeningInformation-tjänstekontraktet.
En otillgänglig producent kan yttra sig på två olika sätt, det ena är vid timeout och det andra fallet är vid SoapException.
Tjänstekonsument bör ha en separat tråd för respektive tjänsteproducent man sänder till, där varje tråd har en omsändningspolicy enligt nedan.
Omsändningsfrekvens ska vara konfigurerbar och anges - i millisekunder - som paus mellan anrop till en och samma tjänsteproducent enligt SLA-krav under ”Last”, default ska vara 5000 ms.
Omsändningsrekvens bör vara exponentiell backoff.
Max antal omsändningsförsök ska vara konfigurerbar, när max antal försök har uppnåtts ska systemet sluta att försöka sända meddelandet till den tjänsteproducenten.
Max timeout ska vara konfigurerbar, när timeout har uppnåtts ska omsändning ske till max antal omsändningsförsök.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för tjänstekontraktet ProcessCervixScreeningInformation.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Aktualitet | - | Se [R7] |
| Last | 10 transaktioner per sekund | En producent ska hantera 10 samtidiga transaktioner. / En tjänstekonsument ska ej i en och samma transaktion skicka en nyttolast som är större än 5MB. |
| Tillgänglighet | 24x7, 99,5% |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav
Inga övriga krav finns specificerade.

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Fault).
Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
Användaren kommer enbart att se ”tekniskt fel” – inte detaljinformation.
Detaljinformationen riktar sig till systemförvaltaren.
För regler kring omsändning se 4.2.1.

#### Krav på en tjänsteproducent
Se RIV Tekniska anvisningar [R2].

##### Logiska fel
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode och resultText.
Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa eller spara information om vad som gick fel.
En tjänsteproducent ska validera meddelanden enligt xml schema och tillhörande schematron-regler som följer med interaktionen (test-suite/[interaktionens namn]/constraints.xml).
ResultCode kan vara:

| Kod | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO | Transaktionen har utförts enligt uppdraget i begäran, men det finns ett meddelande som tjänstekonsumenten måste visa upp för användaren. |
| ERROR | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. / Fältet resultText ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering. / Meddelandet anses inte mottaget. |

#### Krav på en tjänstekonsument
Se RIV Tekniska anvisningar [R2].

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För beskrivning av begreppsmodell och informationsmodell se [R3].

### V-MIM

#### process:cervix:screening:information
Nedanstående bild visar schemat för meddelandemodellen.

![img_001.jpeg](images/img_001.jpeg)

| Klass.attribut / (enligt Informationsmodell i [R3] | Mappning mot Schema |
| :--- | :--- |
| Cervixscreeninginformation | CervixScreeningInformationType |
| Klassen innehåller inga attribut | - |
| Kvinna | PersonType |
| person-id | Personid |
| Organisation | OrganisationType |
| Id | Id |
| Namn | Name |
| Uppföljningsgrupp | FollowUpGroupType |
| Typ | Type |
| inklusionsdatum | inclusionDate |
| Senaste provtagning | SpecimenCollectionType |
| Tid | specimenDate |
| HPV-status | HPVstatusType |
| värde | Value |
| Exkludering från kallelse | ExclusionType |
| Orsak | Reason |
| registreringsdatum | registratedAt |
| Individuellt kallelsedatum | PlannedInvitationType |
| kallelsedatum | date |
| orsak | reason |

### Formatregler

#### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format på personidentitet
Endast svenskt personnummer på formatet ÅÅÅÅMMDDNNNN är tillåtet.

## Tjänstekontrakt

### ProcessCervixScreeningInformation
Tjänstekontraktet ProcessCervixScreeningInformation stödjer informationsflödet från en region som har kallelsegrundande information om en kvinna till en annan region som har kallelseansvaret för samma kvinna.
Informationsflödet skall säkerställa att en obruten vårdkedja upprätthålls för en enskild kvinna. Oaktat om en kvinna flyttar mellan regioner, lämnar prov i annan region än hemregionen eller genomgår vård och behandling i annan region än hemregionen.
Typiska källsystem som ingår i systemlösningen för att möjliggöra informationsflödet mellan regioner (huvudmän) är:
Olika regioners kallelsesystem för utbyte av information mellan regioners kallelsekanslier (scenario ”Kvinna flyttar mellan regioner (flyttar över länsgräns)”)
LIS/journalsystem för överföring av provresultat till olika regioners kallelsesystem (scenario ”Kvinna lämnar prov i annan region”)
Journalsystem för överföring av utfall av vård och behandling till olika regioners kallelsesystem (scenario ”Kvinna behandlas i annan region”)

#### Frivillighet
Tjänstekontraktet är obligatorisk för alla parter som behöver stödja kallelsegrundande informationsutbyte mellan regioner (huvudmän).

#### Version
1.0_RC3

#### Fältregler

##### Begäran
Nedanstående tabell beskriver varje element i begäran. Har namnet en * finns ytterligare regler för detta element
och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| CervixScreeningInformation | CervixScreeningInformationType | Kallelsegrundande information för cervixscreening. | 1..1 |
| ../subjectOfCare | PersonType | Folkbokförd person med svenskt personnummer / Personnummer skall anges på formatet ÅÅÅÅMMDDNNNN. | 1..1 |
| ../../personId | IIType | Personnummer: / root:  1.2.752.129.2.1.3.1 / extension: <personnummer> / Endast svenskt personnummer är tillåtet | 1..1 |
| ../sendingRegion | RegionType | Region som gör utlämnandet. | 1..1 |
| ../../region | OrganisationType | Region. | 1..1 |
| ../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../careGiver | OrganisationType | Skall ej anges. | 0..0 |
| ../../../id | IIType | Skall ej anges. | 0..0 |
| ../../../name | String | Skall ej anges. | 0..0 |
| ../../careUnit | OrganisationType | Skall ej anges. | 0..0 |
| ../../../id | IIType | Skall ej anges. | 0..0 |
| ../../../name | String | Skall ej anges. | 0..0 |
| ../exclusion | ExclusionType | Information om exkludering från kallelse. | 0..1 |
| ../../reason | CVType | Orsak till att kvinnan ska exkluderas från kallelser. / Urval ur SNOMED CT: / code: [31021000119100\|116140006\|702371008] / codeSystem: 1.2.752.116.2.1.1 / codeSystemName: Används ej / codeSystemVersion: Används ej / displayName: Valfritt (kan anges) / originalText: Används ej / Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet. | 1..1 |
| ../../registeredAt | DateType | Datum då det ursprungligen registrerades att kvinnan ska exkluderas från kallelse. / Datum anges på format ”ÅÅÅÅMMDD” | 1..1 |
| ../../originalRegion | RegionType | Organisation varifrån information om exkludering ursprungligen härstammar. | 1..1 |
| ../../../region | OrganisationType | Region. | 1..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../../careGiver | OrganisationType | Vårdgivare. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Vårdgivarens namn i klartext. | 1..1 |
| ../../../careUnit | OrganisationType | Vårdenhet. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Vårdenhetens namn i klartext. | 1..1 |
| ../followUpGroups | FollowUpGroupType | Information om uppföljningsgrupp (kontrollfil) för kvinna. | 0..* |
| ../../type | CVType | Typ av uppföljningsgrupp (kontrollfil). / Urval ur SNOMED CT: / code: [59461000052109\| 59291000052102\|59321000052109\|59301000052103] / codeSystem: 1.2.752.116.2.1.1 / codeSystemName: Används ej / codeSystemVersion: Används ej / displayName: Valfritt (kan anges) / originalText: Används ej / Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet. | 1..1 |
| ../../inclusionDate | DateType | Datum då kvinna inkluderades i uppföljningsgrupp (kontrollfil). / Datum anges på format ”ÅÅÅÅMMDD” | 1..1 |
| ../../originalRegion | RegionType | Organisation varifrån information om tillhörighet till uppföljningsgrupp (kontrollfil) ursprungligen härstammar. | 1..1 |
| ../../../region | OrganisationType | Region. | 1..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../../careGiver | OrganisationType | Vårdgivare. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Vårdgivarens namn i klartext. | 1..1 |
| ../../../careUnit | OrganisationType | Vårdenhet. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Vårdenhetens namn i klartext. | 1..1 |
| ../specimen | SpecimenType | Gynekologiska cellprovtagning som ledde till ett bedömbart prov. | 0..1 |
| ../../specimenDate | TimeStampType | Tidpunkt för senaste provtagning som ledde till ett bedömbart prov. | 1..1 |
| ../../originalRegion | RegionType | Organisation varifrån information om provtagning ursprungligen härstammar. | 1..1 |
| ../../../region | OrganisationType | Region. | 1..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../../careGiver | OrganisationType | Vårdgivare. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Vårdgivarens namn i klartext. | 1..1 |
| ../../../careUnit | OrganisationType | Vårdnhet. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: <hsa-id> | 1..1 |
| ../../../../name | String | Vårdenhetens namn i klartext. | 1..1 |
| ../../HPVstatusList | HPVstatusType | Provets HPV-status. / Skall anges om och endast om provet har analyserats för HPV. | 0..* |
| ../../../value | CVType | Värde för HPV-status. / Urval ur SNOMED CT: / code: [59291000052102\|59321000052109\|59301000052103\|59311000052101] / codeSystem: 1.2.752.116.2.1.1 / codeSystemName: Används ej / codeSystemVersion: Används ej / displayName: Valfritt (kan anges) / originalText: Används ej / Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet. | 1..1 |
| ../plannedInvitation | PlannedInvitationType | Förmedlar det individuella kallelsedatum som frångår vårdprogrammets ordinarie kallelseintervall och har satts för en enskild kvinna | 0..1 |
| ../../date | DateType | Planerat individuellt kallelsedatum | 1..1 |
| ../../reason | String | Beskrivning av orsaken till att kvinnan har ett individuellt kallelsedatum istället för vårdprogrammets ordinarie kallelse-intervall. | 0..1 |

##### Svar
Nedanstående tabell beskriver varje element i svar.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Allmänna regler
R1: Om ett meddelande endast innehåller entiteten subjectOfCare och ingen av följande entiteter - SpecimenType, ExclusionType, FollowUpGroupType, PlannedInvitationType.
Skall följande tolkning göras av mottagande system – ”Kallelsegrundande information saknas”.

#### Annan information om kontraktet
N/A
