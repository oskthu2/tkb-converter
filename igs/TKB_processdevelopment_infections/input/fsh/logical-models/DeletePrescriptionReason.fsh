// Elementen genereras ur DeletePrescriptionReasonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescriptionReason v1.0
// Genererad: 2026-09-17

Logical: DeletePrescriptionReason
Id: deleteprescriptionreason
Title: "DeletePrescriptionReason"
Description: """
  Logisk modell för tjänstekontraktet DeletePrescriptionReason
  (RIV-TA processdevelopment:infections). Raderar information som tidigare
  registrerats via ProcessPrescriptionReason. Representerar responsens
  informationsstruktur.

  Request innehåller endast tre filterfält (logicalAddress, activityId,
  conditionId — exakt ett av activityId/conditionId ska anges) och
  dokumenteras i sin helhet i avsnitt 7 istället för som en separat
  logisk modell.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* ResultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"
