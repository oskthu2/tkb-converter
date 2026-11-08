// Elementen genereras ur CheckBlocksResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: CheckBlocks v3.0 (accesscontrol)
// Genererad: 2026-04-09

Logical: CheckBlocks
Id: checkblocks
Title: "CheckBlocks"
Description: """
  Logisk modell för tjänstekontraktet CheckBlocks
  (RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3).
  Kontrollerar om spärr finns relativ viss personal/vårdenhet och information.
  Version 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* CheckBlocksResultType 1..1 string "CheckBlocksResultType" "CheckBlocksResultType"
