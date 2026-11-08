// Elementen genereras ur GetAllPerformersResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllPerformers v1.1
// Genererad: 2026-03-24

Logical: GetAllPerformers
Id: getallperformers
Title: "GetAllPerformers"
Description: """
  Logisk modell för tjänstekontraktet GetAllPerformers
  (RIV-TA urn:riv:crm:scheduling:GetAllPerformers:1).
  Representerar responsens informationsstruktur.
  Tjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* performerInfos 0..* Base "PerformerInfoType" "performerInfos"
* performerInfos.perfomer 1..1 string "perfomer" "perfomer"
* performerInfos.firstName 1..1 string "firstName" "firstName"
* performerInfos.lastName 1..1 string "lastName" "lastName"
* performerInfos.title 0..1 string "title" "title"
