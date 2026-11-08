// Elementen genereras ur GetConsentsForCareProviderResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetConsentsForCareProvider v1.0
// RIV-TA: urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1
// Genererad: 2026-04-22

Logical: GetConsentsForCareProvider
Id: getconsentsforcareprovider
Title: "GetConsentsForCareProvider"
Description: """
  Logisk modell för tjänstekontraktet GetConsentsForCareProvider
  (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation.
  Stödjer paginering via flaggan HasMore och CreatedOnOrAfter för inkrementell hämtning.
  Valfritt returneras även makulerade/återkallade intyg via getCancelledFlag.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetAllAssertionsResultType 1..1 Base "GetAllAssertionsResultType" "GetAllAssertionsResultType"
* GetAllAssertionsResultType.Result 1..1 Base "ResultType" "Result"
* GetAllAssertionsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetAllAssertionsResultType.Result.ResultCode from ResultCodeVS (required)
* GetAllAssertionsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetAllAssertionsResultType.MoreOnOrAfter 1..1 dateTime "MoreOnOrAfter" "MoreOnOrAfter"
* GetAllAssertionsResultType.HasMore 1..1 boolean "HasMore" "HasMore"
* GetAllAssertionsResultType.Assertions 0..* Base "PDLAssertionType" "Assertions"
* GetAllAssertionsResultType.Assertions.AssertionId 1..1 string "AssertionId" "AssertionId"
* GetAllAssertionsResultType.Assertions.AssertionType 1..1 code "AssertionType" "AssertionType Tillåtna värden: Consent, Emergency."
* GetAllAssertionsResultType.Assertions.AssertionType from AssertionTypeVS (required)
* GetAllAssertionsResultType.Assertions.Scope 1..1 code "Scope" "Scope Tillåtna värden: NationalLevel."
* GetAllAssertionsResultType.Assertions.Scope from ScopeVS (required)
* GetAllAssertionsResultType.Assertions.PatientId 1..1 string "PatientId" "PatientId"
* GetAllAssertionsResultType.Assertions.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* GetAllAssertionsResultType.Assertions.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* GetAllAssertionsResultType.Assertions.EmployeeId 0..1 string "EmployeeId" "EmployeeId"
* GetAllAssertionsResultType.Assertions.StartDate 1..1 dateTime "StartDate" "StartDate"
* GetAllAssertionsResultType.Assertions.EndDate 0..1 dateTime "EndDate" "EndDate"
* GetAllAssertionsResultType.Assertions.OwnerId 0..1 string "OwnerId" "OwnerId"
* GetAllAssertionsResultType.CancelledAssertions 0..* Base "CancelledAssertionType" "CancelledAssertions"
* GetAllAssertionsResultType.CancelledAssertions.AssertionId 1..1 string "AssertionId" "AssertionId"
* GetAllAssertionsResultType.CancelledAssertions.CancellationDate 1..1 dateTime "CancellationDate" "CancellationDate"
