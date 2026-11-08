// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHospPersonForIVOFieldDescriptions
* hospPerson ^comment = "TKB-fält: `hospPerson*` (`HospPersonType`, kardinalitet 0..*)."
* hospPerson.hospId ^definition = "Unikt ID för en person i HOSP"
* hospPerson.hospId ^comment = "TKB-fält: `..hospId` (`String`, kardinalitet 1..1)."
* hospPerson.hospId.extension ^definition = "Identitet."
* hospPerson.hospId.extension ^comment = "TKB-fält: `../../extension` (`String`, kardinalitet 1..1)."
* hospPerson.hospId.root ^definition = "OID= \"1.2.752.116.3.1.1\"."
* hospPerson.hospId.root ^comment = "TKB-fält: `../../root` (`String`, kardinalitet 1..1)."
* hospPerson.personId ^definition = "Ett personnummer eller samordningsnummer för en person."
* hospPerson.personId ^comment = "TKB-fält: `../personId` (`II`, kardinalitet 0..1)."
* hospPerson.personId.extension ^definition = "Identitet i form av ÅÅÅÅMMDDXXXX."
* hospPerson.personId.extension ^comment = "TKB-fält: `../../ extension` (`String`, kardinalitet 1..1)."
* hospPerson.personId.root ^definition = "Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: \"1.2.752.129.2.1.3.1\"

Samordningsnummer: \"1.2.752.129.2.1.3.3\""
* hospPerson.personId.root ^comment = "TKB-fält: `../../ root` (`String`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* hospPerson.tidigarePersonId ^definition = "Ett personnummer eller samordningsnummer för en person om de bytt personId."
* hospPerson.tidigarePersonId ^comment = "TKB-fält: `../tidigarePersonId` (`II`, kardinalitet 0..1)."
* hospPerson.tidigarePersonId.extension ^definition = "Identitet i form av ÅÅÅÅMMDDXXXX."
* hospPerson.tidigarePersonId.extension ^comment = "TKB-fält: `../../ extension` (`String`, kardinalitet 1..1)."
* hospPerson.tidigarePersonId.root ^definition = "Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: \"1.2.752.129.2.1.3.1\"

Samordningsnummer: \"1.2.752.129.2.1.3.3\""
* hospPerson.tidigarePersonId.root ^comment = "TKB-fält: `../../ root` (`String`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* hospPerson.efternamn ^definition = "En persons efternamn"
* hospPerson.efternamn ^comment = "TKB-fält: `../efternamn` (`String`, kardinalitet 1..1)."
* hospPerson.mellannamn ^definition = "En persons mellannamn."
* hospPerson.mellannamn ^comment = "TKB-fält: `../mellannamn` (`String`, kardinalitet 0..1)."
* hospPerson.samtligaFornamn ^definition = "En persons samtliga förnamn"
* hospPerson.samtligaFornamn ^comment = "TKB-fält: `../samtligaFornamn` (`String`, kardinalitet 1..*)."
* hospPerson.tilltalsnamn ^definition = "Markering för tilltalsnamn"
* hospPerson.tilltalsnamn ^comment = "TKB-fält: `../tilltalsnamn` (`String`, kardinalitet 0..1)."
* hospPerson.fodelsedatum ^definition = "Datum för en persons födelse, anges enligt ÅÅÅÅMMDD"
* hospPerson.fodelsedatum ^comment = "TKB-fält: `../fodelsedatum` (`date`, kardinalitet 1..1)."
* hospPerson.kon ^definition = "Personens kön. OID=\"1.2.752.116.3.1.3\""
* hospPerson.kon ^comment = "TKB-fält: `../kon` (`CV`, kardinalitet 0..1)."
* hospPerson.lan ^definition = "Personens länstillhörighet. OID=\"1.2.752.129.2.2.1.18\""
* hospPerson.lan ^comment = "TKB-fält: `../lan` (`CV`, kardinalitet 0..1)."
* hospPerson.kommun ^definition = "Personens kommuntillhörighet. OID=\"1.2.752.129.2.2.1.17\""
* hospPerson.kommun ^comment = "TKB-fält: `../kommun` (`CV`, kardinalitet 0..1)."
* hospPerson.folkbokforingsort ^definition = "Personens folkbokföringsort"
* hospPerson.folkbokforingsort ^comment = "TKB-fält: `../folkbokforingsort` (`String`, kardinalitet 0..1)."
* hospPerson.skyddadIdentitet ^definition = "Sant om personen har en sekretessmarkering"
* hospPerson.skyddadIdentitet ^comment = "TKB-fält: `../skyddadIdentitet*` (`Boolean`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* hospPerson.skyddadIdentitetUpplysning ^definition = "Upplysning gällande en person med skyddad identitet"
* hospPerson.skyddadIdentitetUpplysning ^comment = "TKB-fält: `../skyddadIdentitetUpplysning*` (`String`, kardinalitet 0..1)."
* hospPerson.avliden ^definition = "Sant om en person är avliden"
* hospPerson.avliden ^comment = "TKB-fält: `../avliden` (`Boolean`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* hospPerson.avlidenDatum ^definition = "Datum för en avliden person. Anges som ÅÅÅÅMMDD"
* hospPerson.avlidenDatum ^comment = "TKB-fält: `../avlidenDatum` (`Datum`, kardinalitet 0..1)."
* hospPerson.utvandrad ^definition = "Sant om personen har utvandrat"
* hospPerson.utvandrad ^comment = "TKB-fält: `../utvandrad` (`Boolean`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* hospPerson.forskrivarkod ^definition = "En persons förskrivarkod"
* hospPerson.forskrivarkod ^comment = "TKB-fält: `../forskrivarkod` (`String`, kardinalitet 0..1)."
* hospPerson.forskrivarkod.extension ^definition = "Förskrivarkod"
* hospPerson.forskrivarkod.extension ^comment = "TKB-fält: `../../ extension` (`String`, kardinalitet 1..1)."
* hospPerson.forskrivarkod.root ^definition = "OID = \" 1.2.752.116.3.1.2\""
* hospPerson.forskrivarkod.root ^comment = "TKB-fält: `../../ root` (`String`, kardinalitet 1..1)."
* hospPerson.legitimation ^definition = "Legitimation innehåller en beskrivning av en persons legitimation"
* hospPerson.legitimation ^comment = "TKB-fält: `../legitimation` (`LegitimationType`, kardinalitet 0..*)."
* hospPerson.legitimation.legitimeratYrke ^definition = "Anger vilket legitimerat yrke som avses"
* hospPerson.legitimation.legitimeratYrke ^comment = "TKB-fält: `../../ legitimeratYrke` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.giltigLegitimation ^definition = "Anger om legitimationen är giltig"
* hospPerson.legitimation.giltigLegitimation ^comment = "TKB-fält: `../../giltigLegitimation` (`Boolean`, kardinalitet 1..1)."
* hospPerson.legitimation.utbildning ^definition = "Anger en persons utbildning för denna legitimation. OID= \"1.2.752.116.3.1.4\""
* hospPerson.legitimation.utbildning ^comment = "TKB-fält: `../../utbildning` (`CV`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* hospPerson.legitimation.utbildningsland ^definition = "Land där utbildning skedde om ej svensk utbildning"
* hospPerson.legitimation.utbildningsland ^comment = "TKB-fält: `../../utbildningsland` (`string`, kardinalitet 0..1)."
* hospPerson.legitimation.internationellOverrenskommelse ^definition = "Internationell överrenskommelse anges för personer som har primär legitimation inom annat EU/EES-land"
* hospPerson.legitimation.internationellOverrenskommelse ^comment = "TKB-fält: `../../internationellOverrenskommelse` (`string`, kardinalitet 0..1)."
* hospPerson.legitimation.legitimationsDatum ^definition = "Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.legitimationsDatum ^comment = "TKB-fält: `../../legitimationsDatum` (`Datum`, kardinalitet 1..1)."
* hospPerson.legitimation.beslutsdatumFysioterapeut ^definition = "Anger datum då en person övergått från legitimerat yrke SG till FT"
* hospPerson.legitimation.beslutsdatumFysioterapeut ^comment = "TKB-fält: `../../beslutsdatumFysioterapeut` (`Datum`, kardinalitet 0..1)."
* hospPerson.legitimation.examensdatum ^definition = "Datum för examen"
* hospPerson.legitimation.examensdatum ^comment = "TKB-fält: `../../examensdatum` (`Datum`, kardinalitet 0..1)."
* hospPerson.legitimation.larosate ^definition = "Lärosäte för examen"
* hospPerson.legitimation.larosate ^comment = "TKB-fält: `../../lärosäte` (`string`, kardinalitet 0..1)."
* hospPerson.legitimation.grundyrke ^definition = "Grundyrke för examen"
* hospPerson.legitimation.grundyrke ^comment = "TKB-fält: `../../grundyrke` (`string`, kardinalitet 0..1)."
* hospPerson.legitimation.specialistbevis.specialistinriktning ^definition = "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen"
* hospPerson.legitimation.specialistbevis.specialistinriktning ^comment = "TKB-fält: `../../../specialistinriktning` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.specialistbevis.utbildningsland ^definition = "Land där utbildning skedde om ej svensk utbildning"
* hospPerson.legitimation.specialistbevis.utbildningsland ^comment = "TKB-fält: `../../../utbildningsland` (`string`, kardinalitet 0..1)."
* hospPerson.legitimation.specialistbevis.internationellOverrenskommelse ^definition = "Internationell överrenskommelse anges för personer som har primär legitimation inom annat EU/EES-land"
* hospPerson.legitimation.specialistbevis.internationellOverrenskommelse ^comment = "TKB-fält: `../../../internationellOverrenskommelse` (`string`, kardinalitet 0..1)."
* hospPerson.legitimation.specialistbevis.specialistbevisDatum ^definition = "Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.specialistbevis.specialistbevisDatum ^comment = "TKB-fält: `../../../ specialistbevisDatum` (`Datum`, kardinalitet 1..1)."
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning ^definition = "Anger typ av behörighetsbegränsning för en viss legitimation"
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning ^comment = "TKB-fält: `../../../typAvBehorighetsbegransning` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.ovrigBehorighet.behorighet ^definition = "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen"
* hospPerson.legitimation.ovrigBehorighet.behorighet ^comment = "TKB-fält: `../../../behorighet` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum ^definition = "Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum ^comment = "TKB-fält: `../../../ behorighetsDatum` (`Datum`, kardinalitet 1..1)."
