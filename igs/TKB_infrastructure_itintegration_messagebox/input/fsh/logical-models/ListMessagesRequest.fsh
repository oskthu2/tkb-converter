// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: ListMessages v1.0
// Genererad: 2026-09-26

Logical: ListMessagesRequest
Id: listmessages-request
Title: "ListMessages — Request"
Description: """
  Logisk modell för begäran i ListMessages
  (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the National Service Platform"
* targetOrganizations 0..* string "targetOrganizations" "targetOrganizations"
* serviceContractTypes 0..* BackboneElement "serviceContractTypes" "Type which describes a service contract. Used in interaction GetSupportedServiceContracts."
  * ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"
