// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SendCertificateToRecipient v2.1
// Genererad: 2026-05-19

Logical: SendCertificateToRecipient
Id: sendcertificatetorecipient
Title: "SendCertificateToRecipient"
Description: """
  Logisk modell för tjänstekontraktet SendCertificateToRecipient
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: SendCertificateToRecipientRequest
Id: sendcertificatetorecipient-request
Title: "SendCertificateToRecipient — Request"
Description: "Logisk modell för requestparametrar i SendCertificateToRecipient."
Characteristics: #can-be-target

* skickatTidpunkt 1..1 dateTime "Tidpunkt då begäran om att skicka intyg skickas"
* intygsId 1..1 Identifier "Identitet på intyget"
* patientPersonId 1..1 Identifier "Person- eller samordningsnummer för patienten"
* mottagare 1..1 CodeableConcept "Kodat värde för den part intyget ska skickas till"
* mottagare from PartVS (required)
* skickatAv 1..1 BackboneElement "Identifierar personen som skickar intyget"
  """
  hosPersonal eller personId (invånare) — exklusivt val (XML schema choice).
  """
* skickatAv.hosPersonal 0..1 BackboneElement "HoS-personal (anges vid anrop från vården)"
* skickatAv.hosPersonal.personalId 1..1 Identifier "HSA-id"
* skickatAv.hosPersonal.enhet 1..1 BackboneElement "Enhet"
* skickatAv.hosPersonal.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* skickatAv.personId 0..1 Identifier "Person- eller samordningsnummer (anges vid anrop från invånartjänst)"
