// Elementen genereras ur HamtaMeddelandenResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* glnkod 1..1 string "glnkod" "glnkod"
* Behorighetsinformation 1..1 Base "BehorighetsinfoRequest" "Behorighetsinformation"
* Behorighetsinformation.fornamn 1..1 string "fornamn" "fornamn"
* Behorighetsinformation.efternamn 1..1 string "efternamn" "efternamn"
* Behorighetsinformation.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* Behorighetsinformation.yrkeskod 0..1 code "yrkeskod" "yrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH."
* Behorighetsinformation.yrkeskod from YrkesKodVS (required)
* Behorighetsinformation.arbetsplatskod 1..1 string "arbetsplatskod" "arbetsplatskod"
* Behorighetsinformation.hsaid 0..1 string "hsaid" "hsaid"
* Behorighetsinformation.personnummer 0..1 string "personnummer" "personnummer"
* Behorighetsinformation.organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
* Meddelandenutval 1..1 Base "MeddelandenutvalRequest" "Meddelandenutval"
* Meddelandenutval.Meddelandetyp 1..1 code "Meddelandetyp" "Meddelandetyp Tillåtna värden: OB, PB, FR, MB, VG."
* Meddelandenutval.Meddelandetyp from MeddelandetypVS (required)
* Meddelandenutval.Patientinformation 0..1 Base "PatientinfoResponse" "Patientinformation"
* Meddelandenutval.Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Meddelandenutval.Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Meddelandenutval.Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Meddelandenutval.Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Meddelandenutval.Patientinformation.identitetstyp from IdentitetstypVS (required)
* Meddelandenutval.Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Meddelandenutval.Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Meddelandenutval.Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Meddelandenutval.meddelandeid 0..1 string "meddelandeid" "meddelandeid"
* Meddelandenutval.meddelandestatus 0..1 code "meddelandestatus" "meddelandestatus Tillåtna värden: L, O, B, BLO, LO, BL."
* Meddelandenutval.meddelandestatus from MeddelandeStatusVS (required)
* Meddelandenutval.ordinationsid 0..1 string "ordinationsid" "ordinationsid"
* Meddelandenutval.vardgivarespersonid 0..1 string "vardgivarespersonid" "vardgivarespersonid"
* Meddelandenutval.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* Meddelandenutval.frantid 0..1 dateTime "frantid" "frantid"
* Meddelandenutval.tilltid 0..1 dateTime "tilltid" "tilltid"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaMeddelandenRequestFieldDescriptions
