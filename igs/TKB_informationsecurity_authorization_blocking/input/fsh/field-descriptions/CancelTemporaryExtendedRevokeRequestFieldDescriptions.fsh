// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelTemporaryExtendedRevokeRequestFieldDescriptions
* temporaryRevokeId ^definition = "Identifierare för den tillfälliga hävning som skall återkallas."
* temporaryRevokeId ^comment = "TKB-fält: `temporaryRevokeId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1)."
* cancellationInfo ^definition = "Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa."
* cancellationInfo ^comment = "TKB-fält: `cancellationInfo` (`urn:riv:informationsecurity:authorization:blocking:4:ActionType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext."
* cancellationInfo.requestDate ^comment = "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1)."
* cancellationInfo.requestedBy ^definition = "Datatyp som identifierar en medarbetare/person."
* cancellationInfo.requestedBy ^comment = "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1)."
* cancellationInfo.requestedBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* cancellationInfo.requestedBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* cancellationInfo.requestedBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* cancellationInfo.registrationDate ^comment = "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1)."
* cancellationInfo.registeredBy ^definition = "Datatyp som identifierar en medarbetare/person."
* cancellationInfo.registeredBy ^comment = "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1)."
* cancellationInfo.registeredBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* cancellationInfo.registeredBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* cancellationInfo.registeredBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* cancellationInfo.reasonText ^comment = "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1)."
* cancelReasonText ^definition = "Kompletterande text för orsak till makuleringen."
* cancelReasonText ^comment = "TKB-fält: `cancelReasonText` (`urn:riv:informationsecurity:authorization:blocking:4:ReasonText`, kardinalitet 0..1)."
* replicationTimeout ^definition = "Anger hur replikering till nationell spärrtjänst ska ske.

-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.

-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.

-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt."
* replicationTimeout ^comment = "TKB-fält: `replicationTimeout` (`xs:Int`, kardinalitet 1..1)."
