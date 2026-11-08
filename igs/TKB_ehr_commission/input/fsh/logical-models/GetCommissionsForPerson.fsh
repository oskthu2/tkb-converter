// Elementen genereras ur GetCommissionsForPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:commission v1.0 RC1
// Kontrakt: GetCommissionsForPerson v1.0
// Genererad: 2026-04-09

Logical: GetCommissionsForPerson
Id: getcommissionsforperson
Title: "GetCommissionsForPerson"
Description: """
  Logisk modell för tjänstekontraktet GetCommissionsForPerson
  (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).
  Representerar responsens informationsstruktur (GetCommissionsForPersonResult).

  Tjänsten hämtar alla medarbetaruppdrag som personen är kopplad till,
  returnerar det senast valda uppdraget och anger om ett uppdrag valts
  inom de senaste 12 timmarna.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetCommissionsForPersonResultType 1..1 Base "GetCommissionsForPersonResultType" "GetCommissionsForPersonResultType"
* GetCommissionsForPersonResultType.Result 1..1 Base "ResultType" "Result"
* GetCommissionsForPersonResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED."
* GetCommissionsForPersonResultType.Result.ResultCode from ResultCodeVS (required)
* GetCommissionsForPersonResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetCommissionsForPersonResultType.LastSelectedCommissionHsaId 0..1 string "LastSelectedCommissionHsaId" "LastSelectedCommissionHsaId"
* GetCommissionsForPersonResultType.SelectionPerformed 0..1 boolean "SelectionPerformed" "SelectionPerformed"
* GetCommissionsForPersonResultType.Commissions 0..* Base "CommissionType" "Commissions"
* GetCommissionsForPersonResultType.Commissions.CommissionHsaId 1..1 string "CommissionHsaId" "CommissionHsaId"
* GetCommissionsForPersonResultType.Commissions.CommissionName 1..1 string "CommissionName" "CommissionName"
* GetCommissionsForPersonResultType.Commissions.CommissionPurpose 1..1 string "CommissionPurpose" "CommissionPurpose"
* GetCommissionsForPersonResultType.Commissions.HealthCareUnitHsaId 0..1 string "HealthCareUnitHsaId" "HealthCareUnitHsaId"
* GetCommissionsForPersonResultType.Commissions.HealthCareUnitName 0..1 string "HealthCareUnitName" "HealthCareUnitName"
* GetCommissionsForPersonResultType.Commissions.HealthCareUnitStartDate 0..1 dateTime "HealthCareUnitStartDate" "HealthCareUnitStartDate"
* GetCommissionsForPersonResultType.Commissions.HealthCareUnitEndDate 0..1 dateTime "HealthCareUnitEndDate" "HealthCareUnitEndDate"
* GetCommissionsForPersonResultType.Commissions.HealthCareProviderHsaId 0..1 string "HealthCareProviderHsaId" "HealthCareProviderHsaId"
* GetCommissionsForPersonResultType.Commissions.HealthCareProviderName 0..1 string "HealthCareProviderName" "HealthCareProviderName"
* GetCommissionsForPersonResultType.Commissions.HealthCareProviderOrgNo 0..1 string "HealthCareProviderOrgNo" "HealthCareProviderOrgNo"
* GetCommissionsForPersonResultType.Commissions.HealthCareProviderStartDate 0..1 dateTime "HealthCareProviderStartDate" "HealthCareProviderStartDate"
* GetCommissionsForPersonResultType.Commissions.HealthCareProviderEndDate 0..1 dateTime "HealthCareProviderEndDate" "HealthCareProviderEndDate"

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* GetCommissionsForPersonResultType obeys getcommissions-careprovider-xor

Invariant: getcommissions-careprovider-xor
Description: "Antingen healthCareProviderHsaId eller healthCareProviderName ska anges"
Expression: "Commissions.HealthCareProviderHsaId.exists() or Commissions.HealthCareProviderName.exists()"
Severity: #warning
