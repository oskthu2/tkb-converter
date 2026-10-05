// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetAccessLogsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetAccessLogsForPatient
Id: getaccesslogsforpatient
Title: "GetAccessLogsForPatient — Response"
Description: """
  Logisk modell för svaret i GetAccessLogsForPatient
  (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* accessLogsResult 1..1 BackboneElement "accessLogsResult" "Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel."
  * reportResult 1..1 BackboneElement "reportResult" "reportResult"
    * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
      * resultCode 1..1 code "resultCode" "resultCode"
      * resultCode from ResultCodeVS (required)
      * resultText 0..1 string "resultText" "resultText"
    * startInterval 0..1 dateTime "startInterval" "startInterval"
    * endInterval 0..1 dateTime "endInterval" "endInterval"
    * queuedReportId 0..1 string "queuedReportId" "queuedReportId"
    * queueTime 0..1 integer "queueTime" "queueTime"
  * accesssLogs 0..1 BackboneElement "accesssLogs" "Datatyp som håller lista med Access loggar. Kan vara en tom lista."
    * accessLog 0..* BackboneElement "accessLog" "Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt."
      * careProviderId 1..1 string "careProviderId" "careProviderId"
      * careProviderName 0..1 string "careProviderName" "careProviderName"
      * careUnitId 1..1 string "careUnitId" "careUnitId"
      * careUnitName 0..1 string "careUnitName" "careUnitName"
      * accessDate 1..1 dateTime "accessDate" "accessDate"
      * userId 1..1 string "userId" "userId"
      * userName 0..1 string "userName" "userName"
      * userTitle 0..1 string "userTitle" "userTitle"
      * purpose 1..1 string "purpose" "purpose"
      * resourceType 1..1 string "resourceType" "resourceType"
