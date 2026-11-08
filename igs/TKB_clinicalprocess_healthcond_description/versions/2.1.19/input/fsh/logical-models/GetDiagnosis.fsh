// Elementen genereras ur GetDiagnosisResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetDiagnosis v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (svar), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08

Logical: GetDiagnosis
Id: getdiagnosis
Title: "GetDiagnosis"
Description: "Logisk modell för svaret i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: diagnoser för en patient samt resultat."
Characteristics: #can-be-target

* ^version = "2.0"
* diagnosis 0..* Base "DiagnosisType" "diagnosis"
* diagnosis.diagnosisHeader 1..1 Base "PatientSummaryHeaderType" "diagnosisHeader"
* diagnosis.diagnosisHeader.documentId 1..1 string "documentId" "documentId"
* diagnosis.diagnosisHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* diagnosis.diagnosisHeader.sourceSystemHSAId only HSAIdType
* diagnosis.diagnosisHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* diagnosis.diagnosisHeader.documentTime 0..1 string "documentTime" "documentTime"
* diagnosis.diagnosisHeader.documentTime only TimeStampType
* diagnosis.diagnosisHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* diagnosis.diagnosisHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* diagnosis.diagnosisHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime only TimeStampType
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* diagnosis.diagnosisHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* diagnosis.diagnosisHeader.careContactId 0..1 string "careContactId" "careContactId"
* diagnosis.diagnosisHeader.nullified 0..1 boolean "nullified" "nullified"
* diagnosis.diagnosisHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* diagnosis.diagnosisBody 1..1 Base "DiagnosisBodyType" "diagnosisBody"
* diagnosis.diagnosisBody.typeOfDiagnosis 1..1 code "typeOfDiagnosis" "typeOfDiagnosis Tillåtna värden: Huvuddiagnos, Bidiagnos."
* diagnosis.diagnosisBody.typeOfDiagnosis from DiagnosisTypeVS (required)
* diagnosis.diagnosisBody.chronicDiagnosis 0..1 boolean "chronicDiagnosis" "chronicDiagnosis"
* diagnosis.diagnosisBody.diagnosisTime 0..1 string "diagnosisTime" "diagnosisTime"
* diagnosis.diagnosisBody.diagnosisTime only TimeStampType
* diagnosis.diagnosisBody.diagnosisCode 0..1 CVType "diagnosisCode" "diagnosisCode"
* diagnosis.diagnosisBody.relatedDiagnosis 0..* Base "RelatedDiagnosisType" "relatedDiagnosis"
* diagnosis.diagnosisBody.relatedDiagnosis.documentId 1..1 string "documentId" "documentId"
* result 0..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetDiagnosisFieldDescriptions
