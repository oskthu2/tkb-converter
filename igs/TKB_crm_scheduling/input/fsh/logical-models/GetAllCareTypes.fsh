// Elementen genereras ur GetAllCareTypesResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAllCareTypes v1.1
// Genererad: 2026-03-24

Logical: GetAllCareTypes
Id: getallcaretypes
Title: "GetAllCareTypes"
Description: """
  Logisk modell för tjänstekontraktet GetAllCareTypes
  (RIV-TA urn:riv:crm:scheduling:GetAllCareTypes:1).
  Representerar responsens informationsstruktur.
  Tjänst att för invånaren kunna visa en lista över vilka typer av vård
  som kan bokas hos en viss vårdenhet/mottagning.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* careTypes 0..* Base "CareTypeType" "careTypes"
* careTypes.careTypeName 1..1 string "careTypeName" "careTypeName"
* careTypes.careTypeId 1..1 string "careTypeId" "careTypeId"
