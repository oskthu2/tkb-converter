## Tjänstedomänens meddelandemodeller
Här beskrivs meddelandemodeller för respektive tjänstekontrakt.

### GetLaboratoryOrderOutcome
Begäran

![img_003.png](images/img_003.png)
Svar

![img_007.jpeg](images/img_007.jpeg)
Nedanstående tabell mappar mellan de svenska klass- och attributnamnen i informationsspecifikation och tillämpningsanvisning, xml-schematyperna från det tekniska kontraktet samt referensinformationsmodellen Nationell Informationsstruktur 2020:1 från Socialstyrelsen.

| XSD schema | Informationsmodell | Nationell Informationsstruktur 2020:1 |
| :--- | :--- | :--- |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity/*:code | Provrelaterad aktivitet.kod | Aktivitet.kod |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity/*:time | Provrelaterad aktivitet.tid | Aktivitet.tid |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity/*:method | Provrelaterad aktivitet.metod | Aktivitet.metod |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:identifier | Provbehållare.id | Resurs.id |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:type | Provbehållare.typ | Resurs.typ |
| //*:header/*:accessControlHeader/*:patientId / samt / //*:header/*:accessControlHeader/*:originalPatientId | Patient.id | Patient.id |
| //*:header/*:accessControlHeader/*:patientId / samt / //*:header/*:accessControlHeader/*:originalPatientId | Person.id | Person.person-id |
| saknar motsvarighet | Person.namn | Person.förnamn / samt / Person.efternamn / samt / Person.mellannamn |
| saknar motsvarighet | Person.födelsetidpunkt | Person.födelsedatum |
| saknar motsvarighet | Person.kön | Person.kön |
| //*:header/*:record/*:id / samt / //*:body/*:identifier | Laboratoriesvar.id | saknar motsvarighet |
| //*:body/*:laboratoryIdentifier | Laboratoriesvar.laboratorie-id | Organisation.id |
| //*:body/*:type | Laboratoriesvar.typ | saknar motsvarighet |
| //*:body/*:text | Laboratoriesvar.text | saknar motsvarighet |
| //*:header/*:record/*:timestamp | Laboratoriesvar.svarstidpunkt | saknar motsvarighet |
| //*:body/*:contactInformation/*:text | Kontaktinformation.text | saknar motsvarighet. kan avse / Organisation.namn / Organisation.adress / Organisation.elektroniskAdress / eller / Hälso- och sjukvårdspersonal.adress / Hälso- och sjukvårdspersonal.elektroniskAdress |
| //*:body/*:referral/*:identifier | Remiss.remiss-id | saknar motsvarighet |
| //*:body/*:referral/*:timestamp | Remiss.remisstidpunkt | Vårdbegäran.tidpunkt |
| //*:body/*:referral/*:version | Remiss.versionsnummer | saknar motsvarighet |
| //*:body/*:referral/*:question | Remiss.frågeställning | Vårdbegäran.orsak |
| //*:body/*:referral/*:requestedCareService | Remiss.efterfrågad tjänst | Aktivitet.kod |
| //*:body/*:referral/*:referralInformation/*:referralComment | Remiss.kommentar från beställare | saknar motsvarighet |
| //*:body/*:referral/*:referralInformation/*referralMedicalInformation | Remiss.medicinsk information | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:identifier | Prov.id | Resurs.id |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:material/*:code och codesystem / eller / //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:material/*:originalText | Prov.material | saknar direkt motsvarighet men kan uttryckas med / Resursegenskap.typ / Resursegenskap.värde |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:timestamp | Prov.provtagningstidpunkt | saknar direkt motsvarighet men kan uttryckas med / Resursegenskap.typ / Resursegenskap.värde |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:anatomicalLocation/*:code och codesystem / eller / //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:anatomicalLocation/*:originalText | Prov.anatomisk lokalisation | saknar direkt motsvarighet men kan uttryckas med / Resursegenskap.typ / Resursegenskap.värde |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:comment | Prov.kommentar | saknar direkt motsvarighet men kan uttryckas med / Resursegenskap.typ / Resursegenskap.värde |
| //*:body/*:groupOfAnalyses/*:name | Analysgrupp.namn | saknar direkt motsvarighet |
| //*:body/*:groupOfAnalyses/*:code | Analysgrupp.listkod | Observation.typ |
| //*:body/*:groupOfAnalyses/*:comment | Analysgrupp.gruppkommentar | Observation.beskrivning |
| //*:header/*:accessControlHeader/*:accountableCareGiver / samt / //*:header/*:accessControlHeader/*:accountableCareUnit / samt / //*:body/*:referral/*:requester/*:orgUnit/*:id / samt / //*:body/*:recipientUnit/*:id / samt / //*:header/*:author/*:orgUnit/*:id | Organisatorisk enhet.id | Organisation.id |
| //*:body/*:referral/*:requester/*:orgUnit/*:name / samt / //*:body/*:recipientUnit/*:name / samt / //*:header/*:author/*:orgUnit/*:name | Organisatorisk enhet.namn | Organisation.namn |
| saknar motsvarighet i TKB | Organisatorisk enhet.typ av verksamhet | Organisation.typ |
| //*:header/*:author/*:id / samt / //*:header/*:signature/*:id / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:id / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:id / samt / //*:body/*:recipientSignature/*:id / samt / //*:body/*:referral/*:requester/*:id | Hälso- och sjukvårdspersonal.id | Hälso- och sjukvårdspersonal.id |
| //*:body/*:referral/*:requester/*:name / samt / //*:header/*:author/*:name / samt / //*:header/*:signature/*:name / samt / //*:body/*:recipientSignature/*:name / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:name / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:name | Hälso- och sjukvårdspersonal.namn | Person.förnamn / samt / Person.efternamn / samt / Person.mellannamn |
| //*:header/*:author/*:byRole / samt / //*:body/*:recipientSignature/*:byRole / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:byRole / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:byRole / samt / //*:header/*:signature/*:byRole / samt / //*:body/*:referral/*:requester/*:byRole | Hälso- och sjukvårdspersonal.befattning | Hälso- och sjukvårdspersonal.befattning |
| //*:body/*:groupOfAnalyses/*:analysis/*:device/*:identifier | Analysutrustning.id | Resurs.id |
| saknar motsvarighet | Analysutrustning.typ | Resurs.typ |
| saknar motsvarighet | Analysutrustning.beskrivning | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:identifier | Laboratorieanalys.id | Uppgift i patientjournal.id |
| //*:body/*:groupOfAnalyses/*:analysis/*:status | Laboratorieanalys.status | Aktivitet.status |
| //*:body/*:groupOfAnalyses/*:analysis/*:code | Laboratorieanalys.kod | Aktivitet.kod |
| //*:body/*:groupOfAnalyses/*:analysis/*:timestamp | Laboratorieanalys.tid | Aktivitet.tid |
| //*:body/*:groupOfAnalyses/*:analysis/*:method | Laboratorieanalys.metod | Aktivitet.metod |
| //*:body/*:groupOfAnalyses/*:analysis/*:comment | Laboratorieanalys.kommentar | Aktivitet.beskrivning |
| //*:body/*:groupOfAnalyses/*:analysis/*:accredited | Laboratorieanalys.ackrediterad metod | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:interval | Referens.intervall | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:description | Referens.text | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:population | Referens.population | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:comment | Referens.kommentar | saknar motsvarighet |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:type | Laboratorieanalysresultat.typ | Observation.typ |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:value | Laboratorieanalysresultat.värde | Observation.värde |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:comment | Laboratorieanalysresultat.kommentar | Observation.beskrivning |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:interpretation | Laboratorieanalysresultat.tolkning | saknar direkt motsvarighet men kan uttryckas med / Observation.värde Observation.beskrivning |
| saknar motsvarighet | Laboratorieanalysresultat.negation | Observation.negation |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:timestamp / samt / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:timestamp / samt / //*:header/*:signature/*:timestamp / samt / //*:body/*:recipientSignature/*:timestamp | Signering.tidpunkt | Deltagande.tid |
| //*:header/*:accessControlHeader/*:careProcessId | kan ej mappas | Individanpassad vårdprocess.id |
| .//*:header/*:accessControlHeader/*:lockTime | kan ej mappas | kan ej mappas |
| //*:header/*:accessControlHeader/*:blockComparisonTime | kan ej mappas | kan ej mappas |
| //*:header/*:accessControlHeader/*:approvedForPatient | kan ej mappas | kan ej mappas |
| //*:header/*:sourceSystemId | kan ej mappas | kan ej mappas |
| //*:header/*:author/*:timestamp | kan ej mappas | kan ej mappas |

### GetReferralOutcome
Meddelandeformatet är kompatibelt med HL7v3 CDA v.2.

![img_011.jpeg](images/img_011.jpeg)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| ReferralOutcomeType |  |
| ReferralOutcomeHeaderType.documentId | referralOutcome/referralOutcomeHeader/documentId |
| ReferralOutcomeHeaderType.sourceSystemHSAId | referralOutcome/referralOutcomeHeader/sourceSystemHSAId |
| ReferralOutcomeHeaderType.documentTitle | referralOutcome/referralOutcomeHeader/documentTitle |
| ReferralOutcomeHeaderType.documentTime | referralOutcome/referralOutcomeHeader/documentTime |
| ReferralOutcomeHeaderType.patientId | referralOutcome/referralOutcomeHeader/patientId |
| ReferralOutcomeHeaderType.accountableHealthcareProfessional | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | referralOutcome/referralOutcomeHeader/ accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| OrgUnitType.orgUnitHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitname | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| OrgUnitType.orgUnitTelecom | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | referralOutcome/referralOutcomeHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.signatureTime | referralOutcome/referralOutcomeHeader/legalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | referralOutcome/referralOutcomeHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | referralOutcome/referralOutcomeHeader/legalAuthenticator/legalAuthenticatorName |
| ReferralOutcomeHeaderType.approvedForPatient | referralOutcome/referralOutcomeHeader/approvedForPatient |
| ReferralOutcomeHeaderType.careContactId | referralOutcome/referralOutcomeHeader/careContactId |
| ReferralOutcomeBodyType |  |
| ReferralOutcomeBodyType.referralOutcomeTypeCode | referralOutcome/referralOutcomeBody/referralOutcomeTypeCode |
| ReferralOutcomeBodyType.referralOutcomeTitle | referralOutcome/referralOutcomeBody/referralOutcomeTitle |
| ReferralOutcomeBodyType.referralOutcomeText | referralOutcome/referralOutcomeBody/referralOutcomeText |
| ClinicalInformationType.clinicalInformationCode | referralOutcome/referralOutcomeBody/clinicalInformation/clinicalInformationCode |
| ClinicalInformationType.clinicalInformationText | referralOutcome/referralOutcomeBody/clinicalInformation/clinicalInformationText |
| ActType.actId | referralOutcome/referralOutcomeBody/act/actId |
| ActType.actCode | referralOutcome/referralOutcomeBody/act/actCode |
| ActType.actText | referralOutcome/referralOutcomeBody/act/actText |
| ActType.actTime | referralOutcome/referralOutcomeBody/act/actTime |
| ActType.actResult | referralOutcome/referralOutcomeBody/act/actResult |
| ReferralType.referralId | referralOutcome/referralOutcomeBody/referral/referralId |
| ReferralType.referralReason | referralOutcome/referralOutcomeBody/referral/referralReason |
| ReferralType.referralTime | referralOutcome/referralOutcomeBody/referral/referralTime |
| ReferralType.referralAuthor | referralOutcome/referralOutcomeBody/referral/referralAuthor |
| HealthcareProfessionalType.authorTime | referralOutcome/referralOutcomeBody/referral/referralAuthor/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalRoleCode |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitHSAId | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitName | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitName |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitTelecom | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitTelecom |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitEmail | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitEmail |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitAddress | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitAddress |
| HealthcareProfessionalType.healthcareProfessionalOrgUnit.orgUnitLocation | referralOutcome/referralOutcomeBody/referral/referralAuthor/healthcareProfessionalOrgUnit/orgUnitLocation |
| ReferralType.careContactId | referralOutcome/referralOutcomeBody/referral/careContactId |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

### GetMaternityMedicalHistory
Modellen beskriver den logiska strukturen för ett svarsmeddelande. Tjänsten baseras på Socialstyrelsens blanketter för mödravårdsjournal.

![img_006.jpeg](images/img_006.jpeg)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| MaternityMedicalHistoryType |  |
| MaternityMedicalHistoryHeaderType.documentId | maternityMedicalHistory/maternityMedicalHistoryHeader/documentId |
| MaternityMedicalHistoryHeaderType.sourceSystemHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/sourceSystemHSAId |
| MaternityMedicalHistoryHeaderType.patientId | maternityMedicalHistory/maternityMedicalHistoryHeader/patientId |
| MaternityMedicalHistoryHeaderType.accountableHealthcareProfessional | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional |
| HealthcareProfessionalType.authorTime | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional /authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |
| OrgUnitType.orgUnitHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitname | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitname |
| OrgUnitType.orgUnitTelecom | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalOrgUnit/orgUnitLocation |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/accountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| LegalAuthenticatorType.signatureTime | maternityMedicalHistory/maternityMedicalHistoryHeader/legalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | maternityMedicalHistory/maternityMedicalHistoryHeader/legalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | maternityMedicalHistory/maternityMedicalHistoryHeader/legalAuthenticator/legalAuthenticatorName |
| MaternityMedicalHistoryHeaderType.approvedForPatient | maternityMedicalHistory/maternityMedicalHistoryHeader/approvedForPatient |
| MaternityMedicalHistoryHeaderType.careContactId | maternityMedicalHistory/maternityMedicalHistoryHeader/careContactId |
| MaternityMedicalHistoryBodyType |  |
| RegistrationRecordType.lastMenstrualPeriod | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/lastMenstrualPeriod |
| RegistrationRecordType.indicationPregnancy | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/indicationPregnancy |
| RegistrationRecordType.contraceptiveDiscontinued | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/contraceptiveDiscontinued |
| RegistrationRecordType.expectedDayOfDeliveryFromLastMenstrualPeriod | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/expectedDayOfDeliveryFromLastMentrualPeriod |
| RegistrationRecordType.expectedDayOfDeliveryFromUltrasoundScan | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/expectedDayOfDeliveryFromUltrasoundScan |
| RegistrationRecordType.expectedDayOfDeliveryFromEmbryonicTransfer | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/expectedDayOfDeliveryFromEmbryonicTransfer |
| RegistrationRecordType.length | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/length |
| RegistrationRecordType.weight | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/weight |
| RegistrationRecordType.bodyMassIndex | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/bodyMassIndex |
| RegistrationRecordType.infertility | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/infertility |
| PreviousGravidityAndParityType.year | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/year |
| PreviousGravidityAndParityType.delivery | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/delivery |
| PreviousGravidityAndParityType.healthcareFacility | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/healthcareFacility |
| PreviousGravidityAndParityType.progress | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/progress |
| PreviousGravidityAndParityType.sex | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/sex |
| PreviousGravidityAndParityType.weightOfChild | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/weightOfChild |
| PreviousGravidityAndParityType.gestation | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/gestation |
| PreviousGravidityAndParityType.diseasesThrombosis | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesThrombosis |
| PreviousGravidityAndParityType.diseasesEndocrineDiseases | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesEndocrineDiseases |
| PreviousGravidityAndParityType.diseasesReccurentUrinaryTractInfections | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesRecurrentUrinaryTractInfections |
| PreviousGravidityAndParityType.diseasesDiabetesMellitus | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/diseasesDiabetesMellitus |
| PreviousGravidityAndParityType.assessmentAtFirstContactStandardCare | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/assessmentAtFirstContactStandardCare |
| PregnancyCheckupRecordType.completeWeeksOfGestation | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/completeWeeksOfGestation |
| PregnancyCheckupRecordType.weight | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/weight |
| PregnancyCheckupRecordType.symphysisFundalHeight | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/symphysisFundalHeight |
| PregnancyCheckupRecordType.haemoglobin | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/haemoglobin |
| PregnancyCheckupRecordType.bloodPressureSystolic | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/bloodPressureSystolic |
| PregnancyCheckupRecordType.bloodPressureDiastolic | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/bloodPressureDiastolic |
| PregnancyCheckupRecordType.proteinuria | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/proteinuria |
| PregnancyCheckupRecordType.glycosuria | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/glycosuria |
| PregnancyCheckupRecordType.fetalPosition | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/fetalPosition |
| PregnancyCheckupRecordType.fetalPresentation | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/fetalPresentation |
| PregnancyCheckupRecordType.fetalHeartRate | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/fetalHeartRate |
| PregnancyCheckupRecordType.typeOfLeave | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/typeOfLeave |
| MotherPostDeliveryRecordType.breastfeeding | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/completeWeeksOfGestation |
| MotherPostDeliveryRecordType.bloodPressureSystolic | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/bloodPressureSystolic |
| MotherPostDeliveryRecordType.bloodPressureDiastolic | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/bloodPressureDiastolic |
| MotherPostDeliveryRecordType.haemoglobin | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/haemoglobin |
| MotherPostDeliveryRecordType.bodyTemperature | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/bodyTemperature |
| MotherPostDeliveryRecordType.scarsOK | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/scarsOK |
| MotherPostDeliveryRecordType.sutureRemoved | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/sutureRemoved |
| MotherPostDeliveryRecordType.perineumComfortable | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/perineumComfortable |
| MotherPostDeliveryRecordType.vulvaVaginaPortioOK | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/vulvaVaginaPortioOK |
| MotherPostDeliveryRecordType.uterusContracted | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/uterusContracted |
| MotherPostDeliveryRecordType.uterusNote | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/motherPostDeliveryRecord/uterusNote |
| ChildPostDeliveryRecordType.ordinalNumber | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/ordinalNumber |
| ChildPostDeliveryRecordType.weight | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/weight |
| ChildPostDeliveryRecordType.apgarScore1 | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/apgarScore1 |
| ChildPostDeliveryRecordType.apgarScore5 | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/apgarScore5 |
| ChildPostDeliveryRecordType.apgarScore10 | maternityMedicalHistory/maternityMedicalHistoryBody/postDeliveryRecord/childPostDeliveryRecord/apgarScore10 |
| MedicationType.medicament | maternityMedicalHistory/maternityMedicalHistoryBody/registrationRecord/previousGravidityAndParity/medicationDuringPregnancy/medicament / samt / maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/medicationSinceRegistration/medicament |
| MedicationType.dosage | maternityMedicalHistory/maternityMedicalHistoryBody/pregnancyCheckupRecord/medicationSinceRegistration/dosage |
| ResultType | result |
| ResultType.resultCode | result/resultCode |
| ResultType.errorCode | result/errorCode |
| ResultType.subcode | result/subcode |
| ResultType.logId | result/logId |
| ResultType.message | result/message |

### GetImagingOutcome

![img_010.png](images/img_010.png)

| Klass.attribut | Mappning mot XSD schema |
| :--- | :--- |
| PatientSummaryHeaderType.documentId | ImagingOutcome/ImagingOutcomeHeader/documentId |
| PatientSummaryHeaderType.sourceSystemHSAId | ImagingOutcome/ImagingOutcomeHeader/sourceSystemHSAId |
| PatientSummaryHeaderType.documentTitle | ImagingOutcome/ImagingOutcomeHeader/documentTitle |
| PatientSummaryHeaderType.documentTime | ImagingOutcome/ImagingOutcomeHeader/documentTime |
| PatientSummaryHeaderType.patientId | ImagingOutcome/ImagingOutcomeHeader/patientId |
| PatientSummaryHeaderType.approvedForPatient | ImagingOutcome/ImagingOutcomeHeader/approvedForPatient |
| PatientSummaryHeaderType.careContactId | ImagingOutcome/ImagingOutcomeHeader/careContactId |
| PatientSummaryHeaderType.nullified | ImagingOutcome/ImagingOutcomeHeader/nullified |
| PatientSummaryHeaderType.nullifiedReason | ImagingOutcome/ImagingOutcomeHeader/nullifiedReason |
| HealthcareProfessionalType.authorTime | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| OrgUnitType.orgUnitHSAId | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitName | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitName |
| OrgUnitType.orgUnitTelecom | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | ImagingOutcome/ImagingOutcomeHeader/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitLocation |
| LegalAuthenticatorType.signatureTime | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | ImagingOutcome/ImagingOutcomeHeader/LegalAuthenticator/legalAuthenticatorRoleCode |
| ImageBodyType |  |
| ImageBodyType.examinationSpeciality | ImagingOutcome/ImagingOutcomeBody/examinationSpeciality |
| PatientDataType.patientWeight | ImagingOutcome/ImagingOutcomeBody/PatientData/patientWeight |
| PatientDataType.patientLength | ImagingOutcome/ImagingOutcomeBody/PatientData/patientLength |
| ImageBodyType.typeOfResult | ImagingOutcome/ImagingOutcomeBody/typeOfResult |
| ImageBodyType.resultTime | ImagingOutcome/ImagingOutcomeBody/resultTime |
| ImageBodyType.resultReport | ImagingOutcome/ImagingOutcomeBody/resultReport |
| ImageBodyType.resultComment | ImagingOutcome/ImagingOutcomeBody/resultComment |
| ImageBodyType.radiationDose | ImagingOutcome/ImagingOutcomeBody/radiationDose |
| ReferralType.referralId | ImagingOutcome/ImagingOutcomeBody/Referral/referralId |
| ReferralType.referralReason | ImagingOutcome/ImagingOutcomeBody/Referral/referralReason |
| ReferralType.anamnesis | ImagingOutcome/ImagingOutcomeBody/Referral/anamnesis |
| ReferralType.careContactId | ImagingOutcome/ImagingOutcomeBody/Referral/careContactId |
| HealthcareProfessionalType.authorTime | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/authorTime |
| HealthcareProfessionalType.healthcareProfessionalHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalHSAId |
| HealthcareProfessionalType.healthcareProfessionalName | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalName |
| HealthcareProfessionalType.healthcareProfessionalRoleCode | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalRoleCode |
| HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalCareUnitHSAId |
| HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/healthcareProfessionalCareGiverHSAId |
| OrgUnitType.orgUnitHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitHSAId |
| OrgUnitType.orgUnitName | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitName |
| OrgUnitType.orgUnitTelecom | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitTelecom |
| OrgUnitType.orgUnitEmail | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitEmail |
| OrgUnitType.orgUnitAddress | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitAddress |
| OrgUnitType.orgUnitLocation | ImagingOutcome/ImagingOutcomeBody/Referral/AccountableHealthcareProfessional/HealthcareProfessionalOrgUnit/orgUnitLocation |
| ReferralType.attested | ImagingOutcome/ImagingOutcomeBody/Referral/Attested |
| LegalAuthenticatorType.signatureTime | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/signatureTime |
| LegalAuthenticatorType.legalAuthenticatorHSAId | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/legalAuthenticatorHSAId |
| LegalAuthenticatorType.legalAuthenticatorName | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/legalAuthenticatorName |
| LegalAuthenticatorType.legalAuthenticatorRoleCode | ImagingOutcome/ImagingOutcomeBody/Referral/Attested/legalAuthenticatorRoleCode |
| ImageRecordingType.id | ImagingOutcome/ImagingOutcomeBody/ImageRecording/id |
| ImageRecordingType.examinationActivity | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationActivity |
| ImageRecordingType.examinationTimePeriod | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationTimePeriod |
| ImageRecordingType.examinationStatus | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationStatus |
| ImageRecordingType.examinationUnit | ImagingOutcome/ImagingOutcomeBody/ImageRecording/examinationUnit |
| ImageRecordingType.numberOfImages | ImagingOutcome/ImagingOutcomeBody/ImageRecording/numberOfImages |
| ImageDicomDataType.dicomSOP | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageDicomData/dicomSOP |
| ImageDicomData.dicomValue | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageDicomData/dicomValue |
| ImageDicomData.dicomReference | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageDicomData/dicomReference |
| ModalityDataType.typeOfModality | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/typeOfModality |
| ModalityData.manufacturer | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/manufacturer |
| ModalityData.modelName | ImagingOutcome/ImagingOutcomeBody/ImageRecording ModalityData/modelName |
| ModalityData.equipmentId | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/equipmentId |
| ModalityData.softwareVersion | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ModalityData/softwareVersion |
| ImageStaticDataType.aperture | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/aperture |
| ImageStaticDataType.exposureTime | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/exposureTime |
| ImageStaticDataType.imageCreationTime | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/imageCreationTime |
| ImageStaticDataType.bodyPartExamined | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/bodyPartExamined |
| ImageStaticDataType.contrastAgentUsed | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/contrastAgentUsed |
| ImageStaticDataType.magneticFieldStrength | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/magneticFieldStrength |
| ImageStaticDataType.copyRight | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/copyRight |
| ImageDataType.mediaType | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/mediaType |
| ImageDataType.value | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/value |
| ImageDataType.reference | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/reference |
| ImageDataType.burnedInAnnotations | ImagingOutcome/ImagingOutcomeBody/ImageRecording/ImageStructuredData/ImageData/burnedInAnnotations |
| ResultType | Result |
| ResultType.resultCode | Result/resultCode |
| ResultType.errorCode | Result/errorCode |
| ResultType.subcode | Result/subcode |
| ResultType.logId | Result/logId |
| ResultType.message | Result/message |

### Formatregler

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601- och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tid
Tid anges på formatet ”ttmmss”, vilket motsvarar den ISO 8601- och ISO 8824-kompatibla formatbeskrivningen ”hhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för patient-id

##### Personnummer
Personnummer anges enligt format ÅÅÅÅMMDDNNNN.

##### Samordningsnummer
Samordningsnummer anges enligt format ÅÅÅÅMMDDNNNN.

##### Lokal reservidentitet
Format för lokal reservidentitet: Olika format för varje landsting/region och därmed krav på flexibel hantering. Några exempel på reservidentiteter i olika regioner:
201612345678, 19521234TA3C, 20081234-0123, 123456-DA0A, 123456789A.

