// Elementen genereras ur GetCareContactsResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCareContacts v3.0
// Genererad: 2026-03-19

Logical: GetCareContacts
Id: getcarecontacts
Title: "GetCareContacts"
Description: """
  Logisk modell för tjänstekontraktet GetCareContacts
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).
  Representerar responsens informationsstruktur (GetCareContactsResponseType).
  En lista med CareContactType returneras, var och en med ett header och ett body.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* careContact 0..* Base "CareContactType" "careContact"
* careContact.careContactHeader 1..1 Base "PatientSummaryHeaderType" "careContactHeader"
* careContact.careContactHeader.documentId 1..1 string "documentId" "documentId"
* careContact.careContactHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* careContact.careContactHeader.sourceSystemHSAId only HSAIdType
* careContact.careContactHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* careContact.careContactHeader.documentTime 0..1 string "documentTime" "documentTime"
* careContact.careContactHeader.documentTime only TimeStampType
* careContact.careContactHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* careContact.careContactHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* careContact.careContactHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* careContact.careContactHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* careContact.careContactHeader.legalAuthenticator.signatureTime only TimeStampType
* careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* careContact.careContactHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* careContact.careContactHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* careContact.careContactHeader.nullified 0..1 boolean "nullified" "nullified"
* careContact.careContactHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* careContact.careContactHeader.careContactId 0..1 string "careContactId" "careContactId"
* careContact.careContactBody 1..1 Base "CareContactBodyType" "careContactBody"
* careContact.careContactBody.careContactCode 0..1 CVType "careContactCode" "careContactCode"
* careContact.careContactBody.careContactReason 0..1 string "careContactReason" "careContactReason"
* careContact.careContactBody.careContactOrgUnit 0..1 OrgUnitType "careContactOrgUnit" "careContactOrgUnit"
* careContact.careContactBody.careContactTimePeriod 0..1 TimePeriodType "careContactTimePeriod" "careContactTimePeriod"
* careContact.careContactBody.careContactStatus 0..1 CVType "careContactStatus" "careContactStatus"
* careContact.careContactBody.additionalPatientInformation 0..1 Base "AdditionalPatientInformationType" "additionalPatientInformation"
* careContact.careContactBody.additionalPatientInformation.dateOfBirth 0..1 PartialDateType "dateOfBirth" "dateOfBirth"
* careContact.careContactBody.additionalPatientInformation.gender 0..1 CVType "gender" "gender"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareContactsFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* careContact.careContactBody.careContactTimePeriod obeys getcarecontacts-timeperiod-start-or-end

Invariant: getcarecontacts-timeperiod-start-or-end
Description: "Minst ett av start och end ska anges i careContactTimePeriod."
Expression: "start.exists() or end.exists()"
Severity: #error
