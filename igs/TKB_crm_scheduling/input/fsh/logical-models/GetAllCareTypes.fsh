// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllCareTypes v1.1
// Genererad: 2026-03-24

Logical: GetAllCareTypes
Id: getallcaretypes
Title: "GetAllCareTypes"
Description: """
  Logisk modell för tjänstekontraktet GetAllCareTypes
  (RIV-TA urn:riv:crm:scheduling:GetAllCareTypes:1).
  Representerar responsens informationsstruktur.
  Tjänst att för invånaren kunna visa en lista över vilka typer av vård
  som kan bokas hos en viss vårdenhet/mottagning.
"""
Characteristics: #can-be-target

* careTypes 0..* BackboneElement "Lista med vårdtyper"
    """
    Lista med tillgängliga vårdtyper (CareTypeType).
    Kardinalitet: Valfri, lista.
    """
  * careTypeName 1..1 string "Beskrivande text för vårdtypen (att visas för användare)"
      """
      Beskrivande text för vårdtypen att visas för användaren.
      Kardinalitet: Obligatorisk.
      """
  * careTypeId 1..1 string "Kod för vårdtypen (intern för vårdenheten)"
      """
      Intern kod för vårdtypen hos vårdenheten.
      Kardinalitet: Obligatorisk.
      """
