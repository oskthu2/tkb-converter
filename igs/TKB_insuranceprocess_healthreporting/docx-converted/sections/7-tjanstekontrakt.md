## Tjänstekontrakt

### RegisterMedicalCertificate
Tjänsten skickar ett komplett läkarintyg med informationsmängden enligt blankett FK7263. Både begäran och svar består av xml-dokument.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1). Har denna benämning en * finns ytterliggare regler för detta element och beskrivs mer i detalj i efterkommande stycke Tjänstekontraktsspecifika krav och regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Identitet på läkarintyget. Är en GUID. | 1..1 |
| lakarutlatande.typAvUtlatande | string | Fix text enligt: Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring | 1..1 |
| lakarutlatande.kommentar | string | Extra upplysningar i fritext (Fält 13) | 0..1* |
| lakarutlatande.signeringsdatum | datetime | När läkarintyget signerades (Fält 14) | 1..1 |
| lakarutlatande.skickatdatum | datetime | När läkarintyget skickades till FK | 1..1 |
| lakarutlatande.patient |  | Patienten | 1..1 |
| ..patient.person-id | Id | Patientens personnummer eller samordningsnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens hela namn | 1..1 |
| lakarutlatande.skapadAvHosPersonal |  | Vårdpersonal | 1..1 |
| ..skapadAvHosPersonal.personal-id | hsaid | Hsa-Id för Hos-person som utfärdar läkarintyget. | 1..1 |
| ..skapadAvHosPersonal.forskrivarkod | string | Förskrivarkod för Hos-person | 0..1 |
| ..skapadAvHosPersonal.fullstandigtNamn | string | Namn för Hos-person som utfärdar läkarintyget | 1..1 |
| ..skapadAvHosPersonal.enhet |  | Vårdenhet | 1..1 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.arbetsplatskod | string | Arbetsplatskoden för vårdenheten (Fält 17) | 1..1 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet där läkarintyget utfärdas | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare där läkarintyget utfärdas. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare där läkarintyget utfärdas. | 1..1 |
| lakarutlatande.vardkontakt |  | Vårdkontakt | 0..2 |
| ..vardkontakt.vardkontakttyp | string | Typ av vårdkontakt (min undersökning av patienten eller min telefonkontakt med patienten) / (Fält 4, de 2 översta kryssrutorna) | 0..1* |
| ..vardkontakt.vardkontaktstid | datum | Datum då vårdkontakten skedde | 0..1* |
| lakarutlatande.referens |  | Referens | 0..2 |
| ..referens.referenstyp | string | Typ av referens (journaluppgifter eller annat) / (Fält 4, de 2 nedre kryssrutorna) | 0..1* |
| ..referens.datum | datum | Datum för ovanstående referens | 0..1* |
| lakarutlatande.aktivitet |  | Aktiviteter | 0..n* |
| ..aktivitet.aktivitetskod | string | Aktivitetskoder som representerar olika val i blanketten. / (Fält 1, Fält 6a alla kryssrutor, Fält 6b alla kryssrutor, Fält 7 alla kryssrutor, Fält 11 alla kryssrutor, Fält 12) | 0..1* |
| ..aktivitet.beskrivning |  | En eventuell fritext som hänger ihop med aktivitetskoden. | 0..1* |
| lakarutlatande.bedomtTillstand |  | Bedömt tillstånd | 0..1 |
| ..bedomtTillstand.beskrivning | string | Aktuellt sjukdomsförlopp (Fält 3) | 1..1 |
| lakarutlatande.medicinsktTillstand |  | Medicinskt tillstånd | 0..1* |
| ..medicinsktTillstand.beskrivning | string | Diagnosinformation i fritext (Fält 2) | 0..1 |
| ..medicinsktTillstand.tillstandskod |  | Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2) | 0..1* |
| ..tillstandskod.code | string | kod | 0..1 |
| ..tillstandskod.codeSystem | Uid | Kodsystemets identifierare | 0..1 |
| ..tillstandskod.codeSystemName | string | Kodsystemets namn | 0..1 |
| ..tillstandskod.codeSystemVersion | string | Version av kodsystemet | 0..1 |
| lakarutlatande.funktionstillstand |  | Funktionstillstånd | 0..2* |
| ..funktionstillstand.beskrivning | string | Om typAvFunktionstillstand=Kroppsfunktion avses funktionsnedsättning (Fält 4) / Om typAvFunktionstillstand=Aktivitet avses aktivitetsbegränsning (Fält 5) | 0..1* |
| ..funktionstillstand.typAvFunktionstillstand | string | Styr olika typer enligt ovan | 1..1 |
| ..funktionstillstand.arbetsformaga |  | Arbetsförmåga, enbart då typAvFunktionstillstand=Aktivitet | 0..1 |
| ..arbetsformaga.motivering | string | Arbetsförmågebedömning (Fält 9) | 0..1 |
| ..arbetsformaga.prognosangivelse | string | Prognosangivelse (Fält 10 alla kryssrutor) | 0..1* |
| ..arbetsformaga.arbetsuppgift |  | Arbetsuppgift | 0..1* |
| ..arbetsuppgift.typAvArbetsuppgift | string | Anger patientens typ av arbetsuppgift i fritext (Fält 8a fritexten kopplad till översta kryssrutan) | 1..1 |
| ..arbetsformaga.arbetsformagaNedsattning |  |  | 0..4* |
| ..arbetsformagaNedsattning.varaktighetFrom | datum | Från när arbetsförmågan är nedsatt (Fält 8b) | 1..1 |
| ..arbetsformagaNedsattning.varaktighetTom | datum | Till när arbetsförmågan är nedsatt (Fält 8b) | 1..1 |
| ..arbetsformagaNedsattning.nedsattningsgrad | string | Hur mycket arbetsförmågan är nedsatt (Fält 8b) | 1..1 |
| ..arbetsformaga.sysselsattning |  | Sysselsättning(Fält 8a alla kryssrutor) | 0..3* |
| ..sysselsattning.typAvSysselsattning | string | Patientens typ av sysselsättning | 1..1 |
| Svar |  |  |  |
| result |  | Information om anropet gick bra(OK, ERROR, INFO) | 0..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Till denna informationsmängd finns en hel del regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Informationen är organiserad utifrån blankett FK7263 och dess fältidentiteter.
Fält 1 - Avstängning enligt SmL
Om detta fält är satt behöver inte fält 2 till och med 8a fyllas i. Om dessa fält fylls i gäller reglerna som anges i tabellen ovan eller i specifika fältregler nedan.
Motsvaras av värdet: Aktivitetskod.AVSTANGNING_ENLIGT_SM_L_PGA_SMITTA
Fält 2 - diagnoskod
Valfritt om fält 1 är valt annars obligatoriskt.
Fält 4 - funktionsnedsättning
Valfritt om fält 1 är valt annars obligatoriskt.
Fält 4 - intyget baseras på – de 4 kryssrutorna
Valfritt om fält 1 är valt.
Om fält 1 inte är valt måste minst en kryssryta enligt nedan väljas.
Fält 4 - intyget baseras på – undersökning
Motsvaras av värdet: Vardkontakttyp.MIN_UNDERSOKNING_AV_PATIENTEN
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges (gäller även om fält 1 är valt).
Fält 4 - intyget baseras på – telefonkontakt
Motsvaras av värdet: Vardkontakttyp.MIN_TELEFONKONTAKT_MED_PATIENTEN
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges (gäller även om fält 1 är valt).
Fält 4 - intyget baseras på – journaluppgift
Motsvaras av värdet: Referenstyp.Journaluppgifter
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges (gäller även om fält 1 är valt).
Fält 4 - intyget baseras på – annat
Motsvaras av värdet: Referenstyp.Annat
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges  (gäller även om fält 1 är valt).
Om man väljer denna kryssruta skall fält 13 – Övriga upplysningar fyllas i med kompletterande information(gäller även om fält 1 är valt).
Fält 6a - rekommendationer - kontakt med Arbetsförmedlingen
Valfritt och motsvaras av värdet: Aktivitetskod.PATIENTEN_BEHOVER_FA_KONTAKT_MED_ARBETSFORMEDLINGEN
Fält 6a - rekommendationer - kontakt med företagshälsovård
Valfritt och motsvaras av värdet: Aktivitetskod.PATIENTEN_BEHOVER_FA_KONTAKT_MED_FORETAGSHALSOVARDEN
Fält 6a - rekommendationer - Övrigt
Valfritt och motsvaras av värdet: Aktivitetskod.OVRIGT
Om man väljer denna kryssruta skall tillhörande beskrivning fyllas i (gäller även om fält 1 är valt).
Fält 6b - planerad eller pågående behandling eller åtgärd -  inom sjukvården
Valfritt och motsvaras av värdet: Aktivitetskod.PLANERAD_ELLER_PAGAENDE_BEHANDLING_ELLER_ATGARD_INOM_SJUKVARDEN
Om man väljer denna kryssruta skall tillhörande beskrivning fyllas i (gäller även om fält 1 är valt).
Fält 6b - planerad eller pågående behandling eller åtgärd - annan
Valfritt och motsvaras av värdet: Aktivitetskod.PLANERAD_ELLER_PAGAENDE_ANNAN_ATGARD
Om man väljer denna kryssruta skall tillhörande beskrivning fyllas i (gäller även om fält 1 är valt).
Fält 7 - arbetslivsinriktad rehabilitering aktuell - Ja/Nej/Går ej att bedömma
Valfritt och motsvaras av värdena: Aktivitetskod.ARBETSLIVSINRIKTAD_REHABILITERING_AR_AKTUELL Aktivitetskod.ARBETSLIVSINRIKTAD_REHABILITERING_AR_EJ_AKTUELL Aktivitetskod.GAR_EJ_ATT_BEDOMMA_OM_ARBETSLIVSINRIKTAD_REHABILITERING_AR_AKTUELL
Man får endast välja en av dessa 3 kryssrutor.
Fält 8a - arbetsförmåga bedöms i förhållande till  - arbete/arbetslöshet/föräldraledig
Valfritt om fält 1 är valt annars skall minst en av de tre övre valen finnas.
Motsvaras av värdena: TypAvSysselsattning.FORVARVSARBETE
TypAvSysselsattning.ARBETSLOSHET
TypAvSysselsattning.FORALDRALEDIGHET
Om man väljer kryssruta : TypAvSysselsattning.FORVARVSARBETE skall tillhörande arbetsuppgifter alltid anges (gäller även om fält 1 är valt).
Fält 8b - bedömning patientens arbetsförmåga – de 4 kryssrutorna
Minst 1 av dessa 4 kryssrutor måste alltid väljas.
Fält 8b - bedömning patientens arbetsförmåga - nedsatt med 1/4
Motsvaras av värdet: Nedsattningsgrad.NEDSATT_MED_1_4
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 8b - bedömning patientens arbetsförmåga - nedsatt med hälften
Motsvaras av värdet: Nedsattningsgrad.NEDSATT_MED_1_2
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 8b - bedömning patientens arbetsförmåga - nedsatt med 3/4
Motsvaras av värdet: Nedsattningsgrad.NEDSATT_MED_3_4
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 8b - bedömning patientens arbetsförmåga – helt nedsatt
Motsvaras av värdet: Nedsattningsgrad.HELT_NEDSATT
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 10 - prognos återfå arbetsförmåga - Ja/Delvis/Nej/Går ej att bedöma
Valfritt och man kan endast välja 1 av dessa 4 kryssrutor.
Motsvaras av värdena: Prognosangivelse.ATERSTALLAS_HELT Prognosangivelse.ATERSTALLAS_DELVIS
Prognosangivelse.INTE_ATERSTALLAS
Prognosangivelse.DET_GAR_INTE_ATT_BEDOMMA
Om man väljer Prognosangivelse.DET_GAR_INTE_ATT_BEDOMMA skall fält 13 – Övriga upplysningar fyllas i med kompletternade information.
Fält 11 - resor till från arbetet - ja/nej
Valfritt och man kan endast välja 1 av dessa 2 kryssrutor.
Motsvaras av värdena: Aktivitetskod.FORANDRAT_RESSATT_TILL_ARBETSPLATSEN_AR_EJ_AKTUELLT Aktivitetskod.FORANDRAT_RESSATT_TILL_ARBETSPLATSEN_AR_AKTUELLT
Fält 12 - kontakt önskas med FK
Valfritt och motsvaras av värdet:
Aktivitetskod.KONTAKT_MED_FORSAKRINGSKASSAN_AR_AKTUELL

### ReceiveMedicalCertificateQuestion
Tjänsten tar emot frågor från Försäkringskassan för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Frågan som Försäkringskassan skickar till vården utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| fkReferens-id | string | Försäkringskassans referens-id. * | 1..1 |
| amne | Amne typ | Ämne som frågan gäller. Finns en avgränsad mängd | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Frågetexten rörande det angivna läkarintyg | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då frågan skickades från Försäkringskassan | 1..1 |
| fkKontaktInfo |  | Rader med kontaktinformation | 0..n |
| fkKontaktInfo.kontakt | string | Mer detaljerad kontaktinformation för den person som ställt frågan från Försäkringskassan. | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som utfärdade läkarintyget. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som utfärdade läkarintyget. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet |  |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet där läkarintyget utfärdades. | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet där läkarintyget utfärdades. | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare där läkarintyget utfärdades. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare där läkarintyget utfärdades. | 1..1 |
| fkMeddelanderubrik | string | En extra rubrik som Försäkringskassan kan använda för att beskriva frågan. | 0..1 |
| fkKomplettering |  | Komplettering | 0..n |
| fkKomplettering.falt | string | Referens till fält på blanketten MU7263 | 1..1 |
| fkKomplettering.text | string | Orsak till komplettering för detta fält | 1..1 |
| fkSistaDatumForSvar | datum | Datum då Försäkringskassan senast vill ha ett svar | 0..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
fkReferens-id
Samma referens-id kan förekomma i flera meddelanden. Försäkringskassan skickar ett id som refererar till deras interna ärende. När ämnet är påminnelse ska referens-id vara samma som för den fråga som påminnelsen gäller.

