# 7 Tjänstekontrakt

---

## 7.1 GetVaccinationHistory

Tjänsten returnerar ordinerade och/eller administrerade vaccinationer för en patient.

### 7.1.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2`

### 7.1.2 Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan
"Bilaga_Gemensamma_typer_8.pdf".

### 7.1.3 Särskilda förutsättningar

Vid konsumtion av tjänstekontraktet från en patient-/invånartjänst kan fält som är valfria
i kontraktet utelämnas om källsystemet saknar information i dessa fält.

Observera att utelämnat HSA-id för Vårdgivare eller Vårdenhet begränsar verksamhetens möjlighet
att tillgängliggöra information för egna och andras medarbetare.

### 7.1.4 Fältregler

**Request — GetVaccinationHistoryRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAid | HSAIdType | 0..* | Begränsar sökningen till angivna informationsägande vårdenheter |
| patientId | PersonIdType | 1..1 | Begränsar sökningen till angiven personidentifierare för en patient |
| timePeriod | DatePeriodType | 0..1 | Begränsar sökningen till det angivna intervallet |
| sourceSystemHSAid | HSAIdType | 0..1 | Begränsar sökningen till journalposter från angivet källsystem |
| careContactId | string | 0..* | Begränsar sökningen till angiven vård- och omsorgskontakt |

**Response — GetVaccinationHistoryResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| vaccinationMedicalRecord | VaccinationMedicalRecordType | 0..* | En strukturerad vaccinationsjournal |
| ../vaccinationMedicalRecordHeader | PatientSummaryHeaderType | 1..1 | Basinformation om dokumentet |
| ../../documentId | string | 1..1 | Identifierare för uppgift i patientjournal |
| ../../sourceSystemHSAId | HSAIdType | 1..1 | Det källsystem som uppgiften lagras i |
| ../../documentTitle | string | 0..1 | Titel som beskriver informationen |
| ../../documentTime | TimeStampType | 0..1 | Händelsetidpunkt (vaccinationstidpunkt) |
| ../../patientId | PersonIdType | 1..1 | Personidentifierare för patienten |
| ../../accountableHealthCareProfessional | HealthCareProfessionalType | 1..1 | Information om dokumentationsansvarig |
| ../../legalAuthenticator | LegalAuthenticatorType | 0..1 | Information avseende signering |
| ../../approvedForPatient | boolean | 1..1 | Ansvarig vårdpersonals beslut om synlighet för patient |
| ../../careContactId | string | 0..1 | Identitet för vård- och omsorgskontakt |
| ../../nullified | boolean | 1..1 | Anger om dokumentet makulerats |
| ../../nullifiedReason | string | 0..1 | Orsak till makulering |
| ../vaccinationMedicalRecordBody | VaccinationMedicalRecordBodyType | 1..1 | Vaccinationsjournalens innehåll |
| ../../registrationRecord | RegistrationRecordType | 1..1 | Administrativ information om vaccinationstillfället |
| ../../../date | DateType | 1..1 | Datum då vaccination(er) gavs |
| ../../../patientPostalCode | string | 0..1 | Postnummer för patientens bostadsadress |
| ../../../vaccinationUnstructuredNote | string | 0..1 | Fritextsammanfattning |
| ../../../riskCategory | CVType | 0..* | Information om patientens riskgruppstillhörighet |
| ../../../patientAdverseEffect | CVType | 0..* | Information om patientens reaktioner |
| ../../../careGiverOrg | OrgUnitType | 1..1 | Information om juridisk vårdgivare |
| ../../../careGiverContact | ActorType | 0..1 | Kontaktperson hos juridiskt ansvarig vårdgivare |
| ../../../sourceSystemName | string | 1..1 | Klartextnamn på källsystemet/organisationen |
| ../../../sourceSystemProductName | string | 0..1 | Källsystemets produktnamn |
| ../../../sourceSystemProductVersion | string | 0..1 | Källsystemets produktversion |
| ../../../sourceSystemContact | ActorType | 1..1 | Kontaktuppgifter till källsystemsansvarig |
| ../../../careUnitSmiId | string | 0..1 | Utförande vårdenhetens registreringsId hos SMI |
| ../../administrationRecord | AdministrationRecordType | 0..* | Information om utförd vaccination |
| ../../../vaccinationProgramName | CVType | 0..1 | Information om vaccinationsprogram |
| ../../../prescriberOrg | OrgUnitType | 0..1 | Information om var vaccinationen ordinerats |
| ../../../prescriberPerson | ActorType | 0..1 | Information om vem som ordinerat/förskrivit |
| ../../../performerOrg | OrgUnitType | 0..1 | Information om vårdenhet som utfört vaccinationen |
| ../../../performer | ActorType | 0..1 | Information om vem som administrerat vaccineringen |
| ../../../anatomicalSite | CVType | 0..1 | Information om var på kroppen vaccinet givits |
| ../../../route | CVType | 0..1 | Information om hur vaccinet givits |
| ../../../dose | DoseType | 0..1 | Mängd vaccin som givits |
| ../../../isDoseComplete | boolean | 0..1 | True om vaccinering räknas som hel dos |
| ../../../doseOrdinalNumber | integer | 0..1 | Anger vilken dos i ordningen |
| ../../../numberOfPrescribedDoses | integer | 0..1 | Antal delvaccinationer som ska utföras |
| ../../../sourceDescription | string | 0..1 | Fritextinformation om källa för efterregistrerad vaccinering |
| ../../../commentPrescription | string | 0..1 | Fritext: instruktioner från ordination |
| ../../../commentAdministration | string | 0..1 | Fritext: kommentarer vid vaccinering |
| ../../../patientAdverseEffect | CVType | 0..* | Reaktioner för det specifika administreringstillfället |
| ../../../typeOfVaccine | CVType | 0..1 | Information om givet vaccin (vaccintyp) |
| ../../../vaccineName | CVType | 0..1 | Information om vaccinets produktnamn |
| ../../../vaccineBatchId | string | 0..1 | Batchnummer för vaccinets tillverkning |
| ../../../vaccineManufacturer | string | 0..1 | Namn på vaccintillverkaren |
| ../../../vaccineTargetDisease | CVType | 0..* | Sjukdomar vaccinet skyddar emot |
| ../../../vaccinationUniqueReference | IIType | 0..1 | Unik referens till källsystemets vaccinationsinformation |
| ../../additionalPatientInformation | AdditionalPatientInformationType | 0..1 | Ytterligare patientinformation |
| result | ResultType | 1..1 | Information om huruvida begäran gick bra eller ej |
| ../resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR |
| ../errorCode | ErrorCodeEnum | 0..1 | Sätts om resultCode är ERROR |
| ../logId | string | 1..1 | UUID för felsökning |
| ../message | string | 0..1 | Beskrivande text |

