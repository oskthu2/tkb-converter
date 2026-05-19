// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: DeleteExtendedPatientRelation v1.0 — Request
// Genererad: 2026-05-19

Logical: DeleteExtendedPatientRelationRequest
Id: deleteextendedpatientrelation-request
Title: "DeleteExtendedPatientRelation — Request"
Description: "Logisk modell för requestparametrar i DeleteExtendedPatientRelation."
Characteristics: #can-be-target

* patientRelationId 1..1 string "Identifierare (UUID) för den patientrelation som skall makuleras (max 36 tecken)"

* deletionAction 1..1 BackboneElement "Information om begäran och utförande av makuleringen"
* deletionAction.requestDate 1..1 dateTime "Tidpunkt då makulering begärdes"
* deletionAction.requestedBy 1..1 BackboneElement "Den aktör som begärt makuleringen"
* deletionAction.requestedBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* deletionAction.requestedBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* deletionAction.requestedBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* deletionAction.registrationDate 1..1 dateTime "Tidpunkt då makuleringen registrerades"
* deletionAction.registeredBy 1..1 BackboneElement "Den aktör som utförde makuleringen"
* deletionAction.registeredBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* deletionAction.registeredBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* deletionAction.registeredBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* deletionAction.reasonText 0..1 string "Optionell anledning till makuleringen (max 1024 tecken)"