### ReceiveMedicalCertificateAnswer
Tjänsten tar emot svar från Försäkringskassan på en tidigare skickad fråga från vården för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svaret som Försäkringskassan skickar till vården utgår alltid från en tidigare inskickad fråga från vården för ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från denna fråga (och tidigare från läkarintyget). Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| vardReferens-id | string | Referens-id för den fråga från vården som detta svar gäller. * | 1..1 |
| fkReferens-id | string | Försäkringskassans referens-id. * | 0..1 |
| amne | Amne typ | Ämne som fråga/svar gäller. | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Frågetexten rörande det angivna läkarintyg | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| svar |  | Svaret | 1..1 |
| svar.meddelandeText | string | Själva svaret på ställd fråga | 1..1 |
| svar.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva svaret | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då svaret skickades från Försäkringskassan | 1..1 |
| fkKontaktInfo |  | Rader med kontaktinformation | 0..n |
| fkKontaktInfo.kontakt | string | Mer detaljerad kontaktinformation för den person som svarat från Försäkringskassan. | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet |  |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
vardReferens-id
Samma vardReferens-id kan förekomma i flera meddelanden, t.ex. om en påminnelse har skickats. Id:t måste överensstämma med id:t som skickades i den fråga som detta svar gäller.
fkReferens-id
Samma fkReferens-id kan förekomma i flera meddelanden. Försäkringskassan skickar ett id som refererar till deras interna ärende.

