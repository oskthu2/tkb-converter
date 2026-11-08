// Elementen genereras ur ProcessPrescriptionReasonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: ProcessPrescriptionReason v1.0
// Genererad: 2026-05-19

Logical: ProcessPrescriptionReasonRequest
Id: processprescriptionreason-request
Title: "ProcessPrescriptionReason — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessPrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1).
  Registrerar en ordinationsorsak med information om patient, organisatorisk enhet,
  eventuellt aktivitet, ordination och ordinerad substans.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* prescriptionReason 1..1 Base "PrescriptionReasonType" "prescriptionReason"
* prescriptionReason.prescriptionCareUnitId 1..1 IIType "prescriptionCareUnitId" "prescriptionCareUnitId"
* prescriptionReason.prescriptionReasonCareUnitId 1..1 IIType "prescriptionReasonCareUnitId" "prescriptionReasonCareUnitId"
* prescriptionReason.prescriptionTime 0..1 string "prescriptionTime" "prescriptionTime"
* prescriptionReason.prescriptionTime only TimeStampType
* prescriptionReason.prescriptionReasonTime 0..1 string "prescriptionReasonTime" "prescriptionReasonTime"
* prescriptionReason.prescriptionReasonTime only TimeStampType
* prescriptionReason.prescriptionLocationId 0..1 IIType "prescriptionLocationId" "prescriptionLocationId"
* prescriptionReason.prescriptionReasonLocationId 0..1 IIType "prescriptionReasonLocationId" "prescriptionReasonLocationId"
* prescriptionReason.activityCode 1..1 CVType "activityCode" "activityCode"
* prescriptionReason.activityId 1..1 IIType "activityId" "activityId"
* prescriptionReason.conditionId 1..1 IIType "conditionId" "conditionId"
* prescriptionReason.conditionCode 1..1 CVType "conditionCode" "conditionCode"
* prescriptionReason.source 1..1 CVType "source" "source"
* prescriptionReason.prescriptionId 1..1 IIType "prescriptionId" "prescriptionId"
* prescriptionReason.substanceCode 1..1 CVType "substanceCode" "substanceCode"
* prescriptionReason.patient 1..1 Base "PatientType" "patient"
* prescriptionReason.patient.id 1..1 IIType "id" "id"
* prescriptionReason.patient.birthTime 1..1 string "birthTime" "birthTime"
* prescriptionReason.patient.birthTime only DateType
* prescriptionReason.patient.gender 1..1 CVType "gender" "gender"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessPrescriptionReasonRequestFieldDescriptions

Logical: ProcessPrescriptionReasonResponse
Id: processprescriptionreason-response
Title: "ProcessPrescriptionReason — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet ProcessPrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessPrescriptionReasonResponseFieldDescriptions
