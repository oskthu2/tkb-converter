# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning för katalogtjänstsynkronisering*, version 1.0_RC3 (2018-09-21), [TKB_infrastructure_directory_synchronization.docx](TKB_infrastructure_directory_synchronization.docx).

TKB:n har inget kapitel om datatyper; de beskrivs i V-MIM i avsnitt 5. Typerna nedan är genererade ur domänschemana [infrastructure_directory_synchronization_1.0.xsd](infrastructure_directory_synchronization_1.0.xsd) och [infrastructure_directory_synchronization_1.0_enum.xsd](infrastructure_directory_synchronization_1.0_enum.xsd).

### 6.1 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| Category (`CategoryEnum`) | CREATE, UPDATE, DELETE | [directory-synchronization-category-cs](CodeSystem-directory-synchronization-category-cs.html) | [directory-synchronization-category-vs](ValueSet-directory-synchronization-category-vs.html) |

### 6.2 Typer i domänschemat (XSD)

#### CVType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

#### IIType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 1..1 |

#### MasterDataAttributeType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| masterDataAttribute | string |  | 1..1 |

#### MasterDataChangeSetType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..1 |
| category | CategoryEnum |  | 1..1 |
| changeTime | TimeStampType |  | 0..1 |
| attributes | MasterDataAttributeType |  | 0..* |

#### TimePeriodType

Domänschema `infrastructure_directory_synchronization_1.0.xsd` (namnrymd `urn:riv:infrastructure:directory:synchronization:1`).

Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeStampType |  | 0..1 |
| end | TimeStampType |  | 0..1 |
