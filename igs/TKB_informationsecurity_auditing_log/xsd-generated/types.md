### AccessLogType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId |  | 1..1 |
| careProviderName | CareProviderName |  | 0..1 |
| careUnitId | HsaId |  | 1..1 |
| careUnitName | CareUnitName |  | 0..1 |
| accessDate | dateTime |  | 1..1 |
| userId | HsaId |  | 1..1 |
| userName | UserName |  | 0..1 |
| userTitle | UserTitle |  | 0..1 |
| purpose | PurposeDescription |  | 1..1 |
| resourceType | ResourceTypeValue |  | 1..1 |

### AccessLogsResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |  | 1..1 |
| accesssLogs | AccessLogsType | Datatyp som håller lista med Access loggar. Kan vara en tom lista. | 0..1 |

### AccessLogsType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller lista med Access loggar. Kan vara en tom lista.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accessLog | AccessLogType | Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt. | 0..* |

### ActivityType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| activityType | ActivityTypeValue |  | 1..1 |
| activityLevel | ActivityLevel |  | 0..1 |
| activityArgs | ActivityArgs |  | 0..1 |
| startDate | dateTime |  | 1..1 |
| purpose | PurposeDescription |  | 1..1 |

### CareProviderType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en vårdgivare.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId |  | 1..1 |
| careProviderName | CareProviderName |  | 0..1 |

### CareProvidersType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller lista med vårdgivare. Kan vara en tom lista.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 0..* |

### CareUnitType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en vårdenhet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careUnitId | HsaId |  | 1..1 |
| careUnitName | CareUnitName |  | 0..1 |

### IIType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

En universellt unik identifierare.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### InfoLogsResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |  | 1..1 |
| careProviders | CareProvidersType | Datatyp som håller lista med vårdgivare. Kan vara en tom lista. | 0..1 |

### LogType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logId | Id |  | 1..1 |
| system | SystemType | Datatyp som representerar ett system i loggposten. Det system som skapar loggposten. | 1..1 |
| activity | ActivityType | Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten. | 1..1 |
| user | UserType | Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost. | 1..1 |
| resources | ResourcesType | Information om aktuella resurser. En loggpost kan hålla en eller flera resurser. | 1..1 |

### LogsResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |  | 1..1 |
| logs | LogsType | Datatyp som håller lista med loggposter. Kan vara en tom lista | 0..1 |

### LogsType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller lista med loggposter. Kan vara en tom lista

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| log | LogType | Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost. | 0..* |

### MultimediaType

Domänschema `GetFilesForOrderIdResponder_1.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1`).

Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string |  | 0..1 |
| mediaType | CodedValue |  | 1..1 |
| value | base64Binary |  | 0..1 |
| reference | anyURI |  | 0..1 |

### PatientType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en patient i en resurs.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| patientName | PatientName |  | 0..1 |

### ReportResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| startInterval | dateTime |  | 0..1 |
| endInterval | dateTime |  | 0..1 |
| queuedReportId | Id |  | 0..1 |
| queueTime | int |  | 0..1 |

### ResourceType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en resurs i loggposten.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resourceType | ResourceTypeValue |  | 1..1 |
| patient | PatientType | Datatyp som representerar en patient i en resurs. | 0..1 |
| careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 0..1 |

### ResourcesType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resource | ResourceType | Datatyp som representerar en resurs i loggposten. | 1..* |

### ResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |  | 1..1 |
| resultText | string |  | 0..1 |

### SystemType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| systemId | HsaId |  | 1..1 |
| systemName | SystemName |  | 0..1 |

### UserType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| userId | HsaId |  | 1..1 |
| name | UserName |  | 0..1 |
| personId | IIType | En universellt unik identifierare. | 0..1 |
| assignment | Assignment |  | 0..1 |
| title | UserTitle |  | 0..1 |
| careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 1..1 |
