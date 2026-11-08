// Elementen genereras ur GetCertificateResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: GetCertificate v1.0
// Genererad: 2026-05-19

Logical: GetCertificateRequest
Id: getcertificate-request
Title: "GetCertificate — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).
  Hämtar ett specifikt läkarintyg från intygstjänsten.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* certificateId 0..1 string "Identitet på intyget (GUID)"
  """
  ASSUME: Tabellen anger 'O' (Obligatorisk?) men det är oklart om båda fälten eller ett av dem krävs.
  Se QUESTIONS.md BLOCK-HR-001.
  """
* nationalIdentityNumber 0..1 Identifier "Patientens personnummer eller samordningsnummer"

* insert GetCertificateRequestFieldDescriptions

Logical: GetCertificate
Id: getcertificate
Title: "GetCertificate"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* meta 0..1 Base "CertificateMetaType" "meta"
* meta.certificateId 1..1 string "certificateId" "certificateId"
* meta.certificateType 1..1 string "certificateType" "certificateType"
* meta.validFrom 1..1 date "validFrom" "validFrom"
* meta.validTo 1..1 date "validTo" "validTo"
* meta.issuerName 1..1 string "issuerName" "issuerName"
* meta.facilityName 1..1 string "facilityName" "facilityName"
* meta.signDate 1..1 date "signDate" "signDate"
* meta.available 1..1 string "available" "available"
* meta.status 0..* Base "CertificateStatusType" "status"
* meta.status.target 1..1 string "target" "target"
* meta.status.type 1..1 code "type" "type Tillåtna värden: UNHANDLED, DELETED, RESTORED, CANCELLED, SENT, RECEIVED, IN_PROGRESS, PROCESSED."
* meta.status.timestamp 1..1 dateTime "timestamp" "timestamp"
* certificate 0..1 Base "certificateType" "certificate"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCertificateFieldDescriptions
