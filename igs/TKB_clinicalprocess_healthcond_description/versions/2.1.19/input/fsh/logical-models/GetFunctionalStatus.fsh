// Elementen genereras ur GetFunctionalStatusResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetFunctionalStatus v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (svar), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08

Logical: GetFunctionalStatus
Id: getfunctionalstatus
Title: "GetFunctionalStatus"
Description: "Logisk modell för svaret i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: funktionsstatusbedömningar för en patient samt resultat."
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
* functionalStatusAssessment.functionalStatusAssessmentBody obeys getfunctionalstatus-padl-only-pad
* functionalStatusAssessment.functionalStatusAssessmentBody obeys getfunctionalstatus-disability-only-fun
* functionalStatusAssessment.functionalStatusAssessmentBody obeys getfunctionalstatus-comment-only-pad

Invariant: getfunctionalstatus-padl-only-pad
Description: "padl får enbart anges samtidigt som assessmentCategory = pad-pad (TKB 7.4.3)."
Expression: "padl.exists() implies assessmentCategory = 'pad-pad'"
Severity: #error

Invariant: getfunctionalstatus-disability-only-fun
Description: "disability får endast anges om assessmentCategory = fun-fun (TKB 7.4.3)."
Expression: "disability.exists() implies assessmentCategory = 'fun-fun'"
Severity: #error

Invariant: getfunctionalstatus-comment-only-pad
Description: "comment får endast användas om assessmentCategory = pad-pad (TKB 7.4.3)."
Expression: "comment.exists() implies assessmentCategory = 'pad-pad'"
Severity: #error
