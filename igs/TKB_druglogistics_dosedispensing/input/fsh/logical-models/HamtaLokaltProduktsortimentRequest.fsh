// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaLokaltProduktsortiment v1.1
// Genererad: 2026-09-26

Logical: HamtaLokaltProduktsortimentRequest
Id: hamtalokaltproduktsortiment-request
Title: "HamtaLokaltProduktsortiment — Request"
Description: """
  Logisk modell för begäran i HamtaLokaltProduktsortiment
  (urn:riv:druglogistics:dosedispensing:HamtaLokaltProduktsortimentResponder:1, HamtaLokaltProduktsortimentType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 BackboneElement "logicalAddress" "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter."
* glnkod 1..1 string "glnkod" "glnkod"
* dosaktor 1..1 string "dosaktor" "dosaktor"
