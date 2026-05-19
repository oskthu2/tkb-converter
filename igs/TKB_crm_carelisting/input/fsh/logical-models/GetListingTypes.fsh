// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListingTypes v1.0
// Namespace: urn:riv:crm:carelisting:GetListingTypesResponder:1
// Genererad: 2026-03-24

Logical: GetListingTypes
Id: getlistingtypes
Title: "GetListingTypes"
Description: """
  Logisk modell för tjänstekontraktet GetListingTypes (Visa listningstyp)
  (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar lista med möjliga listningstyper som en given person kan bruka vid listning.
"""
Characteristics: #can-be-target

* listingType 0..* string "Lista med koder som avser listningstyper"
    """
    Lista med koder som avser listningstyper, t.ex. BVC.
    Listningstyp saknar centralt kodverk — värden är fritext (se QUESTIONS.md).
    Kardinalitet: Valfri, lista.
    """
