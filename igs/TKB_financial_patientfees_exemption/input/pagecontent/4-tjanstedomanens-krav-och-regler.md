# 4 Tjänstedomänens krav och regler

Källa: *Högkostnadsskydd*, tjänstekontraktbeskrivning version 1.0 (2024-03-25), [TKB_financial_patientfees_exemption.docx](TKB_financial_patientfees_exemption.docx).

### 4.1 Generellt

N/A

### 4.2 Uppdatering av engagemangsindex

Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.

Engagemangsidexpost skapas per patient, källsystem och sjukvårdshuvudman.

När förnyad högkostandsskyddsrelaterad information skapas i källsystemet ska källsystemet uppdatera befintlig engagemangsindexpost och uppdatera attributet mostRecentContent med aktuellt datum.

All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet

urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).

Ladda hem Engagemangsindex WSDL (se R6), scheman och tjänstekontraktsbeskrivning för detaljer.

Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd / /ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | PNR eller SNR enligt skatteverkets definition (12 tecken). | 1..1 | Validering med xml-regexp uttryckt enligt: / [0-9]{8}[0-9A-Zptf]{4} | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen `<regelverk>`:`<huvuddomän>`:`<underdomän1>`:`<underdomän2>` | 1..1 | riv: financial:patientfees:exemption | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i verksamhetsbaseradsystem för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Länskod eller källsystems-HSAId | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | UUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. Post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då indexposten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Källsystemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Verksamhetsadressering samt adressering av agent tillämpas | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Sjukvårdshuvudmannens länskod. | 1..1 | Länskod för sjukvårdshuvudman | Del av instansens unikhet |

#### 4.2.1 Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän.

Kortnamnet skapas enligt konventionen första bokstaven i domännamnets komponenter ”-” första bokstaven i tjänstekontraktets namnkomponenter:

| Informationsmängd | Värde på Categorization |
| :--- | :--- |
| FeeExemptionType | fpe-es |

### 4.3 Informationssäkerhet och juridik

Se informationsspecifikationen för domänen [R5].

### 4.4 Icke funktionella krav

N/A

#### 4.4.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 98% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet uppdatering per dygn. |  |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |  |

#### 4.4.2 Övriga krav

##### 4.4.2.1 Gemensamma konsumentregler

R1: Tillämpa regelverk enl:

PDL - då konsumentsystem agerar från invånares direktåtkomst

OSL – då konsumentsystem agerar vårdgivare

R2: Aggregerande begäran förutsätter användning av individens senast gällande huvudidentitet, användning av andra identiteter för individ är enbart tillåten i vid anrop till ett källsystem.

##### 4.4.2.2 Gemensamma producentregler

R1: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

R2: Tjänsteproducenten skall i svaret leverera all information på en begäran riktad mot en giltig personidentifierare, dvs även information som tidigare har registrerats på andra till individen kopplade identiteter (LRID, NRID, tidigare SNR, eller tidigare PNR)

### 4.5 Felhantering

#### 4.5.1 Krav på en tjänsteproducent

#### 4.5.2 Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

##### 4.5.2.1 Logiska fel

Inga krav på producent.

#### 4.5.3 Krav på en tjänstekonsument

##### 4.5.3.1 Tekniska fel

Inga krav på konsument.

##### 4.5.3.2 Logiska fel

Inga krav på konsument.
