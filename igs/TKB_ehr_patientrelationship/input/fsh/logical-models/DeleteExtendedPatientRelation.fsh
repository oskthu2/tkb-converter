// Elementen genereras ur DeleteExtendedPatientRelationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: DeleteExtendedPatientRelation v1.0
// Namespace: urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1
// Genererad: 2026-05-19

Logical: DeleteExtendedPatientRelation
Id: deleteextendedpatientrelation
Title: "DeleteExtendedPatientRelation"
Description: """
  Logisk modell för tjänstekontraktet DeleteExtendedPatientRelation
  (RIV-TA urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1).
  Representerar responsens informationsstruktur — status för om makuleringen utfördes.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
