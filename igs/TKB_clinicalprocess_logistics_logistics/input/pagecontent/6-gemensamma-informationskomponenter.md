# 6 Gemensamma informationskomponenter

I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän. Observera att dessa gemensamma typer inte alltid används i sin helhet — varje tjänstekontrakt specificerar hur typen används och vilka delar av typen som är obligatoriska/valfria.

De gemensamma typerna beskrivs i referens [R3].

## Gemensamma typer i denna domän

Följande gemensamma typer används i domänen clinicalprocess: logistics: logistics:

| Typ | Användning |
|-----|------------|
| PatientSummaryHeaderType | Basinformation om varje dokument (vårdkontakt/vårdplan): documentId, sourceSystemHSAId, patientId, accountableHealthcareProfessional, approvedForPatient |
| HealthcareProfessionalType | Ansvarig hälso- och sjukvårdspersonal: authorTime, HSA-id, namn, befattningskod, organisationsenhet |
| OrgUnitType | Organisationsenhet: orgUnitHSAId, orgUnitName, telecom, epost, adress, plats |
| PersonIdType | Patientidentifierare: id (personnummer/samordningsnummer 12 tecken), type (OID för typ) |
| CVType | Kodad värde: code, codeSystem, codeSystemName, codeSystemVersion, displayName, originalText |
| TimePeriodType | Tidsintervall med start och slut (format YYYYMMDDhhmmss) |
| DatePeriodType | Datumintervall med start och slut (format YYYYMMDD) |
| IIType | Instance Identifier: root (OID), extension |
| ResultType | Svarsstatus: resultCode (OK/INFO/ERROR), errorCode, logId, subCode, message |
| LegalAuthenticatorType | Signeringsinformation: signatureTime, legalAuthenticatorHSAId, legalAuthenticatorName |
| MultimediaType | Binärt innehåll: id, mediaType, value (base64), reference (URL) |
| AdditionalPatientInformationType | Ytterligare patientinfo: dateOfBirth (PartialDateType), gender (CVType) |

## Notering

De gemensamma typerna definieras i `clinicalprocess_logistics_logistics_3.0.xsd` och importeras av de kontraktsspecifika schemana.
