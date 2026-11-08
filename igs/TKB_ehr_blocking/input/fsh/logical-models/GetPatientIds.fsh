// Elementen genereras ur GetPatientIdsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetPatientIds v2.0 (administration)
// Genererad: 2026-04-09

Logical: GetPatientIds
Id: getpatientids
Title: "GetPatientIds"
Description: """
  Logisk modell för tjänstekontraktet GetPatientIds
  (RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2).
  Läser alla patienter med minst en aktiv spärr för en viss organisation.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* GetPatientIdResultType 1..1 Base "GetPatientIdResultType" "GetPatientIdResultType"
* GetPatientIdResultType.Result 1..1 Base "ResultType" "Result"
* GetPatientIdResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetPatientIdResultType.Result.ResultCode from ResultCodeVS (required)
* GetPatientIdResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetPatientIdResultType.PatientIds 0..* string "PatientIds" "PatientIds"
