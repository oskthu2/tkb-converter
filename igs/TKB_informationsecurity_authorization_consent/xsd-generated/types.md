### AccessingActorType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |  | 1..1 |
| careProviderId | HsaId |  | 1..1 |
| careUnitId | HsaId |  | 1..1 |

### ActionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | dateTime |  | 1..1 |
| requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| registrationDate | dateTime |  | 1..1 |
| registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| reasonText | ReasonText |  | 0..1 |

### ActorType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som identifierar en medarbetare/person.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |  | 1..1 |
| assignmentId | HsaId |  | 0..1 |
| assignmentName | AssignmentNameType |  | 0..1 |

### CancelledAssertionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | Id |  | 1..1 |
| cancellationDate | dateTime |  | 1..1 |

### CheckResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| hasConsent | boolean |  | 1..1 |
| assertionType | AssertionTypeType |  | 0..1 |

### ExtendedPDLAssertionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| pDLAssertion | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 1..1 |
| representedBy | IIType | En universellt unik identifierare. | 0..1 |
| registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |

### GetAllAssertionsResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt. Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| moreOnOrAfter | dateTime |  | 1..1 |
| hasMore | boolean |  | 1..1 |
| assertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |
| cancelledAssertions | CancelledAssertionType | Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes. | 0..* |

### GetConsentsResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| pdlAssertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |

### GetExtendedConsentsResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| pdlAssertions | ExtendedPDLAssertionType | Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion. | 0..* |

### IIType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

En universellt unik identifierare.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### PDLAssertionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | Id |  | 1..1 |
| assertionType | AssertionTypeType |  | 1..1 |
| scope | ScopeType |  | 1..1 |
| careProviderId | HsaId |  | 1..1 |
| careUnitId | HsaId |  | 1..1 |
| employeeId | HsaId |  | 0..1 |
| startDate | dateTime |  | 1..1 |
| endDate | dateTime |  | 0..1 |
| ownerId | OwnerId |  | 0..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |

### ResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |  | 1..1 |
| resultText | string |  | 0..1 |
