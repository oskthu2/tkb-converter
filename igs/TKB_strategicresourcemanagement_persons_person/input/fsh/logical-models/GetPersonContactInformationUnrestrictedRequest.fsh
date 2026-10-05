// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetPersonContactInformationUnrestricted v4.0
// Genererad: 2026-09-26

Logical: GetPersonContactInformationUnrestrictedRequest
Id: getpersoncontactinformationunrestricted-request
Title: "GetPersonContactInformationUnrestricted — Request"
Description: """
  Logisk modell för begäran i GetPersonContactInformationUnrestricted
  (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "4.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. http://tempuri.org"
* personId 1..1 BackboneElement "personId" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
