// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaApoteksInfo v1.0
// Genererad: 2026-09-26

Logical: HamtaApoteksInfo
Id: hamtaapoteksinfo
Title: "HamtaApoteksInfo — Response"
Description: """
  Logisk modell för svaret i HamtaApoteksInfo
  (urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1, HamtaApoteksInfoResponseType).
"""
Characteristics: #can-be-target
* apoteksinformationLista 1..* BackboneElement "apoteksinformationLista" "Lista innehållande ett eller flera Apoteksinformation."
  * aktorsnamn 0..1 string "aktorsnamn" "Officiellt namn för aktör"
  * aktorsorgnr 0..1 string "aktorsorgnr" "Aktörens organisationsnummer. (xs:long i schemat.)"
  * allmantelefon 0..1 string "allmantelefon" "Telefonnummer för allmänheten"
  * besoksadress 0..1 string "besoksadress" "Expeditionsställets besöksadress"
  * eReceptDjur 1..1 boolean "eReceptDjur" "Markering gällande om apoteket kan expediera elektroniska djurrecept."
  * fax 0..1 string "fax" "Expeditionsställets faxnummer"
  * glnKod 1..1 string "glnKod" "Expeditionsställets GLN-kod"
  * huvudtypkod 0..1 string "huvudtypkod" "Kod som beskriver huvudverksamheten för expeditionsstället"
  * namn 0..1 string "namn" "Expeditionsställets officiella namn"
  * ort 0..1 string "ort" "Expeditionsställets besöksort"
  * slutdatum 0..1 dateTime "slutdatum" "Datum för stängning av verksamhet"
  * startdatum 1..1 dateTime "startdatum" "Datum för start av verksamhet"
