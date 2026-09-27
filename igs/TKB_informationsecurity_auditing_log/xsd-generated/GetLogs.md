| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| userId | HsaId |  | 0..1 |
| fromDate | dateTime |  | 1..1 |
| toDate | dateTime |  | 1..1 |
| careUnitId | HsaId |  | 0..1 |
| queuedReportId | Id |  | 0..1 |
| **Svar** | | | |
| logsResult | LogsResultType | Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel. | 1..1 |
| ../reportResult | ReportResultType |  | 1..1 |
| ../../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../../resultCode | ResultCodeType |  | 1..1 |
| ../../../resultText | string |  | 0..1 |
| ../../startInterval | dateTime |  | 0..1 |
| ../../endInterval | dateTime |  | 0..1 |
| ../../queuedReportId | Id |  | 0..1 |
| ../../queueTime | int |  | 0..1 |
| ../logs | LogsType | Datatyp som håller lista med loggposter. Kan vara en tom lista | 0..1 |
| ../../log | LogType | Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost. | 0..* |
| ../../../logId | Id |  | 1..1 |
| ../../../system | SystemType | Datatyp som representerar ett system i loggposten. Det system som skapar loggposten. | 1..1 |
| ../../../../systemId | HsaId |  | 1..1 |
| ../../../../systemName | SystemName |  | 0..1 |
| ../../../activity | ActivityType | Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten. | 1..1 |
| ../../../../activityType | ActivityTypeValue |  | 1..1 |
| ../../../../activityLevel | ActivityLevel |  | 0..1 |
| ../../../../activityArgs | ActivityArgs |  | 0..1 |
| ../../../../startDate | dateTime |  | 1..1 |
| ../../../../purpose | PurposeDescription |  | 1..1 |
| ../../../user | UserType | Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost. | 1..1 |
| ../../../../userId | HsaId |  | 1..1 |
| ../../../../name | UserName |  | 0..1 |
| ../../../../personId | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../assignment | Assignment |  | 0..1 |
| ../../../../title | UserTitle |  | 0..1 |
| ../../../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| ../../../../../careProviderId | HsaId |  | 1..1 |
| ../../../../../careProviderName | CareProviderName |  | 0..1 |
| ../../../../careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 1..1 |
| ../../../../../careUnitId | HsaId |  | 1..1 |
| ../../../../../careUnitName | CareUnitName |  | 0..1 |
| ../../../resources | ResourcesType | Information om aktuella resurser. En loggpost kan hålla en eller flera resurser. | 1..1 |
| ../../../../resource | ResourceType | Datatyp som representerar en resurs i loggposten. | 1..* |
| ../../../../../resourceType | ResourceTypeValue |  | 1..1 |
| ../../../../../patient | PatientType | Datatyp som representerar en patient i en resurs. | 0..1 |
| ../../../../../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../../../root | string |  | 1..1 |
| ../../../../../../../extension | string |  | 0..1 |
| ../../../../../../patientName | PatientName |  | 0..1 |
| ../../../../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| ../../../../../../careProviderId | HsaId |  | 1..1 |
| ../../../../../../careProviderName | CareProviderName |  | 0..1 |
| ../../../../../careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 0..1 |
| ../../../../../../careUnitId | HsaId |  | 1..1 |
| ../../../../../../careUnitName | CareUnitName |  | 0..1 |
