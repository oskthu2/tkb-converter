// Elementen genereras ur GetExtendedConsentsForPatientResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetExtendedConsentsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetExtendedConsentsForPatientRequest
Id: getextendedconsentsforpatient-request
Title: "GetExtendedConsentsForPatient — Request"
Description: """
  Logisk modell för begäran i GetExtendedConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careProviderId 1..1 string "careProviderId" "careProviderId"
* patientId 1..1 IIType "patientId" "patientId"
* getCancelledFlag 1..1 boolean "getCancelledFlag" "getCancelledFlag"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetExtendedConsentsForPatientRequestFieldDescriptions
