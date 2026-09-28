| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| getCancelledFlag | boolean |  | 1..1 |
| **Svar** | | | |
| getExtendedConsentsResult | GetExtendedConsentsResultType | Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../pdlAssertions | ExtendedPDLAssertionType | Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion. | 0..* |
| ../../pDLAssertion | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 1..1 |
| ../../../assertionId | Id |  | 1..1 |
| ../../../assertionType | AssertionTypeType |  | 1..1 |
| ../../../scope | ScopeType |  | 1..1 |
| ../../../careProviderId | HsaId |  | 1..1 |
| ../../../careUnitId | HsaId |  | 1..1 |
| ../../../employeeId | HsaId |  | 0..1 |
| ../../../startDate | dateTime |  | 1..1 |
| ../../../endDate | dateTime |  | 0..1 |
| ../../../ownerId | OwnerId |  | 0..1 |
| ../../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../representedBy | IIType | En universellt unik identifierare. | 0..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
| ../../cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
| ../../deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
