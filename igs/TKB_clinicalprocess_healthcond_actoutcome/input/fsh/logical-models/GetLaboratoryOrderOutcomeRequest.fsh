// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetLaboratoryOrderOutcome v4.2
// Genererad: 2026-03-19

Logical: GetLaboratoryOrderOutcomeRequest
Id: getlaboratoryorderoutcome-request
Title: "GetLaboratoryOrderOutcome — Request"
Description: """
  Logisk modell för requestparametrar i GetLaboratoryOrderOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).
  Representerar de sökparametrar som tjänstekonsumenten skickar in.
"""
Characteristics: #can-be-target

* careUnitHSAId 0..* Identifier "HSA-id för vårdenhet (filter)"
  """
  Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.
  root sätts till OID (1.2.752.129.2.1.4.1) för HSA.
  extension sätts till HSA-id på vårdenhet.
  Kardinalitet: Valfri, lista.
  """

* careGiverHSAId 0..* Identifier "HSA-id för vårdgivare (filter)"
  """
  Filtrering på vårdgivare vilket motsvarar accountableCareGiver i svaret.
  root sätts till OID (1.2.752.129.2.1.4.1) för HSA.
  extension sätts till HSA-id på vårdgivare.
  Kardinalitet: Valfri, lista.
  """

* patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
  """
  Begränsar sökningen till angiven personidentifierare för en patient.
  root sätts till OID för typ av personidentifierare:
  - Personnummer: 1.2.752.129.2.1.3.1
  - Samordningsnummer: 1.2.752.129.2.1.3.3
  extension sätts till patientens identifierare (12 tecken utan avskiljare).
  OBS: Lokal reservidentitet kan ej användas med EI och aggregerande tjänster.
  Kardinalitet: Obligatorisk.
  """

* datePeriod 0..1 Period "Datumperiod för sökning"
  """
  Begränsar sökningen till det angivna intervallet. Begränsningen innebär att
  endast poster returneras där provtagningstidpunkten i svaret ligger inom
  sökintervallets start- och slutdatumet.
  Kardinalitet: Valfri.
  """

* sourceSystemHSAId 0..1 Identifier "HSA-id för källsystem (filter)"
  """
  Begränsar sökning till ett specifikt källsystem.
  Kardinalitet: Valfri.
  """

* specimenIdentifier 0..* Identifier "Providentifierare (filter)"
  """
  Begränsar sökning till specifikt prov.
  Kardinalitet: Valfri, lista.
  """

* referralIdentifier 0..* Identifier "Remissidentifierare (filter)"
  """
  Begränsar sökning till specifik remiss.
  Kardinalitet: Valfri, lista.
  """
