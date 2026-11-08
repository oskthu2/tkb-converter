// Elementen genereras ur GetAllExtendedConsentsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetAllExtendedConsentsForPatient v1.0
// Genererad: 2026-09-26

Logical: GetAllExtendedConsentsForPatientRequest
Id: getallextendedconsentsforpatient-request
Title: "GetAllExtendedConsentsForPatient — Request"
Description: """
  Logisk modell för begäran i GetAllExtendedConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* patientId 1..1 IIType "patientId" "patientId"
* getCancelledFlag 1..1 boolean "getCancelledFlag" "getCancelledFlag"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAllExtendedConsentsForPatientRequestFieldDescriptions
