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

* nationalIdentityNumber 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* certificateType 0..* string "Typ av intyg att filtrera på (om tomt returneras alla typer)"
* available 0..1 boolean "Om true returneras tillgängliga intyg, false returnerar ej tillgängliga"
  """
  ASSUME: Fältet är 'string' i XSD men representerar ett booleskt värde. Mappat till boolean.
  """
* fromDate 0..1 date "Startdatum för sökning på utfärdandedatum"
* toDate 0..1 date "Slutdatum för sökning på utfärdandedatum"


Logical: ListCertificates
Id: listcertificates
Title: "ListCertificates"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).
"""
Characteristics: #can-be-target

* meta 0..* BackboneElement "Metadata om ett intyg"
* meta.certificateId 1..1 string "Identitet på intyget (GUID)"
* meta.certificateType 1..1 string "Typ av intyg"
* meta.validFrom 1..1 date "Startdatum för sjukskrivningsperioden"
* meta.validTo 1..1 date "Slutdatum för sjukskrivningsperioden"
* meta.issuerName 1..1 string "Namn för Hos-person som utfärdat intyget"
* meta.facilityName 1..1 string "Namn på Hos-vårdenhet där intyget utfärdats"
* meta.signDate 1..1 date "Datum när intyget signerades"
* meta.available 1..1 string "Om intyget är tillgängligt och kan användas"
* meta.status 0..* BackboneElement "Statustyper för olika mottagare"
* meta.status.target 1..1 string "Mottagare för en status (t.ex. FK)"
* meta.status.type 1..1 CodeableConcept "Typ av statusändring för intyget"
* meta.status.type from StatusVS (extensible)
* meta.status.timestamp 1..1 dateTime "När statusen sattes"
* result 0..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
