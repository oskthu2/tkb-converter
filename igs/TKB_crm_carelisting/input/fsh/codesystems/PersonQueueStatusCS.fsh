// Genererad från informationsspecifikation crm:carelisting v1.0
// Kodverk: PersonQueueStatus (definierad i crm_carelisting_1_0.xsd)
// Genererad: 2026-03-24

CodeSystem: PersonQueueStatusCS
Id: personqueuestatus-cs
Title: "PersonQueueStatus"
Description: """
  Kodverk för köstatus för en person, enligt xs:enumeration i crm_carelisting_1_0.xsd.
  Används i tjänstekontraktet GetPersonQueueStatus.
"""
* ^url = "https://fhir.inera.se/CodeSystem/personqueuestatus-cs"
* ^status = #active
* ^content = #complete
* #inQueue "I kö" "Personen är i kö för listning."
* #notInQueue "Inte i kö" "Personen är inte i kö för listning."
