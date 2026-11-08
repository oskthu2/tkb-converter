// Elementen genereras ur GetCarePlansResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCarePlans v2.0
// Genererad: 2026-03-19

Logical: GetCarePlans
Id: getcareaplans
Title: "GetCarePlans"
Description: """
  Logisk modell för tjänstekontraktet GetCarePlans
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).
  Representerar responsens informationsstruktur (GetCarePlansResponseType).
  En lista med CarePlanType returneras, var och en med ett header och ett body.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* carePlan 0..* Base "CarePlanType" "carePlan"
* carePlan.carePlanHeader 1..1 Base "PatientSummaryHeaderType" "carePlanHeader"
* carePlan.carePlanHeader.documentId 1..1 string "documentId" "documentId"
* carePlan.carePlanHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* carePlan.carePlanHeader.sourceSystemHSAId only HSAIdType
* carePlan.carePlanHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* carePlan.carePlanHeader.documentTime 0..1 string "documentTime" "documentTime"
* carePlan.carePlanHeader.documentTime only TimeStampType
* carePlan.carePlanHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* carePlan.carePlanHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* carePlan.carePlanHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* carePlan.carePlanHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* carePlan.carePlanHeader.legalAuthenticator.signatureTime only TimeStampType
* carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* carePlan.carePlanHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* carePlan.carePlanHeader.nullified 0..1 boolean "nullified" "nullified"
* carePlan.carePlanHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* carePlan.carePlanHeader.careContactId 0..1 string "careContactId" "careContactId"
* carePlan.carePlanBody 1..1 Base "CarePlanBodyType" "carePlanBody"
* carePlan.carePlanBody.content 0..* MultimediaType "content" "content"
* carePlan.carePlanBody.participatingCareUnitHSAId 0..* IIType "participatingCareUnitHSAId" "participatingCareUnitHSAId"
* carePlan.carePlanBody.typeOfCarePlanEnum 0..1 code "typeOfCarePlanEnum" "typeOfCarePlanEnum Tillåtna värden: SIP, SPLPTLRV, SPU, VP, HP, RP, GP, SVP."
* carePlan.carePlanBody.typeOfCarePlanEnum from TypeOfCarePlanVS (required)
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* carePlan.carePlanBody.content obeys getcareplans-content-xor

Invariant: getcareplans-content-xor
Description: "Antingen value eller reference ska anges i content, inte båda"
Expression: "(value.exists() or reference.exists()) and (value.exists().not() or reference.exists().not())"
Severity: #error
