// Elementen genereras ur GetObservationsResponder_1.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:basic 1.2.3 (Bitbucket-tagg 1.2.3, TKB-dokument version 1.2.1)
// Kontrakt: GetObservations v1.2 (GetObservationsResponder_1.2.xsd, clinicalprocess_healthcond_basic_1.2.xsd,
//           clinicalprocess_healthcond_basic_1.2_ext.xsd)
// Genererad: 2026-10-08

Logical: GetObservations
Id: getobservations
Title: "GetObservations"
Description: """
  Logisk modell för tjänstekontraktet GetObservations 1.2
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse).
  Representerar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient,
  utförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer
  (TKB avsnitt 5.1) motsvarar svarsmeddelandet.
"""
Characteristics: #can-be-target

* ^version = "1.2"
* observationGroup 0..* Base "ObservationGroupType" "observationGroup"
* observationGroup.patient 1..1 Base "PatientType" "patient"
* observationGroup.patient.id 1..1 IIType "id" "id"
* observationGroup.patient.name 0..1 string "name" "name"
* observationGroup.patient.dateOfBirth 1..1 string "dateOfBirth" "dateOfBirth"
* observationGroup.patient.dateOfBirth only DateType
* observationGroup.patient.gender 0..1 Base "CVType" "gender"
* observationGroup.patient.gender.code 1..1 string "code" "code"
* observationGroup.patient.gender.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.patient.gender.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.patient.gender.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.patient.gender.displayName 0..1 string "displayName" "displayName"
* observationGroup.performerRole 1..1 Base "PerformerRoleType" "performerRole"
* observationGroup.performerRole.id 0..1 IIType "id" "id"
* observationGroup.performerRole.code 1..1 Base "CVType" "code"
* observationGroup.performerRole.code.code 1..1 string "code" "code"
* observationGroup.performerRole.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.performerRole.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.performerRole.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.performerRole.code.displayName 0..1 string "displayName" "displayName"
* observationGroup.performerRole.person 0..1 Base "PersonType" "person"
* observationGroup.performerRole.person.id 0..1 IIType "id" "id"
* observationGroup.performerRole.person.name 0..1 string "name" "name"
* observationGroup.performerRole.careUnit 0..1 Base "CareUnitType" "careUnit"
* observationGroup.performerRole.careUnit.id 1..1 IIType "id" "id"
* observationGroup.performerRole.careUnit.name 0..1 string "name" "name"
* observationGroup.performerRole.careUnit.careGiver 1..1 Base "CareGiverType" "careGiver"
* observationGroup.performerRole.careUnit.careGiver.id 1..1 IIType "id" "id"
* observationGroup.performerRole.careUnit.careGiver.name 0..1 string "name" "name"
* observationGroup.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* observationGroup.legalAuthenticator.id 0..1 IIType "id" "id"
* observationGroup.legalAuthenticator.time 1..1 Base "PartialTimeStampType" "time"
* observationGroup.legalAuthenticator.time.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.legalAuthenticator.time.format from TimeStampTypeFormatVS (required)
* observationGroup.legalAuthenticator.time.value 1..1 string "value" "value"
* observationGroup.legalAuthenticator.time.value only PartialTimeStampValueType
* observationGroup.legalAuthenticator.name 0..1 string "name" "name"
* observationGroup.additionalParticipant 0..* Base "AdditionalParticipantType" "additionalParticipant"
* observationGroup.additionalParticipant.id 0..1 IIType "id" "id"
* observationGroup.additionalParticipant.type 1..1 Base "CVType" "type"
* observationGroup.additionalParticipant.type.code 1..1 string "code" "code"
* observationGroup.additionalParticipant.type.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.additionalParticipant.type.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.additionalParticipant.type.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.additionalParticipant.type.displayName 0..1 string "displayName" "displayName"
* observationGroup.additionalParticipant.role 1..1 Base "CVType" "role"
* observationGroup.additionalParticipant.role.code 1..1 string "code" "code"
* observationGroup.additionalParticipant.role.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.additionalParticipant.role.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.additionalParticipant.role.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.additionalParticipant.role.displayName 0..1 string "displayName" "displayName"
* observationGroup.additionalParticipant.time 0..1 TimePeriodType "time" "time"
* observationGroup.additionalParticipant.person 0..1 Base "PersonType" "person"
* observationGroup.additionalParticipant.person.id 0..1 IIType "id" "id"
* observationGroup.additionalParticipant.person.name 0..1 string "name" "name"
* observationGroup.additionalParticipant.organisation 0..1 Base "OrganisationType" "organisation"
* observationGroup.additionalParticipant.organisation.id 0..1 IIType "id" "id"
* observationGroup.additionalParticipant.organisation.name 0..1 string "name" "name"
* observationGroup.additionalParticipant.device 0..1 Base "DeviceType" "device"
* observationGroup.additionalParticipant.device.id 0..1 IIType "id" "id"
* observationGroup.additionalParticipant.device.type 0..1 Base "CVType" "type"
* observationGroup.additionalParticipant.device.type.code 1..1 string "code" "code"
* observationGroup.additionalParticipant.device.type.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.additionalParticipant.device.type.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.additionalParticipant.device.type.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.additionalParticipant.device.type.displayName 0..1 string "displayName" "displayName"
* observationGroup.additionalParticipant.device.model 0..1 Base "SCType" "model"
* observationGroup.additionalParticipant.device.model.code 0..1 Base "CVType" "code"
* observationGroup.additionalParticipant.device.model.code.code 1..1 string "code" "code"
* observationGroup.additionalParticipant.device.model.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.additionalParticipant.device.model.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.additionalParticipant.device.model.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.additionalParticipant.device.model.code.displayName 0..1 string "displayName" "displayName"
* observationGroup.additionalParticipant.device.model.value 0..1 string "value" "value"
* observationGroup.additionalParticipant.location 0..1 Base "LocationType" "location"
* observationGroup.additionalParticipant.location.id 0..1 IIType "id" "id"
* observationGroup.additionalParticipant.location.name 1..1 string "name" "name"
* observationGroup.additionalParticipant.location.address 0..* Base "AddressType" "address"
* observationGroup.additionalParticipant.location.address.use 0..1 code "use" "use Tillåtna värden: PHYS, H, HV, WP, TMP."
* observationGroup.additionalParticipant.location.address.use from PostalAddressUseVS (required)
* observationGroup.additionalParticipant.location.address.part 1..* Base "AddressPartType" "part"
* observationGroup.additionalParticipant.location.address.part.value 1..1 string "value" "value"
* observationGroup.additionalParticipant.location.address.part.type 0..1 code "type" "type Tillåtna värden: SAL, CAR, CEN, CNT, CPA, CTY, POB, ZIP, PRE, STA."
* observationGroup.additionalParticipant.location.address.part.type from AddressPartTypeVS (required)
* observationGroup.additionalParticipant.location.electronicAddress 0..* Base "TelType" "electronicAddress"
* observationGroup.additionalParticipant.location.electronicAddress.use 1..1 code "use" "use Tillåtna värden: voice, fax, data, sms."
* observationGroup.additionalParticipant.location.electronicAddress.use from TelTypeVS (required)
* observationGroup.additionalParticipant.location.electronicAddress.value 1..1 string "value" "value"
* observationGroup.sourceSystem 1..1 Base "SourceSystemType" "sourceSystem"
* observationGroup.sourceSystem.id 1..1 IIType "id" "id"
* observationGroup.observation 1..* Base "ObservationType" "observation"
* observationGroup.observation.id 1..1 IIType "id" "id"
* observationGroup.observation.type 1..1 Base "CVType" "type"
* observationGroup.observation.type.code 1..1 string "code" "code"
* observationGroup.observation.type.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.observation.type.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.observation.type.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.observation.type.displayName 0..1 string "displayName" "displayName"
* observationGroup.observation.status 0..1 Base "CVType" "status"
* observationGroup.observation.status.code 1..1 string "code" "code"
* observationGroup.observation.status.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.observation.status.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.observation.status.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.observation.status.displayName 0..1 string "displayName" "displayName"
* observationGroup.observation.time 1..1 Base "PartialTimePeriodType" "time"
* observationGroup.observation.time.start 0..1 Base "PartialTimeStampType" "start"
* observationGroup.observation.time.start.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.observation.time.start.format from TimeStampTypeFormatVS (required)
* observationGroup.observation.time.start.value 1..1 string "value" "value"
* observationGroup.observation.time.start.value only PartialTimeStampValueType
* observationGroup.observation.time.end 0..1 Base "PartialTimeStampType" "end"
* observationGroup.observation.time.end.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.observation.time.end.format from TimeStampTypeFormatVS (required)
* observationGroup.observation.time.end.value 1..1 string "value" "value"
* observationGroup.observation.time.end.value only PartialTimeStampValueType
* observationGroup.observation.method 0..1 Base "CVType" "method"
* observationGroup.observation.method.code 1..1 string "code" "code"
* observationGroup.observation.method.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.observation.method.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.observation.method.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.observation.method.displayName 0..1 string "displayName" "displayName"
* observationGroup.observation.value 1..1 Base "ValueANYType" "value"
* observationGroup.observation.value.pq 0..1 Base "PQType" "pq"
* observationGroup.observation.value.pq.value 1..1 decimal "value" "value"
* observationGroup.observation.value.pq.unit 1..1 string "unit" "unit"
* observationGroup.observation.value.ts 0..1 Base "PartialTimeStampType" "ts"
* observationGroup.observation.value.ts.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.observation.value.ts.format from TimeStampTypeFormatVS (required)
* observationGroup.observation.value.ts.value 1..1 string "value" "value"
* observationGroup.observation.value.ts.value only PartialTimeStampValueType
* observationGroup.observation.value.ivl_ts 0..1 Base "PartialTimePeriodType" "ivl_ts"
* observationGroup.observation.value.ivl_ts.start 0..1 Base "PartialTimeStampType" "start"
* observationGroup.observation.value.ivl_ts.start.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.observation.value.ivl_ts.start.format from TimeStampTypeFormatVS (required)
* observationGroup.observation.value.ivl_ts.start.value 1..1 string "value" "value"
* observationGroup.observation.value.ivl_ts.start.value only PartialTimeStampValueType
* observationGroup.observation.value.ivl_ts.end 0..1 Base "PartialTimeStampType" "end"
* observationGroup.observation.value.ivl_ts.end.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.observation.value.ivl_ts.end.format from TimeStampTypeFormatVS (required)
* observationGroup.observation.value.ivl_ts.end.value 1..1 string "value" "value"
* observationGroup.observation.value.ivl_ts.end.value only PartialTimeStampValueType
* observationGroup.observation.value.cv 0..1 Base "CVType" "cv"
* observationGroup.observation.value.cv.code 1..1 string "code" "code"
* observationGroup.observation.value.cv.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.observation.value.cv.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.observation.value.cv.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.observation.value.cv.displayName 0..1 string "displayName" "displayName"
* observationGroup.observation.value.ivl_pq 0..1 Base "PQIntervalType" "ivl_pq"
* observationGroup.observation.value.ivl_pq.low 0..1 decimal "low" "low"
* observationGroup.observation.value.ivl_pq.lowClosed 0..1 boolean "lowClosed" "lowClosed"
* observationGroup.observation.value.ivl_pq.high 0..1 decimal "high" "high"
* observationGroup.observation.value.ivl_pq.highClosed 0..1 boolean "highClosed" "highClosed"
* observationGroup.observation.value.ivl_pq.unit 1..1 string "unit" "unit"
* observationGroup.observation.targetSite 0..1 Base "CVType" "targetSite"
* observationGroup.observation.targetSite.code 1..1 string "code" "code"
* observationGroup.observation.targetSite.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.observation.targetSite.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.observation.targetSite.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.observation.targetSite.displayName 0..1 string "displayName" "displayName"
* observationGroup.observation.valueNegation 1..1 boolean "valueNegation" "valueNegation"
* observationGroup.observation.description 0..1 string "description" "description"
* observationGroup.observation.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* observationGroup.observation.registrationTime 0..1 string "registrationTime" "registrationTime"
* observationGroup.observation.registrationTime only TimeStampType
* observationGroup.observation.relation 0..* Base "RelationType" "relation"
* observationGroup.observation.relation.code 1..1 Base "CVType" "code"
* observationGroup.observation.relation.code.code 1..1 string "code" "code"
* observationGroup.observation.relation.code.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationGroup.observation.relation.code.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationGroup.observation.relation.code.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationGroup.observation.relation.code.displayName 0..1 string "displayName" "displayName"
* observationGroup.observation.relation.referredInformation 1..1 Base "ReferredInformationType" "referredInformation"
* observationGroup.observation.relation.referredInformation.id 1..1 IIType "id" "id"
* observationGroup.observation.relation.referredInformation.time 1..1 Base "PartialTimeStampType" "time"
* observationGroup.observation.relation.referredInformation.time.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss."
* observationGroup.observation.relation.referredInformation.time.format from TimeStampTypeFormatVS (required)
* observationGroup.observation.relation.referredInformation.time.value 1..1 string "value" "value"
* observationGroup.observation.relation.referredInformation.time.value only PartialTimeStampValueType
* observationGroup.observation.relation.referredInformation.type 1..1 string "type" "type"
* observationGroup.observation.relation.referredInformation.informationOwner 1..1 Base "InformationOwnerType" "informationOwner"
* observationGroup.observation.relation.referredInformation.informationOwner.id 1..1 IIType "id" "id"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetObservationsFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* observationGroup.performerRole obeys getobservations-performer-careunit
* observationGroup.performerRole.person obeys getobservations-person-id-or-name
* observationGroup.legalAuthenticator obeys getobservations-legalauthenticator-id-or-name
* observationGroup.additionalParticipant obeys getobservations-participant-one-kind
* observationGroup.observation obeys getobservations-status-not-used
* observationGroup.observation.time obeys getobservations-period-bound
* observationGroup.observation.value obeys getobservations-value-one-type
* observationGroup.observation.value.ivl_pq obeys getobservations-ivlpq-bound
* observationGroup.observation.value.ivl_ts obeys getobservations-period-bound

