## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.

### V-MIM GetCareContacts – Vårdkontakter

![img_005.png](images/img_005.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| careContact |  |
| careContactHeader.documentId | careContact/careContactHeader/documentId |
| careContactHeader.sourceSystemHSAId | careContact/careContactHeader/sourceSystemHSAId |
| careContactHeader.patientId | careContact/careContactHeader/patientId |
| careContactHeader.accountableHealthcareProfessional | careContact/careContactHeader/accountableHealthcareProfessional |
| accountableHealthcareProfessional.authorTime | careContact/careContactHeader/ accountableHealthcareProfessional /authorTime |
| accountableHealthcareProfessional.healthcareProfessionalHSAId | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| accountableHealthcareProfessional.healthcareProfessionalName | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| accountableHealthcareProfessional.healthcareProfessionalRoleCode | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| healthcareProfessionalOrgUnit.orgUnitHSAId | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| healthcareProfessionalOrgUnit.orgUnitname | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| healthcareProfessionalOrgUnit.orgUnitTelecom | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| healthcareProfessionalOrgUnit.orgUnitEmail | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| healthcareProfessionalOrgUnit.orgUnitAddress | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| healthcareProfessionalOrgUnit.orgUnitLocation | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| careContactHeader.approvedForPatient | careContact/careContactHeader/approvedForPatient |
| careContactBody |  |
| careContactBody.careContactCode | careContact/careContactBody/careContactCode |
| careContactBody.careContactReason | careContact/careContactBody/careContactReason |
| careContactBody.careContactTimePeriod | careContact/careContactBody/careContactTimePeriod |
| careContactBody.careContactStatus | careContact/careContactBody/careContactStatus |
| additionalPatientInformationType.dateOfBirth | careContact/careContactBody/additionalPatientInformation/dateOfBirth |
| additionalPatientInformationType.gender | careContact/careContactBody/additionalPatientInformation/gender |
| careContactBody.careContactOrgUnit | careContact/careContactBody/careContactOrgUnit |
| careContactOrgUnit.orgUnitHSAId | careContact/careContactBody/careContactOrgUnit/orgUnitHSAId |
| careContactOrgUnit.orgUnitName | careContact/careContactBody/careContactOrgUnit/orgUnitName |
| careContactOrgUnit.orgUnitTelecom | careContact/careContactBody/careContactOrgUnit/orgUnitTelecom |
| careContactOrgUnit.orgUnitEmail | careContact/careContactBody/careContactOrgUnit/orgUnitEmail |
| careContactOrgUnit.orgUnitAddress | careContact/careContactBody/careContactOrgUnit/orgUnitAddress |
| careContactOrgUnit.orgUnitLocation | careContact/careContactBody/careContactOrgUnit/orgUnitLocation |
| additionalPatientInformation.dateOfBirth | careContact/careContactBody/additionalPatientInformation/dateOfBirth |
| additionalPatientInformation.gender | careContact/careContactBody/additionalPatientInformation/gender |
| result | result |
| result.resultCode | result/resultCode |
| result.errorCode | result/errorCode |
| result.subcode | result/subcode |
| result.logId | result/logId |
| result.message | result/message |

### MIM GetCarePlans – Vård- och omsorgsplan

![img_008.png](images/img_008.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| CarePlanType |  |
| PatientSummaryHeaderType.documentId | carePlan/carePlanHeader/documentId |
| PatientSummaryHeaderType.sourceSystemHSAId | carePlan/carePlanHeader/sourceSystemHSAId |
| PatientSummaryHeaderType.documentTitle | carePlan/carePlanHeader/documentTitle |
| PatientSummaryHeaderType.documentTime | carePlan/carePlanHeader/documentTime |
| PatientSummaryHeaderType.patientId | carePlan/carePlanHeader/patientId |
| PatientSummaryHeaderType.accountableHealthcareProfessional | carePlan/carePlanHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType | carePlan/carePlanHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | carePlan/carePlanHeader/accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalOrgUnitType.orgUnitHSAId | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalOrgUnitType.orgUnitname | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| HealthcareProfessionalOrgUnitType.orgUnitTelecom | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalOrgUnitType.orgUnitEmail | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalOrgUnitType.orgUnitAddress | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalOrgUnitType.orgUnitLocation | carePlan/carePlanHeader//accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | carePlan/carePlanHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.legalAuthenticatorTime | carePlan/carePlanHeader/legalAuthenticator/legalAuthenticatorTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | carePlan/carePlanHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | carePlan/carePlanHeader/legalAuthenticator/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | carePlan/carePlanHeader/legalAuthenticator/legalAuthenticator RoleCode |
| PatientSummaryHeaderType.approvedForPatient | carePlan/carePlanHeader/approvedForPatient |
| PatientSummaryHeaderType.careContactId | carePlan/carePlanHeader/careContactId |
| CarePlanBodyType |  |
| CarePlanBodyType.content | carePlan/carePlanBody/content |
| CarePlanBodyType.participatingCareUnit | carePlan/carePlanBody/participatingCareUnit |
| CarePlanBodyType.typeOfCarePlan | carePlan/carePlanBody/typeOfCarePlanEnum |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

### Formatregler

#### Format för datum och tidpunkter
Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R8]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

