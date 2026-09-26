// Genererad från XSD för infrastructure.informationstructureservice.terminology v1.0.0 (fält ur XSD, se TKB avsnitt 6 och 7; scripts/xsd_to_ig.py)
// Kontrakt: GetTerminologySubset v1.0
// Genererad: 2026-09-26

Logical: GetTerminologySubsetRequest
Id: getterminologysubset-request
Title: "GetTerminologySubset — Request"
Description: """
  Logisk modell för begäran i GetTerminologySubset
  (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. HSA-id for the entity responsible for the subset"
* SubsetIdentity 1..1 string "SubsetIdentity" "Identifierare som representerar urvalet"
* LocalOrganizationExtensionId 0..1 string "LocalOrganizationExtensionId" "Id för system eller organisation"
* TermType 1..1 string "TermType" "Type of term"
