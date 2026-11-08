// Elementen genereras ur DeletePrescriptionReasonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescriptionReason v1.0
// Genererad: 2026-05-19

Logical: DeletePrescriptionReasonRequest
Id: deleteprescriptionreason-request
Title: "DeletePrescriptionReason — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeletePrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1).
  Raderar information som tidigare registrerats via ProcessPrescriptionReason.
  Antingen activityId eller conditionId ska anges, men inte båda.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* activityId 0..1 IIType "activityId" "activityId"
* conditionId 0..1 IIType "conditionId" "conditionId"
* obeys deleteprescriptionreasonrequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeletePrescriptionReasonRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys deleteprescriptionreason-request-activity-xor-condition

Invariant: deleteprescriptionreasonrequest-choice-1
Description: "Exakt ett av activityId, conditionId ska anges (xs:choice i schemat)."
Expression: "activityId.exists() xor conditionId.exists()"
Severity: #error

Logical: DeletePrescriptionReasonResponse
Id: deleteprescriptionreason-response
Title: "DeletePrescriptionReason — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeletePrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeletePrescriptionReasonResponseFieldDescriptions

Invariant: deleteprescriptionreason-request-activity-xor-condition
Description: "Exakt ett av activityId och conditionId ska anges (TKB 7.2, Övriga regler)."
Expression: "activityId.exists() xor conditionId.exists()"
Severity: #error
