## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt ska ha en (1..1) egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

### MIM Journalanteckning

![img_007.png](images/img_007.png)
Modellen är en UML-representation av XSD-schemat. Någon mappning mellan XSD och MIM är därmed inte inkluderad.
Nedan beskrivs mappning mellan MIM/ XSD och informationsmodellen i informationsspecifikationen.

| MIM/ XSD | Mappning mot informationsmodell |
| :--- | :--- |
| GetCareDocumentationRequest |  |
| logicalAddress | Saknas |
| parameters | Saknas |
| GetCareDocumentationType |  |
| careUnit | Vårdenhet.id |
| healthcareProvider | Vårdgivare.id |
| patientId | Patient.id |
| timePeriod | Saknas |
| sourceSystemId | Saknas |
| hasMoreReference | Saknas |
| GetCareDocumentationResponse |  |
| parameters | Saknas |
| GetCareDocumentationResponseType |  |
| careDocumentation | Saknas |
| hasMore | Saknas |
| result | Saknas |
| CareDocumentationType |  |
| header | Saknas |
| body | Saknas |
| HeaderType |  |
| accessControlHeader | Saknas |
| sourceSystemId | Saknas |
| record | Journalanteckning |
| author | Hälso- och sjukvårdspersonal |
| signature | Hälso- och sjukvårdspersonal |
| AccessControlHeaderType |  |
| accountableHealthcareProvider | Vårdgivare.id |
| accountableCareUnit | Vårdenhet.id |
| patientId | Patient.id |
| careProcessId | Saknas |
| blockComparisonTime | Saknas |
| approvedForPatient | Saknas |
| RecordType |  |
| id | Journalanteckning.id |
| timestamp | Journalanteckning.dokumentationstidpunkt |
| AuthorType |  |
| id | Hälso- och sjukvårdspersonal.id |
| name | Saknas |
| timestamp | Deltagande.tid |
| byRole | Hälso- och sjukvårdspersonal.befattning |
| orgUnit | Vårdenhet |
| OrgUnitType |  |
| orgUnitHSAId | Vårdenhet.id |
| orgUnitName | Saknas |
| orgUnitTelecom | Saknas |
| orgUnitEmail | Saknas |
| orgUnitAddress | Saknas |
| orgUnitLocation | Saknas |
| SignatureType |  |
| id | Hälso- och sjukvårdspersonal.id |
| name | Saknas |
| timestamp | Deltagande.tid |
| byRole | Hälso- och sjukvårdspersonal.befattning |
| CareDocumentationBodyType |  |
| clinicalDocumentNoteCode | Journalanteckning.typ |
| clinicalDocumentNoteTitle | Journalanteckning.titel |
| clinicalDocumentNoteText | Journalanteckning.text |
| multimediaEntry | Multimedia |
| dissentingOpinion | Avvikande mening |
| MultimediaType |  |
| mediaType | Multimedia.typ |
| value | Multimedia.binärdata |
| reference | Multimedia.referens |
| DissentingOpinionType |  |
| opinionId | Avvikande mening.id |
| authorTime | Avvikande mening.tidpunkt |
| opinion | Avvilande mening.text |
| personId | Person.person-id |
| personName | Person.namn |
| HasMoreType |  |
| logicalAddress | Saknas |
| reference | Saknas |
| ResultType |  |
| resultCode | Saknas |
| resultText | Saknas |
| IIType |  |
| root | Saknas |
| extension | Saknas |
| CVType |  |
| code | Saknas |
| codeSystem | Saknas |
| codeSystemName | Saknas |
| codeSystemVersion | Saknas |
| displayName | Saknas |
| originalText | Saknas |
| DatePeriodType |  |
| start | Saknas |
| end | Saknas |

### MIM Diagnos

