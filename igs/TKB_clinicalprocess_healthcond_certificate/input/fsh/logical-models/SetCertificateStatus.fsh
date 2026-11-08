// Elementen genereras ur SetCertificateStatusResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SetCertificateStatus v2.0
// Genererad: 2026-05-19

Logical: SetCertificateStatus
Id: setcertificatestatus
Title: "SetCertificateStatus"
Description: """
  Logisk modell för tjänstekontraktet SetCertificateStatus
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.resultText 0..1 string "resultText" "resultText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SetCertificateStatusFieldDescriptions

Logical: SetCertificateStatusRequest
Id: setcertificatestatus-request
Title: "SetCertificateStatus — Request"
Description: "Logisk modell för requestparametrar i SetCertificateStatus."
Characteristics: #can-be-target

* ^version = "2.0"
* intygs-id 1..1 Base "IntygId" "intygs-id"
* part 1..1 Base "Part" "part"
* status 1..1 Base "Statuskod" "status"
* tidpunkt 1..1 dateTime "tidpunkt" "tidpunkt"
* tidpunkt only TimeStampType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SetCertificateStatusRequestFieldDescriptions
