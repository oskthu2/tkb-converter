// Genererad från TKB clinicalprocess:activityprescription:actoutcome v2.2.1
// Kontrakt: GetVaccinationHistory v2.0 — Request
// Genererad: 2026-03-19

Logical: GetVaccinationHistoryRequest
Id: getvaccinationhistory-request
Title: "GetVaccinationHistory — Request"
Description: "Logisk modell för requestparametrar i GetVaccinationHistory."
Characteristics: #can-be-target

* careUnitHSAid 0..* Identifier "Begränsar sökningen till angivna informationsägande vårdenheter"
  """
  Anges med HSA-id. Motsvarar careUnitHSAId i svarsfältet.
  """
* patientId 1..1 Identifier "Begränsar sökningen till angiven personidentifierare för patient"
  """
  Tjänsteproducenten ska i svaret enbart returnera information relaterad till angiven patient.
  """
* timePeriod 0..1 Period "Begränsar sökningen till det angivna intervallet"
  """
  Begränsningen innebär att endast poster returneras med en relevant tidpunkt inom perioden.
  """
* sourceSystemHSAid 0..1 Identifier "Begränsar sökningen till angivet källsystem"
* careContactId 0..* string "Begränsar sökningen till angiven vård- och omsorgskontakt"
