// Elementen genereras ur UppdateraVardtagareinformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Patientinformation 0..1 Base "PatientinfoResponse" "Patientinformation"
* Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Patientinformation.identitetstyp from IdentitetstypVS (required)
* Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UppdateraVardtagareinformationFieldDescriptions
