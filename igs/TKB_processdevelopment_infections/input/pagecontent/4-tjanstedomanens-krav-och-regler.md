## Tjänstedomänens krav och regler

### Generella regler

#### Format för Datum
Datum anges alltid på formatet "ÅÅÅÅMMDD", vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDD". Precisionen på datumet kan minskas från höger i vissa fall. I dokumentet "RIV-specifikation Infektionsverktyget.pdf" finns angivet vilket format som gäller för respektive variabel.

#### Format för tidpunkter
Tidpunkter anges alltid på formatet "ÅÅÅÅMMDDTttmmss", vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDDThhmmss". Precisionen på tidpunkten kan minskas från höger. Detta innebär t.ex. att även formatet ÅÅÅÅMMDDTtt motsvarar en giltig tidpunkt.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för person-id
Unik identifierare för patienten som kan bestå av personnummer, samordningsnummer eller lokalt reservnummer.

Lokalt reservnummer görs unikt genom att ange HSA-id för den enhet inom vilken reservnumret är unikt tillsammans med det lokala reservnumret.

Personnummer anges på formatet ÅÅÅÅMMDDXXXX.

För lokala reservnummer används OID:n för icke-nationell identifierare Org+lokalt unikt id.

#### Format för koder och kodverk
I de fall "kod" anges i fältregeltabellerna nedan så finns formatet närmare beskrivet i dokumentet RIV-specifikation Infektionsverktyget.pdf.

#### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).

Vid ett logiskt fel i anrop levereras felinformation i svarsmeddelandet (se beskrivningen för respektive tjänstekontrakt).

#### Radering
Det är endast möjligt att radera information inom sin egen vårdgivare. Vårdgivare som anges i elementet logical_address verifieras av den nationella tjänsteplattformen. Infektionsverktyget använder denna säkrade information för att kontrollera mot den organisatoriska enhet som meddelandet refererar till.

#### Lokala identiteter
Lokala identiteter på uppgifter i patientjournaler görs unika innan de överförs till Infektionsverktyget genom att använda HSA-id för den organisation eller det system inom vilket identiteten är unik. Identiteten som överförs till Infektionsverktyget blir då HSA-id + Lokalt id. Detta format används tillsammans med OID:n för Icke-nationell identifierare Org+lokalt unikt id som återfinns i dokumentet RIV-specifikation Infektionsverktyget.pdf. Observera att det i meddelandestrukturen finns två olika sätt att ange unik identifierare tillsammans med OID. Mallmeddelanden tillsammans med variabelbeskrivningar anger när respektive variant ska användas. Max antal tecken för HSA-id + Lokalt id är 100.

#### Mallar för transaktionsfiler
Infektionsverktygets tjänstekontrakt ser lite annorlunda ut än tjänstekontrakten på Ineras övriga tjänster. När Infektionsverktygets tjänstekontrakt togs fram så fanns ambitionen att följa openEHR för samtliga tjänster, detta ändrades dock och nu är det endast infektionsverktyget som följer openEHR. Orsaken till detta är att när alla parametrar (även de som är frivilliga) som specificeras enl openEHR TDS (Template Data Schema) med Nationella Arketyper inkluderas i transaktionsfilerna så blir dessa över 5000 rader.

För att underlätta för anslutande system så har mallar av transaktionsfilerna för respektive tjänstekontrakt tagits fram. I dessa mallar är all nödvändig statisk data inkluderad. De variabla parametrarna är beskrivna i kapitlen nedan och känns igen i mallarna genom prefixet "$$". Om mallarna används för att skapa en transaktion så byts sonika texten inklusive prefixet "$$" ut mot det värde som ska skickas in till Infektionsverktyget.

### SLA-krav/support
Kraven är gemensamma för samtliga operationer.

#### Tillgänglighet/support
Dessa tjänster driftas med kontorstidssupport. System som utnyttjar dem skall inte vara beroende av tillgänglighet hos tjänsterna under vård av enskild patient. Dessa system måste därför kunna hantera omsändningar av information vid ett senare tillfälle. Tjänsterna är normalt tillgängliga 24h/dygn. Information som skall vara tillgänglig för analysdagen efter skall vara överförd innan innevarande dygn är slut. Om information levereras senare kommer den inte vara tillgänglig förrän efter ytterligare ett dygn (detta leder dock inte till några andra problem).

#### Svarstider
Ett enskilt anrop ska utföras på <0.5 sekunder exklusive nätverksfördröjningar till den nationella tjänsteplattformen. Ett anslutet system rekommenderas utföra flera parallella anrop vid behov för att öka genomströmningshastigheten.

#### Last
Tjänsterna är dimensionerade för att ta emot 100 000 anrop/dygn. Om den faktiska lasten skulle överskrida detta finns möjlighet att skala ut lösningen med flera front-end servrar.
