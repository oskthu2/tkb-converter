// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkickaMeddelanden v1.0
// Genererad: 2026-09-26

Logical: SkickaMeddelandenRequest
Id: skickameddelanden-request
Title: "SkickaMeddelanden — Request"
Description: """
  Logisk modell för begäran i SkickaMeddelanden
  (urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenType), inklusive SOAP-huvuden enligt WSDL.
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
* Meddelandeninfo 1..1 BackboneElement "Meddelandeninfo" "Meddelandeninfo"
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
  * kommunikationsriktning 0..1 code "kommunikationsriktning" "kommunikationsriktning"
  * kommunikationsriktning from KommunikationsriktningVS (required)
  * tidigaremeddelandeid 0..1 string "tidigaremeddelandeid" "tidigaremeddelandeid"
  * ordinationsid 0..1 string "ordinationsid" "ordinationsid"
  * glnkod 0..1 string "glnkod" "glnkod"
  * sandningstidpunkt 1..1 dateTime "sandningstidpunkt" "sandningstidpunkt"
  * rubrik 0..1 string "rubrik" "rubrik"
  * prioritet 0..1 code "prioritet" "prioritet"
  * prioritet from MeddelandePrioritetVS (required)
  * meddelande 1..1 string "meddelande" "meddelande"
