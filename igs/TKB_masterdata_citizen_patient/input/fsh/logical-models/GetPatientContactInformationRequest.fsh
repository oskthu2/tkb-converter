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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. National: The HSA-id of Inera AB (\"national\" aggregation service) Regional: The HSA-id of Inera AB (regional aggregation service) Specific Source system: The HSA-id of the source system"
* patientId 1..1 BackboneElement "patientId" "patientId"
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
