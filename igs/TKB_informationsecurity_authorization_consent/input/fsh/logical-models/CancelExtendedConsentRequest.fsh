// Elementen genereras ur CancelExtendedConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CancelExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: CancelExtendedConsentRequest
Id: cancelextendedconsent-request
Title: "CancelExtendedConsent — Request"
Description: """
  Logisk modell för begäran i CancelExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* assertionId 1..1 string "assertionId" "assertionId"
* cancellationAction 1..1 Base "ActionType" "cancellationAction"
* cancellationAction.requestDate 1..1 dateTime "requestDate" "requestDate"
* cancellationAction.requestedBy 1..1 Base "ActorType" "requestedBy"
* cancellationAction.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* cancellationAction.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* cancellationAction.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* cancellationAction.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* cancellationAction.registeredBy 1..1 Base "ActorType" "registeredBy"
* cancellationAction.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* cancellationAction.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* cancellationAction.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* cancellationAction.reasonText 0..1 string "reasonText" "reasonText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CancelExtendedConsentRequestFieldDescriptions
