# 4 Tjänstedomänens krav och regler - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

Källa: **Tjänstekontraktsbeskrivning för coreprocess: residentparticipation: residentparticipation**, version 1.0 RC2 (tagg 1.0_RC2, 2026-06-29), [TKB_coreprocess_residentparticipation_residentparticipation.docx](TKB_coreprocess_residentparticipation_residentparticipation.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet. Denna version av tjänstedomänen innehåller endast ett (1) tjänstekontrakt.

### 4.1 Uppdatering av engagemangsindex

Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.

All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).

Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning, för detaljer se referens [R2].

Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens personnummer | Person eller samordningsnummer enligt skatteverkets definition (12 tecken). / Lokal reservidentitet får ej anges | 1..1 | Validering med xml-regexp uttryckt enligt: / [0-9]{8}[0-9A-Zptf]{4} | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen`<regelverk>`:`<huvuddomän>`:`<underdomän>`. | 1..1 | Värdet ska vara / ”riv:coreprocess:residentparticipation:residentparticipation” | Del av instansens unikhet |
| Categori-zation* | Kategorisering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän/tjänstekontrakt. | 1..1 | Logisk adress som källsystemet förväntas kunna adresseras genom. Observera att logisk adress inte nödvändigtvis alltid har samma värde som källsystemets HsaId (fältet sourceSystem nedan). Se T-Bokens styrande principer, ref [R9] för mer information. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – dvs. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttagning. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagningshändelsen. |   |
| Creation / Time | Tidpunkten då index-posten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Uppdatering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Käll-systemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id. Detta är inte anslutningspunktens HSA-id (logisk adress ) utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Motsvarar källsystemets HSAId. Det HsaId som källsystemets server-certifikat innehåller. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Ett värde som i källsystemet med id SourceSystem unikt identifierar PU-ansvarig organisation. | 1..1 | ”SE”`<organisationsnummer>`, (t ex: ”SE5565594230”), HSA-id, eller systemspecifik identitet. | Del av instansens unikhet |

> Attributen som är märkta som ”Del av instansens unikhet” i kolumnen ”Beslutsregler och kommentar” ovan utgör tillsammans en EI-posts primärnyckel. Detta medför att om ett källsystem håller information från flera olika personuppgiftsansvariga organisationer (oftast vård- eller omsorgsgivare) ska källsystemet uppdatera EI med en unik EI-post per personuppgiftsansvarig organisation (motsvarande fältet dataController).

Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten i denna domän:

| | |
| :--- | :--- |
| GetCareManagers | crr-gcm |

### 4.2 Informationssäkerhet och juridik

#### 4.2.1 Medarbetarens direktåtkomst

Vid sammanhållen vård- och omsorgsdokumentation ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till detta för att lagen om Sammanhållen vård- och omsorgsdokumentation efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke och åtkomstloggning måste följas. Dessutom finns krav från Integritetsskyddsmyndigheten om ytterligare teknisk åtkomstkontroll.

HSLF-FS 2016:40 ställer också krav (via ”Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården”, se referens R4) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet).

Det kompletta regelverket finns i handboken samt i anvisningar för tillgänglig patient.

Observera att tjänstekontraktet i sig inte påtvingar sammanhållen vård- och omsorgsdokumentation. Krav rörande Sammanhållen vård- och omsorgsdokumentation och/eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vård- eller omsorgsgivare (Sammanhållen vård- och omsorgsdokumentation) eller andra vård- och omsorgsenheter inom egna vård- eller omsorgsgivaren (spärrkrav).

#### 4.2.2 Generellt

Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (dvs. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### 4.3 Icke funktionella krav

Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, se referens R10.

#### 4.3.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 3 sekund för 95% av alla anrop |   |
| Tillgänglighet | 24x7, 99,5% |   |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdateringar per dygn. |   |
| Aktualitet | Ingen information får vara äldre än 24 timmar |   |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### 4.3.2 Övriga krav

### 4.4 Felhantering

#### 4.4.1 Krav på en tjänsteproducent

##### 4.4.1.1 Logiska fel

N/A

##### 4.4.1.2 Tekniskt fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett logg-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett logg-id bör vara en UUID.

#### 4.4.2 Krav på en tjänstekonsument

R1: Tillämpa regelverk enl. SVOD.

