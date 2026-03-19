# 7 Tjänstekontrakt

## 7.1 GetCareContacts

### 7.1.1 Version

Version: 3.0

### 7.1.2 Beskrivning

GetCareContacts returnerar vårdkontakter som finns dokumenterade för en patient.

### 7.1.3 Fältregler

**Request — GetCareContactsRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAId | HSAIdType | 0..* | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. |
| careGiverHSAId | HSAIdType | 0..* | Filtrering på informationsägande vårdgivare, vilket motsvarar careGiverHSAId i healthcareProfessionalType. |
| patientId | PersonIdType | 1..1 | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. Fältet type sätts till OID för typ av identifierare: personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3) eller reservnummer (lokalt definierade OID). |
| ../id | string | 1..1 | Id för patient enligt ovan. |
| ../type | string | 1..1 | OID enligt ovan. |
| datePeriod | DatePeriodType | 0..1 | Begränsar sökningen till det angivna datumintervallet. |
| ../start | string | 1..1 | Startdatum. Format ÅÅÅÅMMDD. |
| ../end | string | 1..1 | Slutdatum. Format ÅÅÅÅMMDD. |
| sourceSystemHSAId | HSAIdType | 0..1 | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tvingande om careContactId angivits eller vid begäran på reservnummer. |
| careContactId | string | 0..* | Begränsar sökningen till den/de vårdkontakter vars id anges. Motsvarar documentId i careContactHeader i svaret. |

**Response — GetCareContactsResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careContact | CareContactType | 0..* | De vårdkontakter som matchar begäran. |
| ../careContactHeader | PatientSummaryHeaderType | 1..1 | Innehåller basinformation om dokumentet. |
| ../../documentId | string | 1..1 | Vårdkontaktens identitet, unik inom källsystemet. Ska vara konsistent och beständig mellan versioner och kontrakt. |
| ../../sourceSystemHSAId | HSAIdType | 1..1 | HSA-id för det system som dokumentet är skapat i. |
| ../../documentTitle | — | 0..0 | Ska ej anges. |
| ../../documentTime | — | 0..0 | Ska ej anges. |
| ../../patientId | PersonIdType | 1..1 | Id för patienten. |
| ../../../id | string | 1..1 | Patientens identifierare (12 tecken utan avskiljare för personnummer/samordningsnummer). |
| ../../../type | string | 1..1 | OID för typ av identifierare. |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Hälso- och sjukvårdspersonalen som ansvarar för vårdkontakten. |
| ../../../authorTime | TimeStampType | 1..1 | Tidpunkt då informationen registrerades. Regel: Regel 2. |
| ../../../healthcareProfessionalHSAId | HSAIdType | 0..1 | HSA-id för hälso- och sjukvårdspersonal. |
| ../../../healthcareProfessionalName | string | 0..1 | Namn på hälso- och sjukvårdspersonal. |
| ../../../healthcareProfessionalRoleCode | CVType | 0..1 | Befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | 0..1 | Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Regel: Regel 4. |
| ../../../../orgUnitHSAId | HSAIdType | 0..1 | HSA-id för organisationsenhet. Regel: Regel 4. |
| ../../../../orgUnitName | string | 0..1 | Namn på organisationsenheten. Regel: Regel 4. |
| ../../../../orgUnitTelecom | string | 0..1 | Telefon till organisationsenhet. |
| ../../../../orgUnitEmail | string | 0..1 | Epost till enhet. |
| ../../../../orgUnitAddress | string | 0..1 | Postadress. |
| ../../../../orgUnitLocation | string | 0..1 | Plats/ort. |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | 0..1 | HSA-id för vårdenhet. Regel: Regel 1. |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | 0..1 | HSA-id för vårdgivaren. Regel: Regel 1. |
| ../../legalAuthenticator | — | 0..0 | Ska ej anges. |
| ../../approvedForPatient | boolean | 1..1 | Anger om information får delas till patient (true/false). Regel: Regel 3. |
| ../../nullified | — | 0..0 | Ska ej anges. |
| ../../nullifiedReason | — | 0..0 | Ska ej anges. |
| ../../careContactId | — | 0..0 | Ska ej anges. |
| ../careContactBody | CareContactBodyType | 1..1 | Kontaktspecifik information. |
| ../../careContactCode | CVType | 0..1 | Typ av vårdkontakt. KV Vårdkontakttyp (OID 1.2.752.129.2.2.2.x). |
| ../../careContactReason | string | 0..1 | Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger. |
| ../../careContactOrgUnit | OrgUnitType | 0..1 | Den enhet som vårdkontakten utfördes vid eller planeras utföras vid. Regel: Regel 5. |
| ../../careContactTimePeriod | TimePeriodType | 0..1 | Tidsintervall för vårdkontakt. Minst ett av start och end måste anges. |
| ../../../start | TimeStampType | 0..1 | Vårdkontaktens starttidpunkt. Minst ett av fälten start och end måste anges. |
| ../../../end | TimeStampType | 0..1 | Vårdkontaktens sluttidpunkt. Minst ett av fälten start och end måste anges. |
| ../../careContactStatus | CVType | 0..1 | Status för vårdkontakten. SNOMED CT-SE, SCTID: 53761000052103. |
| ../../additionalPatientInformation | AdditionalPatientInformationType | 0..1 | Ytterligare patientinformation (ej tillgänglig via PU-slagning). |
| ../../../dateOfBirth | PartialDateType | 0..1 | Patientens födelsedatum. |
| ../../../gender | CVType | 0..1 | Patientens kön. KV Kön (1.2.752.129.2.2.1.1). |
| result | ResultType | 1..1 | Innehåller information om begäran gick bra eller ej. |
| ../resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR. |
| ../errorCode | ErrorCodeEnum | 0..1 | Sätts endast om resultCode är ERROR. |
| ../logId | string | 1..1 | UUID för felsökning. |
| ../message | string | 0..1 | Beskrivande text för användaren. |

