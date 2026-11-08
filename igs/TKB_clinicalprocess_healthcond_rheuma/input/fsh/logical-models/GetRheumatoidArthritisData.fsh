// Elementen genereras ur GetRheumatoidArthritisDataResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:rheuma v1.0
// Kontrakt: GetRheumatoidArthritisData v1.0
// Genererad: 2026-09-26

Logical: GetRheumatoidArthritisData
Id: getrheumatoidarthritisdata
Title: "GetRheumatoidArthritisData — Response"
Description: """
  Logisk modell för svaret i GetRheumatoidArthritisData
  (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataResponseType).
  Varje förekomst av rheumatoidArthritisData är ett dokument ur Reuma beslutsstödsjournal eller motsvarande system.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* rheumatoidArthritisData 0..* Base "RheumatoidArthritisDataType" "rheumatoidArthritisData"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader 1..1 Base "PatientSummaryHeaderType" "rheumatoidArthritisDataHeader"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.documentId 1..1 string "documentId" "documentId"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.sourceSystemHSAId only HSAIdType
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.documentTime 0..1 string "documentTime" "documentTime"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.documentTime only TimeStampType
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.legalAuthenticator.signatureTime only TimeStampType
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.careContactId 0..1 string "careContactId" "careContactId"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.nullified 0..1 boolean "nullified" "nullified"
* rheumatoidArthritisData.rheumatoidArthritisDataHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* rheumatoidArthritisData.rheumatoidArthritisDataBody 1..1 Base "RheumatoidArthritisBodyType" "rheumatoidArthritisDataBody"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables 0..1 Base "PatientVariablesType" "patientVariables"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.workability 0..1 string "workability" "workability"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.globalHealth 0..1 string "globalHealth" "globalHealth"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.pain 0..1 string "pain" "pain"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.eq5dIndexValue 0..1 string "eq5dIndexValue" "eq5dIndexValue"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.healthAssessmentQuestionnaireScore 0..1 string "healthAssessmentQuestionnaireScore" "healthAssessmentQuestionnaireScore"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.tenderJoints28 0..1 string "tenderJoints28" "tenderJoints28"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.patientVariables.swollenJoints28 0..1 string "swollenJoints28" "swollenJoints28"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.physiciansVariables 0..1 Base "PhysiciansVariablesType" "physiciansVariables"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.physiciansVariables.physiciansGlobal 0..1 CVType "physiciansGlobal" "physiciansGlobal"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.physiciansVariables.tenderJoints28 0..1 string "tenderJoints28" "tenderJoints28"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.physiciansVariables.swollenJoints28 0..1 string "swollenJoints28" "swollenJoints28"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.physiciansVariables.diseaseActivityScore28 0..1 decimal "diseaseActivityScore28" "diseaseActivityScore28"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.physiciansVariables.diseaseActivityScore28CRP 0..1 decimal "diseaseActivityScore28CRP" "diseaseActivityScore28CRP"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables 0..1 Base "LabVariablesType" "labVariables"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables.sedimentationRate 0..1 Base "PQType" "sedimentationRate"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables.sedimentationRate.value 1..1 decimal "value" "value"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables.sedimentationRate.unit 1..1 string "unit" "unit"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables.cReactiveProtein 0..1 Base "PQType" "cReactiveProtein"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables.cReactiveProtein.value 1..1 decimal "value" "value"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.labVariables.cReactiveProtein.unit 1..1 string "unit" "unit"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug 0..* Base "DrugType" "drug"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.nplId 0..1 IIType "nplId" "nplId"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.actCode 0..1 CVType "actCode" "actCode"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.name 0..1 string "name" "name"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.typeOfDrug 0..1 CVType "typeOfDrug" "typeOfDrug"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.dose 0..1 Base "PQType" "dose"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.dose.value 1..1 decimal "value" "value"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.dose.unit 1..1 string "unit" "unit"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.endCause 0..1 string "endCause" "endCause"
* rheumatoidArthritisData.rheumatoidArthritisDataBody.drug.interval 0..1 string "interval" "interval"

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* rheumatoidArthritisData.rheumatoidArthritisDataHeader obeys getrheumatoidarthritisdata-nullified-reason

Invariant: getrheumatoidarthritisdata-nullified-reason
Description: "nullifiedReason får bara anges när nullified är true"
Expression: "nullifiedReason.exists() implies nullified = true"
Severity: #error
