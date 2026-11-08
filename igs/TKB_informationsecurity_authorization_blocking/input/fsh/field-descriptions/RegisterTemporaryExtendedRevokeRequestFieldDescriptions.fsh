// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterTemporaryExtendedRevokeRequestFieldDescriptions
* temporaryRevokeId ^definition = "Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et."
* temporaryRevokeId ^comment = "TKB-fält: `temporaryRevokeId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1)."
* blockId ^definition = "Identifierare för den spärr som skall tillfälligt hävas."
* blockId ^comment = "TKB-fält: `blockId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1)."
* endDate ^definition = "Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat."
* endDate ^comment = "TKB-fält: `endDate` (`xs:DateTime`, kardinalitet 1..1)."
* revokedForCareUnitId ^definition = "Anger HSA-id för den vårdenhet hävningen gäller för."
* revokedForCareUnitId ^comment = "TKB-fält: `revokedForCareUnitId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 1..1)."
* revokedForEmployeeId ^definition = "Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten."
* revokedForEmployeeId ^comment = "TKB-fält: `revokedForEmployeeId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 0..1)."
* registerAction ^definition = "Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa."
* registerAction ^comment = "TKB-fält: `registerAction` (`urn:riv:informationsecurity:authorization:blocking:4:ActionType`, kardinalitet 1..1)."
* registerAction.requestDate ^comment = "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1)."
* registerAction.requestedBy ^definition = "Datatyp som identifierar en medarbetare/person."
* registerAction.requestedBy ^comment = "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1)."
* registerAction.requestedBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* registerAction.requestedBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* registerAction.requestedBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* registerAction.registrationDate ^comment = "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1)."
* registerAction.registeredBy ^definition = "Datatyp som identifierar en medarbetare/person."
* registerAction.registeredBy ^comment = "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1)."
* registerAction.registeredBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* registerAction.registeredBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* registerAction.registeredBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* registerAction.reasonText ^comment = "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1)."
* revokeReason ^definition = "Enumerationsvärde för orsak till tillfällig hävning."
* revokeReason ^comment = "TKB-fält: `revokeReason` (`urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeReasonType`, kardinalitet 1..1).

**Modellanteckning:** revokeReason Tillåtna värden: PatientsConsent, Emergency."
* revokeReasonText ^definition = "Kompletterande text för orsak till tillfällig hävning."
* revokeReasonText ^comment = "TKB-fält: `revokeReasonText` (`urn:riv:informationsecurity:authorization:blocking:4:ReasonText`, kardinalitet 0..1)."
* replicationTimeout ^definition = "Anger hur replikering till nationell spärrtjänst ska ske.

-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.

-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.

-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt."
* replicationTimeout ^comment = "TKB-fält: `replicationTimeout` (`xs:Int`, kardinalitet 1..1)."
