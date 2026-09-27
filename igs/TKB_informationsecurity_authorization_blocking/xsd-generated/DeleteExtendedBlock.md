| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| blockId | Id |  | 1..1 |
| deleteAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |  | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../registrationDate | dateTime |  | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../reasonText | ReasonText |  | 0..1 |
| deleteReasonText | ReasonText |  | 0..1 |
| replicationTimeout | int |  | 1..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |
