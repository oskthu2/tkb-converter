// Elementen genereras ur GetImagingOutcomeResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetImagingOutcome 1.0 (avsnitt 7.4)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetImagingOutcome
Id: getimagingoutcome
Title: "GetImagingOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetImagingOutcome 1.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.4.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* imagingOutcome 0..* Base "ImagingOutcomeType" "imagingOutcome"
* imagingOutcome.imagingOutcomeHeader 1..1 Base "PatientSummaryHeaderType" "imagingOutcomeHeader"
* imagingOutcome.imagingOutcomeHeader.documentId 1..1 string "documentId" "documentId"
* imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId only HSAIdType
* imagingOutcome.imagingOutcomeHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* imagingOutcome.imagingOutcomeHeader.documentTime 0..1 string "documentTime" "documentTime"
* imagingOutcome.imagingOutcomeHeader.documentTime only TimeStampType
* imagingOutcome.imagingOutcomeHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator 0..1 LegalAuthenticatorType "legalAuthenticator" "legalAuthenticator"
* imagingOutcome.imagingOutcomeHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* imagingOutcome.imagingOutcomeHeader.careContactId 0..1 string "careContactId" "careContactId"
* imagingOutcome.imagingOutcomeHeader.nullified 0..1 boolean "nullified" "nullified"
* imagingOutcome.imagingOutcomeHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* imagingOutcome.imagingOutcomeBody 1..1 Base "ImagingBodyType" "imagingOutcomeBody"
* imagingOutcome.imagingOutcomeBody.examinationSpeciality 0..1 CVType "examinationSpeciality" "examinationSpeciality"
* imagingOutcome.imagingOutcomeBody.typeOfResult 1..1 code "typeOfResult" "typeOfResult Tillåtna värden: PREL, DEF, TILL."
* imagingOutcome.imagingOutcomeBody.typeOfResult from TypeOfResultCodeVS (required)
* imagingOutcome.imagingOutcomeBody.resultTime 1..1 string "resultTime" "resultTime"
* imagingOutcome.imagingOutcomeBody.resultTime only TimeStampType
* imagingOutcome.imagingOutcomeBody.resultReport 1..1 string "resultReport" "resultReport"
* imagingOutcome.imagingOutcomeBody.resultComment 0..1 string "resultComment" "resultComment"
* imagingOutcome.imagingOutcomeBody.radiationDose 0..* Base "PQType" "radiationDose"
* imagingOutcome.imagingOutcomeBody.radiationDose.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.radiationDose.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.patientData 0..1 Base "PatientDataType" "patientData"
* imagingOutcome.imagingOutcomeBody.patientData.patientWeight 0..1 Base "PQType" "patientWeight"
* imagingOutcome.imagingOutcomeBody.patientData.patientWeight.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.patientData.patientWeight.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.patientData.patientLength 0..1 Base "PQType" "patientLength"
* imagingOutcome.imagingOutcomeBody.patientData.patientLength.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.patientData.patientLength.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.imageRecording 0..* Base "ImageRecordingType" "imageRecording"
* imagingOutcome.imagingOutcomeBody.imageRecording.recordingId 0..1 IIType "recordingId" "recordingId"
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity 1..1 CVType "examinationActivity" "examinationActivity"
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod 1..1 TimePeriodType "examinationTimePeriod" "examinationTimePeriod"
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus 0..1 code "examinationStatus" "examinationStatus Tillåtna värden: Initierad, Planerad, Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus from ExaminationStatusCodeVS (required)
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit 0..1 string "examinationUnit" "examinationUnit"
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional 0..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages 0..1 integer "numberOfImages" "numberOfImages"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData 0..1 Base "ModalityDataType" "modalityData"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality 0..1 string "typeOfModality" "typeOfModality"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer 0..1 string "manufacturer" "manufacturer"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName 0..1 string "modelName" "modelName"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId 0..1 string "equipmentId" "equipmentId"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion 0..1 string "softwareVersion" "softwareVersion"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.lineFilter 0..1 Base "PQType" "lineFilter"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.lineFilter.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.lineFilter.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData 0..* Base "DicomDataType" "imageDicomData"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP 1..1 string "dicomSOP" "dicomSOP"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue 0..1 base64Binary "dicomValue" "dicomValue"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference 0..1 uri "dicomReference" "dicomReference"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData 0..* Base "ImageStructuredDataType" "imageStructuredData"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture 0..1 Base "PQType" "aperture"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime 0..1 Base "PQType" "exposureTime"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime 0..1 string "imageCreationTime" "imageCreationTime"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime only TimeStampType
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined 0..1 CVType "bodyPartExamined" "bodyPartExamined"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed 0..1 string "contrastAgentUsed" "contrastAgentUsed"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength 0..1 Base "PQType" "magneticFieldStrength"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength.value 1..1 decimal "value" "value"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength.unit 1..1 string "unit" "unit"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright 0..1 string "copyright" "copyright"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData 1..1 Base "ImageDataType" "imageData"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType 1..1 code "mediaType" "mediaType Tillåtna värden: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType from MediaTypeVS (required)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value 0..1 base64Binary "value" "value"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference 0..1 uri "reference" "reference"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInaAnnotations 0..1 boolean "burnedInaAnnotations" "burnedInaAnnotations"
* imagingOutcome.imagingOutcomeBody.referral 0..1 Base "ECGReferralType" "referral"
* imagingOutcome.imagingOutcomeBody.referral.referralId 1..1 string "referralId" "referralId"
* imagingOutcome.imagingOutcomeBody.referral.referralReason 0..1 string "referralReason" "referralReason"
* imagingOutcome.imagingOutcomeBody.referral.anamnesis 0..1 string "anamnesis" "anamnesis"
* imagingOutcome.imagingOutcomeBody.referral.careContactId 0..1 string "careContactId" "careContactId"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* imagingOutcome.imagingOutcomeBody.referral.attested 0..1 LegalAuthenticatorType "attested" "attested"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.resultCode from ResultCodeVS (required)
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.errorCode from ErrorCodeVS (required)
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetImagingOutcomeFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData obeys getimagingoutcome-imagedata-value-xor-reference

Invariant: getimagingoutcome-imagedata-value-xor-reference
Description: "imageData: ett och endast ett av value och reference ska anges."
Expression: "value.exists() xor reference.exists()"
Severity: #error
