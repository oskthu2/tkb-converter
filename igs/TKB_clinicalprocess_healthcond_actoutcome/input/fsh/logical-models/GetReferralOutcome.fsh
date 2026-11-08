// Elementen genereras ur GetReferralOutcomeResponder_3.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetReferralOutcome v3.2
// Genererad: 2026-03-19

Logical: GetReferralOutcome
Id: getreferraloutcome
Title: "GetReferralOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetReferralOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).
  Representerar responsens informationsstruktur — svar på konsultationsremiss
  och begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt
  med HL7v3 CDA v.2.
"""
Characteristics: #can-be-target

* ^version = "3.2"
* referralOutcome 0..* Base "ReferralOutcomeType" "referralOutcome"
* referralOutcome.referralOutcomeHeader 1..1 Base "PatientSummaryHeaderType" "referralOutcomeHeader"
* referralOutcome.referralOutcomeHeader.documentId 1..1 string "documentId" "documentId"
* referralOutcome.referralOutcomeHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* referralOutcome.referralOutcomeHeader.sourceSystemHSAId only HSAIdType
* referralOutcome.referralOutcomeHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* referralOutcome.referralOutcomeHeader.documentTime 0..1 string "documentTime" "documentTime"
* referralOutcome.referralOutcomeHeader.documentTime only TimeStampType
* referralOutcome.referralOutcomeHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* referralOutcome.referralOutcomeHeader.legalAuthenticator 0..1 LegalAuthenticatorType "legalAuthenticator" "legalAuthenticator"
* referralOutcome.referralOutcomeHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* referralOutcome.referralOutcomeHeader.careContactId 0..1 string "careContactId" "careContactId"
* referralOutcome.referralOutcomeHeader.nullified 0..1 boolean "nullified" "nullified"
* referralOutcome.referralOutcomeHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* referralOutcome.referralOutcomeBody 1..1 Base "ReferralOutcomeBodyType" "referralOutcomeBody"
* referralOutcome.referralOutcomeBody.referralOutcomeTypeCode 1..1 code "referralOutcomeTypeCode" "referralOutcomeTypeCode Tillåtna värden: SS, SR."
* referralOutcome.referralOutcomeBody.referralOutcomeTypeCode from ReferralOutcomeTypeCodeVS (required)
* referralOutcome.referralOutcomeBody.referralOutcomeTitle 0..1 string "referralOutcomeTitle" "referralOutcomeTitle"
* referralOutcome.referralOutcomeBody.referralOutcomeText 1..1 string "referralOutcomeText" "referralOutcomeText"
* referralOutcome.referralOutcomeBody.clinicalInformation 0..* Base "ClinicalInformationType" "clinicalInformation"
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode 1..1 Base "ClinicalInformationCodeType" "clinicalInformationCode"
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.code 1..1 string "code" "code"
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.codeSystem 1..1 code "codeSystem" "codeSystem Tillåtna värden: 1.2.752.116.1.1.1.1.3."
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText 1..1 string "clinicalInformationText" "clinicalInformationText"
* referralOutcome.referralOutcomeBody.act 0..* Base "ActType" "act"
* referralOutcome.referralOutcomeBody.act.actId 0..1 string "actId" "actId"
* referralOutcome.referralOutcomeBody.act.actCode 0..1 Base "ActCodeType" "actCode"
* referralOutcome.referralOutcomeBody.act.actCode.code 1..1 string "code" "code"
* referralOutcome.referralOutcomeBody.act.actCode.codeSystem 1..1 string "codeSystem" "codeSystem"
* referralOutcome.referralOutcomeBody.act.actText 1..1 string "actText" "actText"
* referralOutcome.referralOutcomeBody.act.actTime 0..1 string "actTime" "actTime"
* referralOutcome.referralOutcomeBody.act.actTime only TimeStampType
* referralOutcome.referralOutcomeBody.act.actResult 0..* MultimediaType "actResult" "actResult"
* referralOutcome.referralOutcomeBody.referral 1..1 Base "ReferralType" "referral"
* referralOutcome.referralOutcomeBody.referral.referralId 1..1 string "referralId" "referralId"
* referralOutcome.referralOutcomeBody.referral.referralReason 1..1 string "referralReason" "referralReason"
* referralOutcome.referralOutcomeBody.referral.referralTime 0..1 string "referralTime" "referralTime"
* referralOutcome.referralOutcomeBody.referral.referralTime only TimeStampType
* referralOutcome.referralOutcomeBody.referral.referralAuthor 1..1 HealthcareProfessionalType "referralAuthor" "referralAuthor"
* referralOutcome.referralOutcomeBody.referral.careContactId 0..1 string "careContactId" "careContactId"
* referralOutcome.referralOutcomeBody.attested 0..1 Base "(anonym typ)" "attested"
* referralOutcome.referralOutcomeBody.attested.attestedTime 1..1 string "attestedTime" "attestedTime"
* referralOutcome.referralOutcomeBody.attested.attestedTime only TimeStampType
* referralOutcome.referralOutcomeBody.attested.attesterHSAId 0..1 string "attesterHSAId" "attesterHSAId"
* referralOutcome.referralOutcomeBody.attested.attesterHSAId only HSAIdType
* referralOutcome.referralOutcomeBody.attested.attesterName 0..1 string "attesterName" "attesterName"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetReferralOutcomeFieldDescriptions
