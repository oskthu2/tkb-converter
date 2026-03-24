// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllCareTypes v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAllCareTypesRequest
Id: getallcaretypes-request
Title: "GetAllCareTypes — Request"
Description: "Logisk modell för requestparametrar i GetAllCareTypes."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* timeTypeIDs 0..* string "Lista med tidstyper"
    """
    Lista med tidstyper för att filtrera svarslistan.
    Kardinalitet: Valfri, lista.
    """
* performer 0..* Identifier "HSA-id för medarbetaren"
    """
    HSA-id för medarbetaren för att filtrera svarslistan.
    Kardinalitet: Valfri, lista.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren.
    Kardinalitet: Obligatorisk.
    """
