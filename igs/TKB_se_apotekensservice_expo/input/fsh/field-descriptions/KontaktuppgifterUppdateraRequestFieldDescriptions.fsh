// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: KontaktuppgifterUppdateraRequestFieldDescriptions
* epostadressServicedesk ^definition = "E-postadress till aktörens servicedesk"
* epostadressServicedesk ^comment = "TKB-fält: `epostadressServicedesk` (`string`, kardinalitet 1..1)."
* kontaktpersonLista ^definition = "Kontaktpersoner. Minst en kontaktperson måste anges."
* kontaktpersonLista ^comment = "TKB-fält: `kontaktpersonLista` (`KontaktpersonRequest`, kardinalitet 1..*)."
* kontaktpersonLista.befattning ^definition = "Kontaktpersonens befattning."
* kontaktpersonLista.befattning ^comment = "TKB-fält: `../befattning` (`string`, kardinalitet 1..1)."
* kontaktpersonLista.efternamn ^definition = "Efternamn på kontaktperson hos aktören."
* kontaktpersonLista.efternamn ^comment = "TKB-fält: `../efternamn` (`string`, kardinalitet 1..1)."
* kontaktpersonLista.epostadress ^definition = "Kontaktpersonens e-postadress"
* kontaktpersonLista.epostadress ^comment = "TKB-fält: `../epostadress` (`string`, kardinalitet 1..1)."
* kontaktpersonLista.fornamn ^definition = "Förnamn på kontaktperson hos aktören."
* kontaktpersonLista.fornamn ^comment = "TKB-fält: `../fornamn` (`string`, kardinalitet 1..1)."
* kontaktpersonLista.telefonnummer ^definition = "Kontaktpersonens telefonnummer."
* kontaktpersonLista.telefonnummer ^comment = "TKB-fält: `../telefonnummer` (`string`, kardinalitet 1..1)."
* orgNr ^definition = "Aktörens organisationsnummer"
* orgNr ^comment = "TKB-fält: `orgNr` (`long`, kardinalitet 1..1)."
* telefonnummerServicedesk ^definition = "Telefonnummer till aktörens servicedesk"
* telefonnummerServicedesk ^comment = "TKB-fält: `telefonnummerServicedesk` (`string`, kardinalitet 1..1)."
