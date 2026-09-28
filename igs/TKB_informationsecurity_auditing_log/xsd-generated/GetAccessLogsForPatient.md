| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| fromDate | dateTime |  | 1..1 |
| toDate | dateTime |  | 1..1 |
| queuedReportId | Id |  | 0..1 |
| **Svar** | | | |
| accessLogsResult | AccessLogsResultType | Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel. | 1..1 |
| ../reportResult | ReportResultType |  | 1..1 |
| ../../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../../resultCode | ResultCodeType |  | 1..1 |
| ../../../resultText | string |  | 0..1 |
| ../../startInterval | dateTime |  | 0..1 |
| ../../endInterval | dateTime |  | 0..1 |
| ../../queuedReportId | Id |  | 0..1 |
| ../../queueTime | int |  | 0..1 |
| ../accesssLogs | AccessLogsType | Datatyp som håller lista med Access loggar. Kan vara en tom lista. | 0..1 |
| ../../accessLog | AccessLogType | Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt. | 0..* |
| ../../../careProviderId | HsaId |  | 1..1 |
| ../../../careProviderName | CareProviderName |  | 0..1 |
| ../../../careUnitId | HsaId |  | 1..1 |
| ../../../careUnitName | CareUnitName |  | 0..1 |
| ../../../accessDate | dateTime |  | 1..1 |
| ../../../userId | HsaId |  | 1..1 |
| ../../../userName | UserName |  | 0..1 |
| ../../../userTitle | UserTitle |  | 0..1 |
| ../../../purpose | PurposeDescription |  | 1..1 |
| ../../../resourceType | ResourceTypeValue |  | 1..1 |
