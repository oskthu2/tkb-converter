// Genererad från TKB crm:requeststatus v2.0.1
// Kodverk: Kv status vårdbegäran
// Genererad: 2026-03-24
// OBS: Kodlistan är ofullständig — koderna 1=Skickad, 7=Svar mottaget, 11=Makulerad nämns i övriga regler
// men fullständig lista saknas i TKB. Kodverket kan komma att kompletteras över tid.

CodeSystem: KvStatusVardbegaranCS
Id: kvstatusvardbegaran-cs
Title: "Kv status vårdbegäran"
Description: """
  Kodverk Kv status vårdbegäran — anger status för en remiss/vårdbegäran. OID: 1.2.752.129.2.2.2.43.
  Kodverket kan komma att kompletteras utan versionsuppdatering av tjänstekontraktet.
  Konsumenter MÅSTE vara förberedda på nya koder.
"""
* ^url = "https://fhir.inera.se/CodeSystem/kvstatusvardbegaran-cs"
* ^status = #active
* ^content = #fragment
* #1 "Skickad" "Remissen har skickats"
* #7 "Svar mottaget" "Svar på remissen har mottagits"
* #11 "Makulerad" "Remissen har makulerats"
