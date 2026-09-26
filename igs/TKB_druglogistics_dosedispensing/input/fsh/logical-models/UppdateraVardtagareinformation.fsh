// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: UppdateraVardtagareinformation v1.0
// Genererad: 2026-09-26

Logical: UppdateraVardtagareinformation
Id: uppdateravardtagareinformation
Title: "UppdateraVardtagareinformation — Response"
Description: """
  Logisk modell för svaret i UppdateraVardtagareinformation
  (urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationResponseType).
"""
Characteristics: #can-be-target
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Patientinformation 0..1 BackboneElement "Patientinformation" "Patientinformation"
  * fornamn 1..1 string "fornamn" "Anvandarens fornamn."
  * mellannamn 0..1 string "mellannamn" "Anvandarens mellanamn."
  * efternamn 1..1 string "efternamn" "Anvandarens efternamn."
  * identitetstyp 1..1 code "identitetstyp" "identitetstyp"
  * identitetstyp from IdentitetstypVS (required)
  * personid 1..1 string "personid" "Anvandarens personid"
  * lanskod 0..1 string "lanskod" "Anvandarens folkbokforda lanskod"
  * kommunkod 0..1 string "kommunkod" "Anvandarens folkbokforda kommunkod"
