// Elementen genereras ur GetExtendedBlocksForPatientResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetExtendedBlocksForPatient v4.0
// Genererad: 2026-09-26

Logical: GetExtendedBlocksForPatientRequest
Id: getextendedblocksforpatient-request
Title: "GetExtendedBlocksForPatient — Request"
Description: """
  Logisk modell för begäran i GetExtendedBlocksForPatient
  (urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* careProviderId 1..1 string "careProviderId" "careProviderId"
* patientId 1..1 IIType "patientId" "patientId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetExtendedBlocksForPatientRequestFieldDescriptions
