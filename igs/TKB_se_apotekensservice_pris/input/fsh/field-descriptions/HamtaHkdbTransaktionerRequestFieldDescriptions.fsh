// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaHkdbTransaktionerRequestFieldDescriptions
* klientinformation ^definition = "Objekt innehållande information om anropande klientsystem."
* klientinformation ^comment = "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1)."
* klientinformation.anvandare ^definition = "Unikt användarid i anropande system."
* klientinformation.anvandare ^comment = "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1)."
* klientinformation.session ^definition = "Sessionens id i anropande system."
* klientinformation.session ^comment = "TKB-fält: `../session` (`string`, kardinalitet 1..1)."
* klientinformation.system ^definition = "GLN-kod för anropande system."
* klientinformation.system ^comment = "TKB-fält: `../system` (`string`, kardinalitet 1..1)."
* maxantal ^definition = "Ställer in begränsning av maximala mängden returnerade transaktioner. T.ex innebär maxantal = 5, att endast de fem senaste transaktionerna hämtas. Om maxantal inte anges så är defaultvärde fem. Om man vill ha alla transaktioner sätts maxantal till -1."
* maxantal ^comment = "TKB-fält: `maxantal` (`int`, kardinalitet 0..1)."
* persNr ^definition = "Personnummer för den som sökningen gäller."
* persNr ^comment = "TKB-fält: `persNr` (`string`, kardinalitet 1..1)."
