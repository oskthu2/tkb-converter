// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetPersonQueueStatus v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1
// Genererad: 2026-03-24

Logical: GetPersonQueueStatusRequest
Id: getpersonqueuestatus-request
Title: "GetPersonQueueStatus — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetPersonQueueStatus (Visa köstatus).
  (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).
"""
Characteristics: #can-be-target

* personId 1..1 string "PersonID för den person vars köstatus önskas"
    """
    Identitetsbeteckning för vård- och omsorgstagaren vars köstatus efterfrågas.
    Pattern: (([1-9]\d{7})|(\d{6}))[\-]?\d{4}
    Kardinalitet: Obligatorisk.
    """
