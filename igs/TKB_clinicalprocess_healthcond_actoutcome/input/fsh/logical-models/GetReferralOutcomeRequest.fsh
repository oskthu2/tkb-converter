// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetReferralOutcome v3.2
// Genererad: 2026-03-19

Logical: GetReferralOutcomeRequest
Id: getreferraloutcome-request
Title: "GetReferralOutcome — Request"
Description: """
  Logisk modell för requestparametrar i GetReferralOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).
"""
Characteristics: #can-be-target

* careUnitHSAid 0..* Identifier "HSA-id för vårdenhet (filter)"
  """
  Filtrering på vårdenhet. Kardinalitet: Valfri, lista.
  """

* patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
  """
  PersonIdType — id och type-OID. Obligatorisk.
  """

* datePeriod 0..1 Period "Datumperiod för sökning"
  """
  start och end är obligatoriska om datePeriod anges.
  """

* sourceSystemHSAId 0..1 Identifier "HSA-id för källsystem (filter)"

* careContactId 0..* string "Vårdkontaktid (filter)"
  """
  Begränsar sökning till specifika vårdkontakter. Valfri, lista.
  """