### SendMedicalCertificateQuestion
Tjänsten skickar en fråga till Försäkringskassan för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Fråga som vården skickar till Försäkringskassan utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| vardReferens-id | string | Identitet för denna fråga från vården. * | 1..1 |
| amne | string | Ämne som frågan gäller. | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Själva frågan | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då frågan skickades från vården | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och därmed överensstämma med denna.
vardReferens-id
Samma vardReferens-id kan förekomma i flera meddelanden, t.ex. om en påminnelse har skickats. För att tekniskt kunna koppla ett inkommet svar till en skickad fråga bör dock varje ny fråga tilldelas ett unikt id.

### SendMedicalCertificateAnswer
Tjänsten skickar ett svar till Försäkringskassan på en tidigare mottagen fråga från Försäkringskassan för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svaret som vården skickar till Försäkringskassan utgår alltid från en tidigare skickad fråga från Försäkringskassan för ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från denna fråga (och tidigare från läkarintyget). Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| vardReferens-id | string | Identitet för detta svar från vården * | 1..1 |
| fkReferens-id | string | Försäkringskassans referens-id * | 1..1 |
| amne | string | Ämne som fråga/svar gäller. | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Själva frågan | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| svar |  | Svaret | 1..1 |
| svar.meddelandeText | string | Själva svaret på ställd fråga | 1..1 |
| svar.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva svaret | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då svaret skickades från vården | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som svarar på frågan. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som svarar på frågan. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån svaret skickas | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån svaret skickas | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån svaret skickas | 1..1 |
| vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån svaret skickas | 1..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och tidigare inkommen fråga från Försäkringskassan och därmed överensstämma med dessa.
vardReferens-id
Samma vardReferens-id kan förekomma i flera meddelanden.
fkReferens-id
Samma fkReferens-id kan förekomma i flera meddelanden. Försäkringskassan skickar ett id som refererar till deras interna ärende. Id:t måste överensstämma med id:t som skickades i den fråga som detta svar gäller.

