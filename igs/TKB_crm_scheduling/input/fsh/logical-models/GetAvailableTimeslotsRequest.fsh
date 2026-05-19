// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAvailableTimeslots v1.1 — Request
// Genererad: 2026-03-24

Logical: GetAvailableTimeslotsRequest
Id: getavailabletimeslots-request
Title: "GetAvailableTimeslots — Request"
Description: "Logisk modell för requestparametrar i GetAvailableTimeslots."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "Hsa-ID för mottagning/vårdenhet"
    """
    Hsa-ID för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* bookingId 0..1 string "Intern bokningsidentitet"
    """
    Intern bokningsidentitet. Används för att indikera ombokning.
    Kardinalitet: Valfri.
    """
* startDateInclusive 1..1 string "Datum från och med (ÅÅÅÅMMDD)"
    """
    Datum från och med, på formatet ÅÅÅÅMMDD.
    Kardinalitet: Obligatorisk.
    """
* endDateInclusive 1..1 string "Datum till och med (ÅÅÅÅMMDD)"
    """
    Datum till och med, på formatet ÅÅÅÅMMDD.
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
* careTypeID 0..1 string "Identifierare för vårdtyp"
    """
    Identifierare för vårdtyp.
    Kardinalitet: Valfri.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren.
    Kardinalitet: Obligatorisk.
    """
