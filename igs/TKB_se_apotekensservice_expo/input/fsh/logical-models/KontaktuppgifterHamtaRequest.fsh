// Elementen genereras ur KontaktuppgifterHamtaResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontaktuppgifterHamta v4.0
// Genererad: 2026-09-26

Logical: KontaktuppgifterHamtaRequest
Id: kontaktuppgifterhamta-request
Title: "KontaktuppgifterHamta — Request"
Description: """
  Logisk modell för begäran i KontaktuppgifterHamta
  (urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* orgNr 0..1 string "Aktörens organisationsnummer" "Aktörens organisationsnummer"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert KontaktuppgifterHamtaRequestFieldDescriptions
