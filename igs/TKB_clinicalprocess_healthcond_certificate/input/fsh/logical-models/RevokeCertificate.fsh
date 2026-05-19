// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: RevokeCertificate v2.1
// Genererad: 2026-05-19

Logical: RevokeCertificate
Id: revokecertificate
Title: "RevokeCertificate"
Description: """
  Logisk modell för tjänstekontraktet RevokeCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext med mer information"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: RevokeCertificateRequest
Id: revokecertificate-request
Title: "RevokeCertificate — Request"
Description: "Logisk modell för requestparametrar i RevokeCertificate."
Characteristics: #can-be-target

* meddelande 0..1 string "Beskrivning av orsak till makuleringen"
* skickatTidpunkt 1..1 dateTime "Tidpunkt då makuleringen skickades från vården"
* intygsId 1..1 Identifier "Unikt ID för det intyg som ska makuleras"
* patientPersonId 1..1 Identifier "Person- eller samordningsnummer för patienten"
  """
  Ska överensstämma med person-id på det intyg som ska makuleras.
  Inkluderas för att förenkla sökning.
  """
* skickatAv 1..1 BackboneElement "Identifierar den som utför makuleringen"
* skickatAv.personalId 1..1 Identifier "HSA-id för hälso- och sjukvårdspersonalen"
* skickatAv.fullstandigtNamn 0..1 string "Personalens fullständiga namn"
* skickatAv.enhet 1..1 BackboneElement "Enhet"
* skickatAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* skickatAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* skickatAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
