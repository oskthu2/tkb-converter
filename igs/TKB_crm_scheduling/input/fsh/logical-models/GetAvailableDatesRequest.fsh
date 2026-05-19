// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAvailableDates v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAvailableDatesRequest
Id: getavailabledates-request
Title: "GetAvailableDates — Request"
Description: "Logisk modell för requestparametrar i GetAvailableDates."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "Hsa-Id för mottagning/vårdenhet"
    """
    Hsa-Id för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* bookingId 0..1 string "Intern bokningsidentitet"
    """
    Intern bokningsidentitet. Används för att indikera ombokning.
    Kardinalitet: Valfri.
    """
* startDateInclusive 1..1 string "Datum från och med (ÅÅÅÅMMDD)"
    """
    Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD.
    Kardinalitet: Obligatorisk.
    """
* endDateInclusive 1..1 string "Datum till och med (ÅÅÅÅMMDD)"
    """
    Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD.
    Kardinalitet: Obligatorisk.
    """
* performer 0..* Identifier "HSA-id för HoS-personal"
    """
    HSA-id för HoS-personal.
    Kardinalitet: Valfri, lista.
    """
* timeTypeName 0..1 string "Namn på tidstyp"
    """
    Namn på tidstyp.
    Kardinalitet: Valfri.
    """
* timeTypeID 0..1 string "Identifierare för tidstyp"
    """
    Identifierare för tidstyp.
    Kardinalitet: Valfri.
    """
* careTypeName 0..1 string "Namn på vårdtyp"
    """
    Namn på vårdtyp.
    Kardinalitet: Valfri.
    """
* careTypeID 0..1 string "Identitet för vårdtyp"
    """
    Identitet för vårdtyp.
    Kardinalitet: Valfri.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren.
    Kardinalitet: Obligatorisk.
    """
