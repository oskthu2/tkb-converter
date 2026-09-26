// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokVardandeEnhet v1.0
// Genererad: 2026-09-26

Logical: SokVardandeEnhet
Id: sokvardandeenhet
Title: "SokVardandeEnhet — Response"
Description: """
  Logisk modell för svaret i SokVardandeEnhet
  (urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetResponseType).
"""
Characteristics: #can-be-target
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* dosaktor 1..1 string "dosaktor" "dosaktor"
* VardandeEnhet 0..* BackboneElement "VardandeEnhet" "VardandeEnhet"
  * vardandeenhetid 1..1 string "vardandeenhetid" "vardandeenhetid"
  * vardandeenhetnamn 1..1 string "vardandeenhetnamn" "vardandeenhetnamn"
  * vardandeenhetpostort 1..1 string "vardandeenhetpostort" "vardandeenhetpostort"
  * glnkod 1..1 string "glnkod" "glnkod"