### 7.1.4 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan.

| Namn | Regel | Element | Ändamål |
|------|-------|---------|---------|
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring. | healthcareProfessionalCareGiverHSAId, healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Används ofta för kontroll av tidsbegränsade spärrar i e-tjänster för sammanhållen journalföring. | authorTime | Sammanhållen journalföring |
| Regel 3 | Ska kunna sättas till false för information som inte ska visas vid enskilds direktåtkomst. | approvedForPatient | Enskilds direktåtkomst |
| Regel 4 | För kompatibilitet med NPÖ RIV 2.2.0 måste healthcareProfessionalOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | healthcareProfessionalOrgUnit, healthcareProfessionalOrgUnit.orgUnitHSAId, healthcareProfessionalOrgUnit.orgUnitName | Kompatibilitet med NPÖ |
| Regel 5 | För kompatibilitet med NPÖ RIV 2.2.0 måste careContactOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | careContactOrgUnit, careContactOrgUnit.orgUnitHSAId, careContactOrgUnit.orgUnitName | Kompatibilitet med NPÖ |

### 7.1.5 Logiska fel

Se avsnitt 4.4 för definition av felkoder.

### 7.1.6 Icke funktionella krav

Inga övriga icke funktionella krav.

### 7.1.7 SLA-krav

Inga avvikande SLA-krav.

---

## 7.2 GetCarePlans

### 7.2.1 Version

Version: 2.0

### 7.2.2 Beskrivning

GetCarePlans returnerar vård- och omsorgsplaner som finns dokumenterade för en patient.

### 7.2.3 Fältregler

**Request — GetCarePlansRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAId | HSAIdType | 0..* | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. |
| patientId | PersonIdType | 1..1 | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. |
| ../id | string | 1..1 | Id för patient enligt ovan. |
| ../type | string | 1..1 | OID enligt ovan. |
| datePeriod | DatePeriodType | 0..1 | Begränsar sökningen till det angivna datumintervallet (jämfört mot documentTime i svaret). |
| ../start | string | 1..1 | Startdatum. Format ÅÅÅÅMMDD. |
| ../end | string | 1..1 | Slutdatum. Format ÅÅÅÅMMDD. |
| sourceSystemHSAId | HSAIdType | 0..1 | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tvingande om careContactId angivits eller vid begäran på reservnummer. |
| careContactId | string | 0..* | Begränsar sökningen till den/de vårdkontakter vars id anges, vilket matchar documentId i GetCareContacts. |

