| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| masterDataEntity | CVType |  | 1..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| category | CategoryEnum |  | 0..1 |
| timePeriod | TimePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss | 0..1 |
| ../start | TimeStampType |  | 0..1 |
| ../end | TimeStampType |  | 0..1 |
| **Svar** | | | |
| masterDataChangeSet | MasterDataChangeSetType |  | 0..* |
| ../id | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 1..1 |
| ../category | CategoryEnum |  | 1..1 |
| ../changeTime | TimeStampType |  | 0..1 |
| ../attributes | MasterDataAttributeType |  | 0..* |
| ../../masterDataAttribute | string |  | 1..1 |
