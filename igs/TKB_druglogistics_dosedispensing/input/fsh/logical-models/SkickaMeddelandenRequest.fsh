// Elementen genereras ur SkickaMeddelandenResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* Meddelandeninfo 1..1 Base "MeddelandeninfoRequest" "Meddelandeninfo"
* Meddelandeninfo.Meddelandetyp 1..1 code "Meddelandetyp" "Meddelandetyp Tillåtna värden: OB, PB, FR, MB, VG."
* Meddelandeninfo.Meddelandetyp from MeddelandetypVS (required)
* Meddelandeninfo.Patientinformation 0..1 Base "PatientinfoResponse" "Patientinformation"
* Meddelandeninfo.Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Meddelandeninfo.Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Meddelandeninfo.Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Meddelandeninfo.Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Meddelandeninfo.Patientinformation.identitetstyp from IdentitetstypVS (required)
* Meddelandeninfo.Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Meddelandeninfo.Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Meddelandeninfo.Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Meddelandeninfo.kommunikationsriktning 0..1 code "kommunikationsriktning" "kommunikationsriktning Tillåtna värden: 1, 2."
* Meddelandeninfo.kommunikationsriktning from KommunikationsriktningVS (required)
* Meddelandeninfo.tidigaremeddelandeid 0..1 string "tidigaremeddelandeid" "tidigaremeddelandeid"
* Meddelandeninfo.ordinationsid 0..1 string "ordinationsid" "ordinationsid"
* Meddelandeninfo.glnkod 0..1 string "glnkod" "glnkod"
* Meddelandeninfo.sandningstidpunkt 1..1 dateTime "sandningstidpunkt" "sandningstidpunkt"
* Meddelandeninfo.rubrik 0..1 string "rubrik" "rubrik"
* Meddelandeninfo.prioritet 0..1 code "prioritet" "prioritet Tillåtna värden: L, N, H."
* Meddelandeninfo.prioritet from MeddelandePrioritetVS (required)
* Meddelandeninfo.meddelande 1..1 string "meddelande" "meddelande"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SkickaMeddelandenRequestFieldDescriptions
