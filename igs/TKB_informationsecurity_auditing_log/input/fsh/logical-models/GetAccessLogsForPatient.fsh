// Elementen genereras ur GetAccessLogsForPatientResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetAccessLogsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetAccessLogsForPatient
Id: getaccesslogsforpatient
Title: "GetAccessLogsForPatient — Response"
Description: """
  Logisk modell för svaret i GetAccessLogsForPatient
  (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* accessLogsResult 1..1 Base "AccessLogsResultType" "accessLogsResult"
* accessLogsResult.reportResult 1..1 Base "ReportResultType" "reportResult"
* accessLogsResult.reportResult.result 1..1 Base "ResultType" "result"
* accessLogsResult.reportResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* accessLogsResult.reportResult.result.resultCode from ResultCodeVS (required)
* accessLogsResult.reportResult.result.resultText 0..1 string "resultText" "resultText"
* accessLogsResult.reportResult.startInterval 0..1 dateTime "startInterval" "startInterval"
* accessLogsResult.reportResult.endInterval 0..1 dateTime "endInterval" "endInterval"
* accessLogsResult.reportResult.queuedReportId 0..1 string "queuedReportId" "queuedReportId"
* accessLogsResult.reportResult.queueTime 0..1 integer "queueTime" "queueTime"
* accessLogsResult.accesssLogs 0..1 Base "AccessLogsType" "accesssLogs"
* accessLogsResult.accesssLogs.accessLog 0..* Base "AccessLogType" "accessLog"
* accessLogsResult.accesssLogs.accessLog.careProviderId 1..1 string "careProviderId" "careProviderId"
* accessLogsResult.accesssLogs.accessLog.careProviderName 0..1 string "careProviderName" "careProviderName"
* accessLogsResult.accesssLogs.accessLog.careUnitId 1..1 string "careUnitId" "careUnitId"
* accessLogsResult.accesssLogs.accessLog.careUnitName 0..1 string "careUnitName" "careUnitName"
* accessLogsResult.accesssLogs.accessLog.accessDate 1..1 dateTime "accessDate" "accessDate"
* accessLogsResult.accesssLogs.accessLog.userId 1..1 string "userId" "userId"
* accessLogsResult.accesssLogs.accessLog.userName 0..1 string "userName" "userName"
* accessLogsResult.accesssLogs.accessLog.userTitle 0..1 string "userTitle" "userTitle"
* accessLogsResult.accesssLogs.accessLog.purpose 1..1 string "purpose" "purpose"
* accessLogsResult.accesssLogs.accessLog.resourceType 1..1 string "resourceType" "resourceType"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAccessLogsForPatientFieldDescriptions
