// Elementen genereras ur GetRequestActivitiesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:requeststatus v2.0.1
// Kontrakt: GetRequestActivities v2.0
// Genererad: 2026-03-24

Logical: GetRequestActivities
Id: getrequestactivities
Title: "GetRequestActivities"
Description: """
  Logisk modell för tjänstekontraktet GetRequestActivities
  (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).
  Representerar responsens informationsstruktur — en lista med statusrader för en patients remisser.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* requestActivity 0..* Base "RequestActivityType" "requestActivity"
* requestActivity.header 1..1 Base "HeaderType" "header"
* requestActivity.header.accessControlHeader 1..1 Base "AccessControlHeaderType" "accessControlHeader"
* requestActivity.header.accessControlHeader.accountableHealthcareProvider 1..1 IIType "accountableHealthcareProvider" "accountableHealthcareProvider"
* requestActivity.header.accessControlHeader.accountableCareUnit 0..1 IIType "accountableCareUnit" "accountableCareUnit"
* requestActivity.header.accessControlHeader.originalPatientId 0..1 IIType "originalPatientId" "originalPatientId"
* requestActivity.header.accessControlHeader.careProcessId 0..1 IIType "careProcessId" "careProcessId"
* requestActivity.header.accessControlHeader.lockTime 0..1 string "lockTime" "lockTime"
* requestActivity.header.accessControlHeader.lockTime only TimeStampType
* requestActivity.header.accessControlHeader.blockComparisonTime 1..1 string "blockComparisonTime" "blockComparisonTime"
* requestActivity.header.accessControlHeader.blockComparisonTime only TimeStampType
* requestActivity.header.accessControlHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* requestActivity.header.sourceSystemId 1..1 IIType "sourceSystemId" "sourceSystemId"
* requestActivity.header.record 1..1 Base "RecordType" "record"
* requestActivity.header.record.id 1..1 IIType "id" "id"
* requestActivity.header.record.timestamp 1..1 string "timestamp" "timestamp"
* requestActivity.header.record.timestamp only TimeStampType
* requestActivity.header.author 0..1 Base "AuthorType" "author"
* requestActivity.header.author.id 0..1 IIType "id" "id"
* requestActivity.header.author.name 0..1 string "name" "name"
* requestActivity.header.author.timestamp 1..1 string "timestamp" "timestamp"
* requestActivity.header.author.timestamp only TimeStampType
* requestActivity.header.author.byRole 0..1 CVType "byRole" "byRole"
* requestActivity.body 1..1 Base "RequestActivityBodyType" "body"
* requestActivity.body.statusCode 1..1 CVType "statusCode" "statusCode"
* requestActivity.body.eventTime 1..1 string "eventTime" "eventTime"
* requestActivity.body.eventTime only TimeStampType
* requestActivity.body.request 1..1 Base "RequestType" "request"
* requestActivity.body.request.id 1..1 string "id" "id"
* requestActivity.body.request.type 0..1 CVType "type" "type"
* requestActivity.body.request.medium 0..1 CVType "medium" "medium"
* requestActivity.body.request.author 0..1 Base "RequestAuthorType" "author"
* requestActivity.body.request.author.name 1..1 string "name" "name"
* requestActivity.body.request.author.organization 1..1 Base "OrganizationType" "organization"
* requestActivity.body.request.author.organization.id 0..1 IIType "id" "id"
* requestActivity.body.request.author.organization.name 1..1 string "name" "name"
* requestActivity.body.request.receivingOrganization 1..1 Base "OrganizationType" "receivingOrganization"
* requestActivity.body.request.receivingOrganization.id 0..1 IIType "id" "id"
* requestActivity.body.request.receivingOrganization.name 1..1 string "name" "name"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetRequestActivitiesFieldDescriptions
