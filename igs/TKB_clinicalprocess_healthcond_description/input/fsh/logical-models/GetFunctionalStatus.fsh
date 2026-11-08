// Elementen genereras ur GetFunctionalStatusResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description v3.0.6
// Kontrakt: GetFunctionalStatus v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2
// Genererad: 2026-03-19

Logical: GetFunctionalStatus
Id: getfunctionalstatus
Title: "GetFunctionalStatus"
Description: """
  Logisk modell för tjänstekontraktet GetFunctionalStatus
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).
  Representerar responsens informationsstruktur: dokumenterade bedömningar av
  funktionsnedsättningar och/eller aktivitetsförmåga (PADL) för en patient.
  Bedömningskategori styrs av assessmentCategory: 'pad-pad' (PADL) eller 'fun-fun' (funktionsnedsättning).
  En tjänsteproducent måste använda samma värde för categorization i engagemangsindex som
  för assessmentCategory i svaret.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* functionalStatusAssessment 0..* Base "FunctionalStatusAssessmentType" "functionalStatusAssessment"
* functionalStatusAssessment.functionalStatusAssessmentHeader 1..1 Base "PatientSummaryHeaderType" "functionalStatusAssessmentHeader"
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentId 1..1 string "documentId" "documentId"
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId only HSAIdType
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime 0..1 string "documentTime" "documentTime"
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime only TimeStampType
* functionalStatusAssessment.functionalStatusAssessmentHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime only TimeStampType
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId 0..1 string "careContactId" "careContactId"
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullified 0..1 boolean "nullified" "nullified"
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* functionalStatusAssessment.functionalStatusAssessmentBody 1..1 Base "FunctionalStatusAssessmentBodyType" "functionalStatusAssessmentBody"
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory 1..1 code "assessmentCategory" "assessmentCategory Tillåtna värden: pad-pad, fun-fun."
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory from AssessmentCategoryVS (required)
* functionalStatusAssessment.functionalStatusAssessmentBody.comment 0..1 string "comment" "comment"
* functionalStatusAssessment.functionalStatusAssessmentBody.padl 0..* Base "PADLType" "padl"
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment 1..1 CVType "typeOfAssessment" "typeOfAssessment"
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment 1..1 string "assessment" "assessment"
* functionalStatusAssessment.functionalStatusAssessmentBody.disability 0..1 Base "DisabilityType" "disability"
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment 1..1 CVType "disabilityAssessment" "disabilityAssessment"
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment 0..1 string "comment" "comment"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFunctionalStatusFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional obeys getfunctionalstatus-pdl-careunit-caregiver

Invariant: getfunctionalstatus-pdl-careunit-caregiver
Description: "Regel 1: HSA-id för vårdenhet och vårdgivare krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL. Saknas de visas elementet inte av konsumenter inom sammanhållen journalföring."
Expression: "healthcareProfessionalCareUnitHSAId.exists() and healthcareProfessionalCareGiverHSAId.exists()"
Severity: #warning
