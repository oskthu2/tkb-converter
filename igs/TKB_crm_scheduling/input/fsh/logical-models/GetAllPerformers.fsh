// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllPerformers v1.1
// Genererad: 2026-03-24

Logical: GetAllPerformers
Id: getallperformers
Title: "GetAllPerformers"
Description: """
  Logisk modell för tjänstekontraktet GetAllPerformers
  (RIV-TA urn:riv:crm:scheduling:GetAllPerformers:1).
  Representerar responsens informationsstruktur.
  Tjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet.
"""
Characteristics: #can-be-target

* performerInfos 0..* BackboneElement "Lista med medarbetare"
    """
    Lista med medarbetare (PerformerInfoType).
    Kardinalitet: Valfri, lista.
    """
  * performer 1..1 Identifier "HSA-id för bokningsbar medarbetare"
      """
      HSA-id för bokningsbar medarbetare.
      OBS: I schemat stavas fältet 'perfomer' (felstavning, issue id 19). FSH-modellen använder korrekt stavning.
      Kardinalitet: Obligatorisk.
      """
  * firstName 1..1 string "Medarbetarens förnamn"
      """
      Medarbetarens förnamn.
      Kardinalitet: Obligatorisk.
      """
  * lastName 1..1 string "Medarbetarens efternamn"
      """
      Medarbetarens efternamn.
      Kardinalitet: Obligatorisk.
      """
  * title 0..1 string "Medarbetarens titel"
      """
      Medarbetarens titel.
      Kardinalitet: Valfri.
      """
