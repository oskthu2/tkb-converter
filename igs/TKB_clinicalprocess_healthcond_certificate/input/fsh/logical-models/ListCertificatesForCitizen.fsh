// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: ListCertificatesForCitizen v4.0
// Genererad: 2026-05-19

Logical: ListCertificatesForCitizan
Id: listcertificatesforcitizan
Title: "ListCertificatesForCitizen"
Description: """
  Logisk modell för tjänstekontraktet ListCertificatesForCitizen
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:4).
  Representerar responsens lista med intyg för en invånare med alla statusar.
"""
Characteristics: #can-be-target

* intygLista 1..1 BackboneElement "Lista av intyg"
* intygLista.intyg 0..* BackboneElement "Ett intyg"
* intygLista.intyg.intygsId 1..1 Identifier "Unikt ID för intyget"
* intygLista.intyg.typAvIntyg 1..1 CodeableConcept "Typ av intyg"
* intygLista.intyg.signeringsTidpunkt 0..1 dateTime "Tidpunkt då intyget signerades"
  """
  Filterfält i request: fromDatum / tomDatum filtrerar på signeringsdatum.
  """
* intygLista.intyg.patient 1..1 BackboneElement "Patientuppgifter"
* intygLista.intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* intygLista.intyg.skapadAv 1..1 BackboneElement "HoS-personal"
* intygLista.intyg.skapadAv.personalId 1..1 Identifier "HSA-id"
* intygLista.intyg.skapadAv.enhet 1..1 BackboneElement "Enhet"
* intygLista.intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* intygLista.intyg.skapadAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* intygLista.intyg.skapadAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
* intygLista.intyg.mottagare 0..* BackboneElement "Intygsmottagare"
* intygLista.intyg.mottagare.part 1..1 CodeableConcept "Part"
* intygLista.intyg.mottagare.part from PartVS (required)
* intygLista.intyg.status 0..* BackboneElement "Intygsstatus (alla statusar inkl. invånarens)"
* intygLista.intyg.status.part 1..1 CodeableConcept "Part som statusen gäller för"
* intygLista.intyg.status.part from PartVS (required)
* intygLista.intyg.status.statuskod 1..1 CodeableConcept "Statuskod"
* intygLista.intyg.status.statuskod from StatuskodVS (required)
* intygLista.intyg.status.tidpunkt 1..1 dateTime "Tidpunkt"

Logical: ListCertificatesForCitizanRequest
Id: listcertificatesforcitizan-request
Title: "ListCertificatesForCitizen — Request"
Description: "Logisk modell för requestparametrar i ListCertificatesForCitizen."
Characteristics: #can-be-target

* personId 1..1 Identifier "Person- eller samordningsnummer för patienten"
* intygTyp 0..* CodeableConcept "Typ av intyg att filtrera på (utelämnas för alla typer)"
* arkiverade 1..1 boolean "Om arkiverade intyg ska inkluderas (true) eller ej (false)"
* fromDatum 0..1 date "Hämta intyg signerade från och med detta datum"
* tomDatum 0..1 date "Hämta intyg signerade till och med detta datum"
* part 1..1 CodeableConcept "Part som skickar begäran"
* part from PartVS (required)
