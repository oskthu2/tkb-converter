Tjänstekontraktsbeskrivning -
Vård- och omsorgsprocess: hantera hälsorelaterade tillstånd: reumatismdata
Tjänstekontraktsbeskrivning
Version 1.0.RC3
2014-02-20
Innehållsförteckning
1	Inledning	5
2	Versionsinformation	6
2.1	Version 1.0.0.	6
2.1.1	Oförändrade tjänstekontrakt	6
2.1.2	Nya tjänstekontrakt	6
2.1.3	Förändrade tjänstekontrakt	6
2.1.4	Utgångna tjänstekontrakt	6
2.2	Version tidigare	6
3	Tjänstedomänens arkitektur	7
3.1	Flöden	7
3.1.1	Reumatismdata	7
3.1.2	Obligatoriska kontrakt	9
3.2	Adressering	9
3.2.1	Sammanfattning av adresseringsmodell	10
3.3	Aggregering och engagemangsindex	10
4	Tjänstedomänens krav och regler	11
4.1	Uppdatering av engagemangsindex	11
4.2	Informationssäkerhet och juridik	13
4.2.1	Medarbetarens direktåtkomst	13
4.2.2	Patientens direktåtkomst	14
4.2.3	Generellt	14
4.3	Icke funktionella krav	14
4.3.1	SLA krav	14
4.3.2	Övriga krav och regler	15
4.4	Felhantering	16
4.4.1	Krav på en tjänsteproducent	16
4.4.2	Krav på en tjänstekonsument	16
5	Gemensamma informationskomponenter	17
6	Tjänstedomänens meddelandemodeller	18
6.1	V-MIM Reumatismdata	18
7	Tjänstekontrakt	23
7.1	GetRheumatoidArthritisData	23
7.1.1	Version	23
7.1.2	Gemensamma informationskomponenter	23
7.1.3	Fältregler	23
7.1.4	Övriga regler	28
Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2014-01-21 | Första version. | Björn Genfors |  |
| PA2 | 2014-01-22 | Redaktionella ändringar, framför allt uppdaterat innehållsförteckningen | Björn Genfors |  |
| PA3 | 2014-01-23 | Uppdaterat tabellen för EngagemangsIndex och satt Categorization till NA och rätt domän för serviceDomain | Khaled Daham |  |
| RC1 | 2014-02-12 | Bytt TKB-mall. / Korrigerat svenskt namn på kontraktet så det följer regelverket. / Uppdaterat arkitekturkapitlet med fördjupad beskrivning av arbetsflödesdiagrammen och hänvisning till RIV Tekniska anvisningar i adresseringsavsnittet. / Förtydligat felhanteringsavsnitten som beskriver logiska fel (inga krav, det finns inga skrivtjänster i domänen). / Rättat elementnamn i V-TIM-mappningstabellen / Tänkt tjänst för ”Anslutningspunkt” borttaget i illustrationer av arbetsflöde | Björn Genfors / Marcus Claus |  |
| RC2 | 2014-02-20 | Tagit bort referenser till aggregerande tjänster. | Khaled Daham / Marcus Claus |  |
| 1.0.RC3 | 2014-02-20 | Granskat. Rättat stavfel, tagit bort ppt-fil med arbetsmaterialbilder som ej skall ingå, lagt till hänvisning till arkitekturella beslut bilagan om att aggregerande tjänst ej krävs. | Marcus Claus |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Hantera hälsorelaterade, tillstånd:reumatismdata – Arkitekturella beslut | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på Webben | http://www.cehis.se/arkitektur_och_regelverk/regelverk/ |
| R3 | Bilaga_Gemensamma_typer_2.pdf |  | Bilaga |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess:healthcond:rheuma.
Den svenska benämningen är ” Vård- och omsorgsprocess, hantera hälsorelaterade tillstånd, reumatismdata”.
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänen syftar till att tillmötesgå behovet av reumatikerpatienters direktåtkomst till sina sjukdomsspecifika data som en del i projektet ”Journal på nätet” och ”4D”.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om version ...  Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version ...

#### Oförändrade tjänstekontrakt
Detta är första dokumentversionen, inga kontrakt fanns innan.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
GetRheumatoidArthritisData, version 1.0

