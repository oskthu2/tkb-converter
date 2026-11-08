// Elementen genereras ur ReceiveEhrExtractInitiator_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för ehr.patientsummary v1.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: ReceiveEhrExtractStatus v1.0
// Genererad: 2026-09-26

Logical: ReceiveEhrExtractStatusRequest
Id: receiveehrextractstatus-request
Title: "ReceiveEhrExtractStatus — Request"
Description: """
  Logisk modell för begäran i ReceiveEhrExtractStatus
  (urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* parameters 0..* Base "ParameterType" "parameters"
* parameters.code 0..1 string "code" "code"
* parameters.name 1..1 string "name" "name"
* parameters.value 1..1 string "value" "value"
* response_detail 0..* Base "ResponseDetailType" "response_detail"
* response_detail.code 0..1 string "code" "code"
* response_detail.text 1..1 string "text" "text"
* response_detail.type_code 0..1 code "type_code" "type_code (XML-attribut) Tillåtna värden: E, W, I."
* response_detail.type_code from ResponseDetailTypeCodesVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ReceiveEhrExtractStatusRequestFieldDescriptions
