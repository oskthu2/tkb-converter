// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: GetCertificate v2.1
// Genererad: 2026-05-19

Logical: GetCertificate
Id: getcertificate
Title: "GetCertificate"
Description: """
  Logisk modell för tjänstekontraktet GetCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2).
  Representerar responsens informationsstruktur — ett intyg med tillhörande metadata.
"""
Characteristics: #can-be-target

* intyg 1..1 BackboneElement "Intyg med tillhörande metadata"
  """
  Ett intyg komplett med statusar, relationer och ärendekommunikation.
  Kardinalitet: Obligatorisk.
  """
* intyg.intygsId 1..1 Identifier "Unikt ID för intyget"
  """
  Unikt identifierare för intyget. Ska vara stabilt och globalt unikt.
  """
* intyg.typAvIntyg 1..1 CodeableConcept "Typ av intyg"
  """
  Kodat värde som anger intygstypen, t.ex. FK7263, LISJP, LUSE.
  """
* intyg.signeringsTidpunkt 0..1 dateTime "Tidpunkt då intyget signerades"
  """
  Tidpunkt då intyget underskrevs av behörig hälso- och sjukvårdspersonal.
  Obligatorisk för signerade intyg, saknas för intygsutkast.
  """
* intyg.skickatTidpunkt 0..1 dateTime "Tidpunkt då intyget skickades"
  """
  Tidpunkt då intyget skickades till aktuell intygsmottagare.
  """
* intyg.patient 1..1 BackboneElement "Patientuppgifter"
* intyg.patient.personId 1..1 Identifier "Person- eller samordningsnummer"
* intyg.patient.fornamn 0..1 string "Patientens förnamn"
* intyg.patient.mellannamn 0..1 string "Patientens mellannamn"
* intyg.patient.efternamn 0..1 string "Patientens efternamn"
* intyg.patient.postadress 0..1 string "Patientens postadress"
* intyg.patient.postnummer 0..1 string "Patientens postnummer"
* intyg.patient.postort 0..1 string "Patientens postort"
* intyg.skapadAv 1..1 BackboneElement "HoS-personal som skapade intyget"
* intyg.skapadAv.personalId 1..1 Identifier "HSA-id för hälso- och sjukvårdspersonalen"
* intyg.skapadAv.fullstandigtNamn 0..1 string "Personalens fullständiga namn"
* intyg.skapadAv.enhet 1..1 BackboneElement "Enhet som intyget utfärdades på"
* intyg.skapadAv.enhet.enhetsId 1..1 Identifier "HSA-id för enheten"
* intyg.skapadAv.enhet.enhetsnamn 0..1 string "Enhetens namn"
* intyg.skapadAv.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* intyg.skapadAv.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-id för vårdgivaren"
* intyg.skapadAv.enhet.vardgivare.vardgivarenamn 0..1 string "Vårdgivarens namn"
* intyg.mottagare 0..* BackboneElement "Intygsmottagare"
* intyg.mottagare.part 1..1 CodeableConcept "Kodat värde för intygsmottagarens part"
* intyg.mottagare.part from PartVS (required)
* intyg.status 0..* BackboneElement "Intygsstatus per part"
* intyg.status.part 1..1 CodeableConcept "Part som statusen gäller för"
* intyg.status.part from PartVS (required)
* intyg.status.statuskod 1..1 CodeableConcept "Statuskod"
* intyg.status.statuskod from StatuskodVS (required)
* intyg.status.tidpunkt 1..1 dateTime "Tidpunkt då statusen sattes"
* intyg.relation 0..* BackboneElement "Relation till andra intyg"
* intyg.relation.typ 1..1 CodeableConcept "Typ av relation"
* intyg.relation.intygsId 1..1 Identifier "Intygs-ID för relaterat intyg"

Logical: GetCertificateRequest
Id: getcertificate-request
Title: "GetCertificate — Request"
Description: "Logisk modell för requestparametrar i GetCertificate."
Characteristics: #can-be-target

* intygsId 1..1 Identifier "Unikt ID för det intyg som ska hämtas"
  """
  Unikt identifierare för det efterfrågade intyget.
  Kardinalitet: Obligatorisk.
  """
* part 1..1 CodeableConcept "Part som skickar begäran"
  """
  Kodat värde som anger vilken part i intygshanteringsprocessen som skickar begäran.
  Styr vilka statusposter som returneras.
  """
* part from PartVS (required)
