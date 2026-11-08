// Elementen genereras ur GetLaboratoryOrderOutcomeResponder_3.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetLaboratoryOrderOutcome 3.1 (avsnitt 7.3)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetLaboratoryOrderOutcome
Id: getlaboratoryorderoutcome
Title: "GetLaboratoryOrderOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.3.
"""
Characteristics: #can-be-target

* ^version = "3.1"
* laboratoryOrderOutcome 0..* Base "LaboratoryOrderOutcomeType" "laboratoryOrderOutcome"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader 1..1 Base "PatientSummaryHeaderType" "laboratoryOrderOutcomeHeader"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId 1..1 string "documentId" "documentId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId only HSAIdType
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime 0..1 string "documentTime" "documentTime"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime only TimeStampType
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator 0..1 LegalAuthenticatorType "legalAuthenticator" "legalAuthenticator"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId 0..1 string "careContactId" "careContactId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified 0..1 boolean "nullified" "nullified"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody 1..1 Base "LaboratoryOrderOutcomeBodyType" "laboratoryOrderOutcomeBody"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType 1..1 string "resultType" "resultType"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime 1..1 string "registrationTime" "registrationTime"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime only TimeStampType
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline 1..1 string "discipline" "discipline"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport 0..1 string "resultReport" "resultReport"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment 0..1 string "resultComment" "resultComment"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional 0..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis 0..* Base "AnalysisType" "analysis"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId 1..1 IIType "analysisId" "analysisId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime 0..1 TimePeriodType "analysisTime" "analysisTime"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode 0..1 CVType "analysisCode" "analysisCode"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText 0..1 string "analysisText" "analysisText"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus 0..1 string "analysisStatus" "analysisStatus"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment 0..1 string "analysisComment" "analysisComment"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen 0..1 string "specimen" "specimen"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method 0..1 string "method" "method"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis 0..* Base "RelationToAnalysisType" "relationToAnalysis"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId 1..1 IIType "analysisId" "analysisId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome 0..1 Base "AnalysisOutcomeType" "analysisOutcome"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue 1..1 string "outcomeValue" "outcomeValue"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit 0..1 string "outcomeUnit" "outcomeUnit"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime 0..1 string "observationTime" "observationTime"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime only TimeStampType
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag 1..1 boolean "pathologicalFlag" "pathologicalFlag"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription 0..1 string "outcomeDescription" "outcomeDescription"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval 0..1 string "referenceInterval" "referenceInterval"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation 0..1 string "referencePopulation" "referencePopulation"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested 0..1 Base "(anonym typ)" "attested"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime 1..1 string "attestedTime" "attestedTime"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime only TimeStampType
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId 0..1 string "attesterHSAId" "attesterHSAId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId only HSAIdType
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName 0..1 string "attesterName" "attesterName"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order 1..1 Base "OrderType" "order"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId 1..1 string "orderId" "orderId"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason 0..1 string "orderReason" "orderReason"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.resultCode from ResultCodeVS (required)
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.errorCode from ErrorCodeVS (required)
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLaboratoryOrderOutcomeFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime obeys getlaboratoryorderoutcome-analysistime-start-or-end

Invariant: getlaboratoryorderoutcome-analysistime-start-or-end
Description: "Minst ett av start och end ska anges i analysisTime (TimePeriodType)."
Expression: "start.exists() or end.exists()"
Severity: #error
