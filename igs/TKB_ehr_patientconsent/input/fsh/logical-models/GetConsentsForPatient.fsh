// Elementen genereras ur GetConsentsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetConsentsForPatient v1.0
// RIV-TA: urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1
// Genererad: 2026-04-22

Logical: GetConsentsForPatient
Id: getconsentsforpatient
Title: "GetConsentsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetConsentsForPatient
  (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.
  Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som
  underlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats,
  makulerade eller återkallade) returneras ej.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetConsentsResultType 1..1 Base "GetConsentsResultType" "GetConsentsResultType"
* GetConsentsResultType.Result 1..1 Base "ResultType" "Result"
* GetConsentsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetConsentsResultType.Result.ResultCode from ResultCodeVS (required)
* GetConsentsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetConsentsResultType.PdlAssertions 0..* Base "PDLAssertionType" "PdlAssertions"
* GetConsentsResultType.PdlAssertions.AssertionId 1..1 string "AssertionId" "AssertionId"
* GetConsentsResultType.PdlAssertions.AssertionType 1..1 code "AssertionType" "AssertionType Tillåtna värden: Consent, Emergency."
* GetConsentsResultType.PdlAssertions.AssertionType from AssertionTypeVS (required)
* GetConsentsResultType.PdlAssertions.Scope 1..1 code "Scope" "Scope Tillåtna värden: NationalLevel."
* GetConsentsResultType.PdlAssertions.Scope from ScopeVS (required)
* GetConsentsResultType.PdlAssertions.PatientId 1..1 string "PatientId" "PatientId"
* GetConsentsResultType.PdlAssertions.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* GetConsentsResultType.PdlAssertions.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* GetConsentsResultType.PdlAssertions.EmployeeId 0..1 string "EmployeeId" "EmployeeId"
* GetConsentsResultType.PdlAssertions.StartDate 1..1 dateTime "StartDate" "StartDate"
* GetConsentsResultType.PdlAssertions.EndDate 0..1 dateTime "EndDate" "EndDate"
* GetConsentsResultType.PdlAssertions.OwnerId 0..1 string "OwnerId" "OwnerId"
