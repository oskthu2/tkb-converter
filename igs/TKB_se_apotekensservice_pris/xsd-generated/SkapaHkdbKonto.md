| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| huvudPersNr | string | Personnummer för eventuell huvudperson. | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| periodBrutto | double | Ackumulerat bruttobelopp i kronor och ören. Från och med version 10.3 ersätter periodBrutto periodNetto. | 0..1 |
| periodStart | dateTime | Eventuellt startdatum för innevarande högkostnadsperiod. | 0..1 |
| persNr | string | Personnummer för den som ska anslutas. | 1..1 |
| **Svar** | | | |
| ansluten | boolean | Personens högkostnadsstatus. False - Konto ej skapat True - Konto skapat | 1..1 |
