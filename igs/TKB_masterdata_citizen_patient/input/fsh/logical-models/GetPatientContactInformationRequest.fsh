// Elementen genereras ur GetPatientContactInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för masterdata.citizen.patient v1.0 (Genererad ur scheman i riv.masterdata.citizen.patient (master, commit efa4099dabb2); scripts/xsd_to_ig.py)
// Kontrakt: GetPatientContactInformation v1.0
// Genererad: 2026-09-26

Logical: GetPatientContactInformationRequest
Id: getpatientcontactinformation-request
Title: "GetPatientContactInformation — Request"
Description: """
  Logisk modell för begäran i GetPatientContactInformation
  (urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* patientId 1..1 IIType "patientId" "patientId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPatientContactInformationRequestFieldDescriptions
