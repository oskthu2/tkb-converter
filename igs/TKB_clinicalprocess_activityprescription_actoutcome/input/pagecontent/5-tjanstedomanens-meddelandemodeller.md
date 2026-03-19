# 5 Tjänstedomänens meddelandemodeller

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje
meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.

## 5.1 GetVaccinationHistory

Modellen beskriver den logiska strukturen för ett svarsmeddelande. Informationsinnehåll
och -struktur baseras på en genomgång och analys av ett antal vaccinationsjournalsystem
(SMI:s Svevac, TakeCare:s vaccinationsmodul med avstämning även med vissa andra) samt
informationskraven som ställs av nationella vaccinationsregistret (sedan 1 januari 2013).

Vidare ställer lagen om rapportering av vaccinationer (SFS 2012:453) krav på att
vaccinationsuppgifter ska rapporteras till Folkhälsomyndigheten.

### 5.1.1 Strukturell mappning mot XSD

| Klass.attribut | Mappning mot XSD-schema |
|----------------|-------------------------|
| VaccinationMedicalRecordType | vaccinationMedicalRecord |
| VaccinationMedicalRecordHeaderType.documentId | vaccinationMedicalRecord/vaccinationMedicalRecordHeader/documentId |
| VaccinationMedicalRecordHeaderType.sourceSystemHSAId | vaccinationMedicalRecord/vaccinationMedicalRecordHeader/sourceSystemHSAId |
| VaccinationMedicalRecordHeaderType.documentTitle | vaccinationMedicalRecord/vaccinationMedicalRecordHeader/documentTitle |
| VaccinationMedicalRecordHeaderType.documentTime | vaccinationMedicalRecord/vaccinationMedicalRecordHeader/documentTime |
| VaccinationMedicalRecordHeaderType.patientId | vaccinationMedicalRecord/vaccinationMedicalRecordHeader/patientId |
| VaccinationMedicalRecordHeaderType.accountableHealthcareProfessional | vaccinationMedicalRecord/vaccinationMedicalRecordHeader/accountableHealthcareProfessional |
| VaccinationMedicalRecordBodyType | vaccinationMedicalRecord/vaccinationMedicalRecordBody/ |

## 5.2 GetMedicationHistory

Modellen beskriver den logiska strukturen för läkemedelsordinationernas informationsinnehåll.
Kontraktet är tämligen omfattande och rekommenderar att implementatörer (producenter
och konsumenter) läser tillämpningsanvisningen (AB-dokumentet) noggrant.

I detta tjänstekontrakt hanteras endast en patient per gång. I den sambandsklassen
hanteras endast aktiviteter.

### 5.2.1 Strukturell mappning mot XSD

| Klass.attribut | Mappning mot XSD-schema |
|----------------|-------------------------|
| MedicationMedicalRecordType | medicationMedicalRecord |
| MedicationMedicalRecordHeaderType.documentId | medicationMedicalRecord/medicationMedicalRecordHeader/documentId |
| MedicationMedicalRecordHeaderType.sourceSystemHSAId | medicationMedicalRecord/medicationMedicalRecordHeader/sourceSystemHSAId |
| MedicationMedicalRecordHeaderType.patientId | medicationMedicalRecord/medicationMedicalRecordHeader/patientId |
| MedicationPrescriptionType.prescriptionId | medicationMedicalRecord/medicationMedicalRecordBody/medicationPrescription/prescriptionId |
| MedicationPrescriptionType.typeOfPrescription | medicationMedicalRecord/medicationMedicalRecordBody/medicationPrescription/typeOfPrescription |
| MedicationPrescriptionType.prescriptionStatus | medicationMedicalRecord/medicationMedicalRecordBody/medicationPrescription/prescriptionStatus |
