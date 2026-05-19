// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: RegisterMedicalCertificate v3.1
// Genererad: 2026-05-19

Logical: RegisterMedicalCertificateRequest
Id: registermedicalcertificate-request
Title: "RegisterMedicalCertificate — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet RegisterMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).
  Skickar ett komplett läkarintyg FK7263.
"""
Characteristics: #can-be-target

* lakarutlatandeId 1..1 string "Identitet på läkarintyget (GUID)"
  """
  Unik identifierare för läkarintyget. Är en GUID.
  Fält: lakarutlatande.lakarutlatande-id. Kardinalitet: Obligatorisk.
  """
* typAvUtlatande 1..1 string "Typ av utlåtande"
  """
  Fix text: 'Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring'.
  Fält: lakarutlatande.typAvUtlatande. Kardinalitet: Obligatorisk.
  """
* kommentar 0..1 string "Extra upplysningar i fritext (Fält 13)"
  """
  Extra upplysningar i fritext. Fält 13 på blanketten.
  Villkorligt: obligatoriskt om Prognosangivelse=DET_GAR_INTE_ATT_BEDOMMA eller Referenstyp=Annat.
  Fält: lakarutlatande.kommentar. Kardinalitet: Valfri.
  """
* signeringsdatum 1..1 dateTime "När läkarintyget signerades (Fält 14)"
  """
  Datum och tid för signering. Fält 14 på blanketten.
  Fält: lakarutlatande.signeringsdatum. Kardinalitet: Obligatorisk.
  """
* skickatdatum 1..1 dateTime "När läkarintyget skickades till FK"
  """
  Datum och tid för utskick till Försäkringskassan.
  Fält: lakarutlatande.skickatdatum. Kardinalitet: Obligatorisk.
  """
* patient 1..1 BackboneElement "Patienten"
* patient.personId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
  """
  Patientens personnummer eller samordningsnummer.
  Fält: lakarutlatande.patient.person-id. Kardinalitet: Obligatorisk.
  """
* patient.fullstandigtNamn 1..1 string "Patientens hela namn"
  """
  Fält: lakarutlatande.patient.fullstandigtNamn. Kardinalitet: Obligatorisk.
  """
* skapadAvHosPersonal 1..1 BackboneElement "Vårdpersonal som utfärdar läkarintyget"
* skapadAvHosPersonal.personalId 1..1 Identifier "HSA-Id för Hos-person som utfärdar läkarintyget"
  """
  system = urn:oid:1.2.752.129.2.1.4.1 (HSA-ID).
  Fält: lakarutlatande.skapadAvHosPersonal.personal-id. Kardinalitet: Obligatorisk.
  """
* skapadAvHosPersonal.forskrivarkod 0..1 string "Förskrivarkod för Hos-person"
* skapadAvHosPersonal.fullstandigtNamn 1..1 string "Namn för Hos-person som utfärdar läkarintyget"
* skapadAvHosPersonal.enhet 1..1 BackboneElement "Vårdenhet"
* skapadAvHosPersonal.enhet.enhetsId 1..1 Identifier "HSA-Id för Hos-vårdenhet"
* skapadAvHosPersonal.enhet.arbetsplatskod 1..1 string "Arbetsplatskoden för vårdenheten (Fält 17)"
* skapadAvHosPersonal.enhet.enhetsNamn 1..1 string "Namn på Hos-vårdenhet"
* skapadAvHosPersonal.enhet.postadress 1..1 string "Postadress för Hos-vårdenhet"
* skapadAvHosPersonal.enhet.postnummer 1..1 string "Postnummer för Hos-vårdenhet"
* skapadAvHosPersonal.enhet.postort 1..1 string "Postort för Hos-vårdenhet"
* skapadAvHosPersonal.enhet.telefonnummer 1..1 string "Telefonnummer till Hos-vårdenhet"
* skapadAvHosPersonal.enhet.epost 0..1 string "Epost adress för Hos-vårdenhet"
* skapadAvHosPersonal.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* skapadAvHosPersonal.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-Id för Hos-vårdgivare"
* skapadAvHosPersonal.enhet.vardgivare.vardgivareNamn 1..1 string "Namn på Hos-vårdgivare"
* vardkontakt 0..2 BackboneElement "Vårdkontakt"
  """
  Typ av vårdkontakt. Fält 4, de 2 översta kryssrutorna.
  Valfritt om fält 1 (Avstängning SmL) är valt.
  """
* vardkontakt.vardkontakttyp 0..1 CodeableConcept "Typ av vårdkontakt"
* vardkontakt.vardkontakttyp from VardkontakttypVS (required)
* vardkontakt.vardkontaktstid 0..1 date "Datum då vårdkontakten skedde"
* referens 0..2 BackboneElement "Referens"
  """
  Typ av referens. Fält 4, de 2 nedre kryssrutorna.
  """
* referens.referenstyp 0..1 CodeableConcept "Typ av referens"
* referens.referenstyp from ReferenstypVS (required)
* referens.datum 0..1 date "Datum för ovanstående referens"
* aktivitet 0..* BackboneElement "Aktiviteter"
  """
  Aktivitetskoder som representerar olika val i blanketten.
  Fält 1, Fält 6a, Fält 6b, Fält 7, Fält 11, Fält 12.
  """
* aktivitet.aktivitetskod 0..1 CodeableConcept "Aktivitetskod"
* aktivitet.aktivitetskod from AktivitetskodVS (required)
* aktivitet.beskrivning 0..1 string "Fritext kopplad till aktivitetskoden"
* bedomtTillstand 0..1 BackboneElement "Bedömt tillstånd"
* bedomtTillstand.beskrivning 1..1 string "Aktuellt sjukdomsförlopp (Fält 3)"
* medicinsktTillstand 0..1 BackboneElement "Medicinskt tillstånd"
  """
  Valfritt om fält 1 är valt, annars obligatoriskt.
  """
* medicinsktTillstand.beskrivning 0..1 string "Diagnosinformation i fritext (Fält 2)"
* medicinsktTillstand.tillstandskod 0..1 CodeableConcept "Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2)"
  """
  ASSUME: Diagnoskodverket är ICD-10-SE eller KSH97P. Canonical URL ej verifierad.
  Se QUESTIONS.md ASSUME-HR-001.
  """
* funktionstillstand 0..2 BackboneElement "Funktionstillstånd"
  """
  Funktionstillstånd. Fält 4 (funktionsnedsättning) och Fält 5 (aktivitetsbegränsning).
  Valfritt om fält 1 är valt, annars obligatoriskt.
  """
* funktionstillstand.beskrivning 0..1 string "Beskrivning av funktionsnedsättning eller aktivitetsbegränsning"
* funktionstillstand.typAvFunktionstillstand 1..1 string "Typ av funktionstillstånd (Kroppsfunktion eller Aktivitet)"
* funktionstillstand.arbetsformaga 0..1 BackboneElement "Arbetsförmåga (enbart då typAvFunktionstillstand=Aktivitet)"
* funktionstillstand.arbetsformaga.motivering 0..1 string "Arbetsförmågebedömning (Fält 9)"
* funktionstillstand.arbetsformaga.prognosangivelse 0..1 string "Prognosangivelse (Fält 10)"
  """
  Värden: Prognosangivelse.ATERSTALLAS_HELT, ATERSTALLAS_DELVIS, INTE_ATERSTALLAS, DET_GAR_INTE_ATT_BEDOMMA.
  Om DET_GAR_INTE_ATT_BEDOMMA skall Fält 13 fyllas i.
  """
* funktionstillstand.arbetsformaga.arbetsuppgift 0..1 BackboneElement "Arbetsuppgift"
* funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift 1..1 string "Typ av arbetsuppgift i fritext (Fält 8a)"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning 0..4 BackboneElement "Arbetsförmågenedsättning (Fält 8b)"
  """
  Minst 1 av 4 kryssrutor måste alltid väljas.
  """
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom 1..1 date "Från när arbetsförmågan är nedsatt"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom 1..1 date "Till när arbetsförmågan är nedsatt"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad 1..1 CodeableConcept "Grad av arbetsförmågenedsättning"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad from NedsattningsgradVS (required)
* funktionstillstand.arbetsformaga.sysselsattning 0..3 BackboneElement "Sysselsättning (Fält 8a alla kryssrutor)"
* funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning 1..1 string "Patientens typ av sysselsättning"
  """
  Värden: TypAvSysselsattning.FORVARVSARBETE, ARBETSLOSHET, FORALDRALEDIGHET.
  Om FORVARVSARBETE skall arbetsuppgifter anges.
  """


Logical: RegisterMedicalCertificate
Id: registermedicalcertificate
Title: "RegisterMedicalCertificate"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).
"""
Characteristics: #can-be-target

* result 0..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)"
* result.errorText 0..1 string "Beskrivande text för felet"
