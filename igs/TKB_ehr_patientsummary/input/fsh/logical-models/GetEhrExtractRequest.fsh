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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. the HSA-id of the service producer"
* subject_of_care_id 1..1 Identifier "subject_of_care_id" "subject_of_care_id"
* purpose 0..1 CodeableConcept "purpose" "purpose"
* rc_ids 0..* Identifier "rc_ids" "rc_ids"
* time_period 0..1 Period "time_period" "time_period"
* max_sensitivity 0..1 integer "max_sensitivity" "max_sensitivity"
* all_versions 0..1 boolean "all_versions" "all_versions"
* multimedia_included 0..1 boolean "multimedia_included" "multimedia_included"
* archetype_ids 0..* Identifier "archetype_ids" "archetype_ids"
* meanings 0..* CodeableConcept "meanings" "meanings"
* max_records 0..1 integer "max_records" "max_records"
* parameters 0..* BackboneElement "parameters" "parameters"
  * parameterCode 0..1 CodeableConcept "parameterCode" "parameterCode Heter code i schemat."
  * parameterName 1..1 string "parameterName" "parameterName Heter name i schemat."
  * parameterValue 1..1 string "parameterValue" "parameterValue Heter value i schemat."
