// Elementen genereras ur KopplaBarnKontoResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KopplaBarnKonto v4.0
// Genererad: 2026-09-26

Logical: KopplaBarnKontoRequest
Id: kopplabarnkonto-request
Title: "KopplaBarnKonto — Request"
Description: """
  Logisk modell för begäran i KopplaBarnKonto
  (urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* huvudPersNr 0..1 string "Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot." "Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot."
* klientinformation 1..1 Base "KlientinformationRequest" "Objekt innehållande information om anropande klientsystem."
* klientinformation.anvandare 1..1 string "Unikt användarid i anropande system." "Unikt användarid i anropande system."
* klientinformation.session 1..1 string "Sessionens id i anropande system." "Sessionens id i anropande system."
* klientinformation.system 1..1 string "GLN-kod för anropande system." "GLN-kod för anropande system."
* persNr 1..1 string "Personnummer för den vars konto ska uppdateras." "Personnummer för den vars konto ska uppdateras."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert KopplaBarnKontoRequestFieldDescriptions
