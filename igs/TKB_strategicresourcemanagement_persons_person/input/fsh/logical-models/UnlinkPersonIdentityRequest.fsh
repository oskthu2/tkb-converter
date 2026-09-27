// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UnlinkPersonIdentity v4.0
// Genererad: 2026-09-26

Logical: UnlinkPersonIdentityRequest
Id: unlinkpersonidentity-request
Title: "UnlinkPersonIdentity — Request"
Description: """
  Logisk modell för begäran i UnlinkPersonIdentity
  (urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. http://tempuri.org"
* actor 1..1 BackboneElement "actor" "Datatyp som identifierar en aktör."
  * actorId 1..1 BackboneElement "actorId" "En universellt unik identifierare. Heter id i schemat."
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * professional 0..1 BackboneElement "professional" "Datatyp som identifierar en aktör inom en profession."
    * organizationId 1..1 BackboneElement "organizationId" "En universellt unik identifierare."
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * updateTime 0..1 string "updateTime" "updateTime"
* unlinkFromIdentity 1..1 BackboneElement "unlinkFromIdentity" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* unlinkIdentity 1..1 BackboneElement "unlinkIdentity" "En universellt unik identifierare."
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
