// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SendMessageToRecipient v2.1
// Genererad: 2026-05-19

Logical: SendMessageToRecipient
Id: sendmessagetorecipient
Title: "SendMessageToRecipient"
Description: """
  Logisk modell för tjänstekontraktet SendMessageToRecipient
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendMessageToRecipient:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: SendMessageToRecipientRequest
Id: sendmessagetorecipient-request
Title: "SendMessageToRecipient — Request"
Description: "Logisk modell för requestparametrar i SendMessageToRecipient (meddelande från vården till intygsmottagare)."
Characteristics: #can-be-target

* meddelandeId 1..1 string "Unikt ID för meddelandet (GUID)"
* referensId 0..1 string "Valfri referens till entitet hos sändande part"
* skickatTidpunkt 1..1 dateTime "Tidpunkt då meddelandet skickades"
* intygsId 1..1 Identifier "Unikt ID för det intyg meddelandet hör till"
* patientPersonId 1..1 Identifier "Person- eller samordningsnummer för patienten"
* logiskAdressMottagare 1..1 string "Logisk adress för intygsmottagaren"
* amne 1..1 CodeableConcept "Ämne för frågan/meddelandet"
* amne from AmneskodVS (required)
* rubrik 0..1 string "Valfri rubrik"
* meddelande 1..1 string "Meddelandets text"
* paminnelseMeddelandeId 0..1 string "ID på meddelande detta är en påminnelse om (endast vid ämne Påminnelse)"
* svarPa 0..1 BackboneElement "Referens till fråga från intygsmottagaren om detta är ett svar"
* svarPa.meddelandeId 1..1 string "ID på ursprungsfrågan"
* svarPa.referensId 0..1 string "Referens-ID"
* skickatAv 1..1 BackboneElement "HoS-personal som skickar meddelandet"
* skickatAv.personalId 1..1 Identifier "HSA-id"
* skickatAv.fullstandigtNamn 0..1 string "Personalens fullständiga namn"
* skickatAv.enhet 1..1 BackboneElement "Enhet"
* skickatAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* skickatAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* skickatAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
* sistaDatumForSvar 0..1 date "Datum då vården senast vill ha svar (endast vid fråga)"
