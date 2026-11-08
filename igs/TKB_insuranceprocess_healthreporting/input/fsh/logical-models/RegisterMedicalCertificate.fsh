// Elementen genereras ur RegisterMedicalCertificateResponder_3.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "3.1"
* lakarutlatande 1..1 Base "lakarutlatandeType" "lakarutlatande"
* lakarutlatande.lakarutlatande-id 1..1 string "Attributet efterfrågas inte i blanketten utan är något som genereras av källsystemet och hämtas därifrån" "Attributet efterfrågas inte i blanketten utan är något som genereras av källsystemet och hämtas därifrån"
* lakarutlatande.typAvUtlatande 1..1 string "typAvUtlatande" "typAvUtlatande"
* lakarutlatande.kommentar 0..1 string "kommentar" "kommentar"
* lakarutlatande.signeringsdatum 1..1 dateTime "Datum och eventuellt klockslag när signering skedde." "Datum och eventuellt klockslag när signering skedde."
* lakarutlatande.skickatDatum 1..1 dateTime "Datum och klockslag när läkarintyget skickades av systemet." "Datum och klockslag när läkarintyget skickades av systemet."
* lakarutlatande.patient 1..1 Base "patientType" "patient"
* lakarutlatande.patient.person-id 1..1 Base "II" "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3"
* lakarutlatande.patient.person-id.root 0..1 string "root" "root (XML-attribut)"
* lakarutlatande.patient.person-id.extension 0..1 string "extension" "extension (XML-attribut)"
* lakarutlatande.patient.person-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* lakarutlatande.patient.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* lakarutlatande.skapadAvHosPersonal 1..1 Base "hosPersonalType" "skapadAvHosPersonal"
* lakarutlatande.skapadAvHosPersonal.personal-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* lakarutlatande.skapadAvHosPersonal.personal-id.root 0..1 string "root" "root (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.personal-id.extension 0..1 string "extension" "extension (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.personal-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* lakarutlatande.skapadAvHosPersonal.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* lakarutlatande.skapadAvHosPersonal.enhet 1..1 Base "enhetType" "enhet"
* lakarutlatande.skapadAvHosPersonal.enhet.enhets-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.root 0..1 string "root" "root (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.extension 0..1 string "extension" "extension (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.enhets-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod 0..1 Base "II" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.root 0..1 string "root" "root (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.extension 0..1 string "extension" "extension (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* lakarutlatande.skapadAvHosPersonal.enhet.postadress 0..1 string "postadress" "postadress"
* lakarutlatande.skapadAvHosPersonal.enhet.postnummer 0..1 string "postnummer" "postnummer"
* lakarutlatande.skapadAvHosPersonal.enhet.postort 0..1 string "postort" "postort"
* lakarutlatande.skapadAvHosPersonal.enhet.telefonnummer 0..1 string "telefonnummer" "telefonnummer"
* lakarutlatande.skapadAvHosPersonal.enhet.epost 0..1 string "epost" "epost"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare 0..1 Base "vardgivareType" "vardgivare"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.root 0..1 string "root" "root (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.extension 0..1 string "extension" "extension (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* lakarutlatande.vardkontakt 0..* Base "vardkontaktType" "vardkontakt"
* lakarutlatande.vardkontakt.vardkontakttyp 1..1 code "Mappas mot fält 4 del 2 på blanketten (de två översta kryssalternativen)" "Mappas mot fält 4 del 2 på blanketten (de två översta kryssalternativen) Tillåtna värden: Min_undersokning_av_patienten, Min_telefonkontakt_med_patienten."
* lakarutlatande.vardkontakt.vardkontaktstid 1..1 date "Mappas mot fält 4 del 2 på blanketten (de två översta alternativen under \"Datum\")" "Mappas mot fält 4 del 2 på blanketten (de två översta alternativen under \"Datum\")"
* lakarutlatande.referens 0..2 Base "referensType" "referens"
* lakarutlatande.referens.referenstyp 1..1 code "Mappas mot fält 4 del 2 på blanketten (de två nedersta kryssalternativen)" "Mappas mot fält 4 del 2 på blanketten (de två nedersta kryssalternativen) Tillåtna värden: Journaluppgifter, Annat."
* lakarutlatande.referens.datum 0..1 date "Mappas mot fält 4 del 2 på blanketten (de två nedersta alternativen under \"Datum\")" "Mappas mot fält 4 del 2 på blanketten (de två nedersta alternativen under \"Datum\")"
* lakarutlatande.aktivitet 0..* Base "aktivitetType" "aktivitet"
* lakarutlatande.aktivitet.aktivitetskod 1..1 code "Mappas mot fält 6, 7, 11 och 12" "Mappas mot fält 6, 7, 11 och 12 Tillåtna värden: Arbetslivsinriktad_rehabilitering_ar_aktuell, Arbetslivsinriktad_rehabilitering_ar_ej_aktuell, Gar_ej_att_bedomma_om_arbetslivsinriktad_rehabilitering_ar_aktuell, Forandrat_ressatt_till_arbetsplatsen_ar_aktuellt, Forandrat_ressatt_till_arbetsplatsen_ar_ej_aktuellt, Planerad_eller_pagaende_behandling_eller_atgard_inom_sjukvarden, Planerad_eller_pagaende_annan_atgard, Kontakt_med_Forsakringskassan_ar_aktuell, Patienten_behover_fa_kontakt_med_foretagshalsovarden, Avstangning_enligt_SmL_pga_smitta, Ovrigt, Patienten_behover_fa_kontakt_med_Arbetsformedlingen."
* lakarutlatande.aktivitet.beskrivning 0..1 string "beskrivning" "Mappas mot fält 6 i de fall aktivitetskod motsvarar någon av de kryss som har möjlighet att definieras tydligare (de med en linje efter sig)."
* lakarutlatande.bedomtTillstand 0..1 Base "bedomtTillstandType" "bedomtTillstand"
* lakarutlatande.bedomtTillstand.beskrivning 0..1 string "Mappas mot fält 3" "Mappas mot fält 3"
* lakarutlatande.medicinsktTillstand 0..1 Base "medicinsktTillstandType" "medicinsktTillstand"
* lakarutlatande.medicinsktTillstand.beskrivning 0..1 string "Mappas mot fält 2" "Mappas mot fält 2"
* lakarutlatande.medicinsktTillstand.tillstandskod 0..1 Base "CD" "Mappas mot fält 2 del 2 (ICD-10-koden)"
* lakarutlatande.medicinsktTillstand.tillstandskod.code 0..1 string "code" "code (XML-attribut)"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystem 0..1 string "codeSystem" "codeSystem (XML-attribut)"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemName 0..1 string "codeSystemName" "codeSystemName (XML-attribut)"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion (XML-attribut)"
* lakarutlatande.funktionstillstand 0..2 Base "funktionstillstandType" "funktionstillstand"
* lakarutlatande.funktionstillstand.beskrivning 0..1 string "beskrivning" "Mappas mot fält 4 och 5. Informationen som återhämtas i fält 4 läggs i beskrivning med typAvFunktionstillstand satt till kroppsfunktion. Informationen som återhämtas i fält 5 läggs i beskrivning i en ny instans av klassen med typAvFunktionstillstand satt till Aktivitet."
* lakarutlatande.funktionstillstand.typAvFunktionstillstand 1..1 code "Mappas mot fält 4 när det är kroppsfunktion och 5 när det är aktivitet" "Mappas mot fält 4 när det är kroppsfunktion och 5 när det är aktivitet Tillåtna värden: Aktivitet, Kroppsfunktion."
* lakarutlatande.funktionstillstand.arbetsformaga 0..1 Base "arbetsformagaType" "arbetsformaga"
* lakarutlatande.funktionstillstand.arbetsformaga.motivering 0..1 string "motivering" "motivering"
* lakarutlatande.funktionstillstand.arbetsformaga.prognosangivelse 0..1 code "prognosangivelse" "prognosangivelse Tillåtna värden: Aterstallas_helt, Aterstallas_delvis, Inte_aterstallas, Det_gar_inte_att_bedomma."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift 0..1 Base "arbetsuppgiftType" "arbetsuppgift"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift 1..1 string "Mappas mot fält 8, de två översta strecken till höger" "Mappas mot fält 8, de två översta strecken till höger"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning 1..4 Base "arbetsformagaNedsattningType" "arbetsformagaNedsattning"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom 1..1 date "Mappas mot fält 8, de fyra nedersta strecken till höger" "Mappas mot fält 8, de fyra nedersta strecken till höger"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom 1..1 date "Mappas mot fält 8, de fyra nedersta strecken till höger" "Mappas mot fält 8, de fyra nedersta strecken till höger"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad 1..1 code "Mappas mot fält 8, de fyra nedersta kryssrutorna" "Mappas mot fält 8, de fyra nedersta kryssrutorna Tillåtna värden: Helt_nedsatt, Nedsatt_med_3/4, Nedsatt_med_1/2, Nedsatt_med_1/4."
* lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning 0..3 Base "sysselsattningType" "sysselsattning"
* lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning 1..1 code "Mappas mot fält 8, de tre översta kryssrutorna" "Mappas mot fält 8, de tre översta kryssrutorna Tillåtna värden: Nuvarande_arbete, Arbetsloshet, Foraldraledighet."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterMedicalCertificateRequestFieldDescriptions

Logical: RegisterMedicalCertificate
Id: registermedicalcertificate
Title: "RegisterMedicalCertificate"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).
"""
Characteristics: #can-be-target

* ^version = "3.1"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterMedicalCertificateFieldDescriptions
