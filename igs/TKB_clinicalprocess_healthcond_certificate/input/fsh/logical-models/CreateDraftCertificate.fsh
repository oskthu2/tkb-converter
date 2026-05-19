// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: CreateDraftCertificate v3.2 (TKB) / v3.3 (WSDL)
// Genererad: 2026-05-19

Logical: CreateDraftCertificate
Id: createdraftcertificate
Title: "CreateDraftCertificate"
Description: """
  Logisk modell för tjänstekontraktet CreateDraftCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3).
  Representerar responsens informationsstruktur — intygs-id på skapade intygsutkastet.
"""
Characteristics: #can-be-target

* intygsId 0..1 Identifier "Unikt ID för det intygsutkast som skapats"
  """
  Returneras om anropet lyckades. Utelämnas vid fel.
  """
* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: CreateDraftCertificateRequest
Id: createdraftcertificate-request
Title: "CreateDraftCertificate — Request"
Description: "Logisk modell för requestparametrar i CreateDraftCertificate."
Characteristics: #can-be-target

* intyg 1..1 BackboneElement "Utkast till intyg"
* intyg.typAvIntyg 1..1 CodeableConcept "Kodat värde som anger intygstypen"
* intyg.patient 1..1 BackboneElement "Uppgifter om den patient som intyg skapas för"
* intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* intyg.patient.fornamn 0..1 string "Förnamn"
* intyg.patient.mellannamn 0..1 string "Mellannamn"
* intyg.patient.efternamn 0..1 string "Efternamn"
* intyg.patient.postadress 0..1 string "Postadress"
* intyg.patient.postnummer 0..1 string "Postnummer"
* intyg.patient.postort 0..1 string "Postort"
* intyg.skapadAv 1..1 BackboneElement "HoS-personal som skapar intyget"
  """
  Namn hämtas från vårdsystemet — ej från HSA — och skickas med i anropet.
  Uppgifter om vårdgivare ska ej skickas, utan hämtas från HSA via enhets-id.
  """
* intyg.skapadAv.personalId 1..1 Identifier "HSA-id för hälso- och sjukvårdspersonalen"
* intyg.skapadAv.fullstandigtNamn 1..1 string "Personalens förnamn + efternamn (från vårdsystemet)"
* intyg.skapadAv.enhet 1..1 BackboneElement "Enhet som intyget skapas på"
* intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* intyg.skapadAv.enhet.enhetsnamn 1..1 string "Enhetens namn (från vårdsystemet)"
* intyg.ref 0..1 string "Referens till något i det integrerande vårdsystemet (t.ex. vårdkontakt-id)"
