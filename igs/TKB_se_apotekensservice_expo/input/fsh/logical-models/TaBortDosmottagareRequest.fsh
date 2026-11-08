// Elementen genereras ur TaBortDosmottagareResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: TaBortDosmottagare v1.0
// Genererad: 2026-09-26

Logical: TaBortDosmottagareRequest
Id: tabortdosmottagare-request
Title: "TaBortDosmottagare — Request"
Description: """
  Logisk modell för begäran i TaBortDosmottagare
  (urn:riv:se.apotekensservice:expo:TaBortDosmottagareResponder:1, TaBortDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* apoteksIdDosproducent 1..1 string "Apoteks-id för dosproducent som dosmottagaren ska registreras på." "Apoteks-id för dosproducent som dosmottagaren ska registreras på."
* dosmottagarId 1..1 string "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket." "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert TaBortDosmottagareRequestFieldDescriptions
