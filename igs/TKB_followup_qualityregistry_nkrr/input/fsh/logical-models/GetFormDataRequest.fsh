// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Kontrakt: GetFormData v1.2
// Genererad: 2026-05-19

Logical: GetFormDataRequest
Id: getformdata-request
Title: "GetFormData — Request"
Description: """
  Logisk modell för requestparametrar i GetFormData
  (RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1).
"""
Characteristics: #can-be-target

* formId 1..1 string "Identifierare av mallen"
    """
    Identifierare av mallen.
    """
* subjectOfCareId 1..1 Identifier "Identifierare av patienten"
    """
    Identifierare av patienten.
    """
* careEncounterStartDate 0..1 string "Datum för start av vårdhändelse"
    """
    Datum för start av vårdhändelse (format: YYYYMMDD).
    Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet
    i en informationsspecifikation eller annan tillämpad specifikation.
    """
* careEncounterEndDate 0..1 string "Datum för slut av vårdhändelse"
    """
    Datum för slut av vårdhändelse (format: YYYYMMDD).
    Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet
    i en informationsspecifikation eller annan tillämpad specifikation.
    """
* careUnitHSAId 0..* Identifier "Vårdenheter inom vilka underlag ska hämtas"
    """
    Vårdenheter inom vilka underlag ska hämtas (HSA-ID).
    """
* employeeId 0..1 Identifier "Identifierare av medarbetare (HSA-ID)"
    """
    Identifierare av medarbetare (HSA-ID).
    Vid interaktivt förlopp (registrator loggar in) måste antingen employeeId eller
    employeePersonId anges (R3 – Registrator måste anges).
    I ett helautomatiserat förlopp efter en notifiering ska fälten inte anges.
    """
* employeePersonId 0..1 string "Medarbetares personnummer"
    """
    Medarbetares personnummer. Anges med 12 tecken utan avskiljare.
    Vid interaktivt förlopp (registrator loggar in) måste antingen employeeId eller
    employeePersonId anges (R3 – Registrator måste anges).
    I ett helautomatiserat förlopp efter en notifiering ska fälten inte anges.
    """
