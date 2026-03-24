// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetPersonQueueStatus v1.0
// Namespace: urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1
// Genererad: 2026-03-24

Logical: GetPersonQueueStatus
Id: getpersonqueuestatus
Title: "GetPersonQueueStatus"
Description: """
  Logisk modell för tjänstekontraktet GetPersonQueueStatus (Visa köstatus)
  (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar köstatus för en person — returnerar om personen är i kö samt
  vilken vårdenhet köstatusen gäller för.
"""
Characteristics: #can-be-target

* queueStatus 1..1 code "Köstatus: inQueue eller notInQueue"
    """
    Köstatus för personen i fråga.
    Tillåtna värden: inQueue (i kö) eller notInQueue (inte i kö).
    Kodverk: PersonQueueStatusVS.
    Kardinalitet: Obligatorisk.
    """
* queueStatus from PersonQueueStatusVS (required)
* healthcareFacility 0..1 BackboneElement "Vårdenhet vars köstatus gäller"
    """
    Facility: vårdenhet där eventuell köstatus föreligger.
    Utelämnas om personen inte är i kö.
    Kardinalitet: Valfri.
    """
* healthcareFacility.facilityId 1..1 Identifier "HSA-ID för vårdenheten"
    """
    HSA-ID för vårdenheten.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).
    Kardinalitet: Obligatorisk.
    """
* healthcareFacility.facilityName 1..1 string "Namn på vårdenheten"
    """
    Enhetens officiella namn.
    Kardinalitet: Obligatorisk.
    """
* healthcareFacility.hasQueue 0..1 boolean "Indikerar om vårdenheten har kö"
    """
    Boolskt värde som indikerar om vårdenheten har kö.
    Kardinalitet: Valfri.
    """
* healthcareFacility.supportedListingTypes 0..* string "Listningstyper som vårdenheten stödjer"
    """
    Lista med listningstyper som vårdenheten stödjer.
    Kardinalitet: Valfri, lista.
    """
