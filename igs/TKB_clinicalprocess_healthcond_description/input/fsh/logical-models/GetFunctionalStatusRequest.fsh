// Genererad från TKB clinicalprocess:healthcond:description v3.0.5
// Kontrakt: GetFunctionalStatus v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2
// Genererad: 2026-03-19

Logical: GetFunctionalStatusRequest
Id: getfunctionalstatus-request
Title: "GetFunctionalStatus — Request"
Description: """
  Logisk modell för requestparametrar i GetFunctionalStatus
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).
  Söker funktionsstatusbedömningar för en patient med valfri filtrering.
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

* datePeriod 0..1 Period "Datumperiod för sökning" """
    Begränsar sökningen till det angivna intervallet. start och end på formatet ÅÅÅÅMMDD.
    Kardinalitet: Valfri.
  """

* sourceSystemHSAId 0..1 Identifier "Källsystem HSA-id" """
    Begränsar sökning till information om funktionsstatus från ett specifikt källsystem.
    Kardinalitet: Valfri.
  """

* careContactId 0..* string "Vårdkontakts-id" """
    Begränsar sökning till funktionsstatusobjekt kopplade till angiven vårdkontakt.
    Kardinalitet: Valfri, lista.
  """
