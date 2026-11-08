// Elementen genereras ur UppdateraMeddelandeStatusResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: UppdateraMeddelandeStatus v1.0
// Genererad: 2026-09-26

Logical: UppdateraMeddelandeStatus
Id: uppdaterameddelandestatus
Title: "UppdateraMeddelandeStatus — Response"
Description: """
  Logisk modell för svaret i UppdateraMeddelandeStatus
  (urn:riv:druglogistics:dosedispensing:UppdateraMeddelandeStatusResponder:1, UppdateraMeddelandeStatusResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Meddelandeninfo 0..* Base "UppdateraMeddelandestatus" "Meddelandeninfo"
* Meddelandeninfo.meddelandeid 1..1 string "meddelandeid" "meddelandeid"
* Meddelandeninfo.meddelandestatus 1..1 code "meddelandestatus" "meddelandestatus Tillåtna värden: L, O, B, BLO, LO, BL."
* Meddelandeninfo.meddelandestatus from MeddelandeStatusVS (required)
* Meddelandeninfo.statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UppdateraMeddelandeStatusFieldDescriptions
