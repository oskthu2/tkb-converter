// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetInfoLogs v2.0
// Genererad: 2026-09-26

Logical: GetInfoLogs
Id: getinfologs
Title: "GetInfoLogs — Response"
Description: """
  Logisk modell för svaret i GetInfoLogs
  (urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* infoLogsResult 1..1 BackboneElement "infoLogsResult" "Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel."
  * reportResult 1..1 BackboneElement "reportResult" "reportResult"
    * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
      * resultCode 1..1 code "resultCode" "resultCode"
      * resultCode from ResultCodeVS (required)
      * resultText 0..1 string "resultText" "resultText"
    * startInterval 0..1 dateTime "startInterval" "startInterval"
    * endInterval 0..1 dateTime "endInterval" "endInterval"
    * queuedReportId 0..1 string "queuedReportId" "queuedReportId"
    * queueTime 0..1 integer "queueTime" "queueTime"
  * careProviders 0..1 BackboneElement "careProviders" "Datatyp som håller lista med vårdgivare. Kan vara en tom lista."
    * careProvider 0..* BackboneElement "careProvider" "Datatyp som representerar en vårdgivare."
      * careProviderId 1..1 string "careProviderId" "careProviderId"
      * careProviderName 0..1 string "careProviderName" "careProviderName"
