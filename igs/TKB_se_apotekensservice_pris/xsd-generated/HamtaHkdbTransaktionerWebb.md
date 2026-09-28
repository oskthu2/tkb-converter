| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |
| **Svar** | | | |
| periodSlut | dateTime | Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår. | 1..1 |
| transaktionsLista | TransaktionResponse | Lista med de senaste transaktionerna för personens högkostnadskonto. Defaultvärde för antalet returnerade transaktioner är fem, men detta är valbart. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan. | 0..* |
| ../anvandare | string | Användare som registrerat transaktionen. | 1..1 |
| ../apoteksNamn | string | Apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../apoteksOrt | string | Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../expeditionsId | string | Unikt expeditionsID. | 1..1 |
| ../flags | string | Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt. | 1..1 |
| ../inBrutto | long | Ingående brutto före transaktionen | 1..1 |
| ../inEgenavgift | long | Ingående högkostnadssaldo vid transaktionen | 1..1 |
| ../kommentar | string | Eventuell kommentar från korrigeringstransaktion | 0..1 |
| ../orgAktorId | string | GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../persNr | string | Personnummer för den som transaktionen gäller. | 1..1 |
| ../sign | string | Typ av trans: +,-,ABC, ... Detta fält används enbart internt. | 1..1 |
| ../transId | string | Aktörens expeditions-ID / verifikationsnr. | 1..1 |
| ../transPeriod | PeriodResponse | Transaktionens högkostnadsuppgifter. | 1..1 |
| ../../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../../start | dateTime | Periodens startdatum. | 0..1 |
| ../transTid | dateTime | Transaktionstidpunkt. | 1..1 |
| ../transaktionBehandlades | dateTime | Tidpunkt då transaktionen behandlades av HKDB | 1..1 |
