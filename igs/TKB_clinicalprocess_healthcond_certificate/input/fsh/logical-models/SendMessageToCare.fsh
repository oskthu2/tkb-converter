// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SendMessageToCare v2.0
// Genererad: 2026-05-19

Logical: SendMessageToCare
Id: sendmessagetocare
Title: "SendMessageToCare"
Description: """
  Logisk modell för tjänstekontraktet SendMessageToCare
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: SendMessageToCareRequest
Id: sendmessagetocare-request
Title: "SendMessageToCare — Request"
Description: "Logisk modell för requestparametrar i SendMessageToCare (meddelande från intygsmottagare till vården)."
Characteristics: #can-be-target

* meddelandeId 1..1 string "Unikt ID för meddelandet (GUID)"
* referensId 0..1 string "Valfri referens till entitet hos sändande part"
* skickatTidpunkt 1..1 dateTime "Tidpunkt då meddelandet skickades"
* intygsId 1..1 Identifier "Unikt ID för det intyg meddelandet hör till"
* patientPersonId 1..1 Identifier "Person- eller samordningsnummer för patienten"
* logiskAdressMottagare 1..1 string "Logisk adress för den vårdenhet meddelandet ska vidarebefordras till"
  """
  För nya frågor: enheten som utfärdade intyget.
  För svar: hämtas från frågan (skickatAv.enhet.enhets-id.extension).
  """
* amne 1..1 CodeableConcept "Ämne för frågan/meddelandet"
* amne from AmneskodVS (required)
* rubrik 0..1 string "Valfri rubrik som beskriver meddelandet"
* meddelande 1..1 string "Meddelandets text"
  """
  Om ämne är 'Komplettering' kan detta fält vara tomt (FK-avtal).
  Kompletteringstext per fråga skickas i fältet komplettering.text.
  """
* paminnelseMeddelandeId 0..1 string "ID på meddelande detta är en påminnelse om (endast vid ämne Påminnelse)"
* svarPa 0..1 BackboneElement "Referens till fråga från vården om detta är ett svar"
* svarPa.meddelandeId 1..1 string "ID på ursprungsfrågan"
* svarPa.referensId 0..1 string "Referens-ID"
* skickatAv 1..1 BackboneElement "Information om avsändande part"
* skickatAv.part 1..1 CodeableConcept "Part som skickar meddelandet"
* skickatAv.part from PartVS (required)
* skickatAv.kontaktInfo 0..* string "Kontaktinformation (rader)"
* komplettering 0..* BackboneElement "Kompletteringsbegäran per fråga (endast vid ämne Komplettering)"
* komplettering.frageId 1..1 string "Identitet på frågan som ska kompletteras"
* komplettering.instans 0..1 integer "Instansnummer för fråga med flera instanser (lägsta värde 1)"
* komplettering.text 1..1 string "Kompletteringsmeddelande för specifik fråga"
* sistaDatumForSvar 0..1 date "Datum då intygsmottagaren senast vill ha svar (endast vid fråga)"
