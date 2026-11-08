// Elementen genereras ur SetSelectedCommissionForPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:commission v1.0 RC1
// Kontrakt: SetSelectedCommissionForPerson v1.0
// Genererad: 2026-04-09

Logical: SetSelectedCommissionForPerson
Id: setselectedcommissionforperson
Title: "SetSelectedCommissionForPerson"
Description: """
  Logisk modell för tjänstekontraktet SetSelectedCommissionForPerson
  (RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1).
  Representerar responsens informationsstruktur (Result).

  Tjänsten sätter vilket medarbetaruppdrag som valdes aktivt av en person.
  Valet är aktuellt under nästkommande 12 timmar.
  Möjlighet finns att nollställa valet genom att utelämna commissionHsaId.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
