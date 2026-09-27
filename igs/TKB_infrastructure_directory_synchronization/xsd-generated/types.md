### CVType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### IIType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 1..1 |

### MasterDataAttributeType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| masterDataAttribute | string |  | 1..1 |

### MasterDataChangeSetType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..1 |
| category | CategoryEnum |  | 1..1 |
| changeTime | TimeStampType |  | 0..1 |
| attributes | MasterDataAttributeType |  | 0..* |

### TimePeriodType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeStampType |  | 0..1 |
| end | TimeStampType |  | 0..1 |
