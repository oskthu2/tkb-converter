// Elementen genereras ur GetVaccinationHistoryResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:actoutcome 1.0 (Bitbucket-tagg 1.0.2)
// Kontrakt: GetVaccinationHistory v1.0
// Källa: GetVaccinationHistoryResponder_1.0.xsd och clinicalprocess_activityprescription_actoutcome_1.0.xsd
// Genererad: 2026-10-08
// Elementnamn, ordning och kardinalitet följer XML-schemat; beskrivningar kommer från TKB:ns fältregler (avsnitt 7.6).

Logical: GetVaccinationHistory
Id: getvaccinationhistory
Title: "GetVaccinationHistory"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetVaccinationHistory 1.0
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).
  Tjänsten returnerar strukturerad eller ostrukturerad information om patientens vaccinationer.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* vaccinationMedicalRecord 0..* Base "VaccinationMedicalRecordType" "vaccinationMedicalRecord"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader 1..1 Base "PatientSummaryHeaderType" "vaccinationMedicalRecordHeader"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId 1..1 string "documentId" "documentId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime 0..1 string "documentTime" "documentTime"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime only TimeStampType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional 1..1 Base "HealthcareProfessionalType" "accountableHealthcareProfessional"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime 1..1 string "authorTime" "authorTime"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime only TimeStampType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 string "healthcareProfessionalHSAId" "healthcareProfessionalHSAId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 string "healthcareProfessionalName" "healthcareProfessionalName"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 CVType "healthcareProfessionalRoleCode" "healthcareProfessionalRoleCode"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 Base "OrgUnitType" "healthcareProfessionalOrgUnit"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid 0..1 string "orgUnitHSAid" "orgUnitHSAid"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 string "orgUnitName" "orgUnitName"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 string "orgUnitTelecom" "orgUnitTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 string "orgUnitEmail" "orgUnitEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 string "orgUnitAddress" "orgUnitAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 string "orgUnitLocation" "orgUnitLocation"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 string "healthcareProfessionalCareUnitHSAId" "healthcareProfessionalCareUnitHSAId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 string "healthcareProfessionalCareGiverHSAId" "healthcareProfessionalCareGiverHSAId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime only TimeStampType
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid 0..1 string "legalAuthenticatorHSAid" "legalAuthenticatorHSAid"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId 0..1 string "careContactId" "careContactId"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified 0..1 boolean "nullified" "nullified"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason 0..1 boolean "nullifiedReason" "nullifiedReason"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody 1..1 Base "VaccinationMedicalRecordBodyType" "vaccinationMedicalRecordBody"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord 1..1 Base "RegistrationRecordType" "registrationRecord"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg 1..1 Base "OrgUnitType" "careGiverOrg"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid 0..1 string "orgUnitHSAid" "orgUnitHSAid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName 0..1 string "orgUnitName" "orgUnitName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom 0..1 string "orgUnitTelecom" "orgUnitTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail 0..1 string "orgUnitEmail" "orgUnitEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress 0..1 string "orgUnitAddress" "orgUnitAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation 0..1 string "orgUnitLocation" "orgUnitLocation"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact 0..1 Base "ActorType" "careGiverContact"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName 1..1 string "sourceSystemName" "sourceSystemName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName 0..1 string "sourceSystemProductName" "sourceSystemProductName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion 0..1 string "sourceSystemProductVersion" "sourceSystemProductVersion"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact 1..1 Base "ActorType" "sourceSystemContact"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid 0..1 string "hsaid" "hsaid"
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
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg 0..1 Base "OrgUnitType" "prescriberOrg"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid 0..1 string "orgUnitHSAid" "orgUnitHSAid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName 0..1 string "orgUnitName" "orgUnitName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom 0..1 string "orgUnitTelecom" "orgUnitTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail 0..1 string "orgUnitEmail" "orgUnitEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress 0..1 string "orgUnitAddress" "orgUnitAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation 0..1 string "orgUnitLocation" "orgUnitLocation"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson 0..1 Base "ActorType" "prescriberPerson"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg 0..1 Base "OrgUnitType" "performerOrg"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid 0..1 string "orgUnitHSAid" "orgUnitHSAid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName 0..1 string "orgUnitName" "orgUnitName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom 0..1 string "orgUnitTelecom" "orgUnitTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail 0..1 string "orgUnitEmail" "orgUnitEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress 0..1 string "orgUnitAddress" "orgUnitAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation 0..1 string "orgUnitLocation" "orgUnitLocation"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer 0..1 Base "ActorType" "performer"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid 0..1 string "hsaid" "hsaid"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName 0..1 string "personName" "personName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail 0..1 string "personEmail" "personEmail"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom 0..1 string "personTelecom" "personTelecom"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress 0..1 string "personAddress" "personAddress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite 0..1 CVType "anatomicalSite" "anatomicalSite"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route 0..1 CVType "route" "route"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage 0..1 Base "DosageType" "dosage"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity 0..1 Base "PQType" "quantity"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity.value 1..1 decimal "value" "value"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity.unit 1..1 string "unit" "unit"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName 1..1 string "displayName" "displayName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete 0..1 boolean "isDoseComplete" "isDoseComplete"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber 0..1 integer "doseOrdinalNumber" "doseOrdinalNumber"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses 0..1 integer "numberOfPrescribedDoses" "numberOfPrescribedDoses"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription 0..1 string "sourceDescription" "sourceDescription"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription 0..1 string "commentPrescription" "commentPrescription"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration 0..1 string "commentAdministration" "commentAdministration"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect 0..* CVType "patientAdverseEffect" "patientAdverseEffect"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType 0..1 CVType "vaccineType" "vaccineType"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName 0..1 CVType "vaccineName" "vaccineName"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId 0..1 string "vaccineBatchId" "vaccineBatchId"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer 0..1 string "vaccineManufacturer" "vaccineManufacturer"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease 0..* CVType "vaccineTargetDisease" "vaccineTargetDisease"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference 0..1 IIType "vaccinationUniqueReference" "vaccinationUniqueReference"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetVaccinationHistoryFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader obeys getvaccinationhistory-nullifiedreason
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact obeys getvaccinationhistory-actor-hsaid-or-name
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact obeys getvaccinationhistory-actor-hsaid-or-name
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson obeys getvaccinationhistory-actor-hsaid-or-name
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer obeys getvaccinationhistory-actor-hsaid-or-name

Invariant: getvaccinationhistory-nullifiedreason
Description: "nullifiedReason får endast anges i kombination med att nullified = true"
Expression: "nullifiedReason.exists() implies nullified = true"
Severity: #error

Invariant: getvaccinationhistory-actor-hsaid-or-name
Description: "ActorType: minst ett av hsaid och personName ska anges"
Expression: "hsaid.exists() or personName.exists()"
Severity: #error
