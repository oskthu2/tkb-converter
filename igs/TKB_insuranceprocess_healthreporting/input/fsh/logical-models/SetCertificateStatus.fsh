// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: SetCertificateStatus v1.0
// Genererad: 2026-05-19

Logical: SetCertificateStatusRequest
Id: setcertificatestatus-request
Title: "SetCertificateStatus — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet SetCertificateStatus
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).
  Sätter status för ett registrerat läkarintyg i intygstjänsten.
"""
Characteristics: #can-be-target

* certificateId 1..1 string "Identitet på intyget (GUID)"
  """
  ASSUME: Tabellrubriken är förväxlad med nationalIdentityNumber i källdokumentet.
  Tolkat som att certificateId = intygets GUID-identitet.
  Se QUESTIONS.md BLOCK-HR-002.
  """
* nationalIdentityNumber 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* target 1..1 string "Mottagare för statusändringen (t.ex. FK)"
* certificateStatus 1..1 CodeableConcept "Typ av statusändring för intyget"
* certificateStatus from StatusVS (extensible)
* timestamp 0..1 dateTime "När anropet sattes för intyget"


Logical: SetCertificateStatus
Id: setcertificatestatus
Title: "SetCertificateStatus"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet SetCertificateStatus
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
