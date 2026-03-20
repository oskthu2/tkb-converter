// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetImagingOutcome v1.0
// Genererad: 2026-03-19

Logical: GetImagingOutcomeRequest
Id: getimagingoutcome-request
Title: "GetImagingOutcome — Request"
Description: """
  Logisk modell för requestparametrar i GetImagingOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).
"""
Characteristics: #can-be-target

* careUnitHSAId 0..* Identifier "HSA-id för PDL-enhet (filter)"
  """
  Filtrering på PDL-enhet. Kardinalitet: Valfri, lista.
  """

* patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
  """
  PersonIdType — id och type-OID. Obligatorisk.
  """

* datePeriod 0..1 Period "Datumperiod för sökning"

* sourceSystemHSAId 0..1 Identifier "HSA-id för källsystem (filter)"

* careContactId 0..* string "Vårdkontaktid (filter)"
