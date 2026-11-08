// Elementen genereras ur GetEhrExtractResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetEhrExtract v1.0
// Genererad: 2026-09-26

Logical: GetEhrExtractRequest
Id: getehrextract-request
Title: "GetEhrExtract — Request"
Description: """
  Logisk modell för begäran i GetEhrExtract
  (urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* subject_of_care_id 1..1 string "subject_of_care_id" "subject_of_care_id"
* purpose 0..1 string "purpose" "purpose"
* rc_ids 0..* string "rc_ids" "rc_ids"
* time_period 0..1 string "time_period" "time_period"
* max_sensitivity 0..1 string "max_sensitivity" "max_sensitivity"
* all_versions 0..1 string "all_versions" "all_versions"
* multimedia_included 0..1 string "multimedia_included" "multimedia_included"
* archetype_ids 0..* string "archetype_ids" "archetype_ids"
* meanings 0..* string "meanings" "meanings"
* max_records 0..1 string "max_records" "max_records"
* parameters 0..* Base "ParameterType" "parameters"
* parameters.code 0..1 string "code" "code"
* parameters.name 1..1 string "name" "name"
* parameters.value 1..1 string "value" "value"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetEhrExtractRequestFieldDescriptions
