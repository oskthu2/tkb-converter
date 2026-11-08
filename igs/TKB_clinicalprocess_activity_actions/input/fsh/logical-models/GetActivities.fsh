// Elementen genereras ur GetActivitiesResponder_1.3.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activity:actions v1.3
// Kontrakt: GetActivities v1.3
// Genererad: 2026-05-18

Logical: GetActivities
Id: getactivities
Title: "GetActivities"
Description: """
  Logisk modell för tjänstekontraktet GetActivities
  (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).
  Representerar responsens informationsstruktur — en lista av activityGroup-element.
"""
Characteristics: #can-be-target

* ^version = "1.3"
* activityGroup 0..* Base "ActivityGroupType" "activityGroup"
* activityGroup.patient 1..1 Base "PatientType" "patient"
* activityGroup.patient.id 1..1 IIType "id" "id"
* activityGroup.patient.dateOfBirth 1..1 string "dateOfBirth" "dateOfBirth"
* activityGroup.patient.dateOfBirth only DateType
* activityGroup.patient.gender 0..1 Base "CVType" "gender"
* activityGroup.patient.gender.code 1..1 string "code" "code"
* activityGroup.patient.gender.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.patient.gender.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.patient.gender.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.patient.gender.displayName 0..1 string "displayName" "displayName"
* activityGroup.performerRole 1..1 Base "PerformerRoleType" "performerRole"
* activityGroup.performerRole.id 0..1 IIType "id" "id"
* activityGroup.performerRole.code 1..1 Base "CVType" "code"
* activityGroup.performerRole.code.code 1..1 string "code" "code"
* activityGroup.performerRole.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.performerRole.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.performerRole.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.performerRole.code.displayName 0..1 string "displayName" "displayName"
* activityGroup.performerRole.person 0..1 Base "PersonType" "person"
* activityGroup.performerRole.person.id 0..1 IIType "id" "id"
* activityGroup.performerRole.person.name 0..1 string "name" "name"
* activityGroup.performerRole.careUnit 0..1 Base "CareUnitType" "careUnit"
* activityGroup.performerRole.careUnit.id 1..1 IIType "id" "id"
* activityGroup.performerRole.careUnit.name 0..1 string "name" "name"
* activityGroup.performerRole.careUnit.careGiver 1..1 Base "CareGiverType" "careGiver"
* activityGroup.performerRole.careUnit.careGiver.id 1..1 IIType "id" "id"
* activityGroup.performerRole.careUnit.careGiver.name 0..1 string "name" "name"
* activityGroup.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* activityGroup.legalAuthenticator.id 0..1 IIType "id" "id"
* activityGroup.legalAuthenticator.time 1..1 Base "PartialTimeStampType" "time"
* activityGroup.legalAuthenticator.time.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.legalAuthenticator.time.value 1..1 string "value" "value"
* activityGroup.legalAuthenticator.time.value only PartialTimeStampValueType
* activityGroup.legalAuthenticator.name 0..1 string "name" "name"
* activityGroup.additionalParticipant 0..* Base "AdditionalParticipantType" "additionalParticipant"
* activityGroup.additionalParticipant.id 0..1 IIType "id" "id"
* activityGroup.additionalParticipant.type 1..1 Base "CVType" "type"
* activityGroup.additionalParticipant.type.code 1..1 string "code" "code"
* activityGroup.additionalParticipant.type.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.additionalParticipant.type.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.additionalParticipant.type.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.additionalParticipant.type.displayName 0..1 string "displayName" "displayName"
* activityGroup.additionalParticipant.role 1..1 Base "CVType" "role"
* activityGroup.additionalParticipant.role.code 1..1 string "code" "code"
* activityGroup.additionalParticipant.role.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.additionalParticipant.role.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.additionalParticipant.role.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.additionalParticipant.role.displayName 0..1 string "displayName" "displayName"
* activityGroup.additionalParticipant.time 0..1 TimePeriodType "time" "time"
* activityGroup.additionalParticipant.person 0..1 Base "PersonType" "person"
* activityGroup.additionalParticipant.person.id 0..1 IIType "id" "id"
* activityGroup.additionalParticipant.person.name 0..1 string "name" "name"
* activityGroup.additionalParticipant.organisation 0..1 Base "OrganisationType" "organisation"
* activityGroup.additionalParticipant.organisation.id 1..1 IIType "id" "id"
* activityGroup.additionalParticipant.organisation.name 0..1 string "name" "name"
* activityGroup.additionalParticipant.device 0..1 Base "DeviceType" "device"
* activityGroup.additionalParticipant.device.id 0..1 IIType "id" "id"
* activityGroup.additionalParticipant.device.type 0..1 Base "CVType" "type"
* activityGroup.additionalParticipant.device.type.code 1..1 string "code" "code"
* activityGroup.additionalParticipant.device.type.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.additionalParticipant.device.type.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.additionalParticipant.device.type.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.additionalParticipant.device.type.displayName 0..1 string "displayName" "displayName"
* activityGroup.additionalParticipant.device.model 0..1 Base "SCType" "model"
* activityGroup.additionalParticipant.device.model.code 0..1 Base "CVType" "code"
* activityGroup.additionalParticipant.device.model.code.code 1..1 string "code" "code"
* activityGroup.additionalParticipant.device.model.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.additionalParticipant.device.model.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.additionalParticipant.device.model.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.additionalParticipant.device.model.code.displayName 0..1 string "displayName" "displayName"
* activityGroup.additionalParticipant.device.model.value 0..1 string "value" "value"
* activityGroup.additionalParticipant.location 0..1 Base "LocationType" "location"
* activityGroup.additionalParticipant.location.id 0..1 IIType "id" "id"
* activityGroup.additionalParticipant.location.name 1..1 string "name" "name"
* activityGroup.additionalParticipant.location.address 0..* Base "AddressType" "address"
* activityGroup.additionalParticipant.location.address.use 0..1 code "use" "use Tillåtna värden: PHYS, H, HV, WP, TMP."
* activityGroup.additionalParticipant.location.address.part 1..* Base "AddressPartType" "part"
* activityGroup.additionalParticipant.location.address.part.value 1..1 string "value" "value"
* activityGroup.additionalParticipant.location.address.part.type 0..1 code "type" "type Tillåtna värden: AL, ADL, UNIT, UNID, DAL, DINSTA, DINSTQ, DINST, DMOD, DMODID, SAL, BNR, BNN, BNS, STR, STB, STTYP, DIR, INT, CAR, CEN, CNT, CPA, DEL, CTY, POB, ZIP, PRE, STA."
* activityGroup.additionalParticipant.location.electronicAddress 0..* Base "TelType" "electronicAddress"
* activityGroup.additionalParticipant.location.electronicAddress.use 1..1 code "use" "use Tillåtna värden: voice, fax, data, tty, sms."
* activityGroup.additionalParticipant.location.electronicAddress.value 1..1 string "value" "value"
* activityGroup.sourceSystem 1..1 Base "SourceSystemType" "sourceSystem"
* activityGroup.sourceSystem.id 1..1 IIType "id" "id"
* activityGroup.careProcessId 0..1 string "careProcessId" "careProcessId"
* activityGroup.careProcessId only UUIDType
* activityGroup.activity 1..* Base "ActivityType" "activity"
* activityGroup.activity.id 1..1 IIType "id" "id"
* activityGroup.activity.status 0..1 Base "CVType" "status"
* activityGroup.activity.status.code 1..1 string "code" "code"
* activityGroup.activity.status.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.activity.status.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.activity.status.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.activity.status.displayName 0..1 string "displayName" "displayName"
* activityGroup.activity.code 1..1 Base "CVType" "code"
* activityGroup.activity.code.code 1..1 string "code" "code"
* activityGroup.activity.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.activity.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.activity.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.activity.code.displayName 0..1 string "displayName" "displayName"
* activityGroup.activity.targetSite 0..1 Base "CVType" "targetSite"
* activityGroup.activity.targetSite.code 1..1 string "code" "code"
* activityGroup.activity.targetSite.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.activity.targetSite.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.activity.targetSite.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.activity.targetSite.displayName 0..1 string "displayName" "displayName"
* activityGroup.activity.time 0..1 Base "PartialTimePeriodType" "time"
* activityGroup.activity.time.start 0..1 Base "PartialTimeStampType" "start"
* activityGroup.activity.time.start.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.activity.time.start.value 1..1 string "value" "value"
* activityGroup.activity.time.start.value only PartialTimeStampValueType
* activityGroup.activity.time.end 0..1 Base "PartialTimeStampType" "end"
* activityGroup.activity.time.end.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.activity.time.end.value 1..1 string "value" "value"
* activityGroup.activity.time.end.value only PartialTimeStampValueType
* activityGroup.activity.method 0..1 Base "CVType" "method"
* activityGroup.activity.method.code 1..1 string "code" "code"
* activityGroup.activity.method.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.activity.method.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.activity.method.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.activity.method.displayName 0..1 string "displayName" "displayName"
* activityGroup.activity.description 0..1 string "description" "description"
* activityGroup.activity.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* activityGroup.activity.registrationTime 1..1 string "registrationTime" "registrationTime"
* activityGroup.activity.registrationTime only TimeStampType
* activityGroup.activity.relation 0..* Base "RelationType" "relation"
* activityGroup.activity.relation.code 1..1 Base "CVType" "code"
* activityGroup.activity.relation.code.code 1..1 string "code" "code"
* activityGroup.activity.relation.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.activity.relation.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.activity.relation.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.activity.relation.code.displayName 0..1 string "displayName" "displayName"
* activityGroup.activity.relation.referredInformation 1..1 Base "ReferredInformationType" "referredInformation"
* activityGroup.activity.relation.referredInformation.id 1..1 IIType "id" "id"
* activityGroup.activity.relation.referredInformation.time 1..1 Base "PartialTimeStampType" "time"
* activityGroup.activity.relation.referredInformation.time.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.activity.relation.referredInformation.time.value 1..1 string "value" "value"
* activityGroup.activity.relation.referredInformation.time.value only PartialTimeStampValueType
* activityGroup.activity.relation.referredInformation.type 1..1 string "type" "type"
* activityGroup.activity.relation.referredInformation.informationOwner 1..1 Base "InformationOwnerType" "informationOwner"
* activityGroup.activity.relation.referredInformation.informationOwner.id 1..1 IIType "id" "id"
* activityGroup.activity.additionalInformation 0..* Base "AdditionalInformationType" "additionalInformation"
* activityGroup.activity.additionalInformation.key 1..1 string "key" "key"
* activityGroup.activity.additionalInformation.value 1..1 Base "ValueANYType" "value"
* activityGroup.activity.additionalInformation.value.pq 0..1 Base "PQType" "pq"
* activityGroup.activity.additionalInformation.value.pq.value 1..1 decimal "value" "value"
* activityGroup.activity.additionalInformation.value.pq.unit 1..1 string "unit" "unit"
* activityGroup.activity.additionalInformation.value.ts 0..1 Base "PartialTimeStampType" "ts"
* activityGroup.activity.additionalInformation.value.ts.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.activity.additionalInformation.value.ts.value 1..1 string "value" "value"
* activityGroup.activity.additionalInformation.value.ts.value only PartialTimeStampValueType
* activityGroup.activity.additionalInformation.value.ivl_ts 0..1 Base "PartialTimePeriodType" "ivl_ts"
* activityGroup.activity.additionalInformation.value.ivl_ts.start 0..1 Base "PartialTimeStampType" "start"
* activityGroup.activity.additionalInformation.value.ivl_ts.start.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.activity.additionalInformation.value.ivl_ts.start.value 1..1 string "value" "value"
* activityGroup.activity.additionalInformation.value.ivl_ts.start.value only PartialTimeStampValueType
* activityGroup.activity.additionalInformation.value.ivl_ts.end 0..1 Base "PartialTimeStampType" "end"
* activityGroup.activity.additionalInformation.value.ivl_ts.end.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* activityGroup.activity.additionalInformation.value.ivl_ts.end.value 1..1 string "value" "value"
* activityGroup.activity.additionalInformation.value.ivl_ts.end.value only PartialTimeStampValueType
* activityGroup.activity.additionalInformation.value.cv 0..1 Base "CVType" "cv"
* activityGroup.activity.additionalInformation.value.cv.code 1..1 string "code" "code"
* activityGroup.activity.additionalInformation.value.cv.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityGroup.activity.additionalInformation.value.cv.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityGroup.activity.additionalInformation.value.cv.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityGroup.activity.additionalInformation.value.cv.displayName 0..1 string "displayName" "displayName"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetActivitiesFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* activityGroup.legalAuthenticator obeys getactivities-legalauthenticator-id-or-name
* activityGroup.additionalParticipant obeys getactivities-additionalparticipant-one-participant
* activityGroup.activity obeys getactivities-activity-time-when-performed
* activityGroup.activity.time obeys getactivities-activity-time-start-or-end

Invariant: getactivities-additionalparticipant-one-participant
Description: "Exakt en av person, organisation, device och location ska anges i additionalParticipant (TKB 7.1, AdditionalParticipantType: 'Endast en av nedanstående')."
Expression: "person.count() + organisation.count() + device.count() + location.count() = 1"
Severity: #error

Invariant: getactivities-activity-time-when-performed
Description: "time ska anges när status är utförd (SNOMED CT 398166005) eller saknas (TKB Regel 2.3)."
Expression: "(status.empty() or status.where(code = '398166005').exists()) implies time.exists()"
Severity: #error

Invariant: getactivities-activity-time-start-or-end
Description: "Minst en av start och end ska anges i aktivitetens tidsperiod (PartialTimePeriodType)."
Expression: "start.exists() or end.exists()"
Severity: #error

Invariant: getactivities-legalauthenticator-id-or-name
Description: "Minst ett av legalAuthenticatorId och name ska anges (TKB Regel 2.4)."
Expression: "id.exists() or name.exists()"
Severity: #error
