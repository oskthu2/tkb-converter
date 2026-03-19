# 4 Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

## 4.1 Uppdatering av engagemangsindex

Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivning nedan.

All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet `urn:riv:itintegration:engagementindex:UpdateResponder:1` ("index-push").

Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning (se referens [R5]).

Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

Regler för tilldelning av värde i fältet Categorization i engagemangsposten för tjänstekontrakt i denna domän.

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
|------------------------------------------|-------------------------|
| GetCareContacts | vko |
| GetCarePlans | cll-cp |

### Engagemangsindex-attribut

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värdemängd | Beslutsregler och kommentar |
|----------|-------------|--------|-------------|---------------------|------------------------------|
| Registered ResidentIdent Identification | Invånarens personnummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 | | Del av instansens unikhet |
| Service domain | Den tjänstedomän som förekomsten avser. | URN på formen `<regelverk>:<huvuddomän>:<underdomän1>:<underdomän2>` | 1..1 | "riv:clinicalprocess:logistics:logistics" | Del av instansens unikhet |
| Categorization | Kategorisering enligt kodverk som är specifikt för tjänstedomänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient. Anges med kortform enligt tabell ovan. | Del av instansens unikhet |
| Logical address | Referens till informationskällan enligt tjänstedomänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier | Unik identifierare för händelsebärande objekt | Text | 1..1 | "NA" – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | "NA" (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. | |

## 4.2 Informationssäkerhet och juridik

### 4.2.1 Medarbetarens direktåtkomst

Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs.

HSLF-FS 2016:40 ställer också krav (via handboken "Journalföring och behandling av personuppgifter i hälso- och sjukvården") på att medarbetaren har ett aktuellt patientrelation.

Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering m.m. kommer från annan lagstiftning.

### 4.2.2 Patientens direktåtkomst

Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patienten (`approvedForPatient`). Värdet `false` innebär att informationen inte ska presenteras för patienten.

### 4.2.3 Generellt

Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt bindande krav i tjänstedomänen att använda spärrsystem, men spärrsystem kan vara ett av flera tekniska verktyg för att uppfylla kraven.

## 4.3 Icke funktionella krav

Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientens personnummer är ett av nyckelattributen.

### 4.3.1 SLA-krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
|----------|-------|-------------|
| Svarstid | Svarstiden för ett anrop får inte överstiga 27 sekunder. | |
| Tillgänglighet | 24x7, 99,5% | |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. | |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. | |
| Robusthet | Om tidsintervall inte angivits i frågan kan tjänsteproducenten välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. | |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. | |

### 4.3.2 Övriga krav

#### Gemensamma konsumentregler

* **R1:** Filtrera enligt flagga "approvedForPatient"
* **R2:** Tillämpa regelverk enl. PDL

#### Gemensamma producentregler

* **R3:** Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandet.

## 4.4 Felhantering

### 4.4.1 Krav på en tjänsteproducent

#### Logiska fel

Vid ett logiskt fel ska result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell. Om result.message innehåller ett meddelande ska detta vara på svenska.

| Felkod | Värde | Beskrivning |
|--------|-------|-------------|
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. En omsändning av information kommer att ge samma fel. |

#### Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel.

### 4.4.2 Krav på en tjänstekonsument

#### Logiska fel

Inga krav på konsument.

#### Tekniska fel

Inga krav på konsument.
