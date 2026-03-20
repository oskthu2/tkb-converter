// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetMaternityMedicalHistory v2.0
// Genererad: 2026-03-19

Logical: GetMaternityMedicalHistoryRequest
Id: getmaternitymedicalhistory-request
Title: "GetMaternityMedicalHistory — Request"
Description: """
  Logisk modell för requestparametrar i GetMaternityMedicalHistory
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistory:2).
"""
Characteristics: #can-be-target

* careUnitHSAid 0..* Identifier "HSA-id för vårdenhet (filter)"

* patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
  """
  PersonIdType — id och type-OID. Obligatorisk.
  """

* datePeriod 0..1 Period "Datumperiod för sökning"

* sourceSystemHSAId 0..1 Identifier "HSA-id för källsystem (filter)"

* careContactId 0..* string "Vårdkontaktid (filter)"
