| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| fromDate | dateTime |  | 1..1 |
| toDate | dateTime |  | 1..1 |
| queuedReportId | Id |  | 0..1 |
| **Svar** | | | |
| infoLogsResult | InfoLogsResultType | Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel. | 1..1 |
| ../reportResult | ReportResultType |  | 1..1 |
| ../../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../../resultCode | ResultCodeType |  | 1..1 |
| ../../../resultText | string |  | 0..1 |
| ../../startInterval | dateTime |  | 0..1 |
| ../../endInterval | dateTime |  | 0..1 |
| ../../queuedReportId | Id |  | 0..1 |
| ../../queueTime | int |  | 0..1 |
| ../careProviders | CareProvidersType | Datatyp som håller lista med vårdgivare. Kan vara en tom lista. | 0..1 |
| ../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 0..* |
| ../../../careProviderId | HsaId |  | 1..1 |
| ../../../careProviderName | CareProviderName |  | 0..1 |
