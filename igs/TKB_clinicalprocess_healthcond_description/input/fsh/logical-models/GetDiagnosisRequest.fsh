// Genererad från TKB clinicalprocess:healthcond:description v3.0.5
// Kontrakt: GetDiagnosis v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2
// Genererad: 2026-03-19

Logical: GetDiagnosisRequest
Id: getdiagnosis-request
Title: "GetDiagnosis — Request"
Description: """
  Logisk modell för requestparametrar i GetDiagnosis
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2).
  Söker diagnoser för en patient med valfri filtrering.
"""
Characteristics: #can-be-target

* careUnitHSAId 0..* Identifier "Filtrering på vårdenhet" """
    Filtrering på vårdenhet (careUnitHSAId).
    Kardinalitet: Valfri, lista.
  """

* patientId 1..1 Identifier "Patientens id" """
    Id för patienten. id = personnummer/samordningsnummer. type = OID för identifierartyp.
    Kardinalitet: Obligatorisk.
  """

* timePeriod 0..1 Period "Tidsperiod för sökning" """
    Begränsar sökningen till det angivna intervallet. start och end på formatet ÅÅÅÅMMDD.
    Kardinalitet: Valfri.
  """

* sourceSystemHSAId 0..1 Identifier "Källsystem HSA-id" """
    Begränsar sökningen till diagnoser som tillgängliggörs av det angivna källsystemet.
    Kardinalitet: Valfri.
  """

* careContactId 0..* string "Vårdkontakts-id" """
    Begränsar sökningen till de diagnoser som dokumenterats vid angiven vårdkontakt.
    Kardinalitet: Valfri, lista.
  """
