// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListing v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetListingResponder:1
// Genererad: 2026-03-24

Logical: GetListingRequest
Id: getlisting-request
Title: "GetListing — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetListing (Visa tjänsteval).
  (RIV-TA urn:riv:crm:carelisting:GetListingResponder:1).
"""
Characteristics: #can-be-target

* personId 1..1 string "Personnummer för vård- och omsorgstagaren"
    """
    Identitetsbeteckning för vård- och omsorgstagaren.
    Personnummer kan anges med eller utan sekelsiffror. Bindestreck är valfritt.
    Pattern: (([1-9]\d{7})|(\d{6}))[\-]?\d{4}
    Kardinalitet: Obligatorisk.
    """
