// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllTimeTypes v1.1
// Genererad: 2026-03-24

Logical: GetAllTimeTypes
Id: getalltimetypes
Title: "GetAllTimeTypes"
Description: """
  Logisk modell för tjänstekontraktet GetAllTimeTypes
  (RIV-TA urn:riv:crm:scheduling:GetAllTimeTypes:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet.
"""
Characteristics: #can-be-target

* listOfTimeTypes 0..* BackboneElement "Lista med tillgängliga tidstyper"
    """
    Lista med tillgängliga tidstyper (TimeTypeType).
    Kardinalitet: Valfri, lista.
    """
  * timeTypeName 1..1 string "Namnet på tidstypen"
      """
      Namnet på tidstypen att visas för användaren.
      Kardinalitet: Obligatorisk.
      """
  * timeTypeId 1..1 string "Identifierare för tidstypen"
      """
      Identifierare för tidstypen (TimeTypeIDType).
      Kardinalitet: Obligatorisk.
      """
