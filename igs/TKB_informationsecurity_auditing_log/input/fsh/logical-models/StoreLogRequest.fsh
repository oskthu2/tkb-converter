// Elementen genereras ur StoreLogResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: StoreLog v2.0
// Genererad: 2026-09-26

Logical: StoreLogRequest
Id: storelog-request
Title: "StoreLog — Request"
Description: """
  Logisk modell för begäran i StoreLog
  (urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* log 1..* Base "LogType" "log"
* log.logId 1..1 string "logId" "logId"
* log.system 1..1 Base "SystemType" "system"
* log.system.systemId 1..1 string "systemId" "systemId"
* log.system.systemName 0..1 string "systemName" "systemName"
* log.activity 1..1 Base "ActivityType" "activity"
* log.activity.activityType 1..1 string "activityType" "activityType"
* log.activity.activityLevel 0..1 string "activityLevel" "activityLevel"
* log.activity.activityArgs 0..1 string "activityArgs" "activityArgs"
* log.activity.startDate 1..1 dateTime "startDate" "startDate"
* log.activity.purpose 1..1 string "purpose" "purpose"
* log.user 1..1 Base "UserType" "user"
* log.user.userId 1..1 string "userId" "userId"
* log.user.name 0..1 string "name" "name"
* log.user.personId 0..1 IIType "personId" "personId"
* log.user.assignment 0..1 string "assignment" "assignment"
* log.user.title 0..1 string "title" "title"
* log.user.careProvider 1..1 Base "CareProviderType" "careProvider"
* log.user.careProvider.careProviderId 1..1 string "careProviderId" "careProviderId"
* log.user.careProvider.careProviderName 0..1 string "careProviderName" "careProviderName"
* log.user.careUnit 1..1 Base "CareUnitType" "careUnit"
* log.user.careUnit.careUnitId 1..1 string "careUnitId" "careUnitId"
* log.user.careUnit.careUnitName 0..1 string "careUnitName" "careUnitName"
* log.resources 1..1 Base "ResourcesType" "resources"
* log.resources.resource 1..* Base "ResourceType" "resource"
* log.resources.resource.resourceType 1..1 string "resourceType" "resourceType"
* log.resources.resource.patient 0..1 Base "PatientType" "patient"
* log.resources.resource.patient.patientId 1..1 IIType "patientId" "patientId"
* log.resources.resource.patient.patientName 0..1 string "patientName" "patientName"
* log.resources.resource.careProvider 1..1 Base "CareProviderType" "careProvider"
* log.resources.resource.careProvider.careProviderId 1..1 string "careProviderId" "careProviderId"
* log.resources.resource.careProvider.careProviderName 0..1 string "careProviderName" "careProviderName"
* log.resources.resource.careUnit 0..1 Base "CareUnitType" "careUnit"
* log.resources.resource.careUnit.careUnitId 1..1 string "careUnitId" "careUnitId"
* log.resources.resource.careUnit.careUnitName 0..1 string "careUnitName" "careUnitName"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert StoreLogRequestFieldDescriptions
