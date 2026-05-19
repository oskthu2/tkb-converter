## Tjänstedomänens krav och regler
Här beskrivs tjänstedomänens icke-funktionella krav och regler.

### Informationssäkerhet och juridik
Se kapitlet om informationssäkerhet i informationsspecifikationen [R2].

#### Krav på en tjänsteproducent

##### Informationssäkerhet
Tjänstekontrakten i domänen hanterar känslig information och klassas som patientuppgifter. Detta betyder att de krav som PDL (Patientdatalagen) ställer på hur informationen hanteras skall beaktas. En tjänsteproducent ger åtkomst till sina tjänster genom avtal som Tjänsteplattformen hanterar och verkställer för en tjänstekonsument.

#### Krav på en tjänstekonsument
Se kapitlet Informationssäkerhet i informationsspecifikationen [R2].

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Informationen ska alltid vara uppdaterad |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

### Felhantering
När ett uppdaterande tjänstekontrakt anropas så returneras fältet result, som är av typen ResultType (se 7.1.10). Resultfältets attribut resultCode anger om anropet lyckades eller ej. Beskrivande text om resultat av anropet kan finnas i resultText.

#### Krav på en tjänsteproducent
Då fel uppstår för icke uppdaterande tjänstekontrakt så ska Soap Fault returneras.

##### Logiska fel
Då logiskt fel uppstår för anrop till ett uppdaterande tjänstekontrakt så ska resultfältet lämna ut relevanta värden till tjänstekonsumenten. För beskrivning av relevanta värden, se kapitlet om fälttypen ResultType (7.1.10).

##### Tekniska fel
Då tjänsteproducenten returnerar tekniskt fel (errorId = TECHNICAL_ERROR) är det sannolikt att tjänstekonsumenten kommer att göra en omsändning av tjänstekontraktsanropet.

#### Krav på en tjänstekonsument
Tjänstekonsumenter ska kontrollera om anropet lyckades eller ej. Beroende på om det anropade kontraktet är uppdaterande eller så ska resultfältet eller Soap Fault kontrolleras.

##### Logiska fel
Då tjänster används enligt mönstret fråga-svar från RIVTA 2.1 [R2] synkront är det tjänstekonsumenten som ansvarar för att tolka fel i samband med kommunikationen.
Logiska fel behöver hanteras av en tjänstekonsument genom information till användaren, loggning och efterföljande uppföljning. Vid fel av typen INFO kan eventuell text i resultattributet resultText visas för användaren.

##### Tekniska fel
Tjänstekonsument som råkar ut för tekniskt fel vid anrop av tjänstekontrakt behöver ha en strategi för att avgöra ifall omsändning av anropet ska ske eller ej. Ifall omsändning ska ske så behöver strategin reglera tidsintervall mellan anrop och antal omsändningar som ska ske.