Invariant: getobservations-value-one-type
Description: "En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts ska anges i value (ValueANYType)."
Expression: "(cv.count() + pq.count() + ivl_pq.count() + ts.count() + ivl_ts.count()) = 1"
Severity: #error

Invariant: getobservations-ivlpq-bound
Description: "Minst ett av fälten low och high måste anges i ivl_pq."
Expression: "low.exists() or high.exists()"
Severity: #error

Invariant: getobservations-period-bound
Description: "Minst en av start och end måste vara angiven."
Expression: "start.exists() or end.exists()"
Severity: #error

Invariant: getobservations-participant-one-kind
Description: "Endast en av person, organisation, device och location får anges för en ytterligare deltagare."
Expression: "(person.count() + organisation.count() + device.count() + location.count()) <= 1"
Severity: #error

Invariant: getobservations-legalauthenticator-id-or-name
Description: "Regel 2.3: Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges."
Expression: "id.exists() or name.exists()"
Severity: #error

Invariant: getobservations-performer-careunit
Description: "Regel 2.1: careUnit ska endast anges då utföraren är hälso- och sjukvårdspersonal (performerRole.id angivet med HSA-id)."
Expression: "careUnit.exists() implies id.exists()"
Severity: #warning

Invariant: getobservations-person-id-or-name
Description: "Om person.id inte anges måste person.name vara angiven (regel 2.1)."
Expression: "id.exists() or name.exists()"
Severity: #warning

Invariant: getobservations-status-not-used
Description: "TKB: status har kardinalitet 0..0 — denna version av specifikationen tillåter endast faktiskt utförda observationer (schemat tillåter 0..1)."
Expression: "status.empty()"
Severity: #warning
