// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetLogsForPatient v1.0
// Namnrymd: urn:riv:ehr:log:querying:GetLogsForPatientResponder:1
// Genererad: 2026-04-09

Logical: GetLogsForPatient
Id: getlogsforpatient
Title: "GetLogsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetLogsForPatient
  (RIV-TA urn:riv:ehr:log:querying:GetLogsForPatientResponder:1).
  Representerar responsens informationsstruktur (log.querying:LogsResult).
  Returnerar loggposter för angiven vårdgivare och patient.
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
* logs 0..1 BackboneElement "Samling av loggposter"
  * log 0..* BackboneElement "En loggpost"
    * logId 1..1 string "Loggpostens UUID-identifierare"
    * system 1..1 BackboneElement "Loggande system"
      * systemId 1..1 Identifier "Systemets HSA-id"
      * systemName 0..1 string "Systemets namn"
    * activity 1..1 BackboneElement "Aktivitetsinformation"
      * activityType 1..1 code "Typ av aktivitet"
      * activityType from ActivityTypeVS (required)
      * activityLevel 0..1 string "Aktivitetsnivå"
      * activityArgs 0..1 string "Övriga aktivitetsparametrar"
      * startDate 1..1 dateTime "Tidpunkt för aktiviteten"
      * purpose 1..1 string "Syfte med aktiviteten"
    * user 1..1 BackboneElement "Medarbetaren som utförde aktiviteten"
      * userId 1..1 Identifier "Medarbetarens HSA-id"
      * name 0..1 string "Medarbetarens namn"
      * personId 0..1 Identifier "Medarbetarens personnummer"
      * assignment 0..1 string "Uppdragsnamn"
      * title 0..1 string "Yrkestitel"
      * careProvider 1..1 BackboneElement "Medarbetarens vårdgivare"
        * careProviderId 1..1 Identifier "Vårdgivarens HSA-id"
        * careProviderName 0..1 string "Vårdgivarens namn"
      * careUnit 1..1 BackboneElement "Medarbetarens vårdenhet"
        * careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
        * careUnitName 0..1 string "Vårdenhetens namn"
    * resources 1..1 BackboneElement "Resurser som aktiviteten avsåg"
      * resource 1..* BackboneElement "En resurs"
        * resourceType 1..1 string "Resurstyp"
        * patient 0..1 BackboneElement "Patient"
          * patientId 1..1 Identifier "Patientidentifierare"
          * patientName 0..1 string "Patientens namn"
        * careProvider 1..1 BackboneElement "Resursens ägande vårdgivare"
          * careProviderId 1..1 Identifier "Vårdgivarens HSA-id"
          * careProviderName 0..1 string "Vårdgivarens namn"
        * careUnit 0..1 BackboneElement "Resursens vårdenhet"
          * careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
          * careUnitName 0..1 string "Vårdenhetens namn"
