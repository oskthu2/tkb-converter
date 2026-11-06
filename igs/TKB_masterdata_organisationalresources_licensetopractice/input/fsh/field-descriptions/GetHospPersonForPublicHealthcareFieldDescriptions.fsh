// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHospPersonForPublicHealthcareFieldDescriptions
* hospPerson ^comment = "TKB-fält: `hospPerson*` (`HospPersonType`, kardinalitet 0..*).

**Modellanteckning:** En post i HOSP-registret med legitimationsinformation."
* hospPerson.hospId ^definition = "Unikt ID för en person i HOSP"
* hospPerson.hospId ^comment = "TKB-fält: `..hospId` (`String`, kardinalitet 1..1).

**Modellanteckning:** Unikt identifierare för personen i HOSP-registret.
OID för root: 1.2.752.116.3.1.1."
* hospPerson.personId ^definition = "Ett personnummer eller samordningsnummer för en person."
* hospPerson.personId ^comment = "TKB-fält: `../personId` (`II`, kardinalitet 0..1).

**Modellanteckning:** Personnummer (OID: 1.2.752.129.2.1.3.1) eller
samordningsnummer (OID: 1.2.752.129.2.1.3.3).
Format: ÅÅÅÅMMDDXXXX (12 siffror)."
* hospPerson.tidigarePersonId ^definition = "Ett tidigare personnummer eller samordningsnummer för en person."
* hospPerson.tidigarePersonId ^comment = "TKB-fält: `../tidigarePersonId` (`II`, kardinalitet 0..1).

**Modellanteckning:** Ett tidigare personnummer eller samordningsnummer om personen bytt identitet."
* hospPerson.efternamn ^definition = "En persons efternamn"
* hospPerson.efternamn ^comment = "TKB-fält: `../efternamn` (`String`, kardinalitet 1..1)."
* hospPerson.samtligaFornamn ^definition = "En persons samtliga förnamn"
* hospPerson.samtligaFornamn ^comment = "TKB-fält: `../samtligaFornamn` (`String`, kardinalitet 1..*)."
* hospPerson.fodelsedatum ^definition = "Datum för en persons födelse, anges enligt ÅÅÅÅMMDD"
* hospPerson.fodelsedatum ^comment = "TKB-fält: `../fodelsedatum` (`date`, kardinalitet 1..1)."
* hospPerson.skyddadIdentitetUpplysning ^definition = "Upplysning gällande en person med skyddad identitet"
* hospPerson.skyddadIdentitetUpplysning ^comment = "TKB-fält: `../skyddadidentitetUpplysning*` (`String`, kardinalitet 0..1).

**Modellanteckning:** Upplysningstext om kontakta Socialstyrelsen, används när personen har skyddad identitet.
Vid skyddad identitet returneras endast personnummer, födelsedatum, och denna upplysning."
* hospPerson.forskrivarkod ^definition = "En persons förskrivarkod"
* hospPerson.forskrivarkod ^comment = "TKB-fält: `../forskrivarkod` (`String`, kardinalitet 0..1).

**Modellanteckning:** Personens förskrivarkod. OID för root: 1.2.752.116.3.1.2."
* hospPerson.legitimation ^definition = "Legitimation innehåller en beskrivning av en persons legitimation"
* hospPerson.legitimation ^comment = "TKB-fält: `../legitimation` (`LegitimationType`, kardinalitet 0..*)."
* hospPerson.legitimation.legitimeratYrke ^definition = "Anger vilket legitimerat yrke som avses"
* hospPerson.legitimation.legitimeratYrke ^comment = "TKB-fält: `../../ legitimeratYrke` (`CV`, kardinalitet 1..1).

**Modellanteckning:** Anger vilket legitimerat yrke som avses.
Kodas enligt kodverket LegitimeratYrke (OID: 1.2.752.116.3.1.3)."
* hospPerson.legitimation.giltigLegitimation ^definition = "Anger om legitimationen är giltig"
* hospPerson.legitimation.giltigLegitimation ^comment = "TKB-fält: `../../giltigLegitimation` (`Boolean`, kardinalitet 1..1)."
* hospPerson.legitimation.utbildning ^definition = "Anger en persons utbildning för denna legitimation. OID= \"1.2.752.116.3.1.4\""
* hospPerson.legitimation.utbildning ^comment = "TKB-fält: `../../utbildning` (`CV`, kardinalitet 0..1)."
* hospPerson.legitimation.legitimationsDatum ^definition = "Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.legitimationsDatum ^comment = "TKB-fält: `../../legitimationsDatum` (`Datum`, kardinalitet 1..1)."
* hospPerson.legitimation.beslutsdatumFysioterapeut ^definition = "Anger datum då en person övergått från legitimerat yrke SG till FT"
* hospPerson.legitimation.beslutsdatumFysioterapeut ^comment = "TKB-fält: `../../beslutsdatumFysioterapeut` (`Datum`, kardinalitet 0..1)."
* hospPerson.legitimation.specialistbevis.specialistinriktning ^definition = "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen"
* hospPerson.legitimation.specialistbevis.specialistinriktning ^comment = "TKB-fält: `../../../specialistinriktning` (`CV`, kardinalitet 1..1).

**Modellanteckning:** Anger vilken specialistinriktning som avses.
OIDer: 1.2.752.116.3.1.6 (läkare 1992), 1.2.752.116.3.1.7 (läkare 1996),
1.2.752.116.3.1.8 (läkare 2008), 1.2.752.116.3.1.9 (läkare 2015),
1.2.752.116.3.1.10 (tandläkare 1993)."
* hospPerson.legitimation.specialistbevis.specialistbevisDatum ^definition = "Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.specialistbevis.specialistbevisDatum ^comment = "TKB-fält: `../../../ specialistbevisDatum` (`Datum`, kardinalitet 1..1)."
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning ^definition = "Anger typ av behörighetsbegränsning för en viss legitimation"
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning ^comment = "TKB-fält: `../../../typAvBehorighetsbegransning` (`CV`, kardinalitet 1..1).

**Modellanteckning:** Anger typ av behörighetsbegränsning.
Kodas enligt kodverket TypAvBehorighetsbegransning (OID: 1.2.752.116.3.1.5)."
* hospPerson.legitimation.ovrigBehorighet.behorighet ^definition = "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen"
* hospPerson.legitimation.ovrigBehorighet.behorighet ^comment = "TKB-fält: `../../../behorighet` (`CV`, kardinalitet 1..1)."
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum ^definition = "Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD"
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum ^comment = "TKB-fält: `../../../ behorighetsDatum` (`Datum`, kardinalitet 1..1).

**Modellanteckning:** Datum från vilket behörigheten är giltig. Format: ÅÅÅÅMMDD."
