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

* result 1..1 BackboneElement "Resultat av återkallningen"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
