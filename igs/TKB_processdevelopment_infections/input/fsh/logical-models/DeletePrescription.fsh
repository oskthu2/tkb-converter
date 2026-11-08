// Elementen genereras ur DeletePrescriptionResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescription v1.0
// Genererad: 2026-09-17

Logical: DeletePrescription
Id: deleteprescription
Title: "DeletePrescription"
Description: """
  Logisk modell för tjänstekontraktet DeletePrescription
  (RIV-TA processdevelopment:infections). Raderar information om en
  ordination som tidigare registrerats via ProcessPrescriptionReason
  (ordinationsorsaken för ordinationen tas inte bort). Representerar
  responsens informationsstruktur.

  Request innehåller endast två filterfält (logicalAddress, prescriptionId)
  och dokumenteras i sin helhet i avsnitt 7 istället för som en separat
  logisk modell.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"
