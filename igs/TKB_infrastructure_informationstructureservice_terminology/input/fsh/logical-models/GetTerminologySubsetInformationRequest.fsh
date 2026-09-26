// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (fält ur XSD, se TKB avsnitt 6 och 7; scripts/xsd_to_ig.py)
// Kontrakt: GetTerminologySubsetInformation v1.0
// Genererad: 2026-09-26

Logical: GetTerminologySubsetInformationRequest
Id: getterminologysubsetinformation-request
Title: "GetTerminologySubsetInformation — Request"
Description: """
  Logisk modell för begäran i GetTerminologySubsetInformation
  (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. HSA-id for the entity responsible for the subset"
* SubsetIdentity 1..* string "SubsetIdentity" "Identifierare som representerar urvalet"
* LocalOrganizationExtensionId 0..1 string "LocalOrganizationExtensionId" "Id för system eller organisation"
* TermType 1..1 string "TermType" "Type of term"
