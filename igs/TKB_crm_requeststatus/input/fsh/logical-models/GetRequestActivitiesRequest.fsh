// Elementen genereras ur GetRequestActivitiesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:requeststatus v2.0.1
// Kontrakt: GetRequestActivities v2.0
// Genererad: 2026-03-24

Logical: GetRequestActivitiesRequest
Id: getrequestactivities-request
Title: "GetRequestActivities — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetRequestActivities
  (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAId 0..* IIType "careUnitHSAId" "careUnitHSAId"
* careGiverHSAId 0..* IIType "careGiverHSAId" "careGiverHSAId"
* patientId 1..1 IIType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 IIType "sourceSystemHSAId" "sourceSystemHSAId"
* typeOfRequest 0..* CVType "typeOfRequest" "typeOfRequest"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetRequestActivitiesRequestFieldDescriptions
