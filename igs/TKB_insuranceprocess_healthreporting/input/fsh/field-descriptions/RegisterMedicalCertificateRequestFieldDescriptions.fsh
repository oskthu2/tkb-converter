// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicalCertificateRequestFieldDescriptions
* lakarutlatande ^comment = "TKB-fält: `lakarutlatande` (kardinalitet 1..1)."
* lakarutlatande.lakarutlatande-id ^definition = "Identitet på läkarintyget. Är en GUID."
* lakarutlatande.lakarutlatande-id ^comment = "TKB-fält: `lakarutlatande.lakarutlatande-id` (`string`, kardinalitet 1..1)."
* lakarutlatande.typAvUtlatande ^definition = "Fix text enligt: Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring"
* lakarutlatande.typAvUtlatande ^comment = "TKB-fält: `lakarutlatande.typAvUtlatande` (`string`, kardinalitet 1..1)."
* lakarutlatande.kommentar ^definition = "Extra upplysningar i fritext (Fält 13)"
* lakarutlatande.kommentar ^comment = "TKB-fält: `lakarutlatande.kommentar` (`string`, kardinalitet 0..1*)."
* lakarutlatande.signeringsdatum ^definition = "När läkarintyget signerades (Fält 14)"
* lakarutlatande.signeringsdatum ^comment = "TKB-fält: `lakarutlatande.signeringsdatum` (`datetime`, kardinalitet 1..1)."
* lakarutlatande.skickatDatum ^definition = "När läkarintyget skickades till FK"
* lakarutlatande.skickatDatum ^comment = "TKB-fält: `lakarutlatande.skickatdatum` (`datetime`, kardinalitet 1..1)."
* lakarutlatande.patient ^definition = "Patienten"
* lakarutlatande.patient ^comment = "TKB-fält: `lakarutlatande.patient` (kardinalitet 1..1)."
* lakarutlatande.patient.person-id ^definition = "Patientens personnummer eller samordningsnummer"
* lakarutlatande.patient.person-id ^comment = "TKB-fält: `..patient.person-id` (`Id`, kardinalitet 1..1)."
* lakarutlatande.patient.fullstandigtNamn ^definition = "Patientens hela namn"
* lakarutlatande.patient.fullstandigtNamn ^comment = "TKB-fält: `..patient.fullstandigtNamn` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal ^definition = "Vårdpersonal"
* lakarutlatande.skapadAvHosPersonal ^comment = "TKB-fält: `lakarutlatande.skapadAvHosPersonal` (kardinalitet 1..1)."
* lakarutlatande.skapadAvHosPersonal.personal-id ^definition = "Hsa-Id för Hos-person som utfärdar läkarintyget."
* lakarutlatande.skapadAvHosPersonal.personal-id ^comment = "TKB-fält: `..skapadAvHosPersonal.personal-id` (`hsaid`, kardinalitet 1..1)."
* lakarutlatande.skapadAvHosPersonal.fullstandigtNamn ^definition = "Namn för Hos-person som utfärdar läkarintyget"
* lakarutlatande.skapadAvHosPersonal.fullstandigtNamn ^comment = "TKB-fält: `..skapadAvHosPersonal.fullstandigtNamn` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal.forskrivarkod ^definition = "Förskrivarkod för Hos-person"
* lakarutlatande.skapadAvHosPersonal.forskrivarkod ^comment = "TKB-fält: `..skapadAvHosPersonal.forskrivarkod` (`string`, kardinalitet 0..1)."
* lakarutlatande.skapadAvHosPersonal.enhet ^definition = "Vårdenhet"
* lakarutlatande.skapadAvHosPersonal.enhet ^comment = "TKB-fält: `..skapadAvHosPersonal.enhet` (kardinalitet 1..1)."
* lakarutlatande.skapadAvHosPersonal.enhet.enhets-id ^definition = "Hsa-Id för Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.enhets-id ^comment = "TKB-fält: `..enhet.enhets-id` (`hsaId`, kardinalitet 1..1)."
* lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod ^definition = "Arbetsplatskoden för vårdenheten (Fält 17)"
* lakarutlatande.skapadAvHosPersonal.enhet.arbetsplatskod ^comment = "TKB-fält: `..enhet.arbetsplatskod` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* lakarutlatande.skapadAvHosPersonal.enhet.enhetsnamn ^definition = "Namn på Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.enhetsnamn ^comment = "TKB-fält: `..enhet.enhets-namn` (`string`, kardinalitet 1..1)."
* lakarutlatande.skapadAvHosPersonal.enhet.postadress ^definition = "Postadress för Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.postadress ^comment = "TKB-fält: `..enhet.postadress` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal.enhet.postnummer ^definition = "Postnummer för Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.postnummer ^comment = "TKB-fält: `..enhet.postnummer` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal.enhet.postort ^definition = "Postort för Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.postort ^comment = "TKB-fält: `..enhet.postort` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal.enhet.telefonnummer ^definition = "Telefonnummer till Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.telefonnummer ^comment = "TKB-fält: `..enhet.telefonnummer` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal.enhet.epost ^definition = "Epost adress för Hos-vårdenhet där läkarintyget utfärdas"
* lakarutlatande.skapadAvHosPersonal.enhet.epost ^comment = "TKB-fält: `..enhet.epost` (`string`, kardinalitet 0..1)."
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare ^definition = "Vårdgivare"
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare ^comment = "TKB-fält: `..enhet.vardgivare` (kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id ^definition = "Hsa-Id för Hos-vårdgivare där läkarintyget utfärdas."
* lakarutlatande.skapadAvHosPersonal.enhet.vardgivare.vardgivare-id ^comment = "TKB-fält: `..vardgivare.vardgivare-id` (`hsaId`, kardinalitet 1..1)."
* lakarutlatande.vardkontakt ^definition = "Vårdkontakt"
* lakarutlatande.vardkontakt ^comment = "TKB-fält: `lakarutlatande.vardkontakt` (kardinalitet 0..2).

Obs: modellen anger 0..* där TKB:n anger 0..2."
* lakarutlatande.vardkontakt.vardkontakttyp ^definition = "Typ av vårdkontakt (min undersökning av patienten eller min telefonkontakt med patienten)

(Fält 4, de 2 översta kryssrutorna)"
* lakarutlatande.vardkontakt.vardkontakttyp ^comment = "TKB-fält: `..vardkontakt.vardkontakttyp` (`string`, kardinalitet 0..1*).

**Modellanteckning:** Mappas mot fält 4 del 2 på blanketten (de två översta kryssalternativen) Tillåtna värden: Min_undersokning_av_patienten, Min_telefonkontakt_med_patienten."
* lakarutlatande.vardkontakt.vardkontaktstid ^definition = "Datum då vårdkontakten skedde"
* lakarutlatande.vardkontakt.vardkontaktstid ^comment = "TKB-fält: `..vardkontakt.vardkontaktstid` (`datum`, kardinalitet 0..1*)."
* lakarutlatande.referens ^definition = "Referens"
* lakarutlatande.referens ^comment = "TKB-fält: `lakarutlatande.referens` (kardinalitet 0..2)."
* lakarutlatande.referens.referenstyp ^definition = "Typ av referens (journaluppgifter eller annat)

(Fält 4, de 2 nedre kryssrutorna)"
* lakarutlatande.referens.referenstyp ^comment = "TKB-fält: `..referens.referenstyp` (`string`, kardinalitet 0..1*)."
* lakarutlatande.referens.datum ^definition = "Datum för ovanstående referens"
* lakarutlatande.referens.datum ^comment = "TKB-fält: `..referens.datum` (`datum`, kardinalitet 0..1*)."
* lakarutlatande.aktivitet ^definition = "Aktiviteter"
* lakarutlatande.aktivitet ^comment = "TKB-fält: `lakarutlatande.aktivitet` (kardinalitet 0..n*)."
* lakarutlatande.aktivitet.aktivitetskod ^definition = "Aktivitetskoder som representerar olika val i blanketten.

(Fält 1, Fält 6a alla kryssrutor, Fält 6b alla kryssrutor, Fält 7 alla kryssrutor, Fält 11 alla kryssrutor, Fält 12)"
* lakarutlatande.aktivitet.aktivitetskod ^comment = "TKB-fält: `..aktivitet.aktivitetskod` (`string`, kardinalitet 0..1*).

