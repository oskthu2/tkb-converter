// Elementen genereras ur GetFunctionalStatusResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description v3.0.6
// Kontrakt: GetFunctionalStatus v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2
// Genererad: 2026-03-19

Logical: GetFunctionalStatusRequest
Id: getfunctionalstatus-request
Title: "GetFunctionalStatus — Request"
Description: """
  Logisk modell för requestparametrar i GetFunctionalStatus
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).
  Söker funktionsstatusbedömningar för en patient med valfri filtrering.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFunctionalStatusRequestFieldDescriptions
