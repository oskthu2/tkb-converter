// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: ListCertificatesForCare v3.1
// Genererad: 2026-05-19

Logical: ListCertificatesForCare
Id: listcertificatesforcare
Title: "ListCertificatesForCare"
Description: """
  Logisk modell för tjänstekontraktet ListCertificatesForCare
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3).
  Representerar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare.
"""
Characteristics: #can-be-target

* intygsLista 1..1 BackboneElement "Lista av intyg"
* intygsLista.intyg 0..* BackboneElement "Ett intyg i listan"
* intygsLista.intyg.intygsId 1..1 Identifier "Unikt ID för intyget"
* intygsLista.intyg.typAvIntyg 1..1 CodeableConcept "Typ av intyg"
* intygsLista.intyg.signeringsTidpunkt 0..1 dateTime "Tidpunkt då intyget signerades"
* intygsLista.intyg.skickatTidpunkt 0..1 dateTime "Tidpunkt då intyget skickades"
* intygsLista.intyg.patient 1..1 BackboneElement "Patientuppgifter"
* intygsLista.intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* intygsLista.intyg.skapadAv 1..1 BackboneElement "HoS-personal som skapade intyget"
* intygsLista.intyg.skapadAv.personalId 1..1 Identifier "HSA-id för hälso- och sjukvårdspersonalen"
* intygsLista.intyg.skapadAv.enhet 1..1 BackboneElement "Enhet"
* intygsLista.intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* intygsLista.intyg.skapadAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
* intygsLista.intyg.mottagare 0..* BackboneElement "Intygsmottagare"
* intygsLista.intyg.mottagare.part 1..1 CodeableConcept "Part"
* intygsLista.intyg.mottagare.part from PartVS (required)
* intygsLista.intyg.status 0..* BackboneElement "Intygsstatus"
* intygsLista.intyg.status.part 1..1 CodeableConcept "Part som statusen gäller för"
* intygsLista.intyg.status.part from PartVS (required)
* intygsLista.intyg.status.statuskod 1..1 CodeableConcept "Statuskod"
* intygsLista.intyg.status.statuskod from StatuskodVS (required)
* intygsLista.intyg.status.tidpunkt 1..1 dateTime "Tidpunkt då statusen sattes"

Logical: ListCertificatesForCareRequest
Id: listcertificatesforcare-request
Title: "ListCertificatesForCare — Request"
Description: "Logisk modell för requestparametrar i ListCertificatesForCare."
Characteristics: #can-be-target

* personId 1..1 Identifier "Person- eller samordningsnummer för patienten"
* vardgivareId 0..1 Identifier "HSA-id för vårdgivaren (exklusivt med enhetsId)"
  """
  HSA-id för den vårdgivare vars intyg ska sökas. Kan ej kombineras med enhetsId.
  Villkorlig kardinalitet: antingen vardgivareId eller enhetsId ska anges.
  """
* enhetsId 0..* Identifier "HSA-id för enhet/enheter (exklusivt med vardgivareId)"
  """
  HSA-id för en eller flera enheter vars intyg ska sökas. Kan ej kombineras med vardgivareId.
  Villkorlig kardinalitet: antingen enhetsId eller vardgivareId ska anges.
  """
