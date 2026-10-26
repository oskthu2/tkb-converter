# 4 Tjänstedomänens krav och regler - clinicalprocess: activityprescription: actoutcome 1.0 v1.0.2

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

## Tjänstedomänens krav och regler

**I källdokumentet (TKB 1.0, utgåva 1.0.2) är detta kapitel 5 ”Generella regler”. IG:n följer projektets gemensamma kapitelindelning, men texten nedan är TKB:ns egen.**

### Uppdatering av engagemangsindex

Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.

All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet

urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”)

eller genom att erbjuda tjänstekontraktet

urn:riv:itintegration:engagementindex:GetUpdatesResponder:1 (”index-pull”)

Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.

Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |   | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen`<regelverk>`:`<huvuddomän>`:`<underdomän1>`:`<underdomän2>` | 1..1 | ”riv:clinicalprocess:activityprescription:actoutcome” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Tjänstekontrakt genom vilket den information som indexposten avser kan hämtas. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |   |
| Creation / Time | Tidpunkten då index-posten regi-strerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Käll-systemet som genererade engage-mangs-posten via Update-tjänsten | Systemets HSA-id. För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”`<organisationsnummer>`. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |

Regler för tilldelning av värde i fältet Categorization i engagemangsposten för tjänstekontrakt i denna domän.

Kortnamnet skapas enligt konventionen första bokstaven i domännamnets komponenter ”-” första bokstaven i tjänstekontraktets namnkomponenter:

| | |
| :--- | :--- |
| GetVaccinationHistory | caa-gvh |

### SLA-krav

Följande SLA-krav gäller för producenter av tjänstekontrakten i denna domän

| | |
| :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 30 sekunder. |
| Tillgänglighet | 24x7, 99,5% |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |
| Robusthet | Om komplett tidsintervall inte angivits i frågan kan tjänsteproducenten kan välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |

### Gemensamma konsumentregler

R1: Filtrera enligt flagga ”approvedForPatient”

R2: Tillämpa regelverk enl. PDL (se bl.a Informationssäkerhet)

### Gemensamma producentregler

R3: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet få endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

### Format för Datum

Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

### Format för tidpunkter

Flera av tjänsterna handlar om att utbyta information om tidpunkter.

Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

### Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten.

Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om.

Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering

#### Allmänt om tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).

Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel.

Tekniska fel får inte förmedla känsliga personuppgifter.

Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

