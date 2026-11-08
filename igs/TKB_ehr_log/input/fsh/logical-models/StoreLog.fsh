// Elementen genereras ur StoreLogResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:log v1.2.3
// Kontrakt: StoreLog v1.0
// Namnrymd: urn:riv:ehr:log:store:StoreLogResponder:1
// Genererad: 2026-04-09

Logical: StoreLog
Id: storelog
Title: "StoreLog"
Description: """
  Logisk modell för tjänstekontraktet StoreLog
  (RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1).
  Representerar responsens informationsstruktur (log.store:Result).
  Tjänsten sparar en eller flera loggposter i loggtjänsten för att möjliggöra
  uppföljning enligt PDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