### FindAllQuestions
Tjänsten returnerar frågor från Försäkringskassan för ett läkarintyg som mellanlagrats av vården. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Frågor som Försäkringskassan skickat till vården och som vården lagrat i en ärendelåda. Frågans struktur följer den fråga som definieras under ReceiveMedicalCertificateQuestion. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |
| questionsLeft | int | Antal kvarvarande frågor för denna vårdenhet | 1..1 |
| questions |  | Fråga | 0..1 |
| questions.question |  | Lista av frågor | 0..n |
| ..question.question |  | Själva frågan, se ReceiveMedicalCertificateQuestion | 1..1 |
| ..question.id | int | Ärendelådans identitet på den returnerade frågan. Används när man senare vill ta bort frågan från ärendelådan | 1..1 |
| ..question.receivedDate | datum | Datum då frågan inkom | 1..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler

### FindAllAnswers
Tjänsten returnerar svar från Försäkringskassan på tidigare skickade frågor från vården för ett läkarintyg som mellanlagrats av vården. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svar som Försäkringskassan skickat till vården och som vården lagrat i en ärendelåda. Svarets struktur följer det svar som definieras under ReceiveMedicalCertificateAnswer. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |
| answersLeft | int | Antal kvarvarande svar för denna vårdenhet | 1..1 |
| answers |  | Svar | 0..1 |
| answers.answer |  | Lista av svar | 0..n |
| answers.answer |  | Själva svaret, se ReceiveMedicalCertificateAnswer | 1..1 |
| answers.id | int | Ärendelådans dentitet på det returnerade svaret. Används när man senare vill ta bort svaret från ärendelådan | 1..1 |
| answers.receivedDate | datum | Datum då svaret inkom | 1..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### DeleteQuestions
Tjänsten tar bort frågor som mellanlagrats av vården och som tidigare hämtats(FindAllQuestions). Både begäran och svar består av xml-dokument.

#### Fältregler
Frågor som skall tas bort ur vårdens ärendelåda. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| questionId | string | Ärendelådans identitet på frågor som skall tas bort ur ärendelådan. | 0..n |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### DeleteAnswers
Tjänsten tar bort svar som mellanlagrats av vården och som tidigare hämtats(FindAllAnswer). Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svar som skall tas bort ur vårdens ärendelåda. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| answerId | string | Ärendelådans identitet på svaren som skall tas bort ur ärendelådan. | 0..n |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### RevokeMedicalCertificate
Tjänsten skickar ett meddelande om en rättelse av ett tidigare inskickat läkarintyg. Både begäran och svar består av xml-dokument.

#### Fältregler
Rättelse som vården skickar till Försäkringskassan utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| revoke |  | Rättelsen | 1..1 |
| revoke.vardReferens-id | string | Identitet för denna rättelse från vården | 1..1 |
| revoke.meddelande | string | Beskrivning om orsk till rättningen | 0..1 |
| revoke.avsantTidpunkt | datumtid | Tidpunkt då rättelsen skickades från vården | 1..1 |
| revoke.adressVard |  | Vårdadress | 1..1 |
| ..adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som skickade rättelsen. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet |  |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån rättelsen skickades. | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån rättelsen skickades. | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.vardgivare |  | Vårdgivaren | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån rättelsen skickades. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån rättelsen skickades. | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som rättelsen gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som rättelsen gäller | 1..1 |
| lakarutlatande.patient |  | Patienten | 1..1 |
| patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och därmed överensstämma med detta.

### SendMedicalCertificate
Tjänsten skickar ett meddelande om att ett läkarintyg skall skickas vidare till Försäkringskassan. Själva läkarintyget är tidigare insänt via RegisterMedicalCertificate. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
En begäran om att ett läkarintyg skall skickas vidare till Försäkringskassan utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| send |  | Sända signal om att skicka ett intyg | 1..1 |
| send.vardReferens-id | string | Identitet för detta meddelande från vården | 1..1 |
| send.avsantTidpunkt | datumtid | Tidpunkt då meddelandet skickades från vården | 1..1 |
| send.adressVard |  | Vårdadress | 1..1 |
| ..adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som skickade meddelandet. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som skickade meddelandet. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet | 1..1 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån meddelandet skickades. | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån meddelandet skickades. | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån meddelandet skickades. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån meddelandet skickades. | 1..1 |
| lakarutlatande |  | Läkarutlåtandet | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som meddelandet gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som meddelandet gäller | 1..1 |
| lakarutlatande.patient |  | Patienten | 1..1 |
| patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och därmed överensstämma med denna.

