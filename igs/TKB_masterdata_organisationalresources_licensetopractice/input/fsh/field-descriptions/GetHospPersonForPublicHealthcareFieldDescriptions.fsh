// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHospPersonForPublicHealthcareFieldDescriptions
* hospPerson ^comment = "TKB-fält: `hospPerson*` (`HospPersonType`, kardinalitet 0..*)."
* hospPerson.hospId ^definition = "Unikt ID för en person i HOSP"
* hospPerson.hospId ^comment = "TKB-fält: `..hospId` (`String`, kardinalitet 1..1)."
* hospPerson.hospId.extension ^definition = "Identitet."
* hospPerson.hospId.extension ^comment = "TKB-fält: `../../extension` (`int`, kardinalitet 1..1)."
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
* hospPerson.tidigarePersonId ^definition = "Ett tidigare personnummer eller samordningsnummer för en person."
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
* hospPerson.samtligaFornamn ^definition = "En persons samtliga förnamn"
* hospPerson.samtligaFornamn ^comment = "TKB-fält: `../samtligaFornamn` (`String`, kardinalitet 1..*)."
* hospPerson.fodelsedatum ^definition = "Datum för en persons födelse, anges enligt ÅÅÅÅMMDD"
* hospPerson.fodelsedatum ^comment = "TKB-fält: `../fodelsedatum` (`date`, kardinalitet 1..1)."
* hospPerson.skyddadIdentitetUpplysning ^definition = "Upplysning gällande en person med skyddad identitet"
* hospPerson.skyddadIdentitetUpplysning ^comment = "TKB-fält: `../skyddadidentitetUpplysning*` (`String`, kardinalitet 0..1)."
* hospPerson.forskrivarkod ^definition = "En persons förskrivarkod"
* hospPerson.forskrivarkod ^comment = "TKB-fält: `../forskrivarkod` (`String`, kardinalitet 0..1)."
* hospPerson.forskrivarkod.extension ^definition = "Förskrivarkod"
* hospPerson.forskrivarkod.extension ^comment = "TKB-fält: `../../ extension` (`Int`, kardinalitet 1..1)."
* hospPerson.forskrivarkod.root ^definition = "OID = \" 1.2.752.116.3.1.2\""
* hospPerson.forskrivarkod.root ^comment = "TKB-fält: `../../ root` (`String`, kardinalitet 1..1)."
* hospPerson.legitimation ^definition = "Legitimation innehåller en beskrivning av en persons legitimation"
* hospPerson.legitimation ^comment = "TKB-fält: `../legitimation` (`LegitimationType`, kardinalitet 0..*)."
* hospPerson.legitimation.legitimeratYrke ^definition = "Anger vilket legitimerat yrke som avses"
* hospPerson.legitimation.legitimeratYrke ^comment = "TKB-fält: `../../ legitimeratYrke` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.giltigLegitimation ^definition = "Anger om legitimationen är giltig"
* hospPerson.legitimation.giltigLegitimation ^comment = "TKB-fält: `../../giltigLegitimation` (`Boolean`, kardinalitet 1..1)."
* hospPerson.legitimation.utbildning ^definition = "Anger en persons utbildning för denna legitimation. OID= \"1.2.752.116.3.1.4\""
* hospPerson.legitimation.utbildning ^comment = "TKB-fält: `../../utbildning` (`CV`, kardinalitet 0..1)."
* hospPerson.legitimation.legitimationsDatum ^definition = "Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.legitimationsDatum ^comment = "TKB-fält: `../../legitimationsDatum` (`Datum`, kardinalitet 1..1)."
* hospPerson.legitimation.beslutsdatumFysioterapeut ^definition = "Anger datum då en person övergått från legitimerat yrke SG till FT"
* hospPerson.legitimation.beslutsdatumFysioterapeut ^comment = "TKB-fält: `../../beslutsdatumFysioterapeut` (`Datum`, kardinalitet 0..1)."
* hospPerson.legitimation.specialistbevis.specialistinriktning ^definition = "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen"
* hospPerson.legitimation.specialistbevis.specialistinriktning ^comment = "TKB-fält: `../../../specialistinriktning` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.specialistbevis.specialistbevisDatum ^definition = "Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.specialistbevis.specialistbevisDatum ^comment = "TKB-fält: `../../../ specialistbevisDatum` (`Datum`, kardinalitet 1..1)."
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning ^definition = "Anger typ av behörighetsbegränsning för en viss legitimation"
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning ^comment = "TKB-fält: `../../../typAvBehorighetsbegransning` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.ovrigBehorighet.behorighet ^definition = "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen"
* hospPerson.legitimation.ovrigBehorighet.behorighet ^comment = "TKB-fält: `../../../behorighet` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum ^definition = "Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum ^comment = "TKB-fält: `../../../ behorighetsDatum` (`Datum`, kardinalitet 1..1)."
