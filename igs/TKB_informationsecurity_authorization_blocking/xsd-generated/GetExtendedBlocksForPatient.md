| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| getExtendedBlocksResult | GetExtendedBlocksResultType | Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../blocks | ExtendedBlockType | Datatyp som representerar en spärr enligt det utökade formatet. | 0..* |
| ../../blockId | Id |  | 1..1 |
| ../../blockType | BlockTypeType |  | 1..1 |
| ../../informationStartDate | dateTime |  | 0..1 |
| ../../informationEndDate | dateTime |  | 0..1 |
| ../../informationCareUnitId | HsaId |  | 0..1 |
| ../../informationCareProviderId | HsaId |  | 1..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| ../../../infoTypeId | InformationTypeIdValue |  | 1..1 |
| ../../../infoTypeDescription | InformationTypeDescription |  | 1..1 |
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
| ../../permanentRevokedInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
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
| ../../temporaryRevokes | ExtendedTemporaryRevokeType | Datatyp som representerar en tillfällig hävning enligt det utökade formatet. | 0..* |
| ../../../temporaryRevokeId | Id |  | 1..1 |
| ../../../endDate | dateTime |  | 1..1 |
| ../../../revokedForCareUnitId | HsaId |  | 1..1 |
| ../../../revokedForEmployeeId | HsaId |  | 0..1 |
| ../../../revocationReason | TemporaryRevokeReasonType |  | 0..1 |
| ../../../revocationReasonText | ReasonText |  | 0..1 |
| ../../../registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../../../../requestDate | dateTime |  | 1..1 |
| ../../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |  | 1..1 |
| ../../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../../registrationDate | dateTime |  | 1..1 |
| ../../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |  | 1..1 |
| ../../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../../reasonText | ReasonText |  | 0..1 |
| ../../../cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../../requestDate | dateTime |  | 1..1 |
| ../../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |  | 1..1 |
| ../../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../../registrationDate | dateTime |  | 1..1 |
| ../../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |  | 1..1 |
| ../../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../../reasonText | ReasonText |  | 0..1 |
| ../../../ownerId | OwnerId |  | 0..1 |
| ../../ownerId | OwnerId |  | 0..1 |
| ../../locallyCreated | boolean |  | 1..1 |
