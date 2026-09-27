| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| accessingActor | AccessingActorType | Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information. | 1..1 |
| ../employeeId | HsaId |  | 1..1 |
| ../careProviderId | HsaId |  | 1..1 |
| ../careUnitId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| checkResult | CheckResultType | Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../hasConsent | boolean |  | 1..1 |
| ../assertionType | AssertionTypeType |  | 0..1 |
