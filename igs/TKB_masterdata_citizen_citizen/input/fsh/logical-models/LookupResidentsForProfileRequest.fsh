// Genererad från XSD för masterdata.citizen.citizen v2.0 (Genererad ur scheman i riv.masterdata.citizen.citizen, tagg 2.0; scripts/xsd_to_ig.py)
// Kontrakt: LookupResidentsForProfile v2.0
// Genererad: 2026-09-26

Logical: LookupResidentsForProfileRequest
Id: lookupresidentsforprofile-request
Title: "LookupResidentsForProfile — Request"
Description: """
  Logisk modell för begäran i LookupResidentsForProfile
  (urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. http://tempuri.org"
* personId 1..* BackboneElement "personId" "Personidentitet"
  * personalIdentityId 1..1 string "personalIdentityId" "personalIdentityId Heter id i schemat."
  * personalIdentityType 1..1 string "personalIdentityType" "personalIdentityType Heter type i schemat."
* profile 1..1 code "profile" "profile"
* profile from LookupProfileVS (required)
