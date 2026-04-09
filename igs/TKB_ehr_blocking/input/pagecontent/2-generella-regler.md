## Generella regler

### Säkerhet

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att att konsument och producent ömsesidigt kan verifera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### Behörighetsstyrning
Tjänsterna skall också utföra åtkomstkontroll för att kunna regelstyra vilken/vilka vårdgivares spärrar anropande system får operera på. Eftersom en viss tjänsteinstans normalt hanterar flera vårdgivares spärrnformation, behöver det finnas en logisk uppdelning som håller i sär vad respektive organisation kommer åt.
Se respektive tjänst för specifika detaljer kring denna åtkomstkontroll.

#### Stark autentisering av slutanvändare
Vid spärrhantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för spärradministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Hantering av otillgänglighet
Tjänstekontrakten stödjer en arkitektur där där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Ett vårdsystem som endast har behov av spärrar tillhörande lokala/regionala vårdgivare, kan anropa tjänsten på  lokal nivå med angivande av ett begränsat organisationsomfång. Otillgänglighet på nationell spärrtjänst får inte påverka ett sådant svar från tjänsten.
För frågor som ställs med det nationella omfånget finns ett naturligt beroende till tillgång till det samlade underlaget i nationell spärrtjänst.
För att hantera åtkomst till vårdinformation i ett system är det främst tillgång till spärrunderlaget som är kritiskt. Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste spärrunderlaget respektive senaste spärrkontrollsbeslutet. Verksamhetens krav på aktualitet på spärrunderlaget måste här avgöra hur länge spärrinformationen kan mellanlagras.
Tjänsteproducenten, t ex på lokal nivå, kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implemention av tjänsten vilken förväntad aktualitet som gäller.
Lokal spärrtjänst skall ej påverkas av ett scenario där den nationella spärrtjänsten blir otillgänglig. De spärrar som finns tillgängliga i den lokala spärrtjänsten skall alltid returneras till anroparen.

### Felhantering
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och ”INFO” betyder att åtgärden inte genomfördes. Se ResultType nedan för detaljerad specifikation.
Ett förlåtande tillvägagångssätt när det gäller hantering av fel rekommenderas. T.ex om ett vårdsystem försöker registrera en spärr dubbelt bör resultatet i båda fallen bli ”OK” för att minska ner möjliga felsituationer.

### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av spärrtjänsten och även behörighetsstyra anropet. Logisk adressat skall anges även om spärrtjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares HSA-id skall anges som logisk adressat. För de generella/nationella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras nationella HSA-id SE165565594230-1000. De generella tjänsterna representerar en nationell nivå och hanterar alla nationellt kända informationsposter. Se tabellen nedan hur adressat skall anges.

| Operation | Logisk adressat |
| :--- | :--- |
| GetAllBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| GetAllBlocksForPatient | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| CheckBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| GetBlocks | HSA-id för aktörens vårdgivare |
| GetBlocksForPatient | HSA-id för aktörens vårdgivare |
| GetPatientIds | HSA-id för aktörens vårdgivare |
| GetExtendedBlocksForPatient | HSA-id för aktörens vårdgivare |
| RegisterBlock | SE165565594230-1000 |
| UnregisterBlock | SE165565594230-1000 |
| RegisterTemporaryRevoke | SE165565594230-1000 |
| UnregisterTemporaryRevoke | SE165565594230-1000 |
| RegisterExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |
| RevokeExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |
| RegisterTemporaryExtendedRevoke | HSA-id för vårdgivaren som spärren gäller för |
| CancelTemporaryExtendedRevoke | HSA-id för vårdgivaren som spärren gäller för |
| DeleteExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |

#### Exempel på logisk adressering för operationen GetAllBlocksForPatient
Nedan visas ett exempel på hur logisk adressering kan användas för operationen GetAllBlocksForPatient. Det lokala systemet B1 kan använda den logiska addressen ”S”, som motsvarar källsystemsaddresseringen av den regionala spärrtjänsten, eller organisationstillhörigheten, dvs den logiska adressen ”B” i exemplet nedan. Bägge addresseringarna gör att anropet routas till den regionala spärrtjänsten. Alternativt, ifall det lokala systmetet B1 vill att anropet ska nå den nationella spärrtjänsten ska den logiska adressen sättas till ”Inera”, dvs hsa-id:et SE165565594230-1000.

![img_002.png](images/img_002.png)