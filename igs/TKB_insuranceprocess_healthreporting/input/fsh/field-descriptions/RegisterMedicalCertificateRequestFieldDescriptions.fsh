// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicalCertificateRequestFieldDescriptions
* lakarutlatandeId ^definition = "Identitet på läkarintyget. Är en GUID."
* lakarutlatandeId ^comment = "TKB-fält: `lakarutlatande.lakarutlatande-id` (`string`, kardinalitet 1..1).

**Modellanteckning:** Unik identifierare för läkarintyget. Är en GUID.
Fält: lakarutlatande.lakarutlatande-id. Kardinalitet: Obligatorisk."
* typAvUtlatande ^definition = "Fix text enligt: Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring"
* typAvUtlatande ^comment = "TKB-fält: `lakarutlatande.typAvUtlatande` (`string`, kardinalitet 1..1).

**Modellanteckning:** Fix text: 'Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring'.
Fält: lakarutlatande.typAvUtlatande. Kardinalitet: Obligatorisk."
* kommentar ^definition = "Extra upplysningar i fritext (Fält 13)"
* kommentar ^comment = "TKB-fält: `lakarutlatande.kommentar` (`string`, kardinalitet 0..1*).

**Modellanteckning:** Extra upplysningar i fritext. Fält 13 på blanketten.
Villkorligt: obligatoriskt om Prognosangivelse=DET_GAR_INTE_ATT_BEDOMMA eller Referenstyp=Annat.
Fält: lakarutlatande.kommentar. Kardinalitet: Valfri."
* signeringsdatum ^definition = "När läkarintyget signerades (Fält 14)"
* signeringsdatum ^comment = "TKB-fält: `lakarutlatande.signeringsdatum` (`datetime`, kardinalitet 1..1).

**Modellanteckning:** Datum och tid för signering. Fält 14 på blanketten.
Fält: lakarutlatande.signeringsdatum. Kardinalitet: Obligatorisk."
* skickatdatum ^definition = "När läkarintyget skickades till FK"
* skickatdatum ^comment = "TKB-fält: `lakarutlatande.skickatdatum` (`datetime`, kardinalitet 1..1).

**Modellanteckning:** Datum och tid för utskick till Försäkringskassan.
Fält: lakarutlatande.skickatdatum. Kardinalitet: Obligatorisk."
* patient ^definition = "Patienten"
* patient ^comment = "TKB-fält: `lakarutlatande.patient` (kardinalitet 1..1)."
* patient.personId ^definition = "Patientens personnummer eller samordningsnummer"
* patient.personId ^comment = "TKB-fält: `..patient.person-id` (`Id`, kardinalitet 1..1).

**Modellanteckning:** Patientens personnummer eller samordningsnummer.
Fält: lakarutlatande.patient.person-id. Kardinalitet: Obligatorisk."
* patient.fullstandigtNamn ^definition = "Patientens hela namn"
* patient.fullstandigtNamn ^comment = "TKB-fält: `..patient.fullstandigtNamn` (`string`, kardinalitet 1..1).

**Modellanteckning:** Fält: lakarutlatande.patient.fullstandigtNamn. Kardinalitet: Obligatorisk."
* skapadAvHosPersonal ^definition = "Vårdpersonal"
* skapadAvHosPersonal ^comment = "TKB-fält: `lakarutlatande.skapadAvHosPersonal` (kardinalitet 1..1)."
* skapadAvHosPersonal.personalId ^definition = "Hsa-Id för Hos-person som utfärdar läkarintyget."
* skapadAvHosPersonal.personalId ^comment = "TKB-fält: `..skapadAvHosPersonal.personal-id` (`hsaid`, kardinalitet 1..1).

**Modellanteckning:** system = urn:oid:1.2.752.129.2.1.4.1 (HSA-ID).
Fält: lakarutlatande.skapadAvHosPersonal.personal-id. Kardinalitet: Obligatorisk."
* skapadAvHosPersonal.forskrivarkod ^definition = "Förskrivarkod för Hos-person"
* skapadAvHosPersonal.forskrivarkod ^comment = "TKB-fält: `..skapadAvHosPersonal.forskrivarkod` (`string`, kardinalitet 0..1)."
* skapadAvHosPersonal.fullstandigtNamn ^definition = "Namn för Hos-person som utfärdar läkarintyget"
* skapadAvHosPersonal.fullstandigtNamn ^comment = "TKB-fält: `..skapadAvHosPersonal.fullstandigtNamn` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet ^definition = "Vårdenhet"
* skapadAvHosPersonal.enhet ^comment = "TKB-fält: `..skapadAvHosPersonal.enhet` (kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.enhetsId ^definition = "Hsa-Id för Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.enhetsId ^comment = "TKB-fält: `..enhet.enhets-id` (`hsaId`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.arbetsplatskod ^definition = "Arbetsplatskoden för vårdenheten (Fält 17)"
* skapadAvHosPersonal.enhet.arbetsplatskod ^comment = "TKB-fält: `..enhet.arbetsplatskod` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.enhetsNamn ^definition = "Namn på Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.enhetsNamn ^comment = "TKB-fält: `..enhet.enhets-namn` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.postadress ^definition = "Postadress för Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.postadress ^comment = "TKB-fält: `..enhet.postadress` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.postnummer ^definition = "Postnummer för Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.postnummer ^comment = "TKB-fält: `..enhet.postnummer` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.postort ^definition = "Postort för Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.postort ^comment = "TKB-fält: `..enhet.postort` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.telefonnummer ^definition = "Telefonnummer till Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.telefonnummer ^comment = "TKB-fält: `..enhet.telefonnummer` (`string`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.epost ^definition = "Epost adress för Hos-vårdenhet där läkarintyget utfärdas"
* skapadAvHosPersonal.enhet.epost ^comment = "TKB-fält: `..enhet.epost` (`string`, kardinalitet 0..1)."
* skapadAvHosPersonal.enhet.vardgivare ^definition = "Vårdgivare"
* skapadAvHosPersonal.enhet.vardgivare ^comment = "TKB-fält: `..enhet.vardgivare` (kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.vardgivare.vardgivareId ^definition = "Hsa-Id för Hos-vårdgivare där läkarintyget utfärdas."
* skapadAvHosPersonal.enhet.vardgivare.vardgivareId ^comment = "TKB-fält: `..vardgivare.vardgivare-id` (`hsaId`, kardinalitet 1..1)."
* skapadAvHosPersonal.enhet.vardgivare.vardgivareNamn ^definition = "Namn på Hos-vårdgivare där läkarintyget utfärdas."
* skapadAvHosPersonal.enhet.vardgivare.vardgivareNamn ^comment = "TKB-fält: `..vardgivare.vardgivare-namn` (`string`, kardinalitet 1..1)."
* vardkontakt ^definition = "Vårdkontakt"
* vardkontakt ^comment = "TKB-fält: `lakarutlatande.vardkontakt` (kardinalitet 0..2).

**Modellanteckning:** Typ av vårdkontakt. Fält 4, de 2 översta kryssrutorna.
Valfritt om fält 1 (Avstängning SmL) är valt."
* vardkontakt.vardkontakttyp ^definition = "Typ av vårdkontakt (min undersökning av patienten eller min telefonkontakt med patienten)

(Fält 4, de 2 översta kryssrutorna)"
* vardkontakt.vardkontakttyp ^comment = "TKB-fält: `..vardkontakt.vardkontakttyp` (`string`, kardinalitet 0..1*)."
* vardkontakt.vardkontaktstid ^definition = "Datum då vårdkontakten skedde"
* vardkontakt.vardkontaktstid ^comment = "TKB-fält: `..vardkontakt.vardkontaktstid` (`datum`, kardinalitet 0..1*)."
* referens ^definition = "Referens"
* referens ^comment = "TKB-fält: `lakarutlatande.referens` (kardinalitet 0..2).

**Modellanteckning:** Typ av referens. Fält 4, de 2 nedre kryssrutorna."
* referens.referenstyp ^definition = "Typ av referens (journaluppgifter eller annat)

(Fält 4, de 2 nedre kryssrutorna)"
* referens.referenstyp ^comment = "TKB-fält: `..referens.referenstyp` (`string`, kardinalitet 0..1*)."
* referens.datum ^definition = "Datum för ovanstående referens"
* referens.datum ^comment = "TKB-fält: `..referens.datum` (`datum`, kardinalitet 0..1*)."
* aktivitet ^definition = "Aktiviteter"
* aktivitet ^comment = "TKB-fält: `lakarutlatande.aktivitet` (kardinalitet 0..n*).

**Modellanteckning:** Aktivitetskoder som representerar olika val i blanketten.
Fält 1, Fält 6a, Fält 6b, Fält 7, Fält 11, Fält 12."
* aktivitet.aktivitetskod ^definition = "Aktivitetskoder som representerar olika val i blanketten.

(Fält 1, Fält 6a alla kryssrutor, Fält 6b alla kryssrutor, Fält 7 alla kryssrutor, Fält 11 alla kryssrutor, Fält 12)"
* aktivitet.aktivitetskod ^comment = "TKB-fält: `..aktivitet.aktivitetskod` (`string`, kardinalitet 0..1*)."
* aktivitet.beskrivning ^definition = "En eventuell fritext som hänger ihop med aktivitetskoden."
* aktivitet.beskrivning ^comment = "TKB-fält: `..aktivitet.beskrivning` (kardinalitet 0..1*)."
* bedomtTillstand ^definition = "Bedömt tillstånd"
* bedomtTillstand ^comment = "TKB-fält: `lakarutlatande.bedomtTillstand` (kardinalitet 0..1)."
* bedomtTillstand.beskrivning ^definition = "Aktuellt sjukdomsförlopp (Fält 3)"
* bedomtTillstand.beskrivning ^comment = "TKB-fält: `..bedomtTillstand.beskrivning` (`string`, kardinalitet 1..1)."
* medicinsktTillstand ^definition = "Medicinskt tillstånd"
* medicinsktTillstand ^comment = "TKB-fält: `lakarutlatande.medicinsktTillstand` (kardinalitet 0..1*).

**Modellanteckning:** Valfritt om fält 1 är valt, annars obligatoriskt."
* medicinsktTillstand.beskrivning ^definition = "Diagnosinformation i fritext (Fält 2)"
* medicinsktTillstand.beskrivning ^comment = "TKB-fält: `..medicinsktTillstand.beskrivning` (`string`, kardinalitet 0..1)."
* medicinsktTillstand.tillstandskod ^definition = "Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2)"
* medicinsktTillstand.tillstandskod ^comment = "TKB-fält: `..medicinsktTillstand.tillstandskod` (kardinalitet 0..1*).

**Modellanteckning:** ASSUME: Diagnoskodverket är ICD-10-SE eller KSH97P. Canonical URL ej verifierad.
Se QUESTIONS.md ASSUME-HR-001."
* funktionstillstand ^definition = "Funktionstillstånd"
* funktionstillstand ^comment = "TKB-fält: `lakarutlatande.funktionstillstand` (kardinalitet 0..2*).

**Modellanteckning:** Funktionstillstånd. Fält 4 (funktionsnedsättning) och Fält 5 (aktivitetsbegränsning).
Valfritt om fält 1 är valt, annars obligatoriskt."
* funktionstillstand.beskrivning ^definition = "Om typAvFunktionstillstand=Kroppsfunktion avses funktionsnedsättning (Fält 4)

Om typAvFunktionstillstand=Aktivitet avses aktivitetsbegränsning (Fält 5)"
* funktionstillstand.beskrivning ^comment = "TKB-fält: `..funktionstillstand.beskrivning` (`string`, kardinalitet 0..1*)."
* funktionstillstand.typAvFunktionstillstand ^definition = "Styr olika typer enligt ovan"
* funktionstillstand.typAvFunktionstillstand ^comment = "TKB-fält: `..funktionstillstand.typAvFunktionstillstand` (`string`, kardinalitet 1..1)."
* funktionstillstand.arbetsformaga ^definition = "Arbetsförmåga, enbart då typAvFunktionstillstand=Aktivitet"
* funktionstillstand.arbetsformaga ^comment = "TKB-fält: `..funktionstillstand.arbetsformaga` (kardinalitet 0..1)."
* funktionstillstand.arbetsformaga.motivering ^definition = "Arbetsförmågebedömning (Fält 9)"
* funktionstillstand.arbetsformaga.motivering ^comment = "TKB-fält: `..arbetsformaga.motivering` (`string`, kardinalitet 0..1)."
* funktionstillstand.arbetsformaga.prognosangivelse ^definition = "Prognosangivelse (Fält 10 alla kryssrutor)"
* funktionstillstand.arbetsformaga.prognosangivelse ^comment = "TKB-fält: `..arbetsformaga.prognosangivelse` (`string`, kardinalitet 0..1*).

**Modellanteckning:** Värden: Prognosangivelse.ATERSTALLAS_HELT, ATERSTALLAS_DELVIS, INTE_ATERSTALLAS, DET_GAR_INTE_ATT_BEDOMMA.
Om DET_GAR_INTE_ATT_BEDOMMA skall Fält 13 fyllas i."
* funktionstillstand.arbetsformaga.arbetsuppgift ^definition = "Arbetsuppgift"
* funktionstillstand.arbetsformaga.arbetsuppgift ^comment = "TKB-fält: `..arbetsformaga.arbetsuppgift` (kardinalitet 0..1*)."
* funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift ^definition = "Anger patientens typ av arbetsuppgift i fritext (Fält 8a fritexten kopplad till översta kryssrutan)"
* funktionstillstand.arbetsformaga.arbetsuppgift.typAvArbetsuppgift ^comment = "TKB-fält: `..arbetsuppgift.typAvArbetsuppgift` (`string`, kardinalitet 1..1)."
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning ^comment = "TKB-fält: `..arbetsformaga.arbetsformagaNedsattning` (kardinalitet 0..4*).

**Modellanteckning:** Minst 1 av 4 kryssrutor måste alltid väljas."
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom ^definition = "Från när arbetsförmågan är nedsatt (Fält 8b)"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetFrom ^comment = "TKB-fält: `..arbetsformagaNedsattning.varaktighetFrom` (`datum`, kardinalitet 1..1)."
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom ^definition = "Till när arbetsförmågan är nedsatt (Fält 8b)"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.varaktighetTom ^comment = "TKB-fält: `..arbetsformagaNedsattning.varaktighetTom` (`datum`, kardinalitet 1..1)."
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad ^definition = "Hur mycket arbetsförmågan är nedsatt (Fält 8b)"
* funktionstillstand.arbetsformaga.arbetsformagaNedsattning.nedsattningsgrad ^comment = "TKB-fält: `..arbetsformagaNedsattning.nedsattningsgrad` (`string`, kardinalitet 1..1)."
* funktionstillstand.arbetsformaga.sysselsattning ^definition = "Sysselsättning(Fält 8a alla kryssrutor)"
* funktionstillstand.arbetsformaga.sysselsattning ^comment = "TKB-fält: `..arbetsformaga.sysselsattning` (kardinalitet 0..3*)."
* funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning ^definition = "Patientens typ av sysselsättning"
* funktionstillstand.arbetsformaga.sysselsattning.typAvSysselsattning ^comment = "TKB-fält: `..sysselsattning.typAvSysselsattning` (`string`, kardinalitet 1..1).

**Modellanteckning:** Värden: TypAvSysselsattning.FORVARVSARBETE, ARBETSLOSHET, FORALDRALEDIGHET.
Om FORVARVSARBETE skall arbetsuppgifter anges."