![img_012.png](images/img_012.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| diagnosis |  |
| DiagnosisHeaderType.documentId | diagnosis/diagnosisHeader/documentId |
| DiagnosisHeaderType.sourceSystemHSAId | diagnosis/diagnosisHeader/sourceSystemHSAId |
| DiagnosisHeaderType.patientId | diagnosis/diagnosisHeader/patientId |
| DiagnosisHeaderType.accountableHealthcareProfessional | diagnosis/diagnosisHeader/accountableHealthcareProfessional |
| AccountableHealthcareProfessionalType.authorTime | diagnosis/diagnosisHeader/ accountableHealthcareProfessional /authorTime |
| AccountableHealthcareProfessionalType.healthcareProfessionalHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalName | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| AccountableHealthcareProfessionalType.healthcareProfessionalRoleCode | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | diagnosis/diagnosisHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | diagnosis/diagnosisHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | diagnosis/diagnosisHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | diagnosis/diagnosisHeader/legalAuthenticator/legalAuthenticatorName |
| DiagnosisHeaderType.approvedForPatient | diagnosis/diagnosisHeader/approvedForPatient |
| DiagnosisHeaderType.careContactId | diagnosis/diagnosisHeader/careContactId |
| DiagnosisBodyType |  |
| DiagnosisBodyType.typeOfDiagnosis | diagnosis/diagnosisBody/typeOfDiagnosis |
| DiagnosisBodyType.chronicDiagnosis | diagnosis/diagnosisBody/chronicDiagnosis |
| DiagnosisBodyType.diagnosisTime | diagnosis/diagnosisBody/diagnosisTime |
| DiagnosisBodyType.diagnosisCode | diagnosis/diagnosisBody/diagnosisCode |
| RelatedDiagnosisType.documentId | diagnosis/diagnosisBody/relatedDiagnosis/documentId |

### MIM Uppmärksamhetsinformation

![img_003.png](images/img_003.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| AlertInformationType |  |
| AlertInformationHeaderType.documentId | alertInformation/alertInformationHeader/documentId |
| AlertInformationHeaderType.sourceSystemHSAId | alertInformation/alertInformationHeader/sourceSystemHSAId |
| AlertInformationHeaderType.patientId | alertInformation/alertInformationHeader/patientId |
| AlertInformationHeaderType.accountableHealthcareProfessional | alertInformation/alertInformationHeader/accountableHealthcareProfessional |
| AccountableHealthcareProfessionalType.authorTime | alertInformation/alertInformationHeader/ accountableHealthcareProfessional /authorTime |
| AccountableHealthcareProfessionalType.healthcareProfessionalHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalName | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| AccountableHealthcareProfessionalType.healthcareProfessionalRoleCode | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| AccountableHealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | alertInformation/alertInformationHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | alertInformation/alertInformationHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | alertInformation/alertInformationHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | alertInformation/alertInformationHeader/legalAuthenticator/legalAuthenticatorName |
| AlertInformationHeaderType.approvedForPatient | alertInformation/alertInformationHeader/approvedForPatient |
| AlertInformationHeaderType.careContactId | alertInformation/alertInformationHeader/careContactId |
| AlertInformationBodyType |  |
| AlertInformationBodyType.typeOfAlertInformation | alertInformation/alertInformationBody/typeOfAlertInformation |
| AlertInformationBodyType.ascertainedDate | alertInformation/alertInformationBody/ascertainedDate |
| AlertInformationBodyType.verifiedTime | alertInformation/alertInformationBody/verifiedTime |
| AlertInformationBodyType.validityTimePeriod | alertInformation/alertInformationBody/validityTimePeriod |
| AlertInformationBodyType.alertInformationComment | alertInformation/alertInformationBody/alertInformationComment |
| AlertInformationBodyType.obsoleteTime | alertInformation/alertInformationBody/obsoleteTime |
| AlertInformationBodyType.obsoleteComment | alertInformation/alertInformationBody/obsoleteComment |
| HypersensitivityType.typeOfSensitivity | alertInformation/alertInformationBody/hyperSensitivity/typeOfSensitvity |
| HypersensitivityType.degreeOfSeverity | alertInformation/alertInformationBody/hyperSensitivity/degreeOfSeverity |
| HypersensitivityType.degreeOfCertainty | alertInformation/alertInformationBody/hyperSensitivity/degreeOfCertainty |
| PharmaceuticalHypersensitivityType.atcSubstance | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/atcSubstance |
| PharmaceuticalHypersensitivityType.nonATCSubstance | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/nonATCSubstance |
| PharmaceuticalHypersensitivityType.nonATCSubstanceComment | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/nonATCSubstanceComment |
| PharmaceuticalHypersensitivityType.pharmaceuticalProductId | alertInformation/alertInformationBody/hyperSensitivity/pharmaceuticalHypersensitivity/pharmaceuticalProductId |
| OtherHypersensitivityType.hypersensitivityAgent | alertInformation/alertInformationBody/hyperSensitivity/otherHypersensitivity/hypersensitivityAgent |
| OtherHypersensitivityType.hypersensitivityAgentCode | alertInformation/alertInformationBody/hyperSensitivity/otherHypersensitivity/hypersensitivityAgentCode |
| SeriousDiseaseType.disease | alertInformation/alertInformationBody/seriousDisease/disease |
| TreatmentType.treatmentDescription | alertInformation/alertInformationBody/treatment/treatmentDescription |
| TreatmentType.treatmentCode | alertInformation/alertInformationBody/treatment/treatmentCode |
| TreatmentType.pharmaceuticalTreatment | alertInformation/alertInformationBody/treatment/pharmaceuticalTreatment |
| RestrictionOfCareType.restrictionOfCareComment | alertInformation/alertInformationBody/restrictionOfCare/restrictionOfCareComment |
| CommunicableDiseaseType.communicableDiseaseCode | alertInformation/alertInformationBody/communicableDisease/communicableDiseaseCode |
| CommunicableDiseaseType.routeOfTransmission | alertInformation/alertInformationBody/communicableDisease/routeOfTransmission |
| UnstructuredAlertInformationType.unstructuredAlertInformationHeading | alertInformation/alertInformationBody/unstructuredAlertInformation/unstructuredAlertInformationHeading |
| UnstructuredAlertInformationType.unstructuredAlertInformationContent | alertInformation/alertInformationBody/unstructuredAlertInformation/unstructuredAlertInformationContent |
| AlertInformationRelationshipType.typeOfAlertInformationRelationship | alertInformation/alertInformationBody/alertInformationRelationship/typeOfAlertInfomationRelationship |
| AlertInformationRelationshipType.relationComment | alertInformation/alertInformationBody/alertInformationRelationship/relationComment |
| RelatedAlertInformationType.documentId | alertInformation/alertInformationBody/alertInformationRelationship/relatedAlertInformation/documentId |

### MIM Funktionsstatus

![img_008.png](images/img_008.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| FunctionalStatusAssessmentType |  |
| PatientSummaryHeaderType.documentId | functionalStatusAssessment/functionalStatusAssessmentHeader/documentId |
| PatientSummaryHeaderType.sourceSystemHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/sourceSystemHSAId |
| PatientSummaryHeaderType.documentTime | functionalStatusAssessment/functionalStatusAssessmentHeader/documentTime |
| PatientSummaryHeaderType.patientId | functionalStatusAssessment/functionalStatusAssessmentHeader/patientId |
| PatientSummaryHeaderType.accountableHealthcareProfessional | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | functionalStatusAssessment/functionalStatusAssessmentHeader/legalAuthenticator/legalAuthenticator RoleCode |
| PatientSummaryHeaderType.approvedForPatient | functionalStatusAssessment/functionalStatusAssessmentHeader/approvedForPatient |
| PatientSummaryHeaderType.careContactId | functionalStatusAssessment/functionalStatusAssessmentHeader/careContactId |
| FunctionalStatusAssessmentBodyType |  |
| FunctionalStatusAssessmentBodyType.assessmentCategory | functionalStatusAssessment/functionalStatusAssessmentBody/assessmentCategory |
| FunctionalStatusAssessmentBodyType.comment | functionalStatusAssessment/functionalStatusAssessmentBody/comment |
| PADLType.typeOfAssessment | functionalStatusAssessment/functionalStatusAssessmentBody/padl/typeOfAssessment |
| PADLType.assessment | functionalStatusAssessment/functionalStatusAssessmentBody/padl/assessment |
| DisabilityType.disabilityAssessment | functionalStatusAssessment/functionalStatusAssessmentBody/disability/disabilityAssessment |
| DisabilityType.comment | functionalStatusAssessment/functionalStatusAssessmentBody/disability/comment |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

