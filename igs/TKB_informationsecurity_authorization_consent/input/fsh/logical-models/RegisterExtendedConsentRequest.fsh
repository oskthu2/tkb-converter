// Elementen genereras ur RegisterExtendedConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: RegisterExtendedConsentRequest
Id: registerextendedconsent-request
Title: "RegisterExtendedConsent — Request"
Description: """
  Logisk modell för begäran i RegisterExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* assertionId 1..1 string "assertionId" "assertionId"
* assertionType 1..1 code "assertionType" "assertionType Tillåtna värden: Consent, Emergency."
* assertionType from AssertionTypeVS (required)
* scope 1..1 code "scope" "scope Tillåtna värden: NationalLevel."
* scope from ScopeVS (required)
* patientId 1..1 IIType "patientId" "patientId"
* careProviderId 1..1 string "careProviderId" "careProviderId"
* careUnitId 1..1 string "careUnitId" "careUnitId"
* employeeId 0..1 string "employeeId" "employeeId"
* startDate 0..1 dateTime "startDate" "startDate"
* endDate 0..1 dateTime "endDate" "endDate"
* representedBy 0..1 IIType "representedBy" "representedBy"
* registrationAction 1..1 Base "ActionType" "registrationAction"
* registrationAction.requestDate 1..1 dateTime "requestDate" "requestDate"
* registrationAction.requestedBy 1..1 Base "ActorType" "requestedBy"
* registrationAction.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* registrationAction.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* registrationAction.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* registrationAction.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* registrationAction.registeredBy 1..1 Base "ActorType" "registeredBy"
* registrationAction.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* registrationAction.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* registrationAction.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* registrationAction.reasonText 0..1 string "reasonText" "reasonText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterExtendedConsentRequestFieldDescriptions
