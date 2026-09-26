// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaLokaltProduktsortiment v1.1
// Genererad: 2026-09-26

Logical: HamtaLokaltProduktsortiment
Id: hamtalokaltproduktsortiment
Title: "HamtaLokaltProduktsortiment — Response"
Description: """
  Logisk modell för svaret i HamtaLokaltProduktsortiment
  (urn:riv:druglogistics:dosedispensing:HamtaLokaltProduktsortimentResponder:1, HamtaLokaltProduktsortimentResponseType).
"""
Characteristics: #can-be-target
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* dosaktor 1..1 string "dosaktor" "dosaktor"
* Produktsortiment 0..* BackboneElement "Produktsortiment" "Produktsortiment"
  * nplid 1..1 string "nplid" "nplid"
  * nplpackid 1..1 string "nplpackid" "nplpackid"
  * glnkod 0..* string "glnkod" "glnkod"
