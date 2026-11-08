// Elementen genereras ur GetVaccinationHistoryResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:actoutcome v2.2.1
// Kontrakt: GetVaccinationHistory v2.0
// Genererad: 2026-03-19

Logical: GetVaccinationHistory
Id: getvaccinationhistory
Title: "GetVaccinationHistory"
Description: """
  Logisk modell för tjänstekontraktet GetVaccinationHistory
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2).
  Representerar responsens informationsstruktur — vaccinationsjournal per patient.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* vaccinationMedicalRecord 0..* Base "VaccinationMedicalRecordType" "vaccinationMedicalRecord"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader 1..1 Base "PatientSummaryHeaderType" "vaccinationMedicalRecordHeader"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId 1..1 string "documentId" "documentId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId only HSAIdType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime 0..1 string "documentTime" "documentTime"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime only TimeStampType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime only TimeStampType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId 0..1 string "careContactId" "careContactId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified 0..1 boolean "nullified" "nullified"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody 1..1 Base "VaccinationMedicalRecordBodyType" "vaccinationMedicalRecordBody"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord 1..1 Base "RegistrationRecordType" "registrationRecord"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg 1..1 OrgUnitType "careGiverOrg" "careGiverOrg"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact 0..1 Base "ActorType" "careGiverContact"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid only HSAIdType
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName 1..1 string "sourceSystemName" "sourceSystemName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName 0..1 string "sourceSystemProductName" "sourceSystemProductName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion 0..1 string "sourceSystemProductVersion" "sourceSystemProductVersion"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact 1..1 Base "ActorType" "sourceSystemContact"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid only HSAIdType
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId 0..1 string "careUnitSmiId" "careUnitSmiId"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date 1..1 string "date" "date"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date only DateType
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode 0..1 string "patientPostalCode" "patientPostalCode"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote 0..1 string "vaccinationUnstructuredNote" "vaccinationUnstructuredNote"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory 0..* CVType "riskCategory" "riskCategory"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect 0..* CVType "patientAdverseEffect" "patientAdverseEffect"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord 0..* Base "AdministrationRecordType" "administrationRecord"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName 0..1 CVType "vaccinationProgramName" "vaccinationProgramName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg 0..1 OrgUnitType "prescriberOrg" "prescriberOrg"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson 0..1 Base "ActorType" "prescriberPerson"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid only HSAIdType
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg 0..1 OrgUnitType "performerOrg" "performerOrg"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer 0..1 Base "ActorType" "performer"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid only HSAIdType
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite 0..1 CVType "anatomicalSite" "anatomicalSite"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route 0..1 CVType "route" "route"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose 0..1 Base "DoseType" "dose"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity 0..1 Base "PQType" "quantity"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity.value 1..1 decimal "value" "value"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity.unit 1..1 string "unit" "unit"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName 1..1 string "displayName" "displayName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete 0..1 boolean "isDoseComplete" "isDoseComplete"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber 0..1 integer "doseOrdinalNumber" "doseOrdinalNumber"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses 0..1 integer "numberOfPrescribedDoses" "numberOfPrescribedDoses"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription 0..1 string "sourceDescription" "sourceDescription"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription 0..1 string "commentPrescription" "commentPrescription"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration 0..1 string "commentAdministration" "commentAdministration"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect 0..* CVType "patientAdverseEffect" "patientAdverseEffect"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine 0..1 CVType "typeOfVaccine" "typeOfVaccine"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName 0..1 CVType "vaccineName" "vaccineName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId 0..1 string "vaccineBatchId" "vaccineBatchId"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer 0..1 string "vaccineManufacturer" "vaccineManufacturer"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease 0..* CVType "vaccineTargetDisease" "vaccineTargetDisease"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference 0..1 IIType "vaccinationUniqueReference" "vaccinationUniqueReference"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation 0..1 Base "AdditionalPatientInformationType" "additionalPatientInformation"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth 1..1 string "dateOfBirth" "dateOfBirth"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth only DateType
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender 0..1 CVType "gender" "gender"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.resultCode from ResultCodeVS (required)
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.errorCode from ErrorCodeVS (required)
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetVaccinationHistoryFieldDescriptions
