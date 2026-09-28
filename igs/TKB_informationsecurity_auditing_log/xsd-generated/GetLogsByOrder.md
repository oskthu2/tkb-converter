| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| careUnitId | HsaId |  | 0..* |
| patientId | IIType | En universellt unik identifierare. | 0..* |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| userId | HsaId |  | 0..* |
| fromDate | dateTime |  | 1..1 |
| toDate | dateTime |  | 1..1 |
| maxResultsPerFile | int |  | 0..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |
| orderId | OrderId |  | 0..1 |
