| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| huvudPersNr | string | Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot. | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den vars konto ska uppdateras. | 1..1 |
| **Svar** | | | |
| status | int | Status för koppling av barnkonto Möjliga värden är: 1 - Anslutning OK. 2 - Omkoppling OK. 3 - Frikoppling OK. | 1..1 |
