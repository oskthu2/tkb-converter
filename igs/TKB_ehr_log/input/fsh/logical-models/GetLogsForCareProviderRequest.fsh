// Elementen genereras ur GetLogsForCareProviderResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetLogsForCareProvider v1.1 — Request
// Genererad: 2026-04-09

Logical: GetLogsForCareProviderRequest
Id: getlogsforcareprovider-request
Title: "GetLogsForCareProvider — Request"
Description: "Logisk modell för requestparametrar i GetLogsForCareProvider."
Characteristics: #can-be-target

* ^version = "1.1"
* careProviderId 1..1 Identifier "Vårdgivare som är ägare till loggposter"
    """
    HSA-id för vårdgivaren vars loggposter ska hämtas. Kardinalitet: Obligatorisk.
    """
* fromDate 1..1 dateTime "Obligatoriskt startdatum för rapportuttaget"
* toDate 1..1 dateTime "Obligatoriskt slutdatum för rapportuttaget"
* queuedReportId 0..1 string "Id på en pågående rapport (UUID, 36 tecken)"
    """
    Returneras från tidigare anrop med REPORTONQUEUE/REPORTINPROCESS.
    Måste anges vid uppföljande anrop för att undvika att ny rapport skapas.
    Kardinalitet: Valfri.
    """
* careUnitId 0..1 Identifier "HSA-id för specifik vårdenhet (valfritt filter)"

* insert GetLogsForCareProviderRequestFieldDescriptions
