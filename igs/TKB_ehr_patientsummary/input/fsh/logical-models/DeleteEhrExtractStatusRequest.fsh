// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: DeleteEhrExtractStatus v1.0
// Genererad: 2026-09-26

Logical: DeleteEhrExtractStatusRequest
Id: deleteehrextractstatus-request
Title: "DeleteEhrExtractStatus — Request"
Description: """
  Logisk modell för begäran i DeleteEhrExtractStatus
  (urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. the HSA-id of the service producer"
* parameters 0..* BackboneElement "parameters" "parameters"
  * parameterCode 0..1 CodeableConcept "parameterCode" "parameterCode Heter code i schemat."
  * parameterName 1..1 string "parameterName" "parameterName Heter name i schemat."
  * parameterValue 1..1 string "parameterValue" "parameterValue Heter value i schemat."
* response_detail 0..* BackboneElement "response_detail" "response_detail"
  * responseDetailCode 0..1 CodeableConcept "responseDetailCode" "responseDetailCode Heter code i schemat."
  * responseDetailText 1..1 string "responseDetailText" "responseDetailText Heter text i schemat."
  * type_code 0..1 code "type_code" "(XML-attribut.)"
  * type_code from ResponseDetailTypeCodesVS (required)
