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
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Meddelandeninfo 0..* BackboneElement "Meddelandeninfo" "Meddelandeninfo"
  * meddelandeid 1..1 string "meddelandeid" "meddelandeid"
  * meddelandestatus 1..1 code "meddelandestatus" "meddelandestatus"
  * meddelandestatus from MeddelandeStatusVS (required)
  * statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"
