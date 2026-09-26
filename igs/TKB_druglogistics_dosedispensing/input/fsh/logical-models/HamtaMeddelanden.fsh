// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaMeddelanden v1.0
// Genererad: 2026-09-26

Logical: HamtaMeddelanden
Id: hamtameddelanden
Title: "HamtaMeddelanden — Response"
Description: """
  Logisk modell för svaret i HamtaMeddelanden
  (urn:riv:druglogistics:dosedispensing:HamtaMeddelandenResponder:1, HamtaMeddelandenResponseType).
"""
Characteristics: #can-be-target
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Meddelanden 0..* BackboneElement "Meddelanden" "Meddelanden"
  * meddelandeid 1..1 string "meddelandeid" "meddelandeid"
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
  * dosapoteknamn 0..1 string "dosapoteknamn" "dosapoteknamn"
  * sandningstidpunkt 1..1 dateTime "sandningstidpunkt" "sandningstidpunkt"
  * sandarefornamn 1..1 string "sandarefornamn" "sandarefornamn"
  * sandareefternamn 1..1 string "sandareefternamn" "sandareefternamn"
  * sandarehsaid 0..1 string "sandarehsaid" "sandarehsaid"
  * sandareyrkeskod 0..1 code "sandareyrkeskod" "sandareyrkeskod"
  * sandareyrkeskod from YrkesKodVS (required)
  * sandarearbetsplats 0..1 string "sandarearbetsplats" "sandarearbetsplats"
  * rubrik 0..1 string "rubrik" "rubrik"
  * prioritet 0..1 code "prioritet" "prioritet"
  * prioritet from MeddelandePrioritetVS (required)
  * meddelandestatus 1..1 code "meddelandestatus" "meddelandestatus"
  * meddelandestatus from MeddelandeStatusVS (required)
  * meddelandestatusfornamn 1..1 string "meddelandestatusfornamn" "meddelandestatusfornamn"
  * meddelandestatusefternamn 1..1 string "meddelandestatusefternamn" "meddelandestatusefternamn"
  * meddelandestatusarbetsplats 1..1 string "meddelandestatusarbetsplats" "meddelandestatusarbetsplats"
  * statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"
  * meddelande 1..1 string "meddelande" "meddelande"
