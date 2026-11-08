// Elementen genereras ur SkickaMeddelandenResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* meddelande 0..1 integer "meddelande" "meddelande"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SkickaMeddelandenFieldDescriptions
