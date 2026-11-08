// Elementen genereras ur GetRheumatoidArthritisDataResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:rheuma v1.0
// Kontrakt: GetRheumatoidArthritisData v1.0
// Genererad: 2026-09-26

Logical: GetRheumatoidArthritisDataRequest
Id: getrheumatoidarthritisdata-request
Title: "GetRheumatoidArthritisData — Request"
Description: """
  Logisk modell för begäran i GetRheumatoidArthritisData
  (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetRheumatoidArthritisDataRequestFieldDescriptions
