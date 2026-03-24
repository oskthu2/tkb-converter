// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: CreateListing v1.0
// Namespace: urn:riv:crm:carelisting:CreateListingResponder:1
// Genererad: 2026-03-24

Logical: CreateListing
Id: createlisting
Title: "CreateListing"
Description: """
  Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval)
  (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).
  Representerar responsens informationsstruktur.
  Skapar en ny listning — kopplar ett personId till en vårdenhet.
"""
Characteristics: #can-be-target

* success 1..1 boolean "True om listningen genomfördes framgångsrikt"
    """
    True if the requested listing was successfully completed, else false.
    False indicates that the user needs to try another option for listing.
    Kardinalitet: Obligatorisk.
    """
* comment 0..1 string "Information som kompletterar angiven status"
    """
    Informationstext som kompletterar angiven status, t.ex. felmeddelande.
    Kardinalitet: Valfri.
    """
* systemCode 0..1 string "Kod från underliggande listningssystem"
    """
    Kod från underliggande listningssystem, i syfte att användas i dialog
    med respektive listningssystems förvaltning.
    Tjänstekonsumenten får inte binda logik till värden på dessa koder.
    Kardinalitet: Valfri.
    """
