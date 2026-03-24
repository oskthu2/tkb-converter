// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAvailableDates v1.1
// Genererad: 2026-03-24

Logical: GetAvailableDates
Id: getavailabledates
Title: "GetAvailableDates"
Description: """
  Logisk modell för tjänstekontraktet GetAvailableDates
  (RIV-TA urn:riv:crm:scheduling:GetAvailableDates:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar datum med lediga tider för angivet datumintervall.
"""
Characteristics: #can-be-target

* performerAvailabilityByDate 0..* BackboneElement "Lista med tillgängliga tider per datum"
    """
    Lista med tillgängliga tider (PerformerAvailabilityByDateType).
    Kardinalitet: Valfri, lista.
    """
  * healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
      """
      HSA-id för mottagning/vårdenhet.
      Kardinalitet: Obligatorisk.
      """
  * performer 0..1 Identifier "HSA-id för HoS-personal"
      """
      HSA-id för HoS-personal.
      Kardinalitet: Valfri.
      """
  * date 1..1 string "Datum där lediga tider finns (ÅÅÅÅMMDD)"
      """
      Ett datum där lediga tider finns, på formatet ÅÅÅÅMMDD.
      Kardinalitet: Obligatorisk.
      """
  * resourceName 0..1 string "Namn på resurs"
      """
      Namn på resurs.
      Kardinalitet: Valfri.
      """
  * resourceID 0..1 string "Identifierare för resurs"
      """
      Identifierare för resurs.
      Kardinalitet: Valfri.
      """
  * timeTypeName 0..1 string "Namn på tidstyp"
      """
      Namn på tidstyp.
      Kardinalitet: Valfri.
      """
  * timeTypeID 0..1 string "Identifierare för tidstyp"
      """
      Identifierare för tidstyp.
      Kardinalitet: Valfri.
      """
  * careTypeName 0..1 string "Namn på vårdtyp"
      """
      Namn på vårdtyp.
      Kardinalitet: Valfri.
      """
