// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: GetHospLastUpdate v1.0
// Genererad: 2026-05-19

Logical: GetHospLastUpdate
Id: gethosplastupdate
Title: "GetHospLastUpdate"
Description: """
  Logisk modell för tjänstekontraktet GetHospLastUpdate
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospLastUpdate:1).
  Hämtar tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste
  utlämnandet från Socialstyrelsen. Kontraktet har inga inparametrar.
"""
Characteristics: #can-be-target

* lastUpdate 1..1 dateTime "Tidpunkt då HOSP-informationen tillgängliggjorts efter senaste utlämnande"
