// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetBookingDetails v1.1 — Request
// Genererad: 2026-03-24

Logical: GetBookingDetailsRequest
Id: getbookingdetails-request
Title: "GetBookingDetails — Request"
Description: "Logisk modell för requestparametrar i GetBookingDetails."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* bookingId 1..1 string "Intern bokningsidentitet"
    """
    Intern bokningsidentitet.
    Kardinalitet: Obligatorisk.
    """
