# 6 Gemensamma informationskomponenter

I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma
för vissa meddelanden i flera domäner eller inom denna domän.

Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem
som saknar (fullständig) HSA-id-information är HSA-id-attribut i beskrivningarna nedan valfria.
Se även avsnittet "Informationssäkerhet och juridik" ovan.

De gemensamma typerna beskrivs i bilaga/bilagor med namn
"Bilaga_Gemensamma_typer_\<version\>.pdf". Hänvisad \<version\> anges vid respektive
tjänstekontrakt.

## 6.1 Gemensamma datatyper

### PatientSummaryHeaderType

Innehåller basinformation om ett dokument, inklusive information om vid vilken
vårdkontakt uppgiften registrerades.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| documentId | string | 1..1 | Identifierare för uppgift i patientjournal |
| sourceSystemHSAId | HSAIdType | 1..1 | Det källsystem som uppgiften lagras i |
| documentTitle | string | 0..1 | Titel på dokumentet |
| documentTime | TimeStampType | 0..1 | Händelsetidpunkt |
| patientId | PersonIdType | 1..1 | Personidentifierare för patienten |
| accountableHealthcareProfessional | HealthcareProfessionalType | 1..1 | Dokumentationsansvarig personal |
| legalAuthenticator | LegalAuthenticatorType | 0..1 | Information avseende signering |
| approvedForPatient | boolean | 1..1 | Beslut om synlighet för patient |
| careContactId | string | 0..1 | Identitet för vård- och omsorgskontakt |
| nullified | boolean | 1..1 | Anger om dokumentet makulerats |
| nullifiedReason | string | 0..1 | Orsak till makulering |

### HealthcareProfessionalType

Information om hälso- och sjukvårdspersonal.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| authorTime | TimeStampType | 1..1 | Tidpunkt för dokumentation |
| healthcareProfessionalHSAId | HSAIdType | 0..1 | HSA-id för personal |
| healthcareProfessionalName | string | 0..1 | Namn på personal |
| healthcareProfessionalRoleCode | CVType | 0..1 | Befattning |
| healthcareProfessionalOrgUnit | OrgUnitType | 0..1 | Organisationsenhet |
| healthcareProfessionalCareUnitHSAId | HSAIdType | 0..1 | HSA-id för vårdenhet |
| healthcareProfessionalCareGiverHSAId | HSAIdType | 0..1 | HSA-id för vårdgivare |

### OrgUnitType

Information om en organisationsenhet.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| orgUnitHSAId | HSAIdType | 0..1 | HSA-id för organisationsenhet |
| orgUnitName | string | 0..1 | Namn på organisationsenhet |
| orgUnitTelecom | string | 0..1 | Telefon till organisationsenhet |
| orgUnitEmail | string | 0..1 | E-post till organisationsenhet |
| orgUnitAddress | string | 0..1 | Postadress till organisationsenhet |
| orgUnitLocation | string | 0..1 | Plats/ort för organisationens fysiska placering |

### ActorType

Information om en aktör (person eller organisation).

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| actorId | IIType | 0..1 | Identifierare för aktören |
| actorName | string | 0..1 | Namn på aktören |
| actorOrgUnit | OrgUnitType | 0..1 | Organisationsenhet aktören tillhör |

### AdditionalPatientInformationType

Ytterligare information om patienten som inte kan hämtas via PU-tjänst.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|-------------|-------------|
| dateOfBirth | DateType | 1..1 | Patientens födelsedatum |
| gender | CVType | 0..1 | Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas |
