// Elementen genereras ur UnregisterTemporaryRevokeResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: UnregisterTemporaryRevoke v4.0
// Genererad: 2026-09-26

Logical: UnregisterTemporaryRevoke
Id: unregistertemporaryrevoke
Title: "UnregisterTemporaryRevoke — Response"
Description: """
  Logisk modell för svaret i UnregisterTemporaryRevoke
  (urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UnregisterTemporaryRevokeFieldDescriptions
