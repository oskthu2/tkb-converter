| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| getConsentsResult | GetConsentsResultType | Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../pdlAssertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |
| ../../assertionId | Id |  | 1..1 |
| ../../assertionType | AssertionTypeType |  | 1..1 |
| ../../scope | ScopeType |  | 1..1 |
| ../../careProviderId | HsaId |  | 1..1 |
| ../../careUnitId | HsaId |  | 1..1 |
| ../../employeeId | HsaId |  | 0..1 |
| ../../startDate | dateTime |  | 1..1 |
| ../../endDate | dateTime |  | 0..1 |
| ../../ownerId | OwnerId |  | 0..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
