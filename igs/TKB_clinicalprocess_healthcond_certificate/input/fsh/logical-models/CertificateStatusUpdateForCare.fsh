// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: CertificateStatusUpdateForCare v3.1 (TKB) / v3.2 (WSDL)
// Genererad: 2026-05-19

Logical: CertificateStatusUpdateForCare
Id: certificatestatusupdateforcare
Title: "CertificateStatusUpdateForCare"
Description: """
  Logisk modell för tjänstekontraktet CertificateStatusUpdateForCare
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:3).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: CertificateStatusUpdateForCareRequest
Id: certificatestatusupdateforcare-request
Title: "CertificateStatusUpdateForCare — Request"
Description: "Logisk modell för requestparametrar i CertificateStatusUpdateForCare."
Characteristics: #can-be-target

* intyg 1..1 BackboneElement "Intygsutkast eller signerat intyg"
* intyg.intygsId 1..1 Identifier "Unikt ID för intyget"
* intyg.typAvIntyg 1..1 CodeableConcept "Typ av intyg"
* intyg.signeringsTidpunkt 0..1 dateTime "Tidpunkt då intyget signerades (saknas för utkast)"
* intyg.patient 1..1 BackboneElement "Patientuppgifter"
* intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* intyg.skapadAv 1..1 BackboneElement "HoS-personal"
* intyg.skapadAv.personalId 1..1 Identifier "HSA-id"
* intyg.skapadAv.enhet 1..1 BackboneElement "Enhet"
* intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* intyg.skapadAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* intyg.skapadAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
* intyg.status 0..* BackboneElement "Intygsstatus"
* intyg.status.part 1..1 CodeableConcept "Part"
* intyg.status.part from PartVS (required)
* intyg.status.statuskod 1..1 CodeableConcept "Statuskod"
* intyg.status.statuskod from StatuskodVS (required)
* intyg.status.tidpunkt 1..1 dateTime "Tidpunkt"
* handelse 1..1 BackboneElement "Information om händelsen som ger upphov till uppdateringen"
* handelse.handelsekod 1..1 CodeableConcept "Händelsetyp"
* handelse.handelsekod from HandelskodVS (required)
* handelse.tidpunkt 1..1 dateTime "Tidpunkt då händelsen inträffade"
* handelse.amne 0..1 CodeableConcept "Ämne (gäller vid ärendekommunikationshändelser)"
* handelse.amne from AmneskodVS (required)
* handelse.sistaDatumForSvar 0..1 date "Sista datum för svar vid kompletteringsbegäran"
* skickadeFragor 1..1 BackboneElement "Frågor rörande intyget skickade från vården"
* skickadeFragor.totalt 1..1 integer "Totalt antal skickade frågor"
* skickadeFragor.ejBesvarade 1..1 integer "Antal obesvarade frågor"
* skickadeFragor.besvarade 1..1 integer "Antal besvarade frågor"
* skickadeFragor.hanterade 1..1 integer "Antal hanterade frågor"
* mottagnaFragor 1..1 BackboneElement "Frågor rörande intyget skickade från intygsmottagare"
* mottagnaFragor.totalt 1..1 integer "Totalt antal mottagna frågor"
* mottagnaFragor.ejBesvarade 1..1 integer "Antal obesvarade mottagna frågor"
* mottagnaFragor.besvarade 1..1 integer "Antal besvarade mottagna frågor"
* mottagnaFragor.hanterade 1..1 integer "Antal hanterade mottagna frågor"
* ref 0..1 string "Referens till entitet i integrerande vårdsystem (t.ex. vårdkontakt-id)"
* hanteratAv 0..1 Identifier "HSA-id för HoS-personal som hanterar intyget"