**Modellanteckning:** Mappas mot fält 6, 7, 11 och 12 Tillåtna värden: Arbetslivsinriktad_rehabilitering_ar_aktuell, Arbetslivsinriktad_rehabilitering_ar_ej_aktuell, Gar_ej_att_bedomma_om_arbetslivsinriktad_rehabilitering_ar_aktuell, Forandrat_ressatt_till_arbetsplatsen_ar_aktuellt, Forandrat_ressatt_till_arbetsplatsen_ar_ej_aktuellt, Planerad_eller_pagaende_behandling_eller_atgard_inom_sjukvarden, Planerad_eller_pagaende_annan_atgard, Kontakt_med_Forsakringskassan_ar_aktuell, Patienten_behover_fa_kontakt_med_foretagshalsovarden, Avstangning_enligt_SmL_pga_smitta, Ovrigt, Patienten_behover_fa_kontakt_med_Arbetsformedlingen."
* lakarutlatande.aktivitet.beskrivning ^definition = "En eventuell fritext som hänger ihop med aktivitetskoden."
* lakarutlatande.aktivitet.beskrivning ^comment = "TKB-fält: `..aktivitet.beskrivning` (kardinalitet 0..1*).

**Modellanteckning:** Mappas mot fält 6 i de fall aktivitetskod motsvarar någon av de kryss som har möjlighet att definieras tydligare (de med en linje efter sig)."
* lakarutlatande.bedomtTillstand ^definition = "Bedömt tillstånd"
* lakarutlatande.bedomtTillstand ^comment = "TKB-fält: `lakarutlatande.bedomtTillstand` (kardinalitet 0..1)."
* lakarutlatande.bedomtTillstand.beskrivning ^definition = "Aktuellt sjukdomsförlopp (Fält 3)"
* lakarutlatande.bedomtTillstand.beskrivning ^comment = "TKB-fält: `..bedomtTillstand.beskrivning` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* lakarutlatande.medicinsktTillstand ^definition = "Medicinskt tillstånd"
* lakarutlatande.medicinsktTillstand ^comment = "TKB-fält: `lakarutlatande.medicinsktTillstand` (kardinalitet 0..1*)."
* lakarutlatande.medicinsktTillstand.beskrivning ^definition = "Diagnosinformation i fritext (Fält 2)"
* lakarutlatande.medicinsktTillstand.beskrivning ^comment = "TKB-fält: `..medicinsktTillstand.beskrivning` (`string`, kardinalitet 0..1)."
* lakarutlatande.medicinsktTillstand.tillstandskod ^definition = "Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2)"
* lakarutlatande.medicinsktTillstand.tillstandskod ^comment = "TKB-fält: `..medicinsktTillstand.tillstandskod` (kardinalitet 0..1*).

**Modellanteckning:** Mappas mot fält 2 del 2 (ICD-10-koden)"
* lakarutlatande.medicinsktTillstand.tillstandskod.code ^definition = "kod"
* lakarutlatande.medicinsktTillstand.tillstandskod.code ^comment = "TKB-fält: `..tillstandskod.code` (`string`, kardinalitet 0..1).

**Modellanteckning:** code (XML-attribut)"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystem ^definition = "Kodsystemets identifierare"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystem ^comment = "TKB-fält: `..tillstandskod.codeSystem` (`Uid`, kardinalitet 0..1).

**Modellanteckning:** codeSystem (XML-attribut)"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemName ^definition = "Kodsystemets namn"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemName ^comment = "TKB-fält: `..tillstandskod.codeSystemName` (`string`, kardinalitet 0..1).

**Modellanteckning:** codeSystemName (XML-attribut)"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemVersion ^definition = "Version av kodsystemet"
* lakarutlatande.medicinsktTillstand.tillstandskod.codeSystemVersion ^comment = "TKB-fält: `..tillstandskod.codeSystemVersion` (`string`, kardinalitet 0..1).

**Modellanteckning:** codeSystemVersion (XML-attribut)"
* lakarutlatande.funktionstillstand ^definition = "Funktionstillstånd"
* lakarutlatande.funktionstillstand ^comment = "TKB-fält: `lakarutlatande.funktionstillstand` (kardinalitet 0..2*)."
* lakarutlatande.funktionstillstand.beskrivning ^definition = "Om typAvFunktionstillstand=Kroppsfunktion avses funktionsnedsättning (Fält 4)

