// Elementen genereras ur EndConsentByPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: EndConsentByPatient v1.0
// Genererad: 2026-09-26

Logical: EndConsentByPatientRequest
Id: endconsentbypatient-request
Title: "EndConsentByPatient — Request"
Description: """
  Logisk modell för begäran i EndConsentByPatient
  (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* assertionId 1..1 string "assertionId" "assertionId"
* patientId 1..1 IIType "patientId" "patientId"
* representedById 0..1 IIType "representedById" "representedById"
* endDateTime 0..1 dateTime "endDateTime" "endDateTime"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert EndConsentByPatientRequestFieldDescriptions
