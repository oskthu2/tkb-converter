// Genererad från TKB clinicalprocess:activityprescription:actoutcome v2.2.1
// Kontrakt: GetMedicationHistory v2.2 — Request
// Genererad: 2026-03-19

Logical: GetMedicationHistoryRequest
Id: getmedicationhistory-request
Title: "GetMedicationHistory — Request"
Description: "Logisk modell för requestparametrar i GetMedicationHistory."
Characteristics: #can-be-target

* careUnitHSAId 0..* Identifier "Begränsar sökningen till angivna informationsägande vårdenheter"
* careGiverHSAId 0..* Identifier "Begränsar sökningen till angivna informationsägande vårdgivare"
  """
  Anges i första hand med HSA-id, i andra hand med organisationsnummer.
  """
* patientId 1..1 Identifier "Begränsar sökningen till angiven personidentifierare"
* datePeriod 0..1 Period "Begränsar sökningen till det angivna datumintervallet"
* sourceSystemHSAId 0..1 Identifier "Begränsar sökningen till angivet källsystem"
* careContactId 0..* string "Begränsar sökningen till angiven vård- och omsorgskontakt"
* prescriptionChainId 0..1 Identifier "Ordinationskedje-id: begränsar till en viss ordinationskedja"
  """
  Om producenten inte hittar angiven ordinationskedja ska ett tomt svar returneras.
  """
* prescriptionStatus 0..1 code "Begränsar sökningen till aktiva eller inaktiva ordinationer"
  """
  Om inget anges ska alla ordinationer (Active och Inactive) returneras.
  """
* prescriptionStatus from PrescriptionStatusVS (required)