Om typAvFunktionstillstand=Aktivitet avses aktivitetsbegränsning (Fält 5)"
* lakarutlatande.funktionstillstand.beskrivning ^comment = "TKB-fält: `..funktionstillstand.beskrivning` (`string`, kardinalitet 0..1*).

**Modellanteckning:** Mappas mot fält 4 och 5. Informationen som återhämtas i fält 4 läggs i beskrivning med typAvFunktionstillstand satt till kroppsfunktion. Informationen som återhämtas i fält 5 läggs i beskrivning i en ny instans av klassen med typAvFunktionstillstand satt till Aktivitet."
* lakarutlatande.funktionstillstand.typAvFunktionstillstand ^definition = "Styr olika typer enligt ovan"
* lakarutlatande.funktionstillstand.typAvFunktionstillstand ^comment = "TKB-fält: `..funktionstillstand.typAvFunktionstillstand` (`string`, kardinalitet 1..1)."
* lakarutlatande.funktionstillstand.arbetsformaga ^definition = "Arbetsförmåga, enbart då typAvFunktionstillstand=Aktivitet"
* lakarutlatande.funktionstillstand.arbetsformaga ^comment = "TKB-fält: `..funktionstillstand.arbetsformaga` (kardinalitet 0..1)."
* lakarutlatande.funktionstillstand.arbetsformaga.motivering ^definition = "Arbetsförmågebedömning (Fält 9)"
* lakarutlatande.funktionstillstand.arbetsformaga.motivering ^comment = "TKB-fält: `..arbetsformaga.motivering` (`string`, kardinalitet 0..1)."
* lakarutlatande.funktionstillstand.arbetsformaga.prognosangivelse ^definition = "Prognosangivelse (Fält 10 alla kryssrutor)"
* lakarutlatande.funktionstillstand.arbetsformaga.prognosangivelse ^comment = "TKB-fält: `..arbetsformaga.prognosangivelse` (`string`, kardinalitet 0..1*).

**Modellanteckning:** prognosangivelse Tillåtna värden: Aterstallas_helt, Aterstallas_delvis, Inte_aterstallas, Det_gar_inte_att_bedomma."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift ^definition = "Arbetsuppgift"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift ^comment = "TKB-fält: `..arbetsformaga.arbetsuppgift` (kardinalitet 0..1*)."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift ^definition = "Anger patientens typ av arbetsuppgift i fritext (Fält 8a fritexten kopplad till översta kryssrutan)"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift ^comment = "TKB-fält: `..arbetsuppgift.typAvArbetsuppgift` (`string`, kardinalitet 1..1)."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning ^comment = "TKB-fält: `..arbetsformaga.arbetsformagaNedsattning` (kardinalitet 0..4*)."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom ^definition = "Från när arbetsförmågan är nedsatt (Fält 8b)"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom ^comment = "TKB-fält: `..arbetsformagaNedsattning.varaktighetFrom` (`datum`, kardinalitet 1..1)."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom ^definition = "Till när arbetsförmågan är nedsatt (Fält 8b)"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom ^comment = "TKB-fält: `..arbetsformagaNedsattning.varaktighetTom` (`datum`, kardinalitet 1..1)."
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad ^definition = "Hur mycket arbetsförmågan är nedsatt (Fält 8b)"
* lakarutlatande.funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad ^comment = "TKB-fält: `..arbetsformagaNedsattning.nedsattningsgrad` (`string`, kardinalitet 1..1).

**Modellanteckning:** Mappas mot fält 8, de fyra nedersta kryssrutorna Tillåtna värden: Helt_nedsatt, Nedsatt_med_3/4, Nedsatt_med_1/2, Nedsatt_med_1/4."
* lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning ^definition = "Sysselsättning(Fält 8a alla kryssrutor)"
* lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning ^comment = "TKB-fält: `..arbetsformaga.sysselsattning` (kardinalitet 0..3*)."
* lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning ^definition = "Patientens typ av sysselsättning"
* lakarutlatande.funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning ^comment = "TKB-fält: `..sysselsattning.typAvSysselsattning` (`string`, kardinalitet 1..1).

**Modellanteckning:** Mappas mot fält 8, de tre översta kryssrutorna Tillåtna värden: Nuvarande_arbete, Arbetsloshet, Foraldraledighet."
