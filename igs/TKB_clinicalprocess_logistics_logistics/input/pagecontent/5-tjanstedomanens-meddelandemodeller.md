# 5 Tjänstedomänens meddelandemodeller

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontraktet.

## 5.1 V-MIM GetCareContacts — Vårdkontakter

GetCareContacts returnerar vårdkontakter som finns dokumenterade för en patient. Meddelandemodellen bygger på `CareContactType` som innehåller:

* `careContactHeader` (PatientSummaryHeaderType) — basinformation om dokumentet
* `careContactBody` (CareContactBodyType) — kontaktspecifik information

### XSD-mappning GetCareContacts

| Klass.attribut | Mappning mot XSD schema |
|----------------|------------------------|
| careContact | |
| careContactHeader.documentId | careContact/careContactHeader/documentId |
| careContactHeader.sourceSystemHSAId | careContact/careContactHeader/sourceSystemHSAId |
| careContactHeader.patientId | careContact/careContactHeader/patientId |
| careContactHeader.accountableHealthcareProfessional | careContact/careContactHeader/accountableHealthcareProfessional |
| accountableHealthcareProfessional.authorTime | careContact/careContactHeader/accountableHealthcareProfessional/authorTime |
| accountableHealthcareProfessional.healthcareProfessionalHSAId | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalHSAId |
| accountableHealthcareProfessional.healthcareProfessionalName | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalName |
| accountableHealthcareProfessional.healthcareProfessionalRoleCode | careContact/careContactHeader/accountableHealthcareProfessional/healthcareProfessionalRoleCode |

## 5.2 MIM GetCarePlans — Vård- och omsorgsplan

GetCarePlans returnerar vård- och omsorgsplaner som finns dokumenterade för en patient. Meddelandemodellen bygger på `CarePlanType` som innehåller:

* `carePlanHeader` (PatientSummaryHeaderType) — basinformation om dokumentet
* `carePlanBody` (CarePlanBodyType) — planspecifik information inklusive innehåll (MultimediaType), deltagande enheter och typ av plan

### XSD-mappning GetCarePlans

| Klass.attribut | Mappning mot XSD schema |
|----------------|------------------------|
| CarePlanType | |
| PatientSummaryHeaderType.documentId | carePlan/carePlanHeader/documentId |
| PatientSummaryHeaderType.sourceSystemHSAId | carePlan/carePlanHeader/sourceSystemHSAId |
| PatientSummaryHeaderType.documentTitle | carePlan/carePlanHeader/documentTitle |
| PatientSummaryHeaderType.documentTime | carePlan/carePlanHeader/documentTime |
| PatientSummaryHeaderType.patientId | carePlan/carePlanHeader/patientId |
| PatientSummaryHeaderType.accountableHealthcareProfessional | carePlan/carePlanHeader/accountableHealthcareProfessional |

## 5.3 Formatregler

### 5.3.1 Format för datum och tidpunkter

Datum anges på formatet "ÅÅÅÅMMDD". Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDD".

Tidpunkter anges alltid på formatet "ÅÅÅÅMMDDttmmss", vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDDhhmmss".

### 5.3.2 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon där informationen skapades (dvs. lokal tid Sverige, CET/CEST).
