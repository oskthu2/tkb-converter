// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllTimeTypes v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAllTimeTypesRequest
Id: getalltimetypes-request
Title: "GetAllTimeTypes — Request"
Description: "Logisk modell för requestparametrar i GetAllTimeTypes."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* careTypeIDs 0..* string "Vårdtypsidentitet för att begränsa sökningen"
    """
    Vårdtypsidentitet för att begränsa sökningen.
    Ska stödjas av producent om GetAllCaretypes stödjs.
    Kardinalitet: Valfri, lista.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren.
    Kardinalitet: Obligatorisk.
    """
