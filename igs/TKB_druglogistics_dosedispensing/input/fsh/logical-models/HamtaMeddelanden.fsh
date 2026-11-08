// Elementen genereras ur HamtaMeddelandenResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Meddelanden 0..* Base "HamtaMeddelandeninfoResponse" "Meddelanden"
* Meddelanden.meddelandeid 1..1 string "meddelandeid" "meddelandeid"
* Meddelanden.Patientinformation 0..1 Base "PatientinfoResponse" "Patientinformation"
* Meddelanden.Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Meddelanden.Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Meddelanden.Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Meddelanden.Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Meddelanden.Patientinformation.identitetstyp from IdentitetstypVS (required)
* Meddelanden.Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Meddelanden.Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Meddelanden.Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Meddelanden.kommunikationsriktning 0..1 code "kommunikationsriktning" "kommunikationsriktning Tillåtna värden: 1, 2."
* Meddelanden.kommunikationsriktning from KommunikationsriktningVS (required)
* Meddelanden.tidigaremeddelandeid 0..1 string "tidigaremeddelandeid" "tidigaremeddelandeid"
* Meddelanden.ordinationsid 0..1 string "ordinationsid" "ordinationsid"
* Meddelanden.glnkod 0..1 string "glnkod" "glnkod"
* Meddelanden.dosapoteknamn 0..1 string "dosapoteknamn" "dosapoteknamn"
* Meddelanden.sandningstidpunkt 1..1 dateTime "sandningstidpunkt" "sandningstidpunkt"
* Meddelanden.sandarefornamn 1..1 string "sandarefornamn" "sandarefornamn"
* Meddelanden.sandareefternamn 1..1 string "sandareefternamn" "sandareefternamn"
* Meddelanden.sandarehsaid 0..1 string "sandarehsaid" "sandarehsaid"
* Meddelanden.sandareyrkeskod 0..1 code "sandareyrkeskod" "sandareyrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH."
* Meddelanden.sandareyrkeskod from YrkesKodVS (required)
* Meddelanden.sandarearbetsplats 0..1 string "sandarearbetsplats" "sandarearbetsplats"
* Meddelanden.rubrik 0..1 string "rubrik" "rubrik"
* Meddelanden.prioritet 0..1 code "prioritet" "prioritet Tillåtna värden: L, N, H."
* Meddelanden.prioritet from MeddelandePrioritetVS (required)
* Meddelanden.meddelandestatus 1..1 code "meddelandestatus" "meddelandestatus Tillåtna värden: L, O, B, BLO, LO, BL."
* Meddelanden.meddelandestatus from MeddelandeStatusVS (required)
* Meddelanden.meddelandestatusfornamn 1..1 string "meddelandestatusfornamn" "meddelandestatusfornamn"
* Meddelanden.meddelandestatusefternamn 1..1 string "meddelandestatusefternamn" "meddelandestatusefternamn"
* Meddelanden.meddelandestatusarbetsplats 1..1 string "meddelandestatusarbetsplats" "meddelandestatusarbetsplats"
* Meddelanden.statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"
* Meddelanden.meddelande 1..1 string "meddelande" "meddelande"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaMeddelandenFieldDescriptions
