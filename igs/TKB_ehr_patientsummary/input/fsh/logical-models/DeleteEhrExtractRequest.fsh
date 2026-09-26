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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. the HSA-id of the service producer"
* ehr_system 1..1 Identifier "ehr_system" "ehr_system"
* subject_of_care 1..1 Identifier "subject_of_care" "subject_of_care"
* deletion 1..* BackboneElement "deletion" "deletion"
  * rc_id 1..1 Identifier "rc_id" "rc_id"
  * meaning 1..1 CodeableConcept "meaning" "meaning"
* parameters 0..* BackboneElement "parameters" "parameters"
  * parameterCode 0..1 CodeableConcept "parameterCode" "parameterCode Heter code i schemat."
  * parameterName 1..1 string "parameterName" "parameterName Heter name i schemat."
  * parameterValue 1..1 string "parameterValue" "parameterValue Heter value i schemat."
