// Elementen genereras ur RegisterTemporaryRevokeResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: RegisterTemporaryRevoke v2.0 (synchronization)
// Genererad: 2026-04-09

Logical: RegisterTemporaryRevoke
Id: registertemporaryrevoke
Title: "RegisterTemporaryRevoke"
Description: """
  Logisk modell för tjänstekontraktet RegisterTemporaryRevoke
  (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2).
  Registrerar en tillfällig hävning av en spärr i nationell spärrtjänst.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
