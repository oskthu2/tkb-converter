Fasta kontakter

![img_005.png](images/img_005.png)

![img_003.png](images/img_003.png)
Innehållsförteckning
1	Inledning	5
1.1	Svenskt namn	5
2	Versionsinformation	6
2.1	Version 1.0	6
2.1.1	Oförändrade tjänstekontrakt	6
2.1.2	Nya tjänstekontrakt	6
2.1.3	Utgångna tjänstekontrakt	6
2.2	Version tidigare	6
3	Tjänstedomänens arkitektur	6
3.1	Flöden	7
3.1.1	Flöde 1 – Patient väljer att se sina fasta kontakter	7
3.1.2	Flöde 2 – Vårdpersonal väljer att se patients fasta kontakter	9
3.1.3	Obligatoriska kontrakt	12
3.2	Adressering	12
3.3	Aggregering och engagemangsindex	13
3.3.1	Sammanfattning av adresseringsmodell	13
3.4	Annat	13
4	Tjänstedomänens krav och regler	13
4.1	Uppdatering av engagemangsindex	13
4.2	Informationssäkerhet och juridik	16
4.2.1	Medarbetarens direktåtkomst	16
4.2.2	Generellt	16
4.3	Icke funktionella krav	17
4.3.1	SLA krav	17
4.3.2	Övriga krav	17
4.4	Felhantering	17
4.4.1	Krav på en tjänsteproducent	17
4.4.2	Krav på en tjänstekonsument	18
5	Tjänstedomänens meddelandemodeller	18
5.1	V-MIM	18
5.1.1	CareManagerType	19
5.1.2	PractitionerRoleType	19
5.1.3	CareTeamType	20
5.1.4	EpisodeOfCareType	21
5.1.5	OrganizationType	21
5.1.6	ContactType	21
5.1.7	VirtualServiceType	22
5.1.8	Mappning gentemot FHIR	23
5.2	Formatregler	23
5.2.1	HoursOfServiceType	23
6	Tjänstekontrakt	25
6.1	GetCareManagers	25
6.1.1	Version	25
6.1.2	V-MIM	25
6.1.3	Fältregler	26
6.1.4	Övriga regler	28
6.1.5	Annan information om kontraktet	29
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 0.1 | 2025-05-20 | Thomas Fafoutis | Första utkastet |
| 0.2 | 2026-03-04 | Thomas Fafoutis | Korrigeringar ContactType |
| 1.0 RC2 | 2026-06-29 | Thomas Fafoutis | Ändrat PractitionerType.id för att tillåta andra identifierare än HsaId:n |
|  |  |  |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | RIV PDLiP | Obligatoriskt | RIV Specifikation Patientdatalagen i Praktiken, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| R2 | SVOD | Finns på Webben | Lag om sammanhållen vård- och omsorgsdokumentation (2022:913), https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard-och_sfs-2022-913 |
| R3 | HSLF-FS 2016:40 |  | https://www.socialstyrelsen.se/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/ |
| R4 | RIV TA |  | RIV Teknisk Anvisning Basic Profile
http://rivta.se/ |
| R5 | Arkitekturella beslut – | Obligatoriskt | Plats där dokumentet finns |
| R6 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R7 | Kodverk för typ av fast kontakt | Inera kodverksförvaltning | https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20typ%20av%20fast%20kontakt.xlsx?api=v2 |
| R8 | Tjänstedomän för samtyckeshantering | - | https://rivta.se/tkview/#/domain/informationsecurity:authorization:consent |
| R9 | T-Bokens styrande principer | - | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632866/Referensarkitektur+f+r+v+rd+och+omsorg+-+T-boken+REV+D |
| R10 | KV_Befattning | HSA | Befattningskoder enligt HSA-kodverk (OID: 1.2.752.129.2.2.1.4)
https://inera.atlassian.net/wiki/download/attachments/397444985/hsa_innehall_befattning_version_3.8_2025-08-26.pdf |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
coreprocess: residentparticipation: residentparticipation
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Fasta kontakter

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen coreprocess: residentparticipation:  residentparticipation .
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0

#### Oförändrade tjänstekontrakt
Detta är första versionen av tjänstedomänen.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
GetCareManagers, version 1.0

##### Förändrade tjänstekontrakt
Detta är första versionen av tjänstedomänen.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Detta är första versionen av tjänstedomänen.

## Tjänstedomänens arkitektur
Tjänstedomänen tillgängliggör information kopplad till patients fasta kontakter. Utgångspunkten för tjänstekontraktet i denna tjänstedomän är i första hand patientens och professionens behov av direktåtkomst till en patients fasta kontakter, sett ur ett nationellt eller ett regionalt perspektiv. I båda fallen är syftet att sammanställa information från det eller de källsystem där det finns information om fasta kontakter via s.k. aggregerande tjänst, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontraktet erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet.
Följande flödesmodeller beskriver översiktligt hur tjänstekontraktet är tänkt att användas.

### Flöden
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller. För varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet, dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.
Flöden:
Flöde 1 - Patient väljer att se sina fasta kontakter
Flöde 2 – Vårdpersonal väljer att se patients fasta kontakter

#### Flöde 1 – Patient väljer att se sina fasta kontakter
Flödet beskriver patients tillgång till sina fasta kontakter.

![img_007.jpeg](images/img_007.jpeg)

##### Arbetsflöde

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Patient | Den patient som vill få tillgång till sina fasta kontakter. |
Flödessteg

| Flödessteg | Beskrivning |
| :--- | :--- |
| Logga in i 1177 och navigera till tjänst | Patient som har behov av att se sina fasta kontakter (fasta vårdkontakter och/eller fast läkarkontakt) loggar in i patientportal (exempelvis 1177) med mobilt bankId. Patient navigerar till tjänst(er) som visar patients fasta kontakter. |
| Väljer att se sina fasta kontakter | Patient väljer att se sina fasta kontakter. Patientportal anropar en sammanställande tjänst (aggregerande tjänst) som kan hämta uppgifter om fasta kontakter från olika vårdinformationssystem som håller uppgifter om fasta kontakter |
| Ser alla sina fasta kontakter | Patient får en sammanfattande vy med sina fasta kontakter |

##### Sekvensdiagram - GetCareManagers

![img_004.jpeg](images/img_004.jpeg)

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. Tjänstekonsumenten kan vara en e-tjänst för patient eller e-tjänst för vårdpersonal som stödjer sammanhållen vård- och omsorgsdokumentation. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Tjänsteproducent | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Flöde 2 – Vårdpersonal väljer att se patients fasta kontakter
Flödet beskriver vård- eller omsorgspersonals tillgång till patients fasta kontakter..

![img_002.jpeg](images/img_002.jpeg)

##### Arbetsflöde
Roller

| Flödessteg | Beskrivning |
| :--- | :--- |
| Vårdpersonal | Den vård- eller omsorgsperson som vill få tillgång till patientens fasta kontakter. |

###### Flödessteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Logga in i patientöversikt och navigera till tjänst | Vård- och omsorgsperson loggar in i patientöversikt via sitt tjänstekort. |
| Väljer att se patients fasta kontakter. | Vård- och omsorgsperson söker efter patient som vård- och omsorgspersonal har en vård- eller omsorgsrelation till. |
| Samtycker patient att vårdpersonal tar del av fasta kontakter kopplade till annan vårdgivare | Tjänst för patientöversikt kontrollerar om patient tidigare givit samtycke för att vård- eller omsorgspersonal i sitt aktuella uppdrag ska få ta del av fasta kontakter kopplade till annan vårdgivare (enligt lagen om sammanhållen vård- och omsorgsdokumentation).
Om inget samtycke finns sedan tidigare frågar tjänst för patientöversikt vård- eller omsorgspersonalen om att efterfråga samtycke från patient (eventuell nödöppning eller beslut om mognadsbedömning kan också ge vård- eller omsorgspersonal möjlighet att ta del av patients fasta kontakter). |
| Ser patients alla fasta kontakter | Vård- eller omsorgspersonal tar del detaljer om patients fasta kontakter. |

##### Sekvensdiagram - GetCareManagers

![img_008.jpeg](images/img_008.jpeg)

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. Tjänstekonsumenten kan vara en e-tjänst för patient eller e-tjänst för vårdpersonal som stödjer sammanhållen vård- och omsorgsdokumentation. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Samtyckestjänst | Tjänst som håller patienters givna samtycken till vårdgivare/vårdenhet. Se tjänstedomän för samtyckeshantering informationsecurity:authorization:consent för vidare information om dess tjänstekontrakt, ref [R8]. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Tjänsteproducent | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Obligatoriska kontrakt
Domänen innehåller endast ett (1) tjänstekontrakt. Tjänstekontraktet är obligatoriskt i de två flödena specificerade ovan.

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster.
Tjänstekonsumenten adresserar den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional- eller huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett specifikt källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id (den logiska adressen). Det kan exempelvis ske genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) rörande en patients information i ett specifikt källsystem.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3 (referens [R2]), där mer information kan hittas.

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för tjänstekontraktet som läser data i denna domän (GetCareManagers).
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystems HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet av tjänsteplattformen utan att passera en aggregerande tjänst.
Om logisk adress är HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens fasta kontakter | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Logisk adress som källsystemet förväntas kunna adresseras genom, enligt tjänsteadresseringskatalogen i anropad tjänsteplattform. 
Observera att värdet för logisk adress inte nödvändigtvis alltid har samma värde som källsystemets HsaId (så som uttryckt i källsystemets servercertifikat).
Se T-bokens styrande principer – IT4 - Lös koppling (loose coupling) & interoperabilitet, ref [R9]. |

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet. Denna version av tjänstedomänen innehåller endast ett (1) tjänstekontrakt.

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).
Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning, för detaljer se referens [R2].
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ev. begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens personnummer | Person eller samordningsnummer enligt skatteverkets definition (12 tecken). / Lokal reservidentitet får ej anges | 1..1 | Validering med xml-regexp uttryckt enligt: / [0-9]{8}[0-9A-Zptf]{4} | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän>. | 1..1 | Värdet ska vara 
”riv:coreprocess:residentparticipation:residentparticipation” | Del av instansens unikhet |
| Categori-zation* | Kategorisering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän/tjänstekontrakt. | 1..1 | Logisk adress som källsystemet förväntas kunna adresseras genom. Observera att logisk adress inte nödvändigtvis alltid har samma värde som källsystemets HsaId (fältet sourceSystem nedan). Se T-Bokens styrande principer, ref [R9] för mer information. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – dvs. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttagning. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagningshändelsen. |  |
| Creation / Time | Tidpunkten då index-posten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Uppdatering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Käll-systemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id. Detta är inte anslutningspunktens HSA-id (logisk adress ) utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Motsvarar källsystemets HSAId. Det HsaId som källsystemets server-certifikat innehåller. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Ett värde som i källsystemet med id SourceSystem unikt identifierar PU-ansvarig organisation. | 1..1 | ”SE”<organisationsnummer>, (t ex: ”SE5565594230”), HSA-id, eller systemspecifik identitet. | Del av instansens unikhet |

| Attributen som är märkta som ”Del av instansens unikhet” i kolumnen ”Beslutsregler och kommentar” ovan utgör tillsammans en EI-posts primärnyckel. Detta medför att om ett källsystem håller information från flera olika personuppgiftsansvariga organisationer (oftast vård- eller omsorgsgivare) ska källsystemet uppdatera EI med en unik EI-post per personuppgiftsansvarig organisation (motsvarande fältet dataController). |
| :--- |
Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten i denna domän:

| Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetCareManagers | crr-gcm |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen vård- och omsorgsdokumentation ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till detta för att lagen om Sammanhållen vård- och omsorgsdokumentation efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke och åtkomstloggning måste följas. Dessutom finns krav från Integritetsskyddsmyndigheten om ytterligare teknisk åtkomstkontroll.
HSLF-FS 2016:40 ställer också krav (via ”Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården”, se referens R4) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet).
Det kompletta regelverket finns i handboken samt i anvisningar för tillgänglig patient.
Observera att tjänstekontraktet i sig inte påtvingar sammanhållen vård- och omsorgsdokumentation. Krav rörande Sammanhållen vård- och omsorgsdokumentation och/eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vård- eller omsorgsgivare (Sammanhållen vård- och omsorgsdokumentation) eller andra vård- och omsorgsenheter inom egna vård- eller omsorgsgivaren (spärrkrav).

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (dvs. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, se referens R10.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 3 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdateringar per dygn. |  |
| Aktualitet | Ingen information får vara äldre än 24 timmar |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
N/A

##### Tekniskt fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett logg-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett logg-id bör vara en UUID.

#### Krav på en tjänstekonsument
R1: Tillämpa regelverk enl. SVOD.

## Tjänstedomänens meddelandemodeller
Här visas de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen samt en detaljerad beskrivning av modellernas datatyper. Flera av datatyperna återanvänds i olika relationer, i samma meddelandemodell.
Detaljerna för dessa datatyper beskrivs här i detta kapitel, var för sig, för att sedan refereras till under tjänstekontraktens attributbeskrivningar längre fram.

### V-MIM

![img_006.jpeg](images/img_006.jpeg)

#### HeaderType
Datatypen HeaderType är en generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| sourceSystemId | IIType | Unik identitet för källsystemet som håller information om den fasta kontakten. Den unika identiteten kan exempelvis motsvara HSAId för SITHS funktion-certifikatet som källsystemet använder i sin kommunikation. | 1..1 |
| accessControlHeader | AccessControlHeaderType | Åtkomstgrundande information, se AccessControlHeader | 1..1 |

#### AccessControlHeaderType
Datatypen AccesControlHeaderType är del av en generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD). Headern syftar till att bl a ge underlag för konsumenters följsamhet till eventuellt spärrade journaluppgifter.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accountableHealthcareProviderId | IIType | Unik identitet för vårdgivaren som är personuppgiftsansvarig för informationen om den fasta kontakten. Den unika identiteten ska motsvara ett HSAId som utgör en vårdgivare i den nationella HSA-katalogen. / IIType.extension = <HSAId för organisationen> / IIType.root = ”1.2.752.129.2.1.4.1” | 1..1 |
| accountableCareUnitId | IIType | Unik identitet för vårdenhet inom vårdgivare som är personuppgiftsansvarig och som håller informationen om den fasta kontakten. Den unika identiteten ska motsvara ett HSAId som utgör en vårdenhet i den nationella HSA-katalogen. / IIType.extension = <HSAId för organisationen> / IIType.root = ”1.2.752.129.2.1.4.1” | 1..1 |
| patientId | IIType | Personnummer/samordningsnummer för patient som tilldelats den fasta kontakten. / Om källsystemet håller information om fasta kontakter, baserat på olika identifierare, exempelvis regionalt- eller nationellt reservnummer samt personnummer eller samordningsnummer, där identifierarna är sammanlänkade (utgör samma individ), ska källsystemet förmedla ett sammanställt svar. / IIType.extension = <personnummer, samordningsnummer > / IIType.root:
Personnummer  = ”1.2.752.129.2.1.3.1” / Samordningsnummer = ”1.2.752.129.2.1.3.3” | 1..1 |
| careProcessId | IIType | Referens till hälsoärende. 
Socialstyrelsen definierar ett hälsoärende som ett ärende som håller samman vårddokumentation från en eller flera relaterade individanpassade vårdprocesser. / Attributet mappar gentemot FHIR resurs EpisodeOfCare. | 0..1 |
| blockComparisonTime | TimeStampType | Dokumentationstidpunkt (tidsstämpel) då journalföring skett. Tidsstämpeln utgör underlag för konsuments spärrkontroll. | 1..1 |

#### PractitionerType
Datatypen PractitionerType håller information om den personal/medarbetare som innehar rollen fast kontakt alternativt en medlem i ett team som tillsammans utgör fast kontakt.
Datatypen mappar gentemot FHIR Practitioner.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | HSAId eller personnummer för medarbetaren som innehar rollen fast kontakt. Om HsaId för medarbetaren finns ska detta förmedlas i första hand. / IIType.extension = <HSAId för personal/medarbetare> / IIType.root = ”1.2.752.129.2.1.4.1” / För personnummer ska Skatteverkets identifierare för personnummer ”1.2.752.129.2.1.3.1” användas i IIType.extension. / Det är producentens ansvar att säkerställa huruvida en konsumerande tjänst ska delges information om medarbetare som innehar rollen fast kontakt och som har skyddade personuppgifter. | 1..1 |
| name | string | Medarbetares namn | 0..1 |
| qualification | CVType | Medarbetares befattning enligt HSA-kodverk KV_Befattning. Se referens [R10].

OID: 1.2.752.129.2.2.1.4 | 0..1 |

#### ContactType
Datatypen ContactType håller information om de olika kontaktvägar som finns för att kontakta antingen en vårdande enhet eller en fast kontakt. Information om kontaktvägar kan, enligt tjänstekontraktet GetCareManagers’ meddelandeinformationsmodell, förmedlas kopplat till olika datatyper:
Kontaktväg för att nå en medarbetare i någon av sin(a) roll(er) (typ av fast kontakt)
Kontaktväg för att nå ett team
Kontaktväg för att nå den ansvariga vård- eller omsorgsgivaren (organisationen)
Kontaktväg för att nå den ansvariga vård- eller omsorgsenheten (organisationen)
Kontaktväg för att nå den vårdutförande vård- eller omsorgsenheten (organisationen)
Det är frivilligt att förmedla kontaktväg(ar) kopplat till samtliga ovan nämnda datatyper, dock bör det förmedlas en kontaktväg på minst en nivå i svaret.
Datatypen mappar gentemot FHIR ExtendedContactDetail.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| telecom | ContactPointSystemType | Sätt/kanal för kontakt | 0..* |
| address | AddressType | Postadress | 0..1 |

#### AddressType
Datatypen AddressType (post- eller besöksadress) är en del av datatypen ContactType och innehåller adressinformation som kan vara kopplad till:
Vård- eller omsorgsgivaren
Vård- eller omsorgsenhet
Vårdutförande enhet
Den fasta kontakten
Team som tillsammans utgör den fasta kontakten
Datatypen mappar mot FHIR Address.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| type | CVType | Typ av adress. / Kan inneha något av värdena:
postal\|physical\|both / OID: 2.16.840.1.113883.4.642.3.69 | 0..1 |
| line | string | Adressrad | 0..* |
| city | string | Stad / kommun | 0..1 |
| postalCode | string | Postnummer | 0..1 |
| period | HoursOfService | Anger tidsperiod som adressen är giltig. | 0..1 |

#### ContactPointSystemType
Datatypen ContactPointSystemType håller information om de olika kontaktsätt som finns för att kontakta antingen en vårdande enhet eller en fast kontakt.
Datatypen mappar gentemot FHIR ContactPointSystem.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| system | CVType | Sätt/teknik för hur kontakten kan ske.
Kan vara en av följande:
[phone\|fax\|email\|pager\|url\|sms\|other] / OID: 2.16.840.1.113883.4.642.1.72 | 1..1 |
| value | string | Adressen som gäller enligt kontaktsättet.
Kan exempelvis vara ett telefon-, fax- eller sökare-nummer, alternativt en URL till en e-tjänst. | 0..1 |
| period | HoursOfServiceType | Kalendertid då kontaktsättet är giltigt. Kan exempelvis uttrycka att kontaktsättet endast gäller specifika veckodagar, specifika månader, specifik datumperiod. Se mer detaljer under kapitel 5.2 Formatregler | 0..* |

#### PractitionerRoleType
Datatypen PractitionerRoleType förmedlar medarbetarens roll/roller, så som fast kontakt. En medarbetare kan inneha mer än en roll (typ av fast kontakt).
Datatypen mappar gentemot FHIR PractitionerRole.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CVType | Typ av roll (typ av fast kontakt). Se kodverk enligt referens [R7].
Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras | 1..1 |
| practitioner | PractitionerType | Medarbetaren som tilldelats denna roll, så som fast kontakt | 1..1 |
| period | DatePeriodType | Tidsintervall då medarbetarens roll gäller. | 1..1 |
| internalNotes | string | Intern kommentar kopplat till medarbetaren i denna roll. Kommentaren kan visas internt inom professionen. Ska ej tillgängliggöras till patient eller patients eventuella vårdnadshavare/ombud. | 0..1 |
| externalNotes | string | Kommentar kopplat till medarbetaren i denna roll. Kommentaren kan visas till patienten eller patients eventuella vårdnadshavare/ombud. | 0..1 |
| managingCareGiver | OrganizationType | Vård- eller omsorgsgivare som medarbetaren har sitt uppdrag i, kopplat till denna roll | 1..1 |
| managingCareUnit | OrganizationType | Vård- eller omsorgsenhet som medarbetaren har sitt uppdrag i, kopplat till denna roll | 0..1 |
| careProvidingCareUnit | OrganizationType | Vårdutförande enhet som medarbetaren har sitt uppdrag i, kopplat till denna roll | 0..1 |
| contact | ContactType | Kontaktväg(ar) till medarbetaren, kopplat till medarbetarens roll | 0..* |
| careTeam | CareTeamType | Team av medarbetare som tillsammans utgör fast kontak. / Om exempelvis ett (1) team utgörs av två medarbetare ska två instanser av PractitionerRoleType förmedlas, en för respektive medarbetare. | 0..1 |

#### CareTeamType
Datatypen håller information om det team som utgör den fasta kontakten på den vårdande enheten. Teamet syftar till att tillgodose vårdens möjlighet att organisera sig i team kring en patient.
Datatypen mappar gentemot FHIR datatypen CareTeam.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Unik identifierare för teamet | 1..1 |
| name | string | Teamets namn. | 1..1 |
| internalNotes | string | Intern kommentar kopplat till teamet. Kommentaren kan visas internt inom professionen. Ska ej tillgängliggöras till patient. | 0..1 |
| externalNotes | string | Kommentar kopplat till teamet. Kommentaren kan visas till patienten. | 0..1 |
| contact | ContactType | Kontaktväg(ar) till teamet | 0..* |

#### OrganizationType
Datatypen håller information om den vårdande enheten som den fasta kontakten tillhör och kan vara den fysiska plats som patienten kan besöka. En vårdande enhet kan antingen vara en vård- och omsorgsgivare eller en vård- och omsorgsenhet (enligt SVOD).
Datatypen mappar gentemot FHIR Organization.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaId | IIType | HSAId för organisationen. Organisationen kan antingen vara:
* vård- eller omsorgsgivare
* vård- eller omsorgsenhet
* vårdutförande enhet / IIType.extension = <HSAId för organisationen> / IIType.root = ”1.2.752.129.2.1.4.1” | 1..1 |
| name | string | Organisationens namn. | 0..1 |

#### Mappning gentemot FHIR
Följande datatyper är mappade gentemot FHIR’s resurser eller FHIR’s datatyper.

| Klass.attribut | Mappning mot FHIR |
| :--- | :--- |
| PractitionerType | CareManager |
| CareTeamType | EpisodeOfCare.careTeam |
| PractitionerRoleType | PractitionerRole |
| EpisodeOfCareType | EpisodeOfCare |
| ContactPointSystemType | ContactPointSystem |
| AddressType | Address |
| ContactType | ExtendedContactDetail |

### Formatregler

#### HoursOfServiceType
Datatypen HoursOfServiceType har möjlighet att uttrycka kalenderperioder, så som exempelvis specifika veckodagar, specifika månader, specifika klockslag och/eller datumperiod. Datatypen används exempelvis för att visa på när en tjänst är tillgänglig eller vilka öppettider en verksamhet har. Datatypen består av fyra attribut:
datePeriod  - datumspann
weekDay - veckodag(ar)
month - månad(er)
time – tidsspann
Samtliga 4 attribut är frivilliga att förmedla. Om mer än ett attribut förekommer så ska samtliga förekommande attribut gälla (AND-logik).
Exempel 1:
Verksamheten har öppettider på vardagar mellan 8:00 och 17:00:

| <hoursOfService> / <weekDay>Monday</weekDay> / <weekDay>Tuesday</weekDay> / <weekDay>Wednesday</weekDay> / <weekDay>Thursday</weekDay> / <weekDay>Friday</weekDay> / <time> / <start>080000</start> / <end>170000</end> / </time> / </hoursOfService> |
| :--- |
Exempel 2:
Verksamheten har sommarstängt år under juli 2025:

| <hoursOfService> / <datePeriod> / <end>20250630</end> / </datePeriod> / <datePeriod> / <start>20250801</end> / </datePeriod> / </hoursOfService> |
| :--- |
Exempel 3:
Verksamheten har sommarstängt år under juli 2025, för övrigt öppet på vardagar mellan 8:00 och 17:00:

| <hoursOfService> / <datePeriod> / <end>20250630</end> / </datePeriod> / <datePeriod> / <start>20250801</end> / </datePeriod> / <weekDay>Monday</weekDay> / <weekDay>Tuesday</weekDay> / <weekDay>Wednesday</weekDay> / <weekDay>Thursday</weekDay> / <weekDay>Friday</weekDay> / <time> / <start>080000</start> / <end>170000</end> / </time> / </hoursOfService> |
| :--- |
Exempel 4:
Verksamheten är tillgänglig endast under mars månad och under maj månad under 2025:

| <hoursOfService> / <datePeriod> / <start>20250301</end> / <end>20250331</end> / </datePeriod> / </hoursOfService> / <hoursOfService> / <datePeriod> / <start>20250501</end> / <end>20250531</end> / </datePeriod> / </hoursOfService> |
| :--- |

## Tjänstekontrakt

### GetCareManagers
Tjänstekontraktet hämtar en patients alla fasta kontakter. En konsument kan hämta följande fasta kontakter som patient tilldelats från vård- och omsorgen eller själv valt.
Följande fasta kontakter kan förmedlas:
Fast vårdkontakt
Fast omsorgskontakt
Fast läkarkontakt (i primärvården)
Kontaktsjuksköterska

#### Version
Version 1.0

#### V-MIM
Hämta patients alla fasta kontakter - GetCareManagers

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | IIType | PatientId för patient vars fasta kontakter ska hämtas | 1..1 |
| patientId.root | string | Fältet sätts till OID motsvarande typ av patientidentifierare. 
Följande patientId’n kan förmedlas:

1) För personnummer skall Skatteverkets oid för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer skall Skatteverkets oid för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) För nationellt reservid skall Ineras oid för nationellt reservid (1.2.752.74.9.1) användas.

