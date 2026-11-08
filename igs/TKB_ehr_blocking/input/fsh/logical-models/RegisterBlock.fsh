// Elementen genereras ur RegisterBlockResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterBlock v2.0 (synchronization)
// Genererad: 2026-04-09

Logical: RegisterBlock
Id: registerblock
Title: "RegisterBlock"
Description: """
  Logisk modell för tjänstekontraktet RegisterBlock
  (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2).
  Registrerar en grundläggande spärr i nationell spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