### 7.1.5 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna. Dessa återfinns
i schematron-filer. Se den tekniska dokumentationen för specifika begränsningsregler.

### 7.1.6 Icke funktionella krav

Inga övriga icke funktionella krav.

**SLA-krav:** Inga avvikande SLA-krav.

---

## 7.2 GetMedicationHistory

Tjänsten returnerar ordinerade, förskrivna och/eller administrerade läkemedel för en patient.

Då tjänstekontraktet är tämligen omfattande rekommenderas den som har tänkt att implementera
kontraktet, antingen som producent eller konsument, starkt att läsa
tillämpningsanvisningsdokumentet (AB-dokumentet).

I detta tjänstekontrakt hanteras endast en patient per gång. I sambandsklassen hanteras
endas aktiviteter.

### 7.2.1 Version

Version: 2.2

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2`

### 7.2.2 Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan
"Bilaga_Gemensamma_typer_8.pdf".

### 7.2.3 Fältregler

**Request — GetMedicationHistoryRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAId | HSAIdType | 0..* | Begränsar sökningen till angivna informationsägande vårdenheter |
| careGiverHSAId | HSAIdType | 0..* | Begränsar sökningen till angivna informationsägande vårdgivare |
| patientId | PersonIdType | 1..1 | Begränsar sökningen till angiven personidentifierare |
| datePeriod | DatePeriodType | 0..1 | Begränsar sökningen till det angivna intervallet |
| sourceSystemHSAId | HSAIdType | 0..1 | Begränsar sökningen till angivet källsystem |
| careContactId | string | 0..* | Begränsar sökningen till angiven vård- och omsorgskontakt |
| prescriptionChainId | IIType | 0..1 | Ordinationskedje-id: begränsar sökningen till en viss ordinationskedja |
| prescriptionStatus | PrescriptionStatusEnum | 0..1 | Begränsar sökningen till aktiva eller inaktiva ordinationer |

**Response — GetMedicationHistoryResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| medicationMedicalRecord | MedicationMedicalRecordType | 0..* | Patientens läkemedelshistorik |
| ../medicationMedicalRecordHeader | PatientSummaryHeaderType | 1..1 | Basinformation om dokumentet |
| ../../documentId | string | 1..1 | Identifierare för uppgift (vanligtvis ordinations-id) |
| ../../sourceSystemHSAId | HSAIdType | 1..1 | Källsystemets HSA-id |
| ../../documentTitle | string | 0..1 | Titel som beskriver informationen |
| ../../documentTime | — | 0..0 | Ska ej anges |
| ../../patientId | PersonIdType | 1..1 | Personidentifierare för patienten |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Information om dokumentationsansvarig |
| ../../legalAuthenticator | LegalAuthenticatorType | 0..1 | Information avseende signering |
| ../../approvedForPatient | boolean | 1..1 | Ansvarig vårdpersonals beslut om synlighet |
| ../../careContactId | string | 0..1 | Identitet för vård- och omsorgskontakt |
| ../../nullified | — | 0..0 | Ska ej anges |
| ../../nullifiedReason | — | 0..0 | Ska ej anges |
| ../medicationMedicalRecordBody | MedicationMedicalRecordBodyType | 1..1 | Läkemedelshistorikens innehåll |
| ../../medicationPrescription | MedicationPrescriptionType | 1..1 | Läkemedelsordination |
| ../../../prescriptionId | IIType | 1..1 | Ordinations-id |
| ../../../typeOfPrescription | TypeOfPrescriptionEnum | 1..1 | Ordinationstyp (I=insättning, U=utsättning) |
| ../../../prescriptionStatus | PrescriptionStatusEnum | 1..1 | Ordinationsstatus (Active/Inactive) |
| ../../../prescriptionNote | string | 0..1 | Notat om ordinationen |
| ../../../principalPrescriptionReason | PrescriptionReasonType | 0..* | Ordinationshuvudorsak |
| ../../../additionalPrescriptionReason | PrescriptionReasonType | 0..* | Övriga ordinationsorsaker |
| ../../../evaluationTime | TimeStampType | 0..1 | Nästa planerade utvärderingstidpunkt |
| ../../../treatmentPurpose | string | 0..1 | Behandlingsändamål |
| ../../../prescriptionChainId | IIType | 0..1 | Ordinationskedje-id |
| ../../../precedingPrescriptionId | IIType | 0..1 | Föregående ordinations-id |
| ../../../succeedingPrescriptionId | IIType | 0..1 | Efterföljande ordinations-id |
| ../../../prescriber | HealthcareProfessionalType | 0..1 | Ordinatör |
| ../../../evaluator | HealthcareProfessionalType | 0..1 | "Utvärderat av"-person |
| ../../../startOfFirstTreatment | TimeStampType | 0..1 | Första insättningstidpunkt (beräknad) |
| ../../../startOfTreatment | TimeStampType | 0..1 | Insättningstidpunkt |
| ../../../endOfTreatment | TimeStampType | 0..1 | Utsättningstidpunkt |
| ../../../endOfTreatmentReason | CVType | 0..1 | Utsättningsorsak |
| ../../../selfMedication | boolean | 1..1 | Anger om ordination är utfärdad av patienten själv |
| ../../../drug | DrugChoiceType | 0..1 | Läkemedelsval (en av: unstructured/merchandise/drugArticle/drug/generics) |
| ../../../dosage | DosageType | 0..* | Dosering |
| ../../../dispensationAuthorization | DispensationAuthorizationType | 0..1 | Förskrivning |
| ../../../administration | AdministrationType | 0..* | Information om administrering av läkemedel |
| ../../../relation | RelationType | 0..* | Sambandsklass |
| ../../additionalPatientInformation | AdditionalPatientInformationType | 0..1 | Ytterligare patientinformation |
| result | ResultType | 1..1 | Information om huruvida begäran gick bra eller ej |
| ../resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR |
| ../errorCode | ErrorCodeEnum | 0..1 | Sätts om resultCode är ERROR |
| ../logId | string | 1..1 | UUID för felsökning |
| ../message | string | 0..1 | Beskrivande text |

### 7.2.4 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna. Dessa återfinns
i schematron-filer. Se den tekniska dokumentationen för specifika begränsningsregler.

### 7.2.5 Kodsystem — TypeOfPrescription

| Kod | Beskrivning |
|-----|-------------|
| I | Insättningsordination |
| U | Utsättningsordination |

### 7.2.6 Kodsystem — PrescriptionStatus

| Kod | Beskrivning |
|-----|-------------|
| Active | Aktiv ordination (den sista i sin ordinationskedja) |
| Inactive | Inaktiv ordination (inte den sista i sin ordinationskedja) |

### 7.2.7 Icke funktionella krav

Inga övriga icke funktionella krav.

**SLA-krav:** Inga avvikande SLA-krav.
