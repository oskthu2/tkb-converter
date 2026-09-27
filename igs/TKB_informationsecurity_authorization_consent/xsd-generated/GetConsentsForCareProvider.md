| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| createdOnOrAfter | dateTime |  | 0..1 |
| getCancelledFlag | boolean |  | 1..1 |
| **Svar** | | | |
| getAllAssertionsResult | GetAllAssertionsResultType | Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt. Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../moreOnOrAfter | dateTime |  | 1..1 |
| ../hasMore | boolean |  | 1..1 |
| ../assertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |
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
| ../cancelledAssertions | CancelledAssertionType | Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes. | 0..* |
| ../../assertionId | Id |  | 1..1 |
| ../../cancellationDate | dateTime |  | 1..1 |
