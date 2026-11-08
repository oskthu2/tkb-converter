// Elementen genereras ur HamtaApoteksInfoResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaApoteksInfo v1.0
// Genererad: 2026-09-26

Logical: HamtaApoteksInfoRequest
Id: hamtaapoteksinfo-request
Title: "HamtaApoteksInfo — Request"
Description: """
  Logisk modell för begäran i HamtaApoteksInfo
  (urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1, HamtaApoteksInfoRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* glnKod 1..* string "glnKod" "Lista med en eller flera GLN-koder som identifierar de expeditionsställen man vill ha information om. GLN-koderna i listan ska vara unika."
* tidpunkt 0..1 dateTime "Om givet så returneras information som gällde vid tidpunkten, annars aktuell information." "Om givet så returneras information som gällde vid tidpunkten, annars aktuell information."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaApoteksInfoRequestFieldDescriptions
