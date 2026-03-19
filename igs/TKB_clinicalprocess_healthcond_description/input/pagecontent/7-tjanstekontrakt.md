# 7 Tjänstekontrakt

---

## 7.1 GetCareDocumentation

GetCareDocumentation returnerar journalanteckningar för en patient. Sådana anteckningar är av
typerna utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning, slutanteckning,
anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning.

Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2.

### 7.1.1 Version

Version: **3.0**

Namespace: `urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3`

### 7.1.2 Gemensamma informationskomponenter

Gemensamma informationskomponenter är typer gemensamma för användning i tjänstekontrakt i
flera domäner. Version 19 av gemensamma datatyper har använts för detta kontrakt.

Använda gemensamma typer: CVType, DatePeriodType, DateType, HSAIdType, IIType, MultimediaType,
OrgUnitType, ResultType, TimeStampType. Kontraktet använder dessutom JoL-header v2.2.

### 7.1.3 DocBook-format för clinicalDocumentNoteText-fältet

Fältet `clinicalDocumentNoteText` innehåller anteckningens textuella innehåll. Producenten har
möjlighet att formatera denna text i DocBook-format. Texten ska vara "entity encoded" för att
kunna skickas via fältet.

Centrala DocBook-element som ska hanteras: `version`, `article`, `title`, `info`, `para`,
`section`, `bibliography`.

### 7.1.4 Fältregler

**Request — GetCareDocumentationRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnit | IIType | 0..* | Filtrering på vårdenhet (accountableCareUnit HSA-id) |
| healthcareProvider | IIType | 0..* | Filtrering på vårdgivare (accountableHealthcareProvider HSA-id) |
| patientId | IIType | 1..1 | Id för patienten (extension = personnummer/samordningsnummer) |
| datePeriod | DatePeriodType | 0..1 | Begränsar sökningen till angivet intervall |
| datePeriod/start | string | 1..1 | Startdatum, format ÅÅÅÅMMDD |
| datePeriod/end | string | 1..1 | Slutdatum, format ÅÅÅÅMMDD |
| sourceSystemId | IIType | 0..1 | Begränsar sökning till anteckningar från ett källsystem |
| hasMoreReference | string | 0..1 | Referens från tidigare partiellt svar för fortsatt hämtning |

**Response — GetCareDocumentationResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careDocumentation | CareDocumentationType | 0..* | Anteckningar som matchar begäran |
| careDocumentation/header | HeaderType | 1..1 | JoL-header med metainformation |
| header/accessControlHeader | AccessControlHeaderType | 1..1 | Information för åtkomstkontroll (PDL) |
| accessControlHeader/accountableHealthcareProvider | IIType | 0..1 | Informationsägande vårdgivare |
| accessControlHeader/accountableCareUnit | IIType | 0..1 | Informationsägande vårdenhet |
| accessControlHeader/patientId | IIType | 1..1 | Patientens identitetsbeteckning |
| accessControlHeader/careProcessId | IIType | 0..1 | Id för individanpassad vårdprocess |
| accessControlHeader/blockComparisonTime | TimeStampType | 1..1 | Tidpunkt mot vilken spärrkontroll sker |
| accessControlHeader/approvedForPatient | boolean | 1..1 | Godkänd för visning till patient |
| header/sourceSystemId | IIType | 1..1 | Källsystem som lagrar informationen |
| header/record | RecordType | 1..1 | Uppgift i patientjournal |
| record/id | IIType | 1..1 | Unik och beständig identifierare för journaluppgift |
| record/timestamp | TimeStampType | 1..1 | Tidpunkt då journalinformationen skapades |
| header/author | AuthorType | 0..1 | Hälso- och sjukvårdspersonal ansvarig för informationen |
| author/id | IIType | 0..1 | HSA-id för hälso- och sjukvårdspersonal |
| author/name | string | 0..1 | Namn på hälso- och sjukvårdspersonal |
| author/timestamp | TimeStampType | 1..1 | Tidpunkt då journalinformationen skapades |
| author/byRole | CVType | 0..1 | Hälso- och sjukvårdspersonalens befattning |
| author/orgUnit | OrgUnitType | 0..1 | Organisation som författaren är uppdragstagare i |
| header/signature | SignatureType | 0..1 | Signeringsinformation |
| careDocumentation/body | CareDocumentationBodyType | 1..1 | Journalanteckning |
| body/clinicalDocumentNoteCode | CVType | 1..1 | Typ av anteckning (KV Anteckningstyp, OID: 1.2.752.129.2.2.2.11) |
| body/clinicalDocumentNoteTitle | string | 0..1 | Titel på anteckningen |
| body/clinicalDocumentNoteText | string | 0..1 | Journalanteckningens innehåll (ev. DocBook-format) |
| body/multimediaEntry | MultimediaType | 0..1 | Journalanteckningens innehåll som binärdata |
| multimediaEntry/mediaType | string | 1..1 | Typ av multimedia |
| multimediaEntry/value | base64Binary | 0..1 | Binärdata (ömsesidigt uteslutande med reference) |
| multimediaEntry/reference | anyURI | 0..1 | Referens till extern binär fil (ömsesidigt uteslutande med value) |
| body/dissentingOpinion | DissentingOpinionType | 0..* | Avvikande mening |
| hasMore | HasMoreType | 0..* | Indikerar att det finns fler poster att hämta |
| hasMore/logicalAddress | string | 1..1 | Logisk adress till tjänsteproducenten med fler poster |
| hasMore/reference | string | 1..1 | Unik identifierare för referens till partiellt svar |
| result | ResultType | 1..1 | Resultatkod (OK/INFO/ERROR) |
| result/resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR |
| result/resultText | string | 0..1 | Optionellt felmeddelande |

### 7.1.5 Partiell datahämtning

GetCareDocumentation möjliggör partiell leverans och hämtning av vårdanteckningar. Partiell
datahämtning initieras av tjänsteproducenten genom att leverera den senaste journalinformationen,
plus elementet hasMore med en unik referens. Vid flera partiella leveranser ska tjänsteproducenten
alltid leverera den senaste informationen som inte tidigare levererats i omvänd kronologisk ordning.

### 7.1.6 Övriga regler

Inga övriga icke funktionella krav. Inga avvikande SLA krav.

### 7.1.7 Logiska fel

För återrapportering av logiska fel skall resultCode sättas till ERROR med tillämplig felkod.

| ID | Element | Beskrivning |
|----|---------|-------------|
| hasMoreReference | `<hasMoreReference>` | Anropet skall göras direktadresserat till den logiska adressen som tjänsteproducenten angav |
| sourceSystemId | `<sourceSystemId>` | Värdet måste överensstämma med värdet på logicalAddress i anropets RIVTA-header |
| Spärrhantering | `<header/accessControlHeader/...>` | Uppgifterna krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL |
| Verify unique recordId [sch] | `<header/record/id>` | Identifieraren ska vara unik |
| careDocumentationBody [sch] | `<clinicalDocumentNoteText>` / `<multimediaEntry>` | Endast ett av attributen ska anges |
| Partiell datahämtning | `<hasMore>` | Får enbart användas när antalet poster riskerar att överskrida gränser |
| Referensens giltighetstid | `<hasMore/reference>` | Referensen ska vara giltig i minst en timme |
| Verify non-empty elements [sch] | Alla element | Tomma värden får inte anges |
| pattern.CvType [sch] | Alla CVType-element | code och/eller originalText ska anges; om code anges ska codeSystem anges |

---

## 7.2 GetDiagnosis

GetDiagnosis returnerar registrerade diagnoser för en patient inklusive en diagnoskod per
ursprungligt diagnosticeringstillfälle.

### 7.2.1 Version

Version: **2.0**

Namespace: `urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2`

### 7.2.2 Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan
"Bilaga Gemensamma_typer_7.pdf". Restriktioner av kardinaliteter finns i nedanstående tabell.

### 7.2.3 Fältregler

**Request — GetDiagnosisRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAId | HSAIdType | 0..* | Filtrering på vårdenhet |
| patientId | PersonIdType | 1..1 | Id för patienten |
| timePeriod | DatePeriodType | 0..1 | Begränsar sökning till angivet intervall |
| timePeriod/start | string | 1..1 | Startdatum, format ÅÅÅÅMMDD |
| timePeriod/end | string | 1..1 | Slutdatum, format ÅÅÅÅMMDD |
| sourceSystemHSAId | HSAIdType | 0..1 | Begränsar sökning till diagnoser från ett källsystem |
| careContactId | string | 0..* | Begränsar sökning till diagnoser dokumenterade vid angiven vårdkontakt |

**Response — GetDiagnosisResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| diagnosis | DiagnosisType | 0..* | Diagnoser som matchar begäran |
| diagnosis/diagnosisHeader | PatientSummaryHeaderType | 1..1 | Basinformation om dokumentet |
| diagnosisHeader/documentId | string | 1..1 | Dokumentets identitet unik inom källsystemet |
| diagnosisHeader/sourceSystemHSAId | HSAIdType | 1..1 | HSA-id för källsystemet |
| diagnosisHeader/patientId | PersonIdType | 1..1 | Identifierare för patient |
| diagnosisHeader/accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Ansvarig hälso- och sjukvårdsperson |
| diagnosisHeader/legalAuthenticator | LegalAuthenticatorType | 0..1 | Signerande person |
| diagnosisHeader/approvedForPatient | boolean | 1..1 | Godkänd för visning till patient |
| diagnosisHeader/careContactId | string | 0..1 | Id för relaterad vårdkontakt |
| diagnosis/diagnosisBody | DiagnosisBodyType | 1..1 | Diagnosens innehåll |
| diagnosisBody/typeOfDiagnosis | TypeOfDiagnosisEnum | 1..1 | Huvuddiagnos eller Bidiagnos |
| diagnosisBody/chronicDiagnosis | boolean | 0..1 | True om diagnosen är kronisk |
| diagnosisBody/diagnosisTime | TimeStampType | 0..1 | Tidpunkt då bedömningen gjordes |
| diagnosisBody/diagnosisCode | CVType | 0..1 | Diagnoskod (t.ex. ICD-10-SE) |
| diagnosisBody/relatedDiagnosis | RelatedDiagnosisType | 0..* | Relaterad diagnos |
| result | ResultType | 1..1 | Resultatkod |
| result/resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR |
| result/errorCode | ErrorCodeEnum | 0..1 | Sätts om resultCode är ERROR |
| result/logId | string | 1..1 | UUID för felanmälan |
| result/message | string | 0..1 | Beskrivande text för användaren |

### 7.2.4 Övriga regler

Inga övriga icke funktionella krav. Inga avvikande SLA krav.

### 7.2.5 Logiska fel

| Felkod | Värde | Beskrivning |
|--------|-------|-------------|
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som finns i detta tjänstekontrakt |

---

## 7.3 GetAlertInformation

GetAlertInformation returnerar uppmärksamhetsinformation för en patient, exempelvis
överkänslighet mot läkemedel, allvarlig sjukdom eller vårdbegränsningar.

### 7.3.1 Version

Version: **2.0**

Namespace: `urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2`

### 7.3.2 Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan
"Bilaga Gemensamma_typer_7.pdf". Restriktioner av kardinaliteter finns i nedanstående tabell.

### 7.3.3 Fältregler

**Request — GetAlertInformationRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAId | HSAIdType | 0..* | Filtrering på vårdenhet |
| patientId | PersonIdType | 1..1 | Id för patienten |
| timePeriod | DatePeriodType | 0..1 | Begränsar sökning till angivet intervall |
| timePeriod/start | string | 1..1 | Startdatum, format ÅÅÅÅMMDD |
| timePeriod/end | string | 1..1 | Slutdatum, format ÅÅÅÅMMDD |
| sourceSystemHSAId | HSAIdType | 0..1 | Begränsar sökning till ett källsystem |
| careContactId | string | 0..* | Begränsar sökning till angiven vårdkontakt |

**Response — GetAlertInformationResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| alertInformation | AlertInformationType | 0..* | Uppmärksamhetsinformation som matchar begäran |
| alertInformation/alertInformationHeader | PatientSummaryHeaderType | 1..1 | Basinformation om dokumentet |
| alertInformationHeader/documentId | string | 1..1 | Dokumentets identitet unik inom källsystemet |
| alertInformationHeader/sourceSystemHSAId | HSAIdType | 1..1 | HSA-id för källsystemet |
| alertInformationHeader/patientId | PersonIdType | 1..1 | Identifierare för patient |
| alertInformationHeader/accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Ansvarig hälso- och sjukvårdsperson |
| alertInformationHeader/legalAuthenticator | LegalAuthenticatorType | 0..1 | Signerande person |
| alertInformationHeader/approvedForPatient | boolean | 1..1 | Godkänd för visning till patient |
| alertInformationHeader/careContactId | string | 0..1 | Id för relaterad vårdkontakt |
| alertInformation/alertInformationBody | AlertInformationBodyType | 1..1 | Uppmärksamhetsinformationens innehåll |
| alertInformationBody/typeOfAlertInformation | CVType | 1..1 | Typ av uppmärksamhetssignal (lokalt/externt kodsystem) |
| result | ResultType | 1..1 | Resultatkod |
| result/resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR |
| result/errorCode | ErrorCodeEnum | 0..1 | Sätts om resultCode är ERROR |
| result/logId | string | 1..1 | UUID för felanmälan |
| result/message | string | 0..1 | Beskrivande text för användaren |

### 7.3.4 Övriga regler

Inga fältregler utöver de som är beskrivna ovan. Inga övriga icke funktionella krav. Inga avvikande SLA krav.

### 7.3.5 Logiska fel

| Felkod | Värde | Beskrivning |
|--------|-------|-------------|
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som finns i detta tjänstekontrakt |

---

## 7.4 GetFunctionalStatus

GetFunctionalStatus returnerar dokumenterade bedömning av funktionsnedsättningar och/eller
aktivitetsförmåga för en patient. Bedömningen kan vara antingen en PADL-bedömning
(Personlig ADL) eller en funktionsnedsättningsbedömning.

### 7.4.1 Version

Version: **2.0**

Namespace: `urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2`

### 7.4.2 Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan
"Bilaga Gemensamma_typer_7.pdf". Restriktioner av kardinaliteter finns i nedanstående tabell.

### 7.4.3 Fältregler

**Request — GetFunctionalStatusRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| careUnitHSAId | HSAIdType | 0..* | Filtrering på vårdenhet |
| patientId | PersonIdType | 1..1 | Id för patienten |
| datePeriod | DatePeriodType | 0..1 | Begränsar sökning till angivet intervall |
| datePeriod/start | string | 1..1 | Startdatum, format ÅÅÅÅMMDD |
| datePeriod/end | string | 1..1 | Slutdatum, format ÅÅÅÅMMDD |
| sourceSystemHSAId | HSAIdType | 0..1 | Begränsar sökning till ett källsystem |
| careContactId | string | 0..* | Begränsar sökning till angiven vårdkontakt |

**Response — GetFunctionalStatusResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| functionalStatusAssessment | FunctionalStatusAssessmentType | 0..* | Bedömningar som matchar begäran |
| functionalStatusAssessment/functionalStatusAssessmentHeader | PatientSummaryHeaderType | 1..1 | Basinformation om dokumentet |
| functionalStatusAssessmentHeader/documentId | string | 1..1 | Bedömningens identitet unik inom källsystemet |
| functionalStatusAssessmentHeader/sourceSystemHSAId | HSAIdType | 1..1 | HSA-id för källsystemet |
| functionalStatusAssessmentHeader/documentTime | TimeStampType | 1..1 | Bedömningstidpunkt |
| functionalStatusAssessmentHeader/patientId | PersonIdType | 1..1 | Identifierare för patient |
| functionalStatusAssessmentHeader/accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Ansvarig hälso- och sjukvårdsperson |
| functionalStatusAssessmentHeader/legalAuthenticator | LegalAuthenticatorType | 0..1 | Signerande person |
| functionalStatusAssessmentHeader/approvedForPatient | boolean | 1..1 | Godkänd för visning till patient |
| functionalStatusAssessmentHeader/careContactId | string | 0..1 | Vårdkontakts-id |
| functionalStatusAssessment/functionalStatusAssessmentBody | FunctionalStatusAssessmentBodyType | 1..1 | Bedömningens innehåll |
| functionalStatusAssessmentBody/assessmentCategory | AssessmentCategoryEnum | 1..1 | "pad-pad" (PADL) eller "fun-fun" (funktionsnedsättning) |
| functionalStatusAssessmentBody/comment | string | 0..1 | Kommentar till bedömningen |
| functionalStatusAssessmentBody/padl | PADLType | 0..* | PADL-bedömningar |
| padl/typeOfAssessment | CVType | 1..1 | Typ av PADL-bedömning |
| padl/assessment | string | 1..1 | Textuell PADL-bedömning |
| functionalStatusAssessmentBody/disability | DisabilityType | 0..1 | Funktionsnedsättningsbedömning |
| disability/disabilityAssessment | CVType | 1..1 | ICF-kod för funktion som bedömts nedsatt (OID: 1.2.752.116.1.1.3) |
| disability/comment | string | 0..1 | Kommentar till funktionsnedsättningsbedömning |
| result | ResultType | 1..1 | Resultatkod |
| result/resultCode | ResultCodeEnum | 1..1 | OK, INFO eller ERROR |
| result/errorCode | ErrorCodeEnum | 0..1 | Sätts om resultCode är ERROR |
| result/logId | string | 1..1 | UUID för felanmälan |
| result/message | string | 0..1 | Beskrivande text för användaren |

### 7.4.4 Övriga regler

Inga övriga icke funktionella krav. Inga avvikande SLA krav.

### 7.4.5 Logiska fel

| Felkod | Värde | Beskrivning |
|--------|-------|-------------|
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som finns i detta tjänstekontrakt |
