// Genererad från TKB clinicalprocess:healthcond:description v3.0.5
// Kontrakt: GetCareDocumentation v3.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3
// Genererad: 2026-03-19

Logical: GetCareDocumentationRequest
Id: getcaredocumentation-request
Title: "GetCareDocumentation — Request"
Description: """
  Logisk modell för requestparametrar i GetCareDocumentation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).
  Söker journalanteckningar för en patient med valfri filtrering.
"""
Characteristics: #can-be-target

* careUnit 0..* Identifier "Filtrering på vårdenhet" """
    Filtrering på vårdenhet vilket motsvarar accountableCareUnit HSA-id i svaret.
    Kardinalitet: Valfri, lista.
  """

* healthcareProvider 0..* Identifier "Filtrering på vårdgivare" """
    Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider HSA-id i svaret.
    Kardinalitet: Valfri, lista.
  """

* patientId 1..1 Identifier "Patientens id" """
    Id för patienten. extension sätts till personnummer eller samordningsnummer (12 tecken).
    root sätts till OID för typ av identifierare.
    Kardinalitet: Obligatorisk.
  """

* datePeriod 0..1 Period "Datumintervall för sökning" """
    Begränsar sökningen till det angivna intervallet. start och end anges på formatet ÅÅÅÅMMDD.
    Kardinalitet: Valfri.
  """

* sourceSystemId 0..1 Identifier "Källsystem-id" """
    Begränsar sökningen till anteckningar som är skapade i det angivna källsystemet.
    Kardinalitet: Valfri.
  """

* hasMoreReference 0..1 string "Referens för partiell hämtning" """
    Kan anges av tjänstekonsument när man tidigare fått ett svar med hasMore.
    Anropet måste då vara direktadresserat till den logiska adressen som angavs i hasMore.
    Kardinalitet: Valfri.
  """