### ListCertificates
Tjänsten begär en lista av registrerade läkarintyg från intygstjänsten. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
En begäran om en lista gäller för en specifik personidentitet. Nedanstående tabell beskriver varje element i begäran och svar Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| nationalIdentityNumber | string | Patientens personnummer eller samordningsnummer | 1..1 |
| certificateType | string | Typ av intyg. Om inget anges returneras alla typer. | 0..n |
| available | string | Anger om man skall returnera tillgängliga (true) eller icke tillgängliga (false) intyg som är registrerade i intygstjänsten. Dvs om det kan användas (hämtas). / Om inget anges antas true. | 0..1 |
| fromDate | datum | Startdatum för sökning för utfärdandedatum för intyget. Om inget anges görs ingen datum begränsning. | 0..1 |
| toDate | datum | Slutdatum för sökning för utfärdandedatum för intyget. Om inget anges görs ingen datum begränsning. | 0..1 |
| Svar |  |  |  |
| meta |  | Metadata information | 0..1 |
| meta.certificateId | string | Identitet på intyget. Är en GUID. | 1..1 |
| meta.certificateType | string | Typ av intyg. Om inget anges returneras alla typer. | 1..1 |
| meta.validFrom | datum | Startdatum för sjukskrivningsperioden. | 1..1 |
| meta.validTo | datum | Slutdatum för sjukskrivningsperioden. | 1..1 |
| meta.issuerName | string | Namn för Hos-person som utfärdat intyget | 1..1 |
| meta.facilityName | string | Namn på Hos-vårdenhet där intyget utfärdats | 1..1 |
| meta.signDate | date | Datum när intyget signerades | 1..1 |
| meta.available | string | Anger om intyget är tillgängligt och kan användas. | 1..1 |
| meta.status |  | En lista över statustyper för olika mottagare | 0..n |
| ..status.target | string | Mottagare för en status. Ex FK | 1..1 |
| ..status.type | string | Typ av statusändring för intyget. | 1..1 |
| ..status.timestamp | datetime | När statusen sattes för intyget | 1..1 |
| result |  |  | 0..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### GetCertificate
Tjänsten hämtar ett läkarintyg från intygstjänsten. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
En begäran om ett läkarintyg från intygstjänsten. Nedanstående tabell beskriver varje element i begäran och svar Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| certificateId | string | Identitet på intyget. Är en GUID. | O |
| nationalIdentityNumber | string | Patientens personnummer eller samordningsnummer | O |
| Svar |  |  |  |
| meta.certificateId | string | Identitet på intyget. Är en GUID. | O |
| meta.certificateType | string | Typ av intyg. Om inget anges returneras alla typer. | O |
| meta.validFrom | datum | Startdatum för sjukskrivningsperioden. | O |
| meta.validTo | datum | Slutdatum för sjukskrivningsperioden. | O |
| meta.issuerName | string | Namn för Hos-person som utfärdat intyget | O |
| meta.facilityName | string | Namn på Hos-vårdenhet där intyget utfärdats | O |
| meta.signDate | datetime | Datum och tid när intyget signerades | O |
| meta.available | string | Anger om intyget är tillgängligt. | O |
| meta.status |  | En lista över statustyper för olika mottagare |  |
| meta.status.target | string | Mottagare för en status. Ex FK | O |
| meta.status.type | string | Typ av statusändring för intyget. | O |
| meta.status.timestamp | datetime | När statusen sattes för intyget | O |
| certificate | <any> | Platshållare för intyget som är generisk. Typ av intyg anges i meta.certificateType. |  |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | O |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | V |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | V |
| result.errorText | string | Text som ytterliggare beskriver felet | V |

#### Tjänstekontraktsspecifika krav och regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### SetCertificateStatus
Tjänsten sätter status för ett registrerat läkarintyg i intygstjänsten. Både begäran och svar består av xml-dokument.

#### Fältregler
En ändring av status fäller ett tidigare registrerat läkarintyg i intygstjänsten. Nedanstående tabell beskriver varje element i begäran och svar Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | string | Identitet på intyget. Är en GUID. |  |
| certificateId | string | Patientens personnummer eller samordningsnummer | 1..1 |
| nationalIdentityNumber | datumtid | Tidpunkt då meddelandet skickades från vården | 1..1 |
| target | string | Mottagare för en status. Ex FK | 1..1 |
| status | string | Typ av statusändring för intyget. | 1..1 |
| timestamp | datetime | När anropet sattes för intyget | 0..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.