Observera:
För att en konsument och en producent ska kunna samverka behöver båda tjänstekomponenterna ha möjlighet till uppslag, antingen direkt eller indirekt, i Ineras nationella personuppgiftstjänst. | 1..1 |
| patientId.extension | string | Id för patienten. Anges med 12 tecken utan avskiljare. | 1..1 |
| careGiverId | HSAIdType | Frivilligt fält för filtrering av svar baserat på given vårdgivare. Sätts till HSAId för vårdgivaren. | 0..1 |
| careUnitId | HSAIdType | Frivilligt fält för filtrering av svar baserat på given vårdenhet. Sätts till HSAId för vårdenheten. | 0..1 |
| careManagerType | CVType | Kod för att filtrera svaret, baserat på typ av fast kontakt. Se referens R7 – kodverk för Fasta kontakter. Konsument begär filtrering genom att ange vilken typ av fast kontakt i fältet careManagerType.code samt anger careManagerType.codeSystem = ” 1.2.752.129.5.1.69”. Övriga fält i careManagerType kan utelämnas. | 0..1 |
| careProcessId | IIType | Unik identifierare för filtrering av svaret baserat på specifikt hälsoärende | 0..1 |
| Svar |  |  |  |
| careManager | PractitionerRoleType | Lista med fasta kontakter. | 0..* |
| careManager.* | PractitionerRoleType .* | Se detaljerad beskrivning av datatypen PractitionerRoleType och dess olika fält | - |
| careManager.practitioner | PractitionerType | Medarbetaren som tilldelats denna roll, så som fast kontakt | 1..1 |
| careManager.practitioner.* | PractitionerType.* | Se detaljerad beskrivning av datatypen PractitionerType och dess olika fält | - |
| careManager.careTeam | CareTeamType | Team som medarbetaren är del av, i sin roll som fast kontakt. | 0..* |
| careManager.careTeam.* | CareTeamType.* | Se detaljerad beskrivning av datatypen CareTeamType och dess olika fält | - |
| careManager.careTeam.contact | ContactType | Gemensamt kontaktsätt för att nå teamet | 0..* |
| careManager.careTeam.contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.contact | ContactType | Kontaktsätt för att nå den fasta kontakten (medarbetaren) | 0..* |
| careManager. contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.managingCareGiver | OrganizationType | Vård- eller omsorgsgivare som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt) | 1..1 |
| careManager.managingCareGiver.* | OrganizationType.* | Se detaljerad beskrivning av datatypen OrganizationType och dess olika fält | - |
| careManager. managingCareGiver .contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.practitioner.managingCareUnit | OrganizationType | Vård- eller omsorgsenhet medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt) för medarbetaren | 0..1 |
| careManager.practitioner.managingCareUnit.* | * | Se detaljerad beskrivning av datatypen OrganizationType och dess olika fält | - |
| careManager. managingCareUnit .contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.practitioner.careProvidingCareUnit | OrganizationType | Den vårdutförande vård- eller omsorgsenheten som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt) för medarbetaren | 0..1 |
| careManager.practitioner.careProvidingCareUnit.* | * | Se detaljerad beskrivning av datatypen OrganizationType och dess olika fält | - |
| careManager. careProvidingCareUnit .contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.careManagerHeader | HeaderType | Generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD).
Jämför med tjänstekontrakt som bär journal- och läkemedelsinformation. | 1..1 |
| careManager. careManagerHeader.* | HeaderType.* | Se detaljerad beskrivning av datatypen HeaderType och dess olika fält | - |
| careManagerHeader.accessControlHeader | AccessControlHeaderType | Generell information som syftar till att bl a ge underlag för konsumenters följsamhet till eventuellt spärrade journaluppgifter.
Se detaljerad beskrivning av datatypen AccessControlHeaderType och dess olika fält. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
|  |  |  |
|  |  |  |
| Regler i svaret | Regler i svaret | Regler i svaret |
| rule001 [sch] | coun(//careManager/code/code[text() == ”2”]) <= 1 | Fast läkarkontakt får endast förekomma en (1) gång per patient |
|  |  |  |
| Allmänna regler | Allmänna regler | Allmänna regler |
|  |  |  |

##### Icke funktionella krav
N/A

#### Annan information om kontraktet

##### Patientens direktåtkomst
Tjänstekontraktet GetCareManagers i denna tjänstedomän förmedlar, via attributen internalNotes, interna kommentarer som endast är avsedd för visning inom professionen. En konsumerande tjänst som tillgängliggörs till patienter ska inte tillgängliggöra denna information till patient eller till patients ombud.
