// Elementen genereras ur HamtaOrginalforpackningResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* Bestallningsutval 1..1 Base "BestallningsutvalRequest" "Bestallningsutval"
* Bestallningsutval.bestallningsurval 1..1 code "bestallningsurval" "bestallningsurval Tillåtna värden: PU, DM, BU, VG."
* Bestallningsutval.bestallningsurval from BestallningsurvalVS (required)
* Bestallningsutval.bestallningsid 0..1 string "bestallningsid" "bestallningsid"
* Bestallningsutval.patientid 0..1 string "patientid" "patientid"
* Bestallningsutval.patientidtyp 0..1 code "patientidtyp" "patientidtyp Tillåtna värden: P, R, S."
* Bestallningsutval.patientidtyp from IdentitetstypVS (required)
* Bestallningsutval.patientfornamn 0..1 string "patientfornamn" "patientfornamn"
* Bestallningsutval.patientefternamn 0..1 string "patientefternamn" "patientefternamn"
* Bestallningsutval.vardgivarid 0..1 string "vardgivarid" "vardgivarid"
* Bestallningsutval.dosmottagareid 0..* string "dosmottagareid" "dosmottagareid"
* Bestallningsutval.bestallningsstatus 1..1 code "bestallningsstatus" "bestallningsstatus Tillåtna värden: 1, 2, 3, 4, 5."
* Bestallningsutval.bestallningsstatus from BestallningsStatusVS (required)
* Bestallningsutval.frandatum 1..1 dateTime "frandatum" "frandatum"
* Bestallningsutval.tilldatum 1..1 dateTime "tilldatum" "tilldatum"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaOrginalforpackningRequestFieldDescriptions
