// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetAvailableFacilities v1.0
// Namespace: urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1
// Genererad: 2026-03-24

Logical: GetAvailableFacilities
Id: getavailablefacilities
Title: "GetAvailableFacilities"
Description: """
  Logisk modell för tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare)
  (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar lista med tillgängliga vårdenheter (tjänsteutövare) inom en region.
"""
Characteristics: #can-be-target

* healthcareFacilities 1..* BackboneElement "Lista med tillgängliga vårdenheter"
    """
    Facility: lista med tillgängliga vårdenheter i regionen.
    Kardinalitet: Obligatorisk, lista.
    """
* healthcareFacilities.facilityId 1..1 Identifier "HSA-ID för vårdenheten"
    """
    HSA-ID eller alternativt Orgnr+lokalt id för vårdenheten.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).
    Kardinalitet: Obligatorisk.
    """
* healthcareFacilities.facilityName 1..1 string "Namn på vårdenheten"
    """
    Enhetens officiella namn.
    Kardinalitet: Obligatorisk.
    """
* healthcareFacilities.hasQueue 0..1 boolean "Indikerar om vårdenheten har kö"
    """
    Boolskt värde som indikerar om vårdenheten har kö vid listningar.
    Kan utelämnas om information saknas eller inte behövs i kontexten.
    Kardinalitet: Valfri.
    """
* healthcareFacilities.supportedListingTypes 0..* string "Listningstyper som vårdenheten stödjer"
    """
    Lista med listningstyper som vårdenheten stödjer.
    Kan utelämnas om information saknas eller inte behövs.
    Kardinalitet: Valfri, lista.
    """
