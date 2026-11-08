// Elementen genereras ur GetMaternityMedicalHistoryResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetMaternityMedicalHistory 2.0 (avsnitt 7.2)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetMaternityMedicalHistory
Id: getmaternitymedicalhistory
Title: "GetMaternityMedicalHistory"
Description: """
  Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* maternityMedicalRecord 0..* Base "MaternityMedicalRecordType" "maternityMedicalRecord"
* maternityMedicalRecord.maternityMedicalRecordHeader 1..1 Base "PatientSummaryHeaderType" "maternityMedicalRecordHeader"
* maternityMedicalRecord.maternityMedicalRecordHeader.documentId 1..1 string "documentId" "documentId"
* maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId only HSAIdType
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTime 0..1 string "documentTime" "documentTime"
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTime only TimeStampType
* maternityMedicalRecord.maternityMedicalRecordHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime only TimeStampType
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* maternityMedicalRecord.maternityMedicalRecordHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* maternityMedicalRecord.maternityMedicalRecordHeader.nullified 0..1 boolean "nullified" "nullified"
* maternityMedicalRecord.maternityMedicalRecordHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* maternityMedicalRecord.maternityMedicalRecordHeader.careContactId 0..1 string "careContactId" "careContactId"
* maternityMedicalRecord.maternityMedicalRecordBody 1..1 Base "MaternityMedicalRecordBodyType" "maternityMedicalRecordBody"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord 0..1 Base "RegistrationRecordType" "registrationRecord"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod 0..1 string "lastMenstrualPeriod" "lastMenstrualPeriod"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod only DateType
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy 0..1 string "indicationPregnancy" "indicationPregnancy"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy only DateType
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued 0..1 string "contraceptiveDiscontinued" "contraceptiveDiscontinued"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued only DateType
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod 0..1 string "expectedDayOfDeliveryFromLastMenstrualPeriod" "expectedDayOfDeliveryFromLastMenstrualPeriod"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod only DateType
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan 0..1 string "expectedDayOfDeliveryFromUltrasoundScan" "expectedDayOfDeliveryFromUltrasoundScan"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan only DateType
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer 0..1 string "expectedDayOfDeliveryFromEmbryonicTransfer" "expectedDayOfDeliveryFromEmbryonicTransfer"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer only DateType
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length 0..1 Base "PQType" "length"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight 0..1 Base "PQType" "weight"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex 0..1 Base "PQType" "bodyMassIndex"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility 0..1 decimal "infertility" "infertility"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity 0..* Base "PreviousGravidityAndParityType" "previousGravidityAndParity"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year 1..1 integer "year" "year"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month 1..1 integer "month" "month"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery 0..1 code "delivery" "delivery Tillåtna värden: 0, 1, 2, 4, 5."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery from DeliveryCodeVS (required)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility 0..1 string "healthcareFacility" "healthcareFacility"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress 0..1 string "progress" "progress"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex 0..1 code "sex" "sex Tillåtna värden: 0, 1, 2, 9."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex from SexCodeVS (required)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild 0..1 Base "PQType" "weightOfChild"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation 0..1 integer "gestation" "gestation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis 0..1 boolean "diseasesThrombosis" "diseasesThrombosis"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases 0..1 boolean "diseasesEndocineDiseases" "diseasesEndocineDiseases"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections 0..1 boolean "diseasesRecurrentUrinaryTractInfections" "diseasesRecurrentUrinaryTractInfections"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus 0..1 boolean "diseasesDiabetesMellitus" "diseasesDiabetesMellitus"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy 0..* Base "MedicationType" "medicationDuringPregnacy"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament 1..1 string "medicament" "medicament"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage 0..1 string "dosage" "dosage"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare 0..1 boolean "assessmentAtFirstContactStandardCare" "assessmentAtFirstContactStandardCare"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord 0..1 Base "PregnancyCheckupRecordType" "pregnancyCheckupRecord"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation 0..1 integer "completeWeeksOfGestation" "completeWeeksOfGestation"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight 0..1 Base "PQType" "weight"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight 0..1 Base "PQType" "symphysisFundalHeight"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin 0..1 Base "PQType" "haemoglobin"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic 0..1 Base "PQType" "bloodPressureSystolic"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic 0..1 Base "PQType" "bloodPressureDiastolic"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria 0..1 Base "PQType" "proteinuria"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria 0..1 Base "PQType" "glycosuria"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition 0..* code "fetalPosition" "fetalPosition Tillåtna värden: 0, 1, 2, 3."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition from FetalPositionCodeVS (required)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation 0..* code "fetalPresentation" "fetalPresentation Tillåtna värden: 0, 1, 2, 3."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation from FetalPresentationCodeVS (required)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate 0..* Base "PQType" "fetalHeartRate"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave 0..* code "typeOfLeave" "typeOfLeave Tillåtna värden: 0, 1, 2."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave from TypeOfLeaveCodeVS (required)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration 0..* Base "MedicationType" "medicationSinceRegistration"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament 1..1 string "medicament" "medicament"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage 0..1 string "dosage" "dosage"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord 0..1 Base "PostDeliveryRecordType" "postDeliveryRecord"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord 1..1 Base "MotherPostDeliveryRecordType" "motherPostDeliveryRecord"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic 0..1 Base "PQType" "bloodPressureSystolic"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic 0..1 Base "PQType" "bloodPressureDiastolic"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin 0..1 Base "PQType" "haemoglobin"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature 0..1 decimal "bodyTemperature" "bodyTemperature"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK 0..1 boolean "scarsOK" "scarsOK"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved 0..1 boolean "sutureRemoved" "sutureRemoved"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable 0..1 boolean "perineumComfortable" "perineumComfortable"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK 0..1 boolean "vulvaVaginaPortioOK" "vulvaVaginaPortioOK"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted 0..1 boolean "uterusContracted" "uterusContracted"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote 0..1 string "uterusNote" "uterusNote"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding 0..1 boolean "breastfeeding" "breastfeeding"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord 1..* Base "ChildPostDeliveryRecordType" "childPostDeliveryRecord"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber 1..1 integer "ordinalNumber" "ordinalNumber"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight 0..1 Base "PQType" "weight"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight.value 1..1 decimal "value" "value"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight.unit 1..1 string "unit" "unit"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1 0..1 integer "Apgar (0..10) efter 1 minut" "Apgar (0..10) efter 1 minut"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5 0..1 integer "Apgar (0..10) efter 5 minut" "Apgar (0..10) efter 5 minut"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10 0..1 integer "Apgar (0..10) efter 10 minut" "Apgar (0..10) efter 10 minut"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMaternityMedicalHistoryFieldDescriptions
