// Elementen genereras ur GetHospLastUpdateResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* lastUpdate 1..1 dateTime "lastUpdate" "lastUpdate"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHospLastUpdateFieldDescriptions
