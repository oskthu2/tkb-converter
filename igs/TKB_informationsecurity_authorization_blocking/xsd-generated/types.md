### AccessingActorType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |  | 1..1 |
| careProviderId | HsaId |  | 1..1 |
| careUnitId | HsaId |  | 1..1 |

### ActionType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | dateTime |  | 1..1 |
| requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| registrationDate | dateTime |  | 1..1 |
| registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| reasonText | ReasonText |  | 0..1 |

### ActorType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som identifierar en medarbetare/person.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |  | 1..1 |
| assignmentId | HsaId |  | 0..1 |
| assignmentName | AssignmentNameType |  | 0..1 |

### BlockHeaderType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| blocks | BlockType | Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr. | 0..* |
| nextCreatedOnOrAfter | dateTime |  | 1..1 |
| latestCancellation | dateTime |  | 1..1 |

### BlockType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blockId | Id |  | 1..1 |
| blockType | BlockTypeType |  | 1..1 |
| informationStartDate | dateTime |  | 0..1 |
| informationEndDate | dateTime |  | 0..1 |
| informationCareUnitId | HsaId |  | 0..1 |
| informationCareProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| temporaryRevokes | TemporaryRevokeType | Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning. | 0..* |
| ownerId | OwnerId |  | 0..1 |

### CheckBlocksResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som innehåller resultatet från tjänsten CheckBlocks. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| checkResults | CheckResultType | Datatyp som representerar ett svar från kontrollen av åtkomst till information. | 0..* |

### CheckResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar ett svar från kontrollen av åtkomst till information.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| status | CheckStatusType |  | 1..1 |
| rowNumber | int |  | 1..1 |

### ExtendedBlockType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en spärr enligt det utökade formatet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blockId | Id |  | 1..1 |
| blockType | BlockTypeType |  | 1..1 |
| informationStartDate | dateTime |  | 0..1 |
| informationEndDate | dateTime |  | 0..1 |
| informationCareUnitId | HsaId |  | 0..1 |
| informationCareProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| permanentRevokedInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| temporaryRevokes | ExtendedTemporaryRevokeType | Datatyp som representerar en tillfällig hävning enligt det utökade formatet. | 0..* |
| ownerId | OwnerId |  | 0..1 |
| locallyCreated | boolean |  | 1..1 |

### ExtendedTemporaryRevokeType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en tillfällig hävning enligt det utökade formatet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id |  | 1..1 |
| endDate | dateTime |  | 1..1 |
| revokedForCareUnitId | HsaId |  | 1..1 |
| revokedForEmployeeId | HsaId |  | 0..1 |
| revocationReason | TemporaryRevokeReasonType |  | 0..1 |
| revocationReasonText | ReasonText |  | 0..1 |
| registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ownerId | OwnerId |  | 0..1 |

### GetExtendedBlocksResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| blocks | ExtendedBlockType | Datatyp som representerar en spärr enligt det utökade formatet. | 0..* |

### GetPatientIdResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider. Datatypen utökar datatypen Result.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| patientIds | IIType | En universellt unik identifierare. | 0..* |

### IIType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

En universellt unik identifierare.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### InformationEntityType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| informationStartDate | dateTime |  | 1..1 |
| informationEndDate | dateTime |  | 1..1 |
| informationCareUnitId | HsaId |  | 1..1 |
| informationCareProviderId | HsaId |  | 1..1 |
| informationType | InformationTypeIdValue |  | 0..1 |
| rowNumber | int |  | 1..1 |

### InformationTypeType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| infoTypeId | InformationTypeIdValue |  | 1..1 |
| infoTypeDescription | InformationTypeDescription |  | 1..1 |

### ResultType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |  | 1..1 |
| resultText | string |  | 0..1 |

### TemporaryRevokeRegistrationType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id |  | 1..1 |
| blockId | Id |  | 1..1 |
| endDate | dateTime |  | 1..1 |
| revokedForCareUnitId | HsaId |  | 1..1 |
| revokedForEmployeeId | HsaId |  | 0..1 |

### TemporaryRevokeType

Domänschema `informationsecurity_authorization_blocking_4.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:blocking:4`).

Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id |  | 1..1 |
| endDate | dateTime |  | 1..1 |
| revokedForCareUnitId | HsaId |  | 1..1 |
| revokedForEmployeeId | HsaId |  | 0..1 |
| ownerId | OwnerId |  | 0..1 |
