// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetAccessLogsForPatient v1.1
// Namnrymd: urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1
// Genererad: 2026-04-09

Logical: GetAccessLogsForPatient
Id: getaccesslogsforpatient
Title: "GetAccessLogsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetAccessLogsForPatient
  (RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1).
  Representerar responsens informationsstruktur (log.querying:AccessLogsResult).
  Returnerar lista för angiven patient med vilka vårdaktörer som har haft åtkomst
  till information, inklusive tidpunkt, syfte och resurstyp.
  Stödjer aggregering — queuedReportId får inte användas vid aggregerande anrop.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatkontainer"
  * resultCode 1..1 code "Statuskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text"
  * startInterval 0..1 dateTime "Start på tillgängligt datumintervall"
  * endInterval 0..1 dateTime "Slut på tillgängligt datumintervall"
  * queuedReportId 0..1 string "Id för pågående rapport (UUID)"
      """
      Ska inte returneras/användas när aggregerande tjänst anropas.
      """
  * queueTime 0..1 integer "Uppskattad väntetid i sekunder"
* accessLogs 0..1 BackboneElement "Samling av åtkomstloggar"
  * accessLog 0..* BackboneElement "En åtkomstlogg"
      """
      Representerar en enskild åtkomst — vem som haft åtkomst, när, varför och till vilken resurs.
      Datatyp: log.querying:AccessLogType.
      """
    * careProviderId 1..1 Identifier "HSA-id för vårdgivaren vars medarbetare haft åtkomst"
    * careProviderName 0..1 string "Vårdgivarens namn"
    * careUnitId 1..1 Identifier "HSA-id för vårdenhet"
    * careUnitName 0..1 string "Vårdenhetens namn"
    * userId 1..1 Identifier "HSA-id för medarbetaren som haft åtkomst"
    * userName 0..1 string "Medarbetarens namn"
    * userTitle 0..1 string "Medarbetarens yrkestitel"
    * accessDate 1..1 dateTime "Tidpunkt för åtkomst"
    * purpose 1..1 string "Syfte med åtkomsten"
    * resourceType 1..1 string "Typ av resurs som åtkomsten avsåg"
