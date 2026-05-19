// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: ListCertificatesForCareWithQA v3.2 (TKB) / v3.3 (WSDL)
// Genererad: 2026-05-19

Logical: ListCertificatesForCareWithQA
Id: listcertificatesforcarewithqa
Title: "ListCertificatesForCareWithQA"
Description: """
  Logisk modell för tjänstekontraktet ListCertificatesForCareWithQA
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3).
  Representerar responsens lista med intyg inkl. händelser och ärendekommunikation.
  Inkluderar både signerade, makulerade och intygsutkast.
"""
Characteristics: #can-be-target

* list 0..1 BackboneElement "Lista med intyg (null om inga hittades)"
* list.item 0..* BackboneElement "Listobjekt som håller ihop intyg, händelser och ärenden"
* list.item.intyg 1..1 BackboneElement "Intyget"
* list.item.intyg.intygsId 1..1 Identifier "Unikt ID för intyget"
* list.item.intyg.typAvIntyg 1..1 CodeableConcept "Typ av intyg"
* list.item.intyg.signeringsTidpunkt 0..1 dateTime "Tidpunkt för signering (saknas för utkast)"
* list.item.intyg.patient 1..1 BackboneElement "Patientuppgifter"
* list.item.intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* list.item.intyg.skapadAv 1..1 BackboneElement "HoS-personal"
* list.item.intyg.skapadAv.personalId 1..1 Identifier "HSA-id"
* list.item.intyg.skapadAv.enhet 1..1 BackboneElement "Enhet"
* list.item.intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* list.item.intyg.skapadAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* list.item.intyg.skapadAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
* list.item.handelser 1..1 BackboneElement "Lista med händelser för intyget"
* list.item.handelser.handelse 0..* BackboneElement "En händelse"
* list.item.handelser.handelse.handelsekod 1..1 CodeableConcept "Händelsetyp"
* list.item.handelser.handelse.handelsekod from HandelskodVS (required)
* list.item.handelser.handelse.tidpunkt 1..1 dateTime "Tidpunkt"
* list.item.skickadeFragor 1..1 BackboneElement "Frågor skickade från vården"
* list.item.skickadeFragor.totalt 1..1 integer "Totalt antal"
* list.item.skickadeFragor.ejBesvarade 1..1 integer "Antal obesvarade"
* list.item.skickadeFragor.besvarade 1..1 integer "Antal besvarade"
* list.item.skickadeFragor.hanterade 1..1 integer "Antal hanterade"
* list.item.mottagnaFragor 1..1 BackboneElement "Frågor mottagna från intygsmottagare"
* list.item.mottagnaFragor.totalt 1..1 integer "Totalt antal"
* list.item.mottagnaFragor.ejBesvarade 1..1 integer "Antal obesvarade"
* list.item.mottagnaFragor.besvarade 1..1 integer "Antal besvarade"
* list.item.mottagnaFragor.hanterade 1..1 integer "Antal hanterade"
* list.item.ref 0..1 string "Referens till entitet i integrerande vårdsystem"

Logical: ListCertificatesForCareWithQARequest
Id: listcertificatesforcarewithqa-request
Title: "ListCertificatesForCareWithQA — Request"
Description: "Logisk modell för requestparametrar i ListCertificatesForCareWithQA."
Characteristics: #can-be-target

* personId 1..1 Identifier "Person- eller samordningsnummer för patienten"
* enhetsId 0..* Identifier "HSA-id för enheten/enheterna (exklusivt med vardgivareId)"
  """
  Ska ej anges tillsammans med vardgivareId.
  """
* vardgivareId 0..1 Identifier "HSA-id för vårdgivaren (exklusivt med enhetsId)"
  """
  Ska ej anges tillsammans med enhetsId.
  """
* fromTidpunkt 0..1 dateTime "Hämta händelser från och med denna tidpunkt"
* tomTidpunkt 0..1 dateTime "Hämta händelser fram till och med denna tidpunkt"
