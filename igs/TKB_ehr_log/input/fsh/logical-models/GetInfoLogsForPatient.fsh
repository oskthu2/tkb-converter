// Elementen genereras ur GetInfoLogsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetInfoLogsForPatient v1.0
// Namnrymd: urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1
// Genererad: 2026-04-09

Logical: GetInfoLogsForPatient
Id: getinfologsforpatient
Title: "GetInfoLogsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetInfoLogsForPatient
  (RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1).
  Representerar responsens informationsstruktur (log.querying:InfoLogsResult).
  Returnerar lista för angiven informationsägande vårdgivare och patient med
  vilka externa vårdgivare som haft åtkomst till information.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* InfoLogsResultType 1..1 Base "InfoLogsResultType" "InfoLogsResultType"
* InfoLogsResultType.Result 1..1 Base "ResultType" "Result"
* InfoLogsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* InfoLogsResultType.Result.ResultCode from ResultCodeVS (required)
* InfoLogsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* InfoLogsResultType.Result.StartInterval 0..1 dateTime "StartInterval" "StartInterval"
* InfoLogsResultType.Result.EndInterval 0..1 dateTime "EndInterval" "EndInterval"
* InfoLogsResultType.Result.QueuedReportId 0..1 string "QueuedReportId" "QueuedReportId"
* InfoLogsResultType.Result.QueueTime 0..1 integer "QueueTime" "QueueTime"
* InfoLogsResultType.CareProviders 0..1 Base "CareProvidersType" "CareProviders"
* InfoLogsResultType.CareProviders.CareProvider 0..* Base "CareProviderType" "CareProvider"
* InfoLogsResultType.CareProviders.CareProvider.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* InfoLogsResultType.CareProviders.CareProvider.CareProviderName 0..1 string "CareProviderName" "CareProviderName"
