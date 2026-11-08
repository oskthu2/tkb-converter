// Elementen genereras ur DeleteCareEncounterResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeleteCareEncounter v1.0
// Genererad: 2026-05-19

Logical: DeleteCareEncounterRequest
Id: deletecareencounter-request
Title: "DeleteCareEncounter — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeleteCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).
  Raderar information som tidigare registrerats via ProcessCareEncounter.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careEncounterId 1..1 string "careEncounterId" "careEncounterId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteCareEncounterRequestFieldDescriptions

Logical: DeleteCareEncounterResponse
Id: deletecareencounter-response
Title: "DeleteCareEncounter — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeleteCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteCareEncounterResponseFieldDescriptions
