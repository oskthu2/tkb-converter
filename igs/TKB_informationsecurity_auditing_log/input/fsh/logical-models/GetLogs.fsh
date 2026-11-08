// Elementen genereras ur GetLogsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetLogs v2.0
// Genererad: 2026-09-26

Logical: GetLogs
Id: getlogs
Title: "GetLogs — Response"
Description: """
  Logisk modell för svaret i GetLogs
  (urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* logsResult 1..1 Base "LogsResultType" "logsResult"
* logsResult.reportResult 1..1 Base "ReportResultType" "reportResult"
* logsResult.reportResult.result 1..1 Base "ResultType" "result"
* logsResult.reportResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* logsResult.reportResult.result.resultCode from ResultCodeVS (required)
* logsResult.reportResult.result.resultText 0..1 string "resultText" "resultText"
* logsResult.reportResult.startInterval 0..1 dateTime "startInterval" "startInterval"
* logsResult.reportResult.endInterval 0..1 dateTime "endInterval" "endInterval"
* logsResult.reportResult.queuedReportId 0..1 string "queuedReportId" "queuedReportId"
* logsResult.reportResult.queueTime 0..1 integer "queueTime" "queueTime"
* logsResult.logs 0..1 Base "LogsType" "logs"
* logsResult.logs.log 0..* Base "LogType" "log"
* logsResult.logs.log.logId 1..1 string "logId" "logId"
* logsResult.logs.log.system 1..1 Base "SystemType" "system"
* logsResult.logs.log.system.systemId 1..1 string "systemId" "systemId"
* logsResult.logs.log.system.systemName 0..1 string "systemName" "systemName"
* logsResult.logs.log.activity 1..1 Base "ActivityType" "activity"
* logsResult.logs.log.activity.activityType 1..1 string "activityType" "activityType"
* logsResult.logs.log.activity.activityLevel 0..1 string "activityLevel" "activityLevel"
* logsResult.logs.log.activity.activityArgs 0..1 string "activityArgs" "activityArgs"
* logsResult.logs.log.activity.startDate 1..1 dateTime "startDate" "startDate"
* logsResult.logs.log.activity.purpose 1..1 string "purpose" "purpose"
* logsResult.logs.log.user 1..1 Base "UserType" "user"
* logsResult.logs.log.user.userId 1..1 string "userId" "userId"
* logsResult.logs.log.user.name 0..1 string "name" "name"
* logsResult.logs.log.user.personId 0..1 IIType "personId" "personId"
* logsResult.logs.log.user.assignment 0..1 string "assignment" "assignment"
* logsResult.logs.log.user.title 0..1 string "title" "title"
* logsResult.logs.log.user.careProvider 1..1 Base "CareProviderType" "careProvider"
* logsResult.logs.log.user.careProvider.careProviderId 1..1 string "careProviderId" "careProviderId"
* logsResult.logs.log.user.careProvider.careProviderName 0..1 string "careProviderName" "careProviderName"
* logsResult.logs.log.user.careUnit 1..1 Base "CareUnitType" "careUnit"
* logsResult.logs.log.user.careUnit.careUnitId 1..1 string "careUnitId" "careUnitId"
* logsResult.logs.log.user.careUnit.careUnitName 0..1 string "careUnitName" "careUnitName"
* logsResult.logs.log.resources 1..1 Base "ResourcesType" "resources"
* logsResult.logs.log.resources.resource 1..* Base "ResourceType" "resource"
* logsResult.logs.log.resources.resource.resourceType 1..1 string "resourceType" "resourceType"
* logsResult.logs.log.resources.resource.patient 0..1 Base "PatientType" "patient"
* logsResult.logs.log.resources.resource.patient.patientId 1..1 IIType "patientId" "patientId"
* logsResult.logs.log.resources.resource.patient.patientName 0..1 string "patientName" "patientName"
* logsResult.logs.log.resources.resource.careProvider 1..1 Base "CareProviderType" "careProvider"
* logsResult.logs.log.resources.resource.careProvider.careProviderId 1..1 string "careProviderId" "careProviderId"
* logsResult.logs.log.resources.resource.careProvider.careProviderName 0..1 string "careProviderName" "careProviderName"
* logsResult.logs.log.resources.resource.careUnit 0..1 Base "CareUnitType" "careUnit"
* logsResult.logs.log.resources.resource.careUnit.careUnitId 1..1 string "careUnitId" "careUnitId"
* logsResult.logs.log.resources.resource.careUnit.careUnitName 0..1 string "careUnitName" "careUnitName"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLogsFieldDescriptions
