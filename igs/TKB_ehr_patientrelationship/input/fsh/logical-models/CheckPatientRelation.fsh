// Elementen genereras ur CheckPatientRelationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: CheckPatientRelation v1.0
// Namespace: urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1
// Genererad: 2026-05-19

Logical: CheckPatientRelation
Id: checkpatientrelation
Title: "CheckPatientRelation"
Description: """
  Logisk modell för tjänstekontraktet CheckPatientRelation
  (RIV-TA urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1).
  Representerar responsens informationsstruktur — kontrollresultat om patientrelation finns för angiven aktör.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* CheckResultType 1..1 Base "CheckResultType" "CheckResultType"
* CheckResultType.Result 1..1 Base "ResultType" "Result"
* CheckResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* CheckResultType.Result.ResultCode from ResultCodeVS (required)
* CheckResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* CheckResultType.HasPatientrelation 1..1 boolean "HasPatientrelation" "HasPatientrelation"
