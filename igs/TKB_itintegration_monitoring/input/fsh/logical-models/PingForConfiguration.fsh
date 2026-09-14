// Genererad från TKB itintegration:monitoring v1.0
// Kontrakt: PingForConfiguration v1.0
// Genererad: 2026-09-14

Logical: PingForConfiguration
Id: pingforconfiguration
Title: "PingForConfiguration"
Description: """
  Logisk modell för tjänstekontraktet PingForConfiguration
  (RIV-TA urn:riv:itintegration:monitoring:PingForConfigurationResponder:1).
  Generisk "ping"-tjänst som varje RIVTA 2.1-tjänstekomponent ska exponera,
  utöver sina funktionella kontrakt, för att kunna övervakas och felsökas
  via ett enhetligt gränssnitt. Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* pingVersion 1..1 string "Version av tjänstekomponenten"
    """
    Version av den tjänstekomponent som svarar. Formatet och semantiken är
    specifik för respektive tjänsteproducent.
    Kardinalitet: Obligatorisk.
    """
* pingDateTime 1..1 instant "Tidpunkt för svar"
    """
    Datum och klockslag när svaret skapades. Källdokumentets fälttyp är TS
    (RIV-TA-lokal regex-begränsad sträng på formatet YYYYMMDDhhmmss, se
    itintegration_monitoring_1.0.xsd), mappad till FHIR `instant`.
    Kardinalitet: Obligatorisk.
    """
* configuration 0..* BackboneElement "Konfigurationsvärde"
    """
    Lista med värden av miljövariabler från den svarande tjänstekomponenten
    (t.ex. JVM/.Net-version, operativsystem). Så mycket som möjligt ska tas
    med som kan vara till hjälp vid felsökning.
    """
* configuration.configurationName 1..1 string "Namn på miljövariabel"
* configuration.configurationValue 1..1 string "Värde på miljövariabel"
