// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllPerformers v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAllPerformersRequest
Id: getallperformers-request
Title: "GetAllPerformers — Request"
Description: "Logisk modell för requestparametrar i GetAllPerformers."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* timeTypeIDs 0..* string "Tidstypid för att begränsa svarslistan"
    """
    Tidstypid för att begränsa svarslistan.
    Kardinalitet: Valfri, lista.
    """
* careTypeIDs 0..* string "Vårdtypsid för att begränsa svarslistan"
    """
    Vårdtypsid för att begränsa svarslistan.
    Ska stödjas av producent om GetAllCaretypes stödjs.
    Kardinalitet: Valfri, lista.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren, för att begränsa/utöka svarslistan.
    Kardinalitet: Obligatorisk.
    """
