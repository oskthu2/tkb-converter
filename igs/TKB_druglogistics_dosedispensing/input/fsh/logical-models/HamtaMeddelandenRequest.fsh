// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaMeddelanden v1.0
// Genererad: 2026-09-26

Logical: HamtaMeddelandenRequest
Id: hamtameddelanden-request
Title: "HamtaMeddelanden — Request"
Description: """
  Logisk modell för begäran i HamtaMeddelanden
  (urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenType), inklusive SOAP-huvuden enligt WSDL.
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
* Meddelandenutval 1..1 BackboneElement "Meddelandenutval" "Meddelandenutval"
  * Meddelandetyp 1..1 code "Meddelandetyp" "Meddelandetyp"
  * Meddelandetyp from MeddelandetypVS (required)
  * Patientinformation 0..1 BackboneElement "Patientinformation" "Patientinformation"
    * fornamn 1..1 string "fornamn" "Anvandarens fornamn."
    * mellannamn 0..1 string "mellannamn" "Anvandarens mellanamn."
    * efternamn 1..1 string "efternamn" "Anvandarens efternamn."
    * identitetstyp 1..1 code "identitetstyp" "identitetstyp"
    * identitetstyp from IdentitetstypVS (required)
    * personid 1..1 string "personid" "Anvandarens personid"
    * lanskod 0..1 string "lanskod" "Anvandarens folkbokforda lanskod"
    * kommunkod 0..1 string "kommunkod" "Anvandarens folkbokforda kommunkod"
  * meddelandeid 0..1 string "meddelandeid" "meddelandeid"
  * meddelandestatus 0..1 code "meddelandestatus" "meddelandestatus"
  * meddelandestatus from MeddelandeStatusVS (required)
  * ordinationsid 0..1 string "ordinationsid" "ordinationsid"
  * vardgivarespersonid 0..1 string "vardgivarespersonid" "vardgivarespersonid"
  * forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
  * frantid 0..1 dateTime "frantid" "frantid"
  * tilltid 0..1 dateTime "tilltid" "tilltid"
