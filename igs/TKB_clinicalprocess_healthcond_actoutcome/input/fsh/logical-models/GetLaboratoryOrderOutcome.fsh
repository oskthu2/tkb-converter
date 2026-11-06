// Elementen genereras ur GetLaboratoryOrderOutcomeResponder_4.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Elementen genereras ur GetLaboratoryOrderOutcomeResponder_4.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetLaboratoryOrderOutcome v4.2
// Genererad: 2026-03-19

Logical: GetLaboratoryOrderOutcome
Id: getlaboratoryorderoutcome
Title: "GetLaboratoryOrderOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).
  Representerar responsens informationsstruktur — multidisciplinära laboratoriesvar
  för en patient.
"""
Characteristics: #can-be-target

* ^version = "4.2"
* laboratoryOrderOutcome 0..* Base "LaboratoryOrderOutcomeType" "laboratoryOrderOutcome"
* laboratoryOrderOutcome.header 1..1 Base "HeaderType" "header"
* laboratoryOrderOutcome.header.accessControlHeader 1..1 Base "AccessControlHeaderType" "accessControlHeader"
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver 1..1 IIType "accountableCareGiver" "accountableCareGiver"
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit 0..1 IIType "accountableCareUnit" "accountableCareUnit"
* laboratoryOrderOutcome.header.accessControlHeader.originalPatientId 0..1 IIType "originalPatientId" "originalPatientId"
* laboratoryOrderOutcome.header.accessControlHeader.careProcessId 0..1 string "careProcessId" "careProcessId"
* laboratoryOrderOutcome.header.accessControlHeader.careProcessId only UUIDType
* laboratoryOrderOutcome.header.accessControlHeader.lockTime 0..1 string "lockTime" "lockTime"
* laboratoryOrderOutcome.header.accessControlHeader.lockTime only TimeStampType
* laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime 1..1 string "blockComparisonTime" "blockComparisonTime"
* laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime only TimeStampType
* laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* laboratoryOrderOutcome.header.accessControlHeader.patientId 0..1 IIType "patientId" "patientId"
* laboratoryOrderOutcome.header.sourceSystemId 1..1 IIType "sourceSystemId" "sourceSystemId"
* laboratoryOrderOutcome.header.record 1..1 Base "RecordType" "record"
* laboratoryOrderOutcome.header.record.id 1..1 IIType "id" "id"
* laboratoryOrderOutcome.header.record.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.header.record.timestamp only TimeStampType
* laboratoryOrderOutcome.header.author 0..1 Base "AuthorType" "author"
* laboratoryOrderOutcome.header.author.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.header.author.name 0..1 string "name" "name"
* laboratoryOrderOutcome.header.author.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.header.author.timestamp only TimeStampType
* laboratoryOrderOutcome.header.author.byRole 0..1 CVType "byRole" "byRole"
* laboratoryOrderOutcome.header.author.orgUnit 0..1 Base "OrgUnitType" "orgUnit"
* laboratoryOrderOutcome.header.author.orgUnit.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.header.author.orgUnit.name 1..1 string "name" "name"
* laboratoryOrderOutcome.header.signature 0..1 Base "AuthorType" "signature"
* laboratoryOrderOutcome.header.signature.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.header.signature.name 0..1 string "name" "name"
* laboratoryOrderOutcome.header.signature.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.header.signature.timestamp only TimeStampType
* laboratoryOrderOutcome.header.signature.byRole 0..1 CVType "byRole" "byRole"
* laboratoryOrderOutcome.header.signature.orgUnit 0..1 Base "OrgUnitType" "orgUnit"
* laboratoryOrderOutcome.header.signature.orgUnit.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.header.signature.orgUnit.name 1..1 string "name" "name"
* laboratoryOrderOutcome.body 1..1 Base "LaboratoryOrderOutcomeBodyType" "body"
* laboratoryOrderOutcome.body.identifier 1..1 IIType "identifier" "identifier"
* laboratoryOrderOutcome.body.laboratoryIdentifier 0..1 IIType "laboratoryIdentifier" "laboratoryIdentifier"
* laboratoryOrderOutcome.body.type 1..1 CVType "type" "type"
* laboratoryOrderOutcome.body.text 0..1 string "text" "text"
* laboratoryOrderOutcome.body.referral 0..1 Base "ReferralType" "referral"
* laboratoryOrderOutcome.body.referral.identifier 1..1 IIType "identifier" "identifier"
* laboratoryOrderOutcome.body.referral.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.body.referral.timestamp only TimeStampType
* laboratoryOrderOutcome.body.referral.version 0..1 integer "version" "version"
* laboratoryOrderOutcome.body.referral.question 0..1 string "question" "question"
* laboratoryOrderOutcome.body.referral.requestedCareService 0..* CVType "requestedCareService" "requestedCareService"
* laboratoryOrderOutcome.body.referral.requester 0..1 Base "ActorType" "requester"
* laboratoryOrderOutcome.body.referral.requester.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.body.referral.requester.name 0..1 string "name" "name"
* laboratoryOrderOutcome.body.referral.requester.byRole 0..1 CVType "byRole" "byRole"
* laboratoryOrderOutcome.body.referral.requester.orgUnit 0..1 Base "OrgUnitType" "orgUnit"
* laboratoryOrderOutcome.body.referral.requester.orgUnit.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.body.referral.requester.orgUnit.name 1..1 string "name" "name"
* laboratoryOrderOutcome.body.referral.referralInformation 0..1 Base "ReferralInformationType" "referralInformation"
* laboratoryOrderOutcome.body.referral.referralInformation.referralComment 0..1 string "referralComment" "referralComment"
* laboratoryOrderOutcome.body.referral.referralInformation.referralMedicalInformation 0..1 string "referralMedicalInformation" "referralMedicalInformation"
* laboratoryOrderOutcome.body.groupOfAnalyses 0..* Base "GroupOfAnalysesType" "groupOfAnalyses"
* laboratoryOrderOutcome.body.groupOfAnalyses.name 0..1 string "name" "name"
* laboratoryOrderOutcome.body.groupOfAnalyses.comment 0..1 string "comment" "comment"
* laboratoryOrderOutcome.body.groupOfAnalyses.code 0..1 CVType "code" "code"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis 1..* Base "AnalysisType" "analysis"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier 0..1 IIType "identifier" "identifier"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp 0..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp only TimeStampType
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code 1..1 CVType "code" "code"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method 0..1 CVType "method" "method"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status 0..1 CVType "status" "status"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment 0..1 string "comment" "comment"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited 0..1 boolean "accredited" "accredited"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen 0..* Base "SpecimenType" "specimen"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier 0..1 IIType "identifier" "identifier"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material 0..1 CVType "material" "material"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp only TimeStampType
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation 0..1 CVType "anatomicalLocation" "anatomicalLocation"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment 0..1 string "comment" "comment"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity 0..* Base "SpecimenRelatedActivityType" "activity"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code 1..1 CVType "code" "code"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time 1..1 TimePeriodType "time" "time"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method 0..1 CVType "method" "method"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container 0..* Base "SpecimenContainerType" "container"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier 0..* IIType "identifier" "identifier"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type 1..1 CVType "type" "type"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device 0..* Base "DeviceType" "device"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier 1..1 IIType "identifier" "identifier"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result 0..* Base "LaboratoryAnalysisResultType" "result"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type 0..1 CVType "type" "type"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value 1..1 Base "AnyValueType" "value"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.cv 0..1 CVType "cv" "cv"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.pq 0..1 PQType "pq" "pq"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.intervalPQ 0..1 PQIntervalType "intervalPQ" "intervalPQ"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.st 0..1 string "st" "st"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment 0..1 string "comment" "comment"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation 0..* CVType "interpretation" "interpretation"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference 0..1 Base "ReferenceType" "reference"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval 0..1 PQIntervalType "interval" "interval"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description 0..1 string "description" "description"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population 0..1 string "population" "population"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment 0..1 string "comment" "comment"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature 0..1 Base "SignatureType" "recipientSignature"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name 0..1 string "name" "name"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp only TimeStampType
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole 0..1 CVType "byRole" "byRole"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature 0..1 Base "SignatureType" "performerSignature"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name 0..1 string "name" "name"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp only TimeStampType
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole 0..1 CVType "byRole" "byRole"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related 0..* contentReference #GetLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis "AnalysisType" "related Rekursiv: samma struktur som GetLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis."
* laboratoryOrderOutcome.body.recipientUnit 1..1 Base "OrgUnitType" "recipientUnit"
* laboratoryOrderOutcome.body.recipientUnit.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.body.recipientUnit.name 1..1 string "name" "name"
* laboratoryOrderOutcome.body.recipientSignature 0..1 Base "SignatureType" "recipientSignature"
* laboratoryOrderOutcome.body.recipientSignature.id 0..1 IIType "id" "id"
* laboratoryOrderOutcome.body.recipientSignature.name 0..1 string "name" "name"
* laboratoryOrderOutcome.body.recipientSignature.timestamp 1..1 string "timestamp" "timestamp"
* laboratoryOrderOutcome.body.recipientSignature.timestamp only TimeStampType
* laboratoryOrderOutcome.body.recipientSignature.byRole 0..1 CVType "byRole" "byRole"
* laboratoryOrderOutcome.body.contactInformation 0..1 Base "ContactInformationType" "contactInformation"
* laboratoryOrderOutcome.body.contactInformation.text 1..1 string "text" "text"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLaboratoryOrderOutcomeFieldDescriptions
