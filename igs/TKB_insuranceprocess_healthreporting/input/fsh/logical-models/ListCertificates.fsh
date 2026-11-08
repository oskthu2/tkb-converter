// Elementen genereras ur ListCertificatesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: ListCertificates v1.0
// Genererad: 2026-05-19

Logical: ListCertificatesRequest
Id: listcertificates-request
Title: "ListCertificates — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ListCertificates
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).
  Begär en lista av registrerade läkarintyg från intygstjänsten.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* nationalIdentityNumber 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* certificateType 0..* string "Typ av intyg att filtrera på (om tomt returneras alla typer)"
* available 0..1 boolean "Om true returneras tillgängliga intyg, false returnerar ej tillgängliga"
  """
  ASSUME: Fältet är 'string' i XSD men representerar ett booleskt värde. Mappat till boolean.
  """
* fromDate 0..1 date "Startdatum för sökning på utfärdandedatum"
* toDate 0..1 date "Slutdatum för sökning på utfärdandedatum"

* insert ListCertificatesRequestFieldDescriptions

Logical: ListCertificates
Id: listcertificates
Title: "ListCertificates"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* meta 0..* Base "CertificateMetaType" "meta"
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
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListCertificatesFieldDescriptions
