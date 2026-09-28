// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListingCounty v2.0
// Genererad: 2026-09-26

Logical: GetListingCountyRequest
Id: getlistingcounty-request
Title: "GetListingCounty — Request"
Description: """
  Logisk modell för begäran i GetListingCounty
  (urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution"
* actor 1..1 BackboneElement "actor" "actor"
  * actorId 1..1 BackboneElement "actorId" "actorId"
    * root 1..1 string "root" "root"
    * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
  * actorType 1..1 code "actorType" "actorType"
  * actorType from ActorTypeVS (required)
* personId 1..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
