// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: UppdateraMeddelandeStatus v1.0
// Genererad: 2026-09-26

Logical: UppdateraMeddelandeStatusRequest
Id: uppdaterameddelandestatus-request
Title: "UppdateraMeddelandeStatus — Request"
Description: """
  Logisk modell för begäran i UppdateraMeddelandeStatus
  (urn:riv:druglogistics:dosedispensing:UppdateraMeddelandeStatusResponder:1, UppdateraMeddelandeStatusType), inklusive SOAP-huvuden enligt WSDL.
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
* Meddelandeninfo 1..* BackboneElement "Meddelandeninfo" "Meddelandeninfo"
  * meddelandeid 1..1 string "meddelandeid" "meddelandeid"
  * meddelandestatus 1..1 code "meddelandestatus" "meddelandestatus"
  * meddelandestatus from MeddelandeStatusVS (required)
  * statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"
