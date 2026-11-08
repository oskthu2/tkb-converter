// Elementen genereras ur GetLogsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetLogsForPatient v1.0
// Namnrymd: urn:riv:ehr:log:querying:GetLogsForPatientResponder:1
// Genererad: 2026-04-09

Logical: GetLogsForPatient
Id: getlogsforpatient
Title: "GetLogsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetLogsForPatient
  (RIV-TA urn:riv:ehr:log:querying:GetLogsForPatientResponder:1).
  Representerar responsens informationsstruktur (log.querying:LogsResult).
  Returnerar loggposter för angiven vårdgivare och patient.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* LogsResultType 1..1 Base "LogsResultType" "LogsResultType"
* LogsResultType.Result 1..1 Base "ResultType" "Result"
* LogsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* LogsResultType.Result.ResultCode from ResultCodeVS (required)
* LogsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* LogsResultType.Result.StartInterval 0..1 dateTime "StartInterval" "StartInterval"
* LogsResultType.Result.EndInterval 0..1 dateTime "EndInterval" "EndInterval"
* LogsResultType.Result.QueuedReportId 0..1 string "QueuedReportId" "QueuedReportId"
* LogsResultType.Result.QueueTime 0..1 integer "QueueTime" "QueueTime"
* LogsResultType.Logs 0..1 Base "LogsType" "Logs"
* LogsResultType.Logs.Log 0..* Base "LogType" "Log"
* LogsResultType.Logs.Log.LogId 1..1 string "LogId" "LogId"
* LogsResultType.Logs.Log.System 1..1 Base "SystemType" "System"
* LogsResultType.Logs.Log.System.SystemId 1..1 string "SystemId" "SystemId"
* LogsResultType.Logs.Log.System.SystemName 0..1 string "SystemName" "SystemName"
* LogsResultType.Logs.Log.Activity 1..1 Base "ActivityType" "Activity"
* LogsResultType.Logs.Log.Activity.ActivityType 1..1 string "ActivityType" "ActivityType"
* LogsResultType.Logs.Log.Activity.ActivityLevel 0..1 string "ActivityLevel" "ActivityLevel"
* LogsResultType.Logs.Log.Activity.ActivityArgs 0..1 string "ActivityArgs" "ActivityArgs"
* LogsResultType.Logs.Log.Activity.StartDate 1..1 dateTime "StartDate" "StartDate"
* LogsResultType.Logs.Log.Activity.Purpose 1..1 string "Purpose" "Purpose"
* LogsResultType.Logs.Log.User 1..1 Base "UserType" "User"
* LogsResultType.Logs.Log.User.UserId 1..1 string "UserId" "UserId"
* LogsResultType.Logs.Log.User.Name 0..1 string "Name" "Name"
* LogsResultType.Logs.Log.User.PersonId 0..1 string "PersonId" "PersonId"
* LogsResultType.Logs.Log.User.Assignment 0..1 string "Assignment" "Assignment"
* LogsResultType.Logs.Log.User.Title 0..1 string "Title" "Title"
* LogsResultType.Logs.Log.User.CareProvider 1..1 Base "CareProviderType" "CareProvider"
* LogsResultType.Logs.Log.User.CareProvider.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* LogsResultType.Logs.Log.User.CareProvider.CareProviderName 0..1 string "CareProviderName" "CareProviderName"
* LogsResultType.Logs.Log.User.CareUnit 1..1 Base "CareUnitType" "CareUnit"
* LogsResultType.Logs.Log.User.CareUnit.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* LogsResultType.Logs.Log.User.CareUnit.CareUnitName 0..1 string "CareUnitName" "CareUnitName"
* LogsResultType.Logs.Log.Resources 1..1 Base "ResourcesType" "Resources"
* LogsResultType.Logs.Log.Resources.Resource 1..* Base "ResourceType" "Resource"
* LogsResultType.Logs.Log.Resources.Resource.ResourceType 1..1 string "ResourceType" "ResourceType"
* LogsResultType.Logs.Log.Resources.Resource.Patient 0..1 Base "PatientType" "Patient"
* LogsResultType.Logs.Log.Resources.Resource.Patient.PatientId 1..1 string "PatientId" "PatientId"
* LogsResultType.Logs.Log.Resources.Resource.Patient.PatientName 0..1 string "PatientName" "PatientName"
* LogsResultType.Logs.Log.Resources.Resource.CareProvider 1..1 Base "CareProviderType" "CareProvider"
* LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* LogsResultType.Logs.Log.Resources.Resource.CareProvider.CareProviderName 0..1 string "CareProviderName" "CareProviderName"
* LogsResultType.Logs.Log.Resources.Resource.CareUnit 0..1 Base "CareUnitType" "CareUnit"
* LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* LogsResultType.Logs.Log.Resources.Resource.CareUnit.CareUnitName 0..1 string "CareUnitName" "CareUnitName"
