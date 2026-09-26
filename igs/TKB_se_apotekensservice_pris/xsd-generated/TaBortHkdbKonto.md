| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den som ska tas bort. | 1..1 |
| **Svar** | | | |
| innevPeriod | PeriodResponse | Innevarande högkostnadsperiod. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| kommandePeriod | PeriodResponse | Kommande högkostnadsperiod. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| resultat | boolean | Resultat av kontouppdatering i HKDB. True - Konto borttaget. | 1..1 |
| samlingBort | boolean | Anger om samlingskonto tagits bort i samband med anropet. True - Samlingskonto borttaget. | 1..1 |