**Response — GetCarePlansResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| carePlan | CarePlanType | 0..* | De vård- och omsorgsplaner som matchar begäran. |
| ../carePlanHeader | PatientSummaryHeaderType | 1..1 | Innehåller basinformation om dokumentet. |
| ../../documentId | string | 1..1 | Vård- och omsorgsplanens identitet, unik inom källsystemet. Ska vara konsistent och beständig. |
| ../../sourceSystemHSAId | HSAIdType | 1..1 | HSA-id för det system som dokumentet är skapat i. |
| ../../documentTitle | string | 1..1 | Rubrik som beskriver innehållet i vård- och omsorgsplanen. |
| ../../documentTime | TimeStampType | 0..1 | Tidpunkt då vård- och omsorgsplanen upprättats. |
| ../../patientId | PersonIdType | 1..1 | Id för patienten. |
| ../../../id | string | 1..1 | Patientens identifierare (12 tecken utan avskiljare). |
| ../../../type | string | 1..1 | OID för typ av identifierare. |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Hälso- och sjukvårdspersonal som ansvarar för vård- och omsorgsplanen. |
| ../../../authorTime | TimeStampType | 1..1 | Tidpunkt då informationen registrerades. Regel: Regel 2. |
| ../../../healthcareProfessionalHSAId | HSAIdType | 0..1 | HSA-id för hälso- och sjukvårdspersonal. |
| ../../../healthcareProfessionalName | string | 0..1 | Namn på hälso- och sjukvårdspersonal. |
| ../../../healthcareProfessionalRoleCode | CVType | 0..1 | Befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | 0..1 | Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. Regel: Regel 4. |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | 0..1 | HSA-id för vårdenhet. Regel: Regel 1. |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | 0..1 | HSA-id för vårdgivaren. Regel: Regel 1. |
| ../../legalAuthenticator | LegalAuthenticatorType | 0..1 | Information om vem som signerat informationen i dokumentet. |
| ../../../signatureTime | TimeStampType | 1..1 | Tidpunkt för signering. |
| ../../../legalAuthenticatorHSAId | HSAIdType | 0..1 | HSA-id för person som signerat dokumentet. |
| ../../../legalAuthenticatorName | string | 0..1 | Namn i klartext för signerande person. |
| ../../approvedForPatient | boolean | 1..1 | Anger om information får delas till patient (true/false). Regel: Regel 3. |
| ../../nullified | — | 0..0 | Ska ej anges. |
| ../../nullifiedReason | — | 0..0 | Ska ej anges. |
| ../../careContactId | string | 0..1 | Identitet för den vårdkontakt som föranlett informationen. |
| ../carePlanBody | CarePlanBodyType | 1..1 | Planspecifik information. |
| ../../content | MultimediaType | 0..* | Beskrivning av innehållet i vård- och omsorgsplanen. Producenter måste följa riktlinjerna för binära bilagor (R10). Inbäddade bilagor får inte överstiga 100 KB. |
| ../../../mediaType | MediaTypeEnum | 1..1 | Typ av multimedia. Tillåtna format: text/plain, text/html, image/jpeg, image/png, application/pdf. |
| ../../../value | string (base64) | 0..1 | Binärdata. Antingen value eller reference ska anges, ej båda. |
| ../../../reference | anyURI | 0..1 | Referens till extern binär fil (URL). Antingen value eller reference ska anges, ej båda. |
| ../../participatingCareUnitHSAId | IIType | 0..* | En vård- och omsorgsplan har noll eller flera deltagande enheter. |
| ../../typeOfCarePlan | TypeOfCarePlanEnum | 0..1 | Typ av vård- och omsorgsplan. Se kodsystem nedan. |
| result | ResultType | 1..1 | Innehåller information om begäran gick bra eller ej. |
| ../resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR. |
| ../errorCode | ErrorCodeEnum | 0..1 | Sätts endast om resultCode är ERROR. |
| ../logId | string | 1..1 | UUID för felsökning. |
| ../message | string | 0..1 | Beskrivande text för användaren. |

### 7.2.4 Övriga regler

* **R1:** Producenter måste följa de generella riktlinjerna för binära bilagor, se referens R10. Inbäddade bilagor får inte överstiga 100 KB.

| Namn | Regel | Element | Ändamål |
|------|-------|---------|---------|
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. | healthcareProfessionalCareGiverHSAId, healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Används ofta för kontroll av tidsbegränsade spärrar i e-tjänster för sammanhållen journalföring. | authorTime | Sammanhållen journalföring |
| Regel 3 | Ska kunna sättas till false för information som inte ska visas vid enskilds direktåtkomst. | approvedForPatient | Enskilds direktåtkomst |
| Regel 4 | För kompatibilitet med NPÖ RIV 2.2.0 måste healthcareProfessionalOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | healthcareProfessionalOrgUnit | Kompatibilitet med NPÖ |

### 7.2.5 Logiska fel

Se avsnitt 4.4 för definition av felkoder.

### 7.2.6 Kodsystem — TypeOfCarePlan

Typ av vård- och omsorgsplan (TypeOfCarePlanEnum):

| Kod | Beskrivning |
|-----|-------------|
| SIP | Samordnad individuell plan |
| SPLPTLRV | Samordnad plan enligt LPT och LRV |
| SPU | Samordnad plan vid utskrivning |
| VP | Vårdplan |
| HP | Habiliteringsplan |
| RP | Rehabiliteringsplan |
| GP | Genomförandeplan |
| SVP | Standardiserad vårdplan |

### 7.2.7 Icke funktionella krav

Inga övriga icke funktionella krav.

### 7.2.8 SLA-krav

Inga avvikande SLA-krav.
