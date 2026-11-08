// Elementen genereras ur GetInfoLogsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetInfoLogs v2.0
// Genererad: 2026-09-26

Logical: GetInfoLogs
Id: getinfologs
Title: "GetInfoLogs — Response"
Description: """
  Logisk modell för svaret i GetInfoLogs
  (urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* infoLogsResult 1..1 Base "InfoLogsResultType" "infoLogsResult"
* infoLogsResult.reportResult 1..1 Base "ReportResultType" "reportResult"
* infoLogsResult.reportResult.result 1..1 Base "ResultType" "result"
* infoLogsResult.reportResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* infoLogsResult.reportResult.result.resultCode from ResultCodeVS (required)
* infoLogsResult.reportResult.result.resultText 0..1 string "resultText" "resultText"
* infoLogsResult.reportResult.startInterval 0..1 dateTime "startInterval" "startInterval"
* infoLogsResult.reportResult.endInterval 0..1 dateTime "endInterval" "endInterval"
* infoLogsResult.reportResult.queuedReportId 0..1 string "queuedReportId" "queuedReportId"
* infoLogsResult.reportResult.queueTime 0..1 integer "queueTime" "queueTime"
* infoLogsResult.careProviders 0..1 Base "CareProvidersType" "careProviders"
* infoLogsResult.careProviders.careProvider 0..* Base "CareProviderType" "careProvider"
* infoLogsResult.careProviders.careProvider.careProviderId 1..1 string "careProviderId" "careProviderId"
* infoLogsResult.careProviders.careProvider.careProviderName 0..1 string "careProviderName" "careProviderName"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetInfoLogsFieldDescriptions
