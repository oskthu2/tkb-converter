// Elementen genereras ur GetAccessLogsForPatientResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetAccessLogsForPatient v1.1
// Namnrymd: urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1
// Genererad: 2026-04-09

Logical: GetAccessLogsForPatient
Id: getaccesslogsforpatient
Title: "GetAccessLogsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetAccessLogsForPatient
  (RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1).
  Representerar responsens informationsstruktur (log.querying:AccessLogsResult).
  Returnerar lista för angiven patient med vilka vårdaktörer som har haft åtkomst
  till information, inklusive tidpunkt, syfte och resurstyp.
  Stödjer aggregering — queuedReportId får inte användas vid aggregerande anrop.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* AccessLogsResultType 1..1 Base "AccessLogsResultType" "AccessLogsResultType"
* AccessLogsResultType.Result 1..1 Base "ResultType" "Result"
* AccessLogsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* AccessLogsResultType.Result.ResultCode from ResultCodeVS (required)
* AccessLogsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* AccessLogsResultType.Result.StartInterval 0..1 dateTime "StartInterval" "StartInterval"
* AccessLogsResultType.Result.EndInterval 0..1 dateTime "EndInterval" "EndInterval"
* AccessLogsResultType.Result.QueuedReportId 0..1 string "QueuedReportId" "QueuedReportId"
* AccessLogsResultType.Result.QueueTime 0..1 integer "QueueTime" "QueueTime"
* AccessLogsResultType.AccesssLogs 0..1 Base "AccessLogsType" "AccesssLogs"
* AccessLogsResultType.AccesssLogs.AccessLog 0..* Base "AccessLogType" "AccessLog"
* AccessLogsResultType.AccesssLogs.AccessLog.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* AccessLogsResultType.AccesssLogs.AccessLog.CareProviderName 0..1 string "CareProviderName" "CareProviderName"
* AccessLogsResultType.AccesssLogs.AccessLog.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* AccessLogsResultType.AccesssLogs.AccessLog.CareUnitName 0..1 string "CareUnitName" "CareUnitName"
* AccessLogsResultType.AccesssLogs.AccessLog.AccessDate 1..1 dateTime "AccessDate" "AccessDate"
* AccessLogsResultType.AccesssLogs.AccessLog.UserId 1..1 string "UserId" "UserId"
* AccessLogsResultType.AccesssLogs.AccessLog.UserName 0..1 string "UserName" "UserName"
* AccessLogsResultType.AccesssLogs.AccessLog.UserTitle 0..1 string "UserTitle" "UserTitle"
* AccessLogsResultType.AccesssLogs.AccessLog.Purpose 1..1 string "Purpose" "Purpose"
* AccessLogsResultType.AccesssLogs.AccessLog.ResourceType 1..1 string "ResourceType" "ResourceType"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAccessLogsForPatientFieldDescriptions
