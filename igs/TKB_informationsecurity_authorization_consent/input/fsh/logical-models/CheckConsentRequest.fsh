// Elementen genereras ur CheckConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckConsent v2.0
// Genererad: 2026-09-26

Logical: CheckConsentRequest
Id: checkconsent-request
Title: "CheckConsent — Request"
Description: """
  Logisk modell för begäran i CheckConsent
  (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* accessingActor 1..1 Base "AccessingActorType" "accessingActor"
* accessingActor.employeeId 1..1 string "employeeId" "employeeId"
* accessingActor.careProviderId 1..1 string "careProviderId" "careProviderId"
* accessingActor.careUnitId 1..1 string "careUnitId" "careUnitId"
* patientId 1..1 IIType "patientId" "patientId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CheckConsentRequestFieldDescriptions
