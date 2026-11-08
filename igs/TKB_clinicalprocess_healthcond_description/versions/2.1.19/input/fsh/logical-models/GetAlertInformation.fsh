// Elementen genereras ur GetAlertInformationResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetAlertInformation v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (svar), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08

Logical: GetAlertInformation
Id: getalertinformation
Title: "GetAlertInformation"
Description: "Logisk modell för svaret i tjänstekontraktet GetAlertInformation version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: uppmärksamhetsinformation för en patient samt resultat."
Characteristics: #can-be-target

* ^version = "2.0"
* alertInformation 0..* Base "AlertInformationType" "alertInformation"
* alertInformation.alertInformationHeader 1..1 Base "PatientSummaryHeaderType" "alertInformationHeader"
* alertInformation.alertInformationHeader.documentId 1..1 string "documentId" "documentId"
* alertInformation.alertInformationHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* alertInformation.alertInformationHeader.sourceSystemHSAId only HSAIdType
* alertInformation.alertInformationHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* alertInformation.alertInformationHeader.documentTime 0..1 string "documentTime" "documentTime"
* alertInformation.alertInformationHeader.documentTime only TimeStampType
* alertInformation.alertInformationHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* alertInformation.alertInformationHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* alertInformation.alertInformationHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime only TimeStampType
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* alertInformation.alertInformationHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* alertInformation.alertInformationHeader.careContactId 0..1 string "careContactId" "careContactId"
* alertInformation.alertInformationHeader.nullified 0..1 boolean "nullified" "nullified"
* alertInformation.alertInformationHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* alertInformation.alertInformationBody 1..1 Base "AlertInformationBodyType" "alertInformationBody"
* alertInformation.alertInformationBody.typeOfAlertInformation 1..1 CVType "typeOfAlertInformation" "typeOfAlertInformation"
* alertInformation.alertInformationBody.ascertainedDate 0..1 string "ascertainedDate" "ascertainedDate"
* alertInformation.alertInformationBody.ascertainedDate only DateType
* alertInformation.alertInformationBody.verifiedTime 0..1 string "verifiedTime" "verifiedTime"
* alertInformation.alertInformationBody.verifiedTime only TimeStampType
* alertInformation.alertInformationBody.validityTimePeriod 1..1 TimePeriodType "validityTimePeriod" "validityTimePeriod"
* alertInformation.alertInformationBody.alertInformationComment 0..1 string "alertInformationComment" "alertInformationComment"
* alertInformation.alertInformationBody.obsoleteTime 0..1 string "obsoleteTime" "obsoleteTime"
* alertInformation.alertInformationBody.obsoleteTime only TimeStampType
* alertInformation.alertInformationBody.obsoleteComment 0..1 string "obsoleteComment" "obsoleteComment"
* alertInformation.alertInformationBody.hypersensitivity 0..1 Base "HyperSensitivityType" "hypersensitivity"
* alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity 0..1 CVType "typeOfHypersensitivity" "typeOfHypersensitivity"
* alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity 0..1 CVType "degreeOfSeverity" "degreeOfSeverity"
* alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty 0..1 CVType "degreeOfCertainty" "degreeOfCertainty"
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity 0..1 Base "PharmaceuticalHypersensitivityType" "pharmaceuticalHypersensitivity"
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance 0..1 CVType "atcSubstance" "atcSubstance"
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance 0..1 string "nonATCSubstance" "nonATCSubstance"
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment 0..1 string "nonATCSubstanceComment" "nonATCSubstanceComment"
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId 0..* CVType "pharmaceuticalProductId" "pharmaceuticalProductId"
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity 0..1 Base "OtherHypersensitivityType" "otherHypersensitivity"
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent 0..1 string "hypersensitivityAgent" "hypersensitivityAgent"
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode 0..1 CVType "hypersensitivityAgentCode" "hypersensitivityAgentCode"
* alertInformation.alertInformationBody.seriousDisease 0..1 Base "SeriousDiseaseType" "seriousDisease"
* alertInformation.alertInformationBody.seriousDisease.disease 1..1 CVType "disease" "disease"
* alertInformation.alertInformationBody.treatment 0..1 Base "TreatmentType" "treatment"
* alertInformation.alertInformationBody.treatment.treatmentDescription 1..1 string "treatmentDescription" "treatmentDescription"
* alertInformation.alertInformationBody.treatment.treatmentCode 0..1 CVType "treatmentCode" "treatmentCode"
* alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment 0..* CVType "pharmaceuticalTreatment" "pharmaceuticalTreatment"
* alertInformation.alertInformationBody.communicableDisease 0..1 Base "CommunicableDiseaseType" "communicableDisease"
* alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode 1..1 CVType "communicableDiseaseCode" "communicableDiseaseCode"
* alertInformation.alertInformationBody.communicableDisease.routeOfTransmission 0..1 CVType "routeOfTransmission" "routeOfTransmission"
* alertInformation.alertInformationBody.restrictionOfCare 0..1 Base "RestrictionOfCareType" "restrictionOfCare"
* alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment 1..1 string "restrictionOfCareComment" "restrictionOfCareComment"
* alertInformation.alertInformationBody.unstructuredAlertInformation 0..1 Base "UnstructuredAlertInformationType" "unstructuredAlertInformation"
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading 1..1 string "unstructuredAlertInformationHeading" "unstructuredAlertInformationHeading"
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent 1..1 string "unstructuredAlertInformationContent" "unstructuredAlertInformationContent"
* alertInformation.alertInformationBody.relatedAlertInformation 0..* Base "RelatedAlertInformationType" "relatedAlertInformation"
* alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship 1..1 CVType "typeOfAlertInformationRelationship" "typeOfAlertInformationRelationship"
* alertInformation.alertInformationBody.relatedAlertInformation.relationComment 0..1 string "relationComment" "relationComment"
* alertInformation.alertInformationBody.relatedAlertInformation.documentId 1..* string "documentId" "documentId"
* result 0..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAlertInformationFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* alertInformation.alertInformationBody obeys getalertinformation-exactly-one-alert-type

Invariant: getalertinformation-exactly-one-alert-type
Description: "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (TKB 7.3.3)."
Expression: "(hypersensitivity.count() + seriousDisease.count() + treatment.count() + communicableDisease.count() + restrictionOfCare.count() + unstructuredAlertInformation.count()) = 1"
Severity: #error
