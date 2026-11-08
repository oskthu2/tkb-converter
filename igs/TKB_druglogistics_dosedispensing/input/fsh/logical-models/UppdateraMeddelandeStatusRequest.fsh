// Elementen genereras ur UppdateraMeddelandeStatusResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* Meddelandeninfo 1..* Base "UppdateraMeddelandestatus" "Meddelandeninfo"
* Meddelandeninfo.meddelandeid 1..1 string "meddelandeid" "meddelandeid"
* Meddelandeninfo.meddelandestatus 1..1 code "meddelandestatus" "meddelandestatus Tillåtna värden: L, O, B, BLO, LO, BL."
* Meddelandeninfo.meddelandestatus from MeddelandeStatusVS (required)
* Meddelandeninfo.statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UppdateraMeddelandeStatusRequestFieldDescriptions
