// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: CancelExtendedPatientRelation v1.0 — Request
// Genererad: 2026-05-19

Logical: CancelExtendedPatientRelationRequest
Id: cancelextendedpatientrelation-request
Title: "CancelExtendedPatientRelation — Request"
Description: "Logisk modell för requestparametrar i CancelExtendedPatientRelation."
Characteristics: #can-be-target

* patientRelationId 1..1 string "Identifierare (UUID) för den patientrelation som skall återkallas (max 36 tecken)"

* cancellationAction 1..1 BackboneElement "Information om begäran och registrering av återkallelsen"
* cancellationAction.requestDate 1..1 dateTime "Tidpunkt då återkallelse begärdes"
* cancellationAction.requestedBy 1..1 BackboneElement "Den aktör som begärt återkallelsen"
* cancellationAction.requestedBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* cancellationAction.requestedBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* cancellationAction.requestedBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* cancellationAction.registrationDate 1..1 dateTime "Tidpunkt då återkallelsen registrerades"
* cancellationAction.registeredBy 1..1 BackboneElement "Den aktör som registrerade återkallelsen"
* cancellationAction.registeredBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* cancellationAction.registeredBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* cancellationAction.registeredBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* cancellationAction.reasonText 0..1 string "Optionell anledning till återkallelsen (max 1024 tecken)"
