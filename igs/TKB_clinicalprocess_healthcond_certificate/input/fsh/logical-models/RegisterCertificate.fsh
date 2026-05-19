// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: RegisterCertificate v3.1
// Genererad: 2026-05-19

Logical: RegisterCertificate
Id: registercertificate
Title: "RegisterCertificate"
Description: """
  Logisk modell för tjänstekontraktet RegisterCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext med mer information om resultatet"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: RegisterCertificateRequest
Id: registercertificate-request
Title: "RegisterCertificate — Request"
Description: "Logisk modell för requestparametrar i RegisterCertificate."
Characteristics: #can-be-target

* svarPa 0..1 BackboneElement "Referens till meddelande som detta intyg svarar på (komplettering)"
  """
  Ska anges om intyget utfärdas som svar på en kompletteringsbegäran.
  referensId ska anges om det skickades i frågan.
  """
* svarPa.meddelandeId 1..1 string "ID på det meddelande detta intyg svarar på"
* svarPa.referensId 0..1 string "Valfri referens till entitet hos sändande part"
* intyg 1..1 BackboneElement "Intyget som ska registreras"
  """
  Komplett intyg inkl. patient, skapadAv, enhet och vårdgivare.
  mottagare ska ej anges vid registrering.
  skickatTidpunkt ska ange aktuell tidpunkt.
  """
* intyg.intygsId 1..1 Identifier "Unikt ID för intyget"
* intyg.typAvIntyg 1..1 CodeableConcept "Typ av intyg"
* intyg.signeringsTidpunkt 1..1 dateTime "Tidpunkt då intyget signerades"
* intyg.skickatTidpunkt 1..1 dateTime "Tidpunkt då intyget skickades (aktuell tidpunkt)"
* intyg.patient 1..1 BackboneElement "Patientuppgifter"
* intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* intyg.skapadAv 1..1 BackboneElement "HoS-personal"
* intyg.skapadAv.personalId 1..1 Identifier "HSA-id"
* intyg.skapadAv.enhet 1..1 BackboneElement "Enhet"
* intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* intyg.skapadAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* intyg.skapadAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
