// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkickaMeddelanden v1.0
// Genererad: 2026-09-26

Logical: SkickaMeddelanden
Id: skickameddelanden
Title: "SkickaMeddelanden — Response"
Description: """
  Logisk modell för svaret i SkickaMeddelanden
  (urn:riv:druglogistics:dosedispensing:SkickaMeddelandenResponder:1, SkickaMeddelandenResponseType).
"""
Characteristics: #can-be-target
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* meddelande 0..1 integer "meddelande" "meddelande"
