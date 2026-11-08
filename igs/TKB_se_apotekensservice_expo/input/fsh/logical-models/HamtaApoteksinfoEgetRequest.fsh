// Elementen genereras ur HamtaApoteksinfoEgetResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaApoteksinfoEget v5.0
// Genererad: 2026-09-26

Logical: HamtaApoteksinfoEgetRequest
Id: hamtaapoteksinfoeget-request
Title: "HamtaApoteksinfoEget — Request"
Description: """
  Logisk modell för begäran i HamtaApoteksinfoEget
  (urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "5.0"
* apoteksId 0..1 string "GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata." "GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata."
* orgNr 0..1 string "Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata." "Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaApoteksinfoEgetRequestFieldDescriptions
