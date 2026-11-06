// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SkapaHkdbKontoRequestFieldDescriptions
* huvudPersNr ^definition = "Personnummer för eventuell huvudperson."
* huvudPersNr ^comment = "TKB-fält: `huvudPersNr` (`string`, kardinalitet 0..1)."
* klientinformation ^definition = "Objekt innehållande information om anropande klientsystem."
* klientinformation ^comment = "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1)."
* klientinformation.anvandare ^definition = "Unikt användarid i anropande system."
* klientinformation.anvandare ^comment = "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1)."
* klientinformation.session ^definition = "Sessionens id i anropande system."
* klientinformation.session ^comment = "TKB-fält: `../session` (`string`, kardinalitet 1..1)."
* klientinformation.system ^definition = "GLN-kod för anropande system."
* klientinformation.system ^comment = "TKB-fält: `../system` (`string`, kardinalitet 1..1)."
* periodBrutto ^definition = "Ackumulerat bruttobelopp i kronor och ören. Från och med version 10.3 ersätter periodBrutto periodNetto."
* periodBrutto ^comment = "TKB-fält: `periodBrutto` (`double`, kardinalitet 0..1)."
* periodStart ^definition = "Eventuellt startdatum för innevarande högkostnadsperiod."
* periodStart ^comment = "TKB-fält: `periodStart` (`dateTime`, kardinalitet 0..1)."
* persNr ^definition = "Personnummer för den som ska anslutas."
* persNr ^comment = "TKB-fält: `persNr` (`string`, kardinalitet 1..1)."