#### Förändrade tjänstekontrakt
Inga tjänstekontrakt är förändrade.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Inga tidigare versioner av dokumentet.

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av hälsorelaterade tillstånd erbjuder sökning av information i vård- och omsorgsgivarnas system för patientadministration och vårddokumentation.
Utgångspunkten för tjänsterna i denna tjänstedomän är i första hand patientens behov av direktåtkomst till sin vård- och omsorgshistorik inom reumatismområdet sett ur ett nationellt eller ett regionalt perspektiv.
Syftet generellt är att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Emellertid är tjänsterna i denna tjänstedomän för närvarande inte aktuella att representera även med aggregerande tjänster (se [R1] Arkitekturella beslut, avsnitt 2.2).
Tjänstekontrakten erbjuder möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden

#### Reumatismdata
Nedanstående diagram visar hur flödet principiellt set ser ut när information ur kontraktet efterfrågas och hanteras.
Notera att de principiella exemplen även visar hur aggregerande tjänst används. Emellertid är tjänsterna i denna tjänstedomän för närvarande inte aktuella att representera även med aggregerande tjänster (se [R1] Arkitekturella beslut, avsnitt 2.2).

##### Arbetsflöde

![img_004.emf](images/img_004.emf)
*Figur 1. Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. från Mina Vårdkontakters tjänst för journalåtkomst)*

![img_003.emf](images/img_003.emf)
*Figur 2. Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen)*

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Patienten | Den patient som vill få tillgång till sina reumatismdata. |

##### Sekvensdiagram

![img_002.png](images/img_002.png)
*Figur 3 Sekvensdiagram över sökning efter reumatismdata.*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Användare/system | Den/det som utför själva handlingen. |
| Applikation | Det system som används för att konsumera information. Dvs det system som hämtar information som finns registrerad i andra system |
| Tjänsteplattform | Tjänsteplattformen är ett lager som slussar information vidare (som har sin egna interna process) |
| Mellanlager | Ett system som kan finnas mellan ett källsystem och en annan applikation. Kan användas för att lagra information för uppföljning. |
| Vårdinformationssystem | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Reumatismdata |
| :--- | :--- |
| GetRheumatoidArthritisData | X |

### Adressering
Tjänstedomänen tillämpar system-adressering, det förutsätter att tjänstekonsumenten känner till källsystemets HSA eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3, där mer information kan hittas.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Aggregering används ej i denna eller tidigare versioner, alla frågemeddelanden dirigeras direkt till källsystemet baserat på dess HSA-id som anges som logisk adress.
Se sektion Uppdatering av engagemangsindex för regelverk kring notifiering via engagemangsindex.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet  urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”) eller genom att erbjuda tjänstekontraktet urn:riv:itintegration:engagementindex:GetUpdatesResponder:1 (”indexpull”)
Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | ”riv:clinicalprocess:healthcond:rheuma” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | ”NA” – dvs ej tillämpat för tjänstedomänen | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna  indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då index-posten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Källsystemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |
Regler för tilldelning av värde i fältet Categorization i engagemangsposten för tjänstekontrakt i denna domän:

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetRheumatoidArthritisData | NA |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från datainspektionen om ytterligare teknisk åtkomstkontroll.
Patientdatalagen ställer också krav (via dess tolkning ”PDL-i-praktiken”; PDLiP) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet). Det kompletta regelverket finns i senaste utredningen PDLiP samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa tjänstekontrakt, såsom Vård- och omsorgskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas).
Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### Icke funktionella krav
Det är verksamhetens ansvar att data inte finns dubblerad i flera källsystem. För patientdata som lagras i flera källsystem skall endast ett källsystem tillhandahålla informationen via lästjänst och engagemangsindex.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.
Följande SLA-krav gäller för producenter av tjänstekontrakten i denna domän

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 15 sekunder. |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. |  |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |  |
| Robusthet | Om tidsintervall inte angivits i frågan kan tjänsteproducenten kan välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. |  |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |  |

#### Övriga krav och regler

##### Gemensamma konsumentregler
R1: Filtrera enligt flagga ”approvedForPatient”
R2: Tillämpa regelverk enl. PDL

##### Gemensamma producentregler
R3: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

##### Format för datum och tidpunkter
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Inga krav.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).  Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Tekniska fel får inte förmedla känsliga personuppgifter.  Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Koden rekommenderas vara ett log-id enligt 4.4.1.2. När tekniska fel uppstår p.g.a. att producenten inte är tillgänglig måste konsumenten sända om data vid användning av skrivtjänster.

