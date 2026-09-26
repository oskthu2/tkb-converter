// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokVardandeEnhet v1.0
// Genererad: 2026-09-26

Logical: SokVardandeEnhetRequest
Id: sokvardandeenhet-request
Title: "SokVardandeEnhet — Request"
Description: """
  Logisk modell för begäran i SokVardandeEnhet
  (urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 BackboneElement "logicalAddress" "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter."
* glnkod 1..1 string "glnkod" "glnkod"
* dosaktor 1..1 string "dosaktor" "dosaktor"
* vardandeenhetnamn 1..1 string "vardandeenhetnamn" "vardandeenhetnamn"
* vardandeenhetort 1..1 string "vardandeenhetort" "vardandeenhetort"
