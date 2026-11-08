// Elementen genereras ur PingForConfigurationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* version 1..1 string "Version of the service component that responds." "Version of the service component that responds."
* pingDateTime 1..1 string "Date and time for the ping response." "Date and time for the ping response."
* pingDateTime only TS
* configuration 0..* Base "ConfigurationType" "Optional list of environment information from the service component."
* configuration.name 1..1 string "name" "name"
* configuration.value 1..1 string "value" "value"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert PingForConfigurationFieldDescriptions
