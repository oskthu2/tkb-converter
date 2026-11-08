// Elementen genereras ur CancelTemporaryExtendedRevokeResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: CancelTemporaryExtendedRevoke v2.0 (administration)
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: CancelTemporaryExtendedRevoke
Id: canceltemporaryextendedrevoke
Title: "CancelTemporaryExtendedRevoke"
Description: """
  Logisk modell för tjänstekontraktet CancelTemporaryExtendedRevoke
  (RIV-TA urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2).
  Återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga
  hävningen finns. Denna återkallning kan inte återtas. Tjänsten avregistrerar
  även den tillfälliga hävningen på nationell nivå.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