## Gemensamma informationskomponenter
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän.
Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSAid-information så är HSAid-attribut i beskrivningarna av fältreglerna nedan i många fall valfria. Se även avsnittet ”4.2 Informationssäkerhet och juridik” ovan.
De gemensamma typerna beskrivs i bilaga/bilagor med namn ”Bilaga_Gemensamma_typer_<version>.pdf”. Hänvisad <version> anges vid respektive tjänstekontrakt enligt nedan.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM Reumatismdata

![img_001.png](images/img_001.png)

| Klass.attribut | Mappning mot V-TIM 2.2 | Mappning mot XSD schema |
| :--- | :--- | :--- |
| rheumatoidArthritisData | Saknar motsvarighet i V-TIM 2.2 |  |
| RheumatoidArthritisDataHeader.documentId | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/documentId |
| RheumatoidArthritisDataHeader.sourceSystemHSAId | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/sourceSystemHSAId |
| RheumatoidArthritisDataHeader.patientId | Patient.person-id | rheumatoidArthritisData/RheumatoidArthritisDataHeader/patientId |
| rheumatoidArthritisDataHeader.accountableHealthcareProfessional | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/accountableHealthcareProfessional |
| AccountableHealthcareProfessional.authorTime | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataHeader/ accountableHealthcareProfessional /authorTime |
| AccountableHealthcareProfessional.healthcareProfessionalHSAId | Vård- och omsorgsutövare.personal id | rheumatoidArthritisData/rheumatoidArthritisDataHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| AccountableHealthcareProfessional.healthcareProfessionalName | Vård- och omsorgsutövare.personal namn | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/healthcareProfessionalName |
| AccountableHealthcareProfessional.healthcareProfessionalRoleCode | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnit.orgUnitHSAId | Vård- och omsorgsutövare.enhet id | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnit.orgUnitname | Vård- och omsorgsutövare.enhet namn | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnit.orgUnitTelecom | Tele och eKommunikation.tele ekom adress | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnit.orgUnitEmail | Tele och eKommunikation.tele ekom adress | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnit.orgUnitAddress | Adress.adress 1, / Adress.postnummer & / Adress.postort | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnit.orgUnitLocation | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitLocation |
| AccountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId | Informationsresurs.vårdenhet id | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| AccountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId | Informationsresurs.vårdgivare id | rheumatoidArthritisData/RheumatoidArthritisDataHeader/AccountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticator.legalAuthenticatorTime | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/LegalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticator.legalAuthenticatorHSAId | Vård- och omsorgsutövare.personal id | rheumatoidArthritisData/RheumatoidArthritisDataHeader/LegalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticator.legalAuthenticatorName | Vård- och omsorgsutövare.personal namn | rheumatoidArthritisData/RheumatoidArthritisDataHeader/ |
| RheumatoidArthritisDataHeader.approvedForPatient | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/RheumatoidArthritisDataHeader/approvedForPatient |
| RheumatoidArthritisDataHeader.careContactId | Informationsresurs.kontakt id | rheumatoidArthritisData/RheumatoidArthritisDataHeader/careContactId |
| rheumatoidArthritisDataBody | Saknar motsvarighet i V-TIM 2.2 |  |
| Drug.nplId | Specifikation läkemedel.specifikation läkemedel_id | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/nplId |
| Drug.atcCode | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/atcCode |
| Drug.name | Specifikation läkemedel.varumärke namn | rheumatoidArthritisData/rheumatoidArthritisDataBody/ |
| Drug.OfDrug | Läkemedelsform.läkemedelsform | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/name |
| Drug.dose | Dosspecifikation.kvantitet | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/dose |
| Drug.datePeriod | Sammansatta format.Dosering.starttidpunkt & / Sammansatta format.Dosering.sluttidpunkt | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/datePeriod |
| Drug.interval | Dosspecifikation.frekvens | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/interval |
| Drug.endCause | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/Drug/endCause |
| LabVariables.sedimentationRate | Observerat uppfattat tillstånd Värde.enhet / & / Observerat uppfattat tillstånd Värde.värde | rheumatoidArthritisData/rheumatoidArthritisDataBody/LabVariables/sedimentationRate |
| LabVariables.cReactiveProtein | Observerat uppfattat tillstånd Värde.enhet / & / Observerat uppfattat tillstånd Värde.värde | rheumatoidArthritisData/rheumatoidArthritisDataBody/LabVariables/cReactiveProtein |
| PhysiciansVariables.physiciansGlobal | Bedömt tillstånd Svårighetsgrad.svårighetsgrad | rheumatoidArthritisData/rheumatoidArthritisDataBody/PhysiciansVariables/physiciansGlobal |
| PhysiciansVariables.tenderJoints28 | Observerat uppfattat tillstånd Värde.värde | rheumatoidArthritisData/rheumatoidArthritisDataBody/PhysiciansVariables/tenderJoints28 |
| PhysiciansVariables.swollenJoints28 | Observerat uppfattat tillstånd Värde.värde | rheumatoidArthritisData/rheumatoidArthritisDataBody/PhysiciansVariables/swollenJoints28 |
| PhysiciansVariables.diseaseActivityScore28 | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/PhysiciansVariables/diseaseActivityScore28 |
| PhysiciansVariables.diseaseActivityScore28RCP | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/PhysiciansVariables/diseaseActivityScore28RCP |
| PatientVariables.workAbility | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/workAbility |
| PatientVariables.globalHealth | Observerat uppfattat tillstånd Observation Uppfattning.observation uppfattning | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/globalHealth |
| PatientVariables.pain | Observerat uppfattat tillstånd Observation Uppfattning.observation uppfattning | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/pain |
| PatientVariables.eq5IndexValue | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/eq5IndexValue |
| PatientVariables.HealthAssessmentQuestionnaireScore | Saknar motsvarighet i V-TIM 2.2 | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/HealthAssessmentQuestionaireScore |
| PatientVariables.tenderJoints28 | Observerat uppfattat tillstånd Värde.värde | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/tenderJoints28 |
| PatientVariables.swollenJoints28 | Observerat uppfattat tillstånd Värde.värde | rheumatoidArthritisData/rheumatoidArthritisDataBody/PatientVariables/swollenJoints28 |

## Tjänstekontrakt

### GetRheumatoidArthritisData
GetRheumatoidArthritisData returnerar information om en patient hämtad ur Reuma beslutsstödsjournal eller motsvarande system.
Denna information innehåller dels patientskattade värden, dels läkarens uppskattade, observerade eller uppmätta värden, dels labbvärden, och dels information om insatta läkemedel relaterade till sjukdomen.

#### Version
1.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_2.pdf”

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten. | 1..1 |
| ../id | String | id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. |  |
| ../type | string | Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) |  |
| datePeriod | DatePeriodType | Begränsning av sökningen i tid, vilket innebär att endast svar returneras där authorTime eller signatureTime ligger helt eller delvis inom det sökta tidsintervallet. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapade i angivet system. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. | 0..1 |
| careContactId | string | Begränsar sökningen till den vård- och omsorgskontakt där den vårdbegäran som låg till grund för laboratoriesvaret skapades. | 0..* |
|  |  |  |  |
| Svar |  |  | 0..* |
| rheumatoidArthritisData | RheumatoidArthritisDataType | De diagnoser som matchar begäran. | 0..* |
| ../rheumatoidArthritisDataHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i (HSA-id för Reuma). | 1..1 |
| ../../documentTitle |  |  | 0..0 |
| ../../documentTime |  |  | 0..0 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt skall detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4), se / http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges skall också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system skall samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges skall inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare vid. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 0..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare vid. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare vid. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalcareUnitHSAId | HSAIdType | HSA-id för PDL-enhet. | 0..1 |
| ../../../healthcareProfessionalcareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare vid. | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../rheumatoidArthritisBody | RheumatoidArthritisBodyType |  | 1..1 |
| ../../patientVariables | PatientVariablesType | Information från patienten. | 0..1 |
| ../../../workAbility | string | Patientens arbetsförmåga. Beskrivs med hur många timmar patienten arbetar i förhållande till hur många timmar patientens anställning är. | 0..1 |
| ../../../globalHealth | integer | Global health of patient. Värdemängd: 0-100. | 0..1 |
| ../../../pain | integer | Patientens uppfattning rörande sin smärta. Värdemängd: 0-100. | 0..1 |
| ../../../eq5dIndexValue | float | EuroQol-5 Dimension Questionnaire (EQ-5D). Värdemängd: -0,594–1. | 0..1 |
| ../../../healthAssessmentQuestionnaireScore | float | Health Assessment Questionnaire (HAQ). Värdemängd: 0-3. | 0..1 |
| ../../../tenderJoints28 | integer | Tender joints 28. Antal ömma leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../../swollenJoints28 | integer | Swollen joints 28. Antal svullna leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../physiciansVariables | PhysiciansVariablesType | Information från läkaren. | 0..1 |
| ../../../physiciansGlobal | CVType | Motsvarar enum = none, low, moderate, high, maximal. | 0..1 |
| ../../../../code | string | Kod enligt producentsystemets kodverk. Om code anges skall också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Anger kodverket som definierar koden. Dvs UID/OID för det kodverk som används. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Kodverkets namn i klartext. Skall anges när så är möjligt | 0..1 |
| ../../../../codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| ../../../../displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. Om separat displayName inte finns i producerande system skall det ange samma värde som för code. | 0..1 |
| ../../../../originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan inget av de övriga elementen anges. | 0..1 |
| ../../../tenderJoints28 | integer | Tender joints 28. Antal ömma leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../../swollenJoints28 | integer | Swollen joints 28. Antal svullna leder av 28. Värdemängd: 0-28. | 0..1 |
| ../../../diseaseActivityScore28 | float | Disease Activity Score 28 (DAS28). | 0..1 |
| ../../../diseaseActivityScore28CRP | float | Disease Activity Score 28 CRP (DAS28CRP). | 0..1 |
| ../../labVariables | LabVariablesType | Labbvärden. | 0..1 |
| ../../../sedimentationRate | PQType | Sänka. Sedimentation Rate (SR). | 0..1 |
| ../../../../value | Double | Mätetal. | 1..1 |
| ../../../../unit | string | ”mm/h” | 1..1 |
| ../../../cReactiveProtein | PQType | C-reaktivt protein. C-reactive Protein value (CRP). | 0..1 |
| ../../../../value | Double | Mätetal. | 1..1 |
| ../../../../unit | string | ”mg/L” | 1..1 |
| ../../drug | DrugType | Information om patientens läkemedel. | 0..* |
| ../../../nplId | IIType | NPL-id (Nationellt Produktregister för Läkemedelsprodukter). | 0..1 |
| ../../../../root | string | 1.2.752.129.2.1.5.1 | 1..1 |
| ../../../../extension | string | Själva NPL-id:t | 1..1 |
| ../../../atcCode | CVType | Läkemedlets ATC-kod. | 0..1 |
| ../../../../code | string | ATC-koden | 1..1 |
| ../../../../codeSystem | string | 1.2.752.129.2.2.3.1.1 | 1..1 |
| ../../../../codeSystemName | string | “ATC” | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string | Klartext för ATC-kod | 1..1 |
| ../../../name | string | Motsvarar kommande läkemedelskontrakts "produktnamn". | 0..1 |
| ../../../typeOfDrug | CVType | Typ av läkemedel. Motsvarande enum: DMARD, bioprep, NSAID, cortisone | 0..1 |
| ../../../../code | string | Kod enligt producentsystemets kodverk. Om code anges skall också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Anger kodverket som definierar koden. Dvs UID/OID för det kodverk som används. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Kodverkets namn i klartext. Skall anges när så är möjligt | 0..1 |
| ../../../../codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| ../../../../displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. Om separat displayName inte finns i producerande system skall det ange samma värde som för code. | 0..1 |
| ../../../../originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan inget av de övriga elementen anges. | 0..1 |
| ../../../dose | PQType | Dos. | 0..1 |
| ../../../../value | Double | Mätetal. | 1..1 |
| ../../../../unit | string | “mg” | 1..1 |
| ../../../datePeriod | DatePeriodType | Motsvarande insättnings- och utsättningsdatum. | 0..1 |
| ../../../../start | DateType | Startdatum. Format ÅÅÅÅMMDD. | 0..1 |
| ../../../../end | DateType | Slutdatum. Format ÅÅÅÅMMDD. | 0..1 |
| ../../../endCause | string | Motsvarar kommande läkemedelskontrakts "utsättningsorsak". | 0..1 |
| ../../../interval | string | Intervall/frekvens för dos. | 0..1 |

#### Övriga regler
Inga fältregler utöver de som är beskrivna ovan.

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.
