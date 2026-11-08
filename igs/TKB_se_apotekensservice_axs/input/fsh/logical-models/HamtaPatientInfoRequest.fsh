// Elementen genereras ur HamtaPatientInfoResponder_6.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice:axs v7.0 (ingen TKB finns i källan)
// Kontrakt: HamtaPatientInfo v6.0
// Genererad: 2026-09-26

Logical: HamtaPatientInfoRequest
Id: hamtapatientinfo-request
Title: "HamtaPatientInfo — Request"
Description: """
  Logisk modell för begäran i HamtaPatientInfo
  (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType),
  inklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader).
"""
Characteristics: #can-be-target

* ^version = "6.0"
* personnummer 1..1 string "Giltigt personnummer för patient." "Giltigt personnummer för patient."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaPatientInfoRequestFieldDescriptions
