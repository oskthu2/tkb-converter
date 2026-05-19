// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListingTypes v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetListingTypesResponder:1
// Genererad: 2026-03-24

Logical: GetListingTypesRequest
Id: getlistingtypes-request
Title: "GetListingTypes — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetListingTypes (Visa listningstyp).
  (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).
"""
Characteristics: #can-be-target

* personId 1..1 string "PersonID för den person vars möjliga listningstyper önskas"
    """
    Anger person ID som det önskas möjliga typer av listningar för.
    Pattern: (([1-9]\d{7})|(\d{6}))[\-]?\d{4}
    Kardinalitet: Obligatorisk.
    """
