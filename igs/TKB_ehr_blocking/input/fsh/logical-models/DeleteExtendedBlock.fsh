// Elementen genereras ur DeleteExtendedBlockResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: DeleteExtendedBlock v2.0 (administration)
// Genererad: 2026-04-09

Logical: DeleteExtendedBlock
Id: deleteextendedblock
Title: "DeleteExtendedBlock"
Description: """
  Logisk modell för tjänstekontraktet DeleteExtendedBlock
  (RIV-TA urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2).
  Makulerar (tar bort) en spärr i lokal spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
