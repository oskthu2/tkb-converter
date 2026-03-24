// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetSubjectOfCareSchedule v1.1 — Request
// Genererad: 2026-03-24

Logical: GetSubjectOfCareScheduleRequest
Id: getsubjectofcareschedule-request
Title: "GetSubjectOfCareSchedule — Request"
Description: "Logisk modell för requestparametrar i GetSubjectOfCareSchedule."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet.
    Observera att vid adressering av aggregerande tjänst kommer detta fält att ignoreras.
    Fältet måste ändå finnas med av kompatibilitetsskäl.
    Kardinalitet: Obligatorisk.
    """
* subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
    """
    Personnummer för invånaren.
    Kardinalitet: Obligatorisk.
    """
