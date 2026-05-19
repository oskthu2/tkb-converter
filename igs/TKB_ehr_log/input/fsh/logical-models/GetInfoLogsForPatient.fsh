// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetInfoLogsForPatient v1.0
// Namnrymd: urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1
// Genererad: 2026-04-09

Logical: GetInfoLogsForPatient
Id: getinfologsforpatient
Title: "GetInfoLogsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetInfoLogsForPatient
  (RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1).
  Representerar responsens informationsstruktur (log.querying:InfoLogsResult).
  Returnerar lista för angiven informationsägande vårdgivare och patient med
  vilka externa vårdgivare som haft åtkomst till information.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatkontainer"
  * resultCode 1..1 code "Statuskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text"
  * startInterval 0..1 dateTime "Start på tillgängligt datumintervall"
  * endInterval 0..1 dateTime "Slut på tillgängligt datumintervall"
  * queuedReportId 0..1 string "Id för pågående rapport (UUID)"
  * queueTime 0..1 integer "Uppskattad väntetid i sekunder"
* careProviders 0..1 BackboneElement "Samling av externa vårdgivare med åtkomst"
  * careProvider 0..* BackboneElement "En extern vårdgivare"
    * careProviderId 1..1 Identifier "HSA-id för den externa vårdgivaren"
    * careProviderName 0..1 string "Den externa vårdgivarens namn"
