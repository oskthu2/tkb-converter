// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaOrginalforpackning v1.0
// Genererad: 2026-09-26

Logical: HamtaOrginalforpackningRequest
Id: hamtaorginalforpackning-request
Title: "HamtaOrginalforpackning — Request"
Description: """
  Logisk modell för begäran i HamtaOrginalforpackning
  (urn:riv:druglogistics:dosedispensing:HamtaOrginalforpackningResponder:1, HamtaOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 BackboneElement "logicalAddress" "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter."
* glnkod 1..1 string "glnkod" "glnkod"
* Behorighetsinformation 1..1 BackboneElement "Behorighetsinformation" "Behorighetsinformation"
  * fornamn 1..1 string "fornamn" "fornamn"
  * efternamn 1..1 string "efternamn" "efternamn"
  * forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
  * yrkeskod 0..1 code "yrkeskod" "yrkeskod"
  * yrkeskod from YrkesKodVS (required)
  * arbetsplatskod 1..1 string "arbetsplatskod" "arbetsplatskod"
  * hsaid 0..1 string "hsaid" "hsaid"
  * personnummer 0..1 string "personnummer" "personnummer"
  * organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
* Bestallningsutval 1..1 BackboneElement "Bestallningsutval" "Bestallningsutval"
  * bestallningsurval 1..1 code "bestallningsurval" "bestallningsurval"
  * bestallningsurval from BestallningsurvalVS (required)
  * bestallningsid 0..1 string "bestallningsid" "bestallningsid"
  * patientid 0..1 string "patientid" "patientid"
  * patientidtyp 0..1 code "patientidtyp" "patientidtyp"
  * patientidtyp from IdentitetstypVS (required)
  * patientfornamn 0..1 string "patientfornamn" "patientfornamn"
  * patientefternamn 0..1 string "patientefternamn" "patientefternamn"
  * vardgivarid 0..1 string "vardgivarid" "vardgivarid"
  * dosmottagareid 0..* string "dosmottagareid" "dosmottagareid"
  * bestallningsstatus 1..1 code "bestallningsstatus" "bestallningsstatus"
  * bestallningsstatus from BestallningsStatusVS (required)
  * frandatum 1..1 dateTime "frandatum" "frandatum"
  * tilldatum 1..1 dateTime "tilldatum" "tilldatum"
