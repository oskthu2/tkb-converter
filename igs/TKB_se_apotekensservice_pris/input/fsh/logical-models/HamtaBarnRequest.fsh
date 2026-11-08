// Elementen genereras ur HamtaBarnResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaBarn v1.0
// Genererad: 2026-09-26

Logical: HamtaBarnRequest
Id: hamtabarn-request
Title: "HamtaBarn — Request"
Description: """
  Logisk modell för begäran i HamtaBarn
  (urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* huvudPersNr 1..1 string "Personnummer för huvudperson (vårdnadshavare)." "Personnummer för huvudperson (vårdnadshavare)."
* klientinformation 1..1 Base "KlientinformationRequest" "Objekt innehållande information om anropande klientsystem."
* klientinformation.anvandare 1..1 string "Unikt användarid i anropande system." "Unikt användarid i anropande system."
* klientinformation.session 1..1 string "Sessionens id i anropande system." "Sessionens id i anropande system."
* klientinformation.system 1..1 string "GLN-kod för anropande system." "GLN-kod för anropande system."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaBarnRequestFieldDescriptions
