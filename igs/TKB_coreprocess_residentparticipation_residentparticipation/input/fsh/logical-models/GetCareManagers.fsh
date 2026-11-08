// Elementen genereras ur GetCareManagersResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för coreprocess.residentparticipation.residentparticipation v1.0.0-rc2 (Genererad ur tjänsteschemat och domänschemat i riv.coreprocess.residentparticipation.residentparticipation, tagg 1.0_RC2; scripts/xsd_to_ig.py)
// Kontrakt: GetCareManagers v1.0
// Genererad: 2026-09-26

Logical: GetCareManagers
Id: getcaremanagers
Title: "GetCareManagers — Response"
Description: """
  Logisk modell för svaret i GetCareManagers
  (urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careManager 0..* Base "PractitionerRoleType" "careManager"
* careManager.careManagerHeader 1..1 Base "HeaderType" "careManagerHeader"
* careManager.careManagerHeader.accessControlHeader 1..1 Base "AccessControlHeaderType" "accessControlHeader"
* careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId 1..1 IIType "accountableHealthcareProviderId" "accountableHealthcareProviderId"
* careManager.careManagerHeader.accessControlHeader.accountableCareUnitId 0..1 IIType "accountableCareUnitId" "accountableCareUnitId"
* careManager.careManagerHeader.accessControlHeader.patientId 1..1 IIType "patientId" "patientId"
* careManager.careManagerHeader.accessControlHeader.careProcessId 0..1 IIType "careProcessId" "careProcessId"
* careManager.careManagerHeader.accessControlHeader.blockComparisonTime 1..1 string "blockComparisonTime" "blockComparisonTime"
* careManager.careManagerHeader.accessControlHeader.blockComparisonTime only TimeStampType
* careManager.careManagerHeader.sourceSystemId 1..1 IIType "sourceSystemId" "sourceSystemId"
* careManager.code 1..1 CVType "code" "code"
* careManager.practitioner 1..1 Base "PractitionerType" "practitioner"
* careManager.practitioner.hsaId 1..1 IIType "hsaId" "hsaId"
* careManager.practitioner.name 0..1 string "name" "name"
* careManager.practitioner.qualification 0..1 CVType "qualification" "qualification"
* careManager.careTeam 0..1 Base "CareTeamType" "careTeam"
* careManager.careTeam.id 1..1 IIType "id" "id"
* careManager.careTeam.name 1..1 string "name" "name"
* careManager.careTeam.internalNotes 0..1 string "internalNotes" "internalNotes"
* careManager.careTeam.externalNotes 0..1 string "externalNotes" "externalNotes"
* careManager.careTeam.contact 0..* Base "ContactType" "contact"
* careManager.careTeam.contact.telecom 0..* Base "ContactPointSystemType" "telecom"
* careManager.careTeam.contact.telecom.system 0..1 CVType "system" "system"
* careManager.careTeam.contact.telecom.value 1..1 string "value" "value"
* careManager.careTeam.contact.telecom.period 0..* Base "HoursOfServiceType" "period"
* careManager.careTeam.contact.telecom.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.careTeam.contact.telecom.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careTeam.contact.telecom.period.weekDay from WeekDaysVS (required)
* careManager.careTeam.contact.telecom.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careTeam.contact.telecom.period.month from MonthsVS (required)
* careManager.careTeam.contact.telecom.period.time 0..1 Base "TimePeriodType" "time"
* careManager.careTeam.contact.telecom.period.time.start 0..1 string "start" "start"
* careManager.careTeam.contact.telecom.period.time.start only TimeType
* careManager.careTeam.contact.telecom.period.time.end 0..1 string "end" "end"
* careManager.careTeam.contact.telecom.period.time.end only TimeType
* careManager.careTeam.contact.address 0..1 Base "AddressType" "address"
* careManager.careTeam.contact.address.type 0..1 CVType "type" "type"
* careManager.careTeam.contact.address.line 0..* string "line" "line"
* careManager.careTeam.contact.address.city 0..1 string "city" "city"
* careManager.careTeam.contact.address.postalCode 0..1 string "postalCode" "postalCode"
* careManager.careTeam.contact.address.period 0..* Base "HoursOfServiceType" "period"
* careManager.careTeam.contact.address.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.careTeam.contact.address.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careTeam.contact.address.period.weekDay from WeekDaysVS (required)
* careManager.careTeam.contact.address.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careTeam.contact.address.period.month from MonthsVS (required)
* careManager.careTeam.contact.address.period.time 0..1 Base "TimePeriodType" "time"
* careManager.careTeam.contact.address.period.time.start 0..1 string "start" "start"
* careManager.careTeam.contact.address.period.time.start only TimeType
* careManager.careTeam.contact.address.period.time.end 0..1 string "end" "end"
* careManager.careTeam.contact.address.period.time.end only TimeType
* careManager.period 1..1 DatePeriodType "period" "period"
* careManager.internalNotes 0..1 string "internalNotes" "internalNotes"
* careManager.externalNotes 0..1 string "externalNotes" "externalNotes"
* careManager.managingCareGiver 1..1 Base "OrganizationType" "managingCareGiver"
* careManager.managingCareGiver.hsaId 1..1 IIType "hsaId" "hsaId"
* careManager.managingCareGiver.name 0..1 string "name" "name"
* careManager.managingCareGiver.contact 0..* Base "ContactType" "contact"
* careManager.managingCareGiver.contact.telecom 0..* Base "ContactPointSystemType" "telecom"
* careManager.managingCareGiver.contact.telecom.system 0..1 CVType "system" "system"
* careManager.managingCareGiver.contact.telecom.value 1..1 string "value" "value"
* careManager.managingCareGiver.contact.telecom.period 0..* Base "HoursOfServiceType" "period"
* careManager.managingCareGiver.contact.telecom.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.managingCareGiver.contact.telecom.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareGiver.contact.telecom.period.weekDay from WeekDaysVS (required)
* careManager.managingCareGiver.contact.telecom.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareGiver.contact.telecom.period.month from MonthsVS (required)
* careManager.managingCareGiver.contact.telecom.period.time 0..1 Base "TimePeriodType" "time"
* careManager.managingCareGiver.contact.telecom.period.time.start 0..1 string "start" "start"
* careManager.managingCareGiver.contact.telecom.period.time.start only TimeType
* careManager.managingCareGiver.contact.telecom.period.time.end 0..1 string "end" "end"
* careManager.managingCareGiver.contact.telecom.period.time.end only TimeType
* careManager.managingCareGiver.contact.address 0..1 Base "AddressType" "address"
* careManager.managingCareGiver.contact.address.type 0..1 CVType "type" "type"
* careManager.managingCareGiver.contact.address.line 0..* string "line" "line"
* careManager.managingCareGiver.contact.address.city 0..1 string "city" "city"
* careManager.managingCareGiver.contact.address.postalCode 0..1 string "postalCode" "postalCode"
* careManager.managingCareGiver.contact.address.period 0..* Base "HoursOfServiceType" "period"
* careManager.managingCareGiver.contact.address.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.managingCareGiver.contact.address.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareGiver.contact.address.period.weekDay from WeekDaysVS (required)
* careManager.managingCareGiver.contact.address.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareGiver.contact.address.period.month from MonthsVS (required)
* careManager.managingCareGiver.contact.address.period.time 0..1 Base "TimePeriodType" "time"
* careManager.managingCareGiver.contact.address.period.time.start 0..1 string "start" "start"
* careManager.managingCareGiver.contact.address.period.time.start only TimeType
* careManager.managingCareGiver.contact.address.period.time.end 0..1 string "end" "end"
* careManager.managingCareGiver.contact.address.period.time.end only TimeType
* careManager.managingCareUnit 0..1 Base "OrganizationType" "managingCareUnit"
* careManager.managingCareUnit.hsaId 1..1 IIType "hsaId" "hsaId"
* careManager.managingCareUnit.name 0..1 string "name" "name"
* careManager.managingCareUnit.contact 0..* Base "ContactType" "contact"
* careManager.managingCareUnit.contact.telecom 0..* Base "ContactPointSystemType" "telecom"
* careManager.managingCareUnit.contact.telecom.system 0..1 CVType "system" "system"
* careManager.managingCareUnit.contact.telecom.value 1..1 string "value" "value"
* careManager.managingCareUnit.contact.telecom.period 0..* Base "HoursOfServiceType" "period"
* careManager.managingCareUnit.contact.telecom.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.managingCareUnit.contact.telecom.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareUnit.contact.telecom.period.weekDay from WeekDaysVS (required)
* careManager.managingCareUnit.contact.telecom.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareUnit.contact.telecom.period.month from MonthsVS (required)
* careManager.managingCareUnit.contact.telecom.period.time 0..1 Base "TimePeriodType" "time"
* careManager.managingCareUnit.contact.telecom.period.time.start 0..1 string "start" "start"
* careManager.managingCareUnit.contact.telecom.period.time.start only TimeType
* careManager.managingCareUnit.contact.telecom.period.time.end 0..1 string "end" "end"
* careManager.managingCareUnit.contact.telecom.period.time.end only TimeType
* careManager.managingCareUnit.contact.address 0..1 Base "AddressType" "address"
* careManager.managingCareUnit.contact.address.type 0..1 CVType "type" "type"
* careManager.managingCareUnit.contact.address.line 0..* string "line" "line"
* careManager.managingCareUnit.contact.address.city 0..1 string "city" "city"
* careManager.managingCareUnit.contact.address.postalCode 0..1 string "postalCode" "postalCode"
* careManager.managingCareUnit.contact.address.period 0..* Base "HoursOfServiceType" "period"
* careManager.managingCareUnit.contact.address.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.managingCareUnit.contact.address.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareUnit.contact.address.period.weekDay from WeekDaysVS (required)
* careManager.managingCareUnit.contact.address.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareUnit.contact.address.period.month from MonthsVS (required)
* careManager.managingCareUnit.contact.address.period.time 0..1 Base "TimePeriodType" "time"
* careManager.managingCareUnit.contact.address.period.time.start 0..1 string "start" "start"
* careManager.managingCareUnit.contact.address.period.time.start only TimeType
* careManager.managingCareUnit.contact.address.period.time.end 0..1 string "end" "end"
* careManager.managingCareUnit.contact.address.period.time.end only TimeType
* careManager.careProvidingCareUnit 0..1 Base "OrganizationType" "careProvidingCareUnit"
* careManager.careProvidingCareUnit.hsaId 1..1 IIType "hsaId" "hsaId"
* careManager.careProvidingCareUnit.name 0..1 string "name" "name"
* careManager.careProvidingCareUnit.contact 0..* Base "ContactType" "contact"
* careManager.careProvidingCareUnit.contact.telecom 0..* Base "ContactPointSystemType" "telecom"
* careManager.careProvidingCareUnit.contact.telecom.system 0..1 CVType "system" "system"
* careManager.careProvidingCareUnit.contact.telecom.value 1..1 string "value" "value"
* careManager.careProvidingCareUnit.contact.telecom.period 0..* Base "HoursOfServiceType" "period"
* careManager.careProvidingCareUnit.contact.telecom.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.careProvidingCareUnit.contact.telecom.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careProvidingCareUnit.contact.telecom.period.weekDay from WeekDaysVS (required)
* careManager.careProvidingCareUnit.contact.telecom.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careProvidingCareUnit.contact.telecom.period.month from MonthsVS (required)
* careManager.careProvidingCareUnit.contact.telecom.period.time 0..1 Base "TimePeriodType" "time"
* careManager.careProvidingCareUnit.contact.telecom.period.time.start 0..1 string "start" "start"
* careManager.careProvidingCareUnit.contact.telecom.period.time.start only TimeType
* careManager.careProvidingCareUnit.contact.telecom.period.time.end 0..1 string "end" "end"
* careManager.careProvidingCareUnit.contact.telecom.period.time.end only TimeType
* careManager.careProvidingCareUnit.contact.address 0..1 Base "AddressType" "address"
* careManager.careProvidingCareUnit.contact.address.type 0..1 CVType "type" "type"
* careManager.careProvidingCareUnit.contact.address.line 0..* string "line" "line"
* careManager.careProvidingCareUnit.contact.address.city 0..1 string "city" "city"
* careManager.careProvidingCareUnit.contact.address.postalCode 0..1 string "postalCode" "postalCode"
* careManager.careProvidingCareUnit.contact.address.period 0..* Base "HoursOfServiceType" "period"
* careManager.careProvidingCareUnit.contact.address.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.careProvidingCareUnit.contact.address.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careProvidingCareUnit.contact.address.period.weekDay from WeekDaysVS (required)
* careManager.careProvidingCareUnit.contact.address.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careProvidingCareUnit.contact.address.period.month from MonthsVS (required)
* careManager.careProvidingCareUnit.contact.address.period.time 0..1 Base "TimePeriodType" "time"
* careManager.careProvidingCareUnit.contact.address.period.time.start 0..1 string "start" "start"
* careManager.careProvidingCareUnit.contact.address.period.time.start only TimeType
* careManager.careProvidingCareUnit.contact.address.period.time.end 0..1 string "end" "end"
* careManager.careProvidingCareUnit.contact.address.period.time.end only TimeType
* careManager.contact 0..* Base "ContactType" "contact"
* careManager.contact.telecom 0..* Base "ContactPointSystemType" "telecom"
* careManager.contact.telecom.system 0..1 CVType "system" "system"
* careManager.contact.telecom.value 1..1 string "value" "value"
* careManager.contact.telecom.period 0..* Base "HoursOfServiceType" "period"
* careManager.contact.telecom.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.contact.telecom.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.contact.telecom.period.weekDay from WeekDaysVS (required)
* careManager.contact.telecom.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.contact.telecom.period.month from MonthsVS (required)
* careManager.contact.telecom.period.time 0..1 Base "TimePeriodType" "time"
* careManager.contact.telecom.period.time.start 0..1 string "start" "start"
* careManager.contact.telecom.period.time.start only TimeType
* careManager.contact.telecom.period.time.end 0..1 string "end" "end"
* careManager.contact.telecom.period.time.end only TimeType
* careManager.contact.address 0..1 Base "AddressType" "address"
* careManager.contact.address.type 0..1 CVType "type" "type"
* careManager.contact.address.line 0..* string "line" "line"
* careManager.contact.address.city 0..1 string "city" "city"
* careManager.contact.address.postalCode 0..1 string "postalCode" "postalCode"
* careManager.contact.address.period 0..* Base "HoursOfServiceType" "period"
* careManager.contact.address.period.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* careManager.contact.address.period.weekDay 0..7 code "weekDay" "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.contact.address.period.weekDay from WeekDaysVS (required)
* careManager.contact.address.period.month 0..* code "month" "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.contact.address.period.month from MonthsVS (required)
* careManager.contact.address.period.time 0..1 Base "TimePeriodType" "time"
* careManager.contact.address.period.time.start 0..1 string "start" "start"
* careManager.contact.address.period.time.start only TimeType
* careManager.contact.address.period.time.end 0..1 string "end" "end"
* careManager.contact.address.period.time.end only TimeType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareManagersFieldDescriptions
