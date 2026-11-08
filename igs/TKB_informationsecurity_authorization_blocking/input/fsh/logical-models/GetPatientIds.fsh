// Elementen genereras ur GetPatientIdsResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetPatientIds v4.0
// Genererad: 2026-09-26

Logical: GetPatientIds
Id: getpatientids
Title: "GetPatientIds — Response"
Description: """
  Logisk modell för svaret i GetPatientIds
  (urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* getPatientIdResult 1..1 Base "GetPatientIdResultType" "getPatientIdResult"
* getPatientIdResult.result 1..1 Base "ResultType" "result"
* getPatientIdResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* getPatientIdResult.result.resultCode from ResultCodeVS (required)
* getPatientIdResult.result.resultText 0..1 string "resultText" "resultText"
* getPatientIdResult.patientIds 0..* IIType "patientIds" "patientIds"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPatientIdsFieldDescriptions
