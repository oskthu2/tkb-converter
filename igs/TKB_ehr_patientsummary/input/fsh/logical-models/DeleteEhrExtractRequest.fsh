// Elementen genereras ur DeleteEhrExtractResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: DeleteEhrExtract v1.0
// Genererad: 2026-09-26

Logical: DeleteEhrExtractRequest
Id: deleteehrextract-request
Title: "DeleteEhrExtract — Request"
Description: """
  Logisk modell för begäran i DeleteEhrExtract
  (urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ehr_system 1..1 string "ehr_system" "ehr_system"
* subject_of_care 1..1 string "subject_of_care" "subject_of_care"
* deletion 1..* Base "DeletionType" "deletion"
* deletion.rc_id 1..1 string "rc_id" "rc_id"
* deletion.meaning 1..1 string "meaning" "meaning"
* parameters 0..* Base "ParameterType" "parameters"
* parameters.code 0..1 string "code" "code"
* parameters.name 1..1 string "name" "name"
* parameters.value 1..1 string "value" "value"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteEhrExtractRequestFieldDescriptions
