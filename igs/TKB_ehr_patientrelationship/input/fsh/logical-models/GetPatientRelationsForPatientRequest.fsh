// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetPatientRelationsForPatient v1.0 — Request
// Genererad: 2026-05-19

Logical: GetPatientRelationsForPatientRequest
Id: getpatientrelationsforpatient-request
Title: "GetPatientRelationsForPatient — Request"
Description: "Logisk modell för requestparametrar i GetPatientRelationsForPatient."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "HSA-id på den vårdgivare vars patientrelationer skall hämtas"
  """
  Obligatorisk. Identifierar den vårdgivare som patientrelationsinformationen gäller för.
  system = urn:oid:1.2.752.129.2.1.4.1
  """
* patientId 1..1 string "Patientens personnummer alternativt samordningsnummer (max 12 tecken)"
  """
  Obligatorisk. Personnummer eller samordningsnummer för den patient vars patientrelationer skall hämtas.
  """
