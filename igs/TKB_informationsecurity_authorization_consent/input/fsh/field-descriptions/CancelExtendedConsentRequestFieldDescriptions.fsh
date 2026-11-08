// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelExtendedConsentRequestFieldDescriptions
* assertionId ^definition = "Identifierare för det intyg som skall avslutas."
* assertionId ^comment = "TKB-fält: `assertionId` (`urn:riv:informationsecurity:authorization:consent:2:Id`, kardinalitet 1..1)."
* cancellationAction ^definition = "Identifierar de personer som begärt och registrerat avslutandet samt tidpunkter för dessa. En anledning till avslutande i fritext kan även ges."
* cancellationAction ^comment = "TKB-fält: `cancellationAction` (`urn:riv:informationsecurity:authorization:consent:2:ActionType`, kardinalitet 1..1)."
* cancellationAction.requestDate ^comment = "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1)."
* cancellationAction.requestedBy ^definition = "Datatyp som identifierar en medarbetare/person."
* cancellationAction.requestedBy ^comment = "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1)."
* cancellationAction.requestedBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* cancellationAction.requestedBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* cancellationAction.requestedBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* cancellationAction.registrationDate ^comment = "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1)."
* cancellationAction.registeredBy ^definition = "Datatyp som identifierar en medarbetare/person."
* cancellationAction.registeredBy ^comment = "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1)."
* cancellationAction.registeredBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* cancellationAction.registeredBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* cancellationAction.registeredBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* cancellationAction.reasonText ^comment = "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1)."
