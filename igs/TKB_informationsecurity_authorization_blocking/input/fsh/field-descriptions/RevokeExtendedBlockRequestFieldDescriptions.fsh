// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RevokeExtendedBlockRequestFieldDescriptions
* blockId ^definition = "Unik, global identifierare för spärren."
* blockId ^comment = "TKB-fält: `blockId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1)."
* revokeAction ^definition = "Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa."
* revokeAction ^comment = "TKB-fält: `revokeAction` (`urn:riv:informationsecurity:authorization:blocking:4:ActionType`, kardinalitet 1..1)."
* revokeAction.requestDate ^comment = "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1)."
* revokeAction.requestedBy ^definition = "Datatyp som identifierar en medarbetare/person."
* revokeAction.requestedBy ^comment = "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1)."
* revokeAction.requestedBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* revokeAction.requestedBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* revokeAction.requestedBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* revokeAction.registrationDate ^comment = "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1)."
* revokeAction.registeredBy ^definition = "Datatyp som identifierar en medarbetare/person."
* revokeAction.registeredBy ^comment = "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1)."
* revokeAction.registeredBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* revokeAction.registeredBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* revokeAction.registeredBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* revokeAction.reasonText ^comment = "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1)."
* revokeReasonText ^definition = "Orsaken till den permanenta hävningen."
* revokeReasonText ^comment = "TKB-fält: `revokeReasonText` (`urn:riv:informationsecurity:authorization:blocking:4:ReasonText`, kardinalitet 0..1)."
* replicationTimeout ^definition = "Anger hur replikering till nationell spärrtjänst ska ske.

-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.

-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.

-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt."
* replicationTimeout ^comment = "TKB-fält: `replicationTimeout` (`xs:Int`, kardinalitet 1..1)."
