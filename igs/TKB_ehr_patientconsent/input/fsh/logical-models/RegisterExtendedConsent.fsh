// Elementen genereras ur RegisterExtendedConsentResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: RegisterExtendedConsent v1.0
// RIV-TA: urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: RegisterExtendedConsent
Id: registerextendedconsent
Title: "RegisterExtendedConsent"
Description: """
  Logisk modell för tjänstekontraktet RegisterExtendedConsent
  (RIV-TA urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens
  information från andra vårdgivare enligt PDL. Intyget avser patientens aktiva medgivande (samtycke),
  alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
