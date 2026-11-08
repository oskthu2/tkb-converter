// Elementen genereras ur HamtaApoteksInfoResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* apoteksinformationLista 1..* Base "ApoteksinformationResponse" "Lista innehållande ett eller flera Apoteksinformation."
* apoteksinformationLista.aktorsnamn 0..1 string "Officiellt namn för aktör" "Officiellt namn för aktör"
* apoteksinformationLista.aktorsorgnr 0..1 string "Aktörens organisationsnummer." "Aktörens organisationsnummer."
* apoteksinformationLista.allmantelefon 0..1 string "Telefonnummer för allmänheten" "Telefonnummer för allmänheten"
* apoteksinformationLista.besoksadress 0..1 string "Expeditionsställets besöksadress" "Expeditionsställets besöksadress"
* apoteksinformationLista.eReceptDjur 1..1 boolean "Markering gällande om apoteket kan expediera elektroniska djurrecept." "Markering gällande om apoteket kan expediera elektroniska djurrecept."
* apoteksinformationLista.fax 0..1 string "Expeditionsställets faxnummer" "Expeditionsställets faxnummer"
* apoteksinformationLista.glnKod 1..1 string "Expeditionsställets GLN-kod" "Expeditionsställets GLN-kod"
* apoteksinformationLista.huvudtypkod 0..1 string "Kod som beskriver huvudverksamheten för expeditionsstället" "Kod som beskriver huvudverksamheten för expeditionsstället"
* apoteksinformationLista.namn 0..1 string "Expeditionsställets officiella namn" "Expeditionsställets officiella namn"
* apoteksinformationLista.ort 0..1 string "Expeditionsställets besöksort" "Expeditionsställets besöksort"
* apoteksinformationLista.slutdatum 0..1 dateTime "Datum för stängning av verksamhet" "Datum för stängning av verksamhet"
* apoteksinformationLista.startdatum 1..1 dateTime "Datum för start av verksamhet" "Datum för start av verksamhet"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaApoteksInfoFieldDescriptions
