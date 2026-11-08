// Elementen genereras ur DeleteCareEncounterResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: DeleteCareEncounter v1.0
// Genererad: 2026-09-17

Logical: DeleteCareEncounter
Id: deletecareencounter
Title: "DeleteCareEncounter"
Description: """
  Logisk modell för tjänstekontraktet DeleteCareEncounter
  (RIV-TA processdevelopment:infections). Raderar information som tidigare
  registrerats via ProcessCareEncounter. Representerar responsens
  informationsstruktur.

  Request innehåller endast två filterfält (logicalAddress, careEncounterId)
  och dokumenteras i sin helhet i avsnitt 7 istället för som en separat
  logisk modell.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"
