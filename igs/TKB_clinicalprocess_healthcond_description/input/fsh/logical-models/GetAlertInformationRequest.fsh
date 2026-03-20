// Genererad från TKB clinicalprocess:healthcond:description v3.0.5
// Kontrakt: GetAlertInformation v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2
// Genererad: 2026-03-19

Logical: GetAlertInformationRequest
Id: getalertinformation-request
Title: "GetAlertInformation — Request"
Description: """
  Logisk modell för requestparametrar i GetAlertInformation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).
  Söker uppmärksamhetsinformation för en patient med valfri filtrering.
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
    Begränsar sökning till uppmärksamhetsinformation från ett specifikt källsystem.
    Kardinalitet: Valfri.
  """

* careContactId 0..* string "Vårdkontakts-id" """
    Begränsar sökning till uppmärksamhetsinformation kopplad till angiven vårdkontakt.
    Kardinalitet: Valfri, lista.
  """
