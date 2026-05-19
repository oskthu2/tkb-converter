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

* certificateId 0..1 string "Identitet på intyget (GUID)"
  """
  ASSUME: Tabellen anger 'O' (Obligatorisk?) men det är oklart om båda fälten eller ett av dem krävs.
  Se QUESTIONS.md BLOCK-HR-001.
  """
* nationalIdentityNumber 0..1 Identifier "Patientens personnummer eller samordningsnummer"


Logical: GetCertificate
Id: getcertificate
Title: "GetCertificate"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).
"""
Characteristics: #can-be-target

* meta 0..1 BackboneElement "Metadata om intyget"
* meta.certificateId 0..1 string "Identitet på intyget (GUID)"
* meta.certificateType 0..1 string "Typ av intyg"
* meta.validFrom 0..1 date "Startdatum för sjukskrivningsperioden"
* meta.validTo 0..1 date "Slutdatum för sjukskrivningsperioden"
* meta.issuerName 0..1 string "Namn för Hos-person som utfärdat intyget"
* meta.facilityName 0..1 string "Namn på Hos-vårdenhet där intyget utfärdats"
* meta.signDate 0..1 dateTime "Datum och tid när intyget signerades"
* meta.available 0..1 string "Om intyget är tillgängligt"
* meta.status 0..* BackboneElement "Statustyper för olika mottagare"
* meta.status.target 0..1 string "Mottagare för en status (t.ex. FK)"
* meta.status.type 0..1 CodeableConcept "Typ av statusändring för intyget"
* meta.status.type from StatusVS (extensible)
* meta.status.timestamp 0..1 dateTime "När statusen sattes"
* certificate 0..1 string "Platshållare för intyget (generisk, se meta.certificateType för typ)"
  """
  ASSUME: Intyget är generiskt XML - mappat till string i avvaktan på formell FHIR-modell.
  Se QUESTIONS.md ASSUME-HR-002.
  """
* result 0..1 BackboneElement "Resultatinformation"
* result.resultCode 0..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
