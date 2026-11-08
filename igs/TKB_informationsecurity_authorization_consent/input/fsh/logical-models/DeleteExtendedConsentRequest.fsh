// Elementen genereras ur DeleteExtendedConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: DeleteExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: DeleteExtendedConsentRequest
Id: deleteextendedconsent-request
Title: "DeleteExtendedConsent — Request"
Description: """
  Logisk modell för begäran i DeleteExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* assertionId 1..1 string "assertionId" "assertionId"
* deletionAction 1..1 Base "ActionType" "deletionAction"
* deletionAction.requestDate 1..1 dateTime "requestDate" "requestDate"
* deletionAction.requestedBy 1..1 Base "ActorType" "requestedBy"
* deletionAction.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* deletionAction.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* deletionAction.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* deletionAction.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* deletionAction.registeredBy 1..1 Base "ActorType" "registeredBy"
* deletionAction.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* deletionAction.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* deletionAction.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* deletionAction.reasonText 0..1 string "reasonText" "reasonText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteExtendedConsentRequestFieldDescriptions
