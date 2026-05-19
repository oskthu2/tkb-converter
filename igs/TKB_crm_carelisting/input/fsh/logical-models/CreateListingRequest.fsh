// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: CreateListing v1.0 — Request
// Namespace: urn:riv:crm:carelisting:CreateListingResponder:1
// Genererad: 2026-03-24

Logical: CreateListingRequest
Id: createlisting-request
Title: "CreateListing — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet CreateListing (Göra tjänsteval).
  (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).
"""
Characteristics: #can-be-target

* personId 1..1 string "Personnummer för den person som önskar göra ett tjänsteval"
    """
    Identitetsbeteckning för vård- och omsorgstagaren.
    Pattern: (([1-9]\d{7})|(\d{6}))[\-]?\d{4}
    Kardinalitet: Obligatorisk.
    """
* listingType 1..1 string "Typ av listning som önskas"
    """
    Typ av listning som man önskar göra, t.ex. BVC.
    Kardinalitet: Obligatorisk.
    """
* healthcareFacility 1..1 Identifier "HSA-ID för den vårdenhet personen önskar lista sig på"
    """
    HSA-ID för den vårdenhet som personen önskar lista sig på.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).
    Kardinalitet: Obligatorisk.
    """
* healthcareProfessional 0..1 Identifier "HSA-ID för specifik resurs att lista sig på"
    """
    HSA-ID för specifik resurs (läkare/husläkarteam) att lista sig på.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).
    Kardinalitet: Valfri.
    """
* addToQueue 1..1 boolean "Om personen vill ställa sig i kö"
    """
    Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen.
    Kardinalitet: Obligatorisk.
    """
