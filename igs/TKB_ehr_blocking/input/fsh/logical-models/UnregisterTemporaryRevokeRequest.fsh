// Elementen genereras ur UnregisterTemporaryRevokeResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: UnregisterTemporaryRevoke v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: UnregisterTemporaryRevokeRequest
Id: unregistertemporaryrevoke-request
Title: "UnregisterTemporaryRevoke — Request"
Description: "Logisk modell för requestparametrar i UnregisterTemporaryRevoke."
Characteristics: #can-be-target

* ^version = "2.0"
* temporaryRevokeId 1..1 string "Unik identifierare (UUID) för den tillfälliga hävning som skall avregistreras."

* insert UnregisterTemporaryRevokeRequestFieldDescriptions
