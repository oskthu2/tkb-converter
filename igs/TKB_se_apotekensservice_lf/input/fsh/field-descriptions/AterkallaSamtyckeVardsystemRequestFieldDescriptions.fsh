// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: AterkallaSamtyckeVardsystemRequestFieldDescriptions
* klientinformation ^definition = "Information om anropande system."
* klientinformation ^comment = "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1)."
* klientinformation.anvandare ^definition = "Unikt användarid i anropande system."
* klientinformation.anvandare ^comment = "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1)."
* klientinformation.session ^definition = "Sessionens id i anropande system."
* klientinformation.session ^comment = "TKB-fält: `../session` (`string`, kardinalitet 1..1)."
* klientinformation.system ^definition = "GLN-kod för anropande system."
* klientinformation.system ^comment = "TKB-fält: `../system` (`string`, kardinalitet 1..1)."
* samtyckesgivare ^definition = "Giltigt personnummer för patient vars samtycke ska återkallas."
* samtyckesgivare ^comment = "TKB-fält: `samtyckesgivare` (`string`, kardinalitet 1..1)."
* samtyckestagareForskrivarkod ^definition = "Förskrivarkod för förskrivare som vars samtycke ska återkallas, valideras mot FORS. Skall vara samma som användare i klientinformation."
* samtyckestagareForskrivarkod ^comment = "TKB-fält: `samtyckestagareForskrivarkod` (`string`, kardinalitet 1..1)."
