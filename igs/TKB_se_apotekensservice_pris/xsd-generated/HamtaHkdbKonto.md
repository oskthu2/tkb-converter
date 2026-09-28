| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |
| **Svar** | | | |
| ansluten | boolean | Personens högkostnadsstatus. False - Ej ansluten True - Ansluten | 1..1 |
| foregPeriod | PeriodResponse | Föregående högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| formansNiva | int | Kundens aktuella förmånsnivå i procent. | 0..1 |
| huvudPersNr | string | Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas. | 0..1 |
| innevPeriod | PeriodResponse | Innevarande högkostnadsperiod. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| kommandePeriod | PeriodResponse | Kommande högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen kommande period existerar. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| kvarTillFrikort | BalansResponse | Nettobelopp i kronor och ören som återstår innan kunden får frikort. Saknar värde om personen ej är ansluten. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |
