// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllHealthcareFacilities v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAllHealthcareFacilitiesRequest
Id: getallhealthcarefacilities-request
Title: "GetAllHealthcareFacilities — Request"
Description: "Logisk modell för requestparametrar i GetAllHealthcareFacilities."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet (kallande organisation).
    Kardinalitet: Obligatorisk.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren. Kan användas för att filtrera svar per invånare.
    Kardinalitet: Obligatorisk.
    """
* bookingId 0..1 string "Internt bokningsid"
    """
    Internt bokningsid. Obligatoriskt när förfrågan gäller ombokning.
    Kardinalitet: Valfri (villkorlig: obligatorisk vid ombokning).
    """
