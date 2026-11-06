// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: KopplaBarnKontoRequestFieldDescriptions
* huvudPersNr ^definition = "Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot."
* huvudPersNr ^comment = "TKB-fält: `huvudPersNr` (`string`, kardinalitet 0..1)."
* klientinformation ^definition = "Objekt innehållande information om anropande klientsystem."
* klientinformation ^comment = "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1)."
* klientinformation.anvandare ^definition = "Unikt användarid i anropande system."
* klientinformation.anvandare ^comment = "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1)."
* klientinformation.session ^definition = "Sessionens id i anropande system."
* klientinformation.session ^comment = "TKB-fält: `../session` (`string`, kardinalitet 1..1)."
* klientinformation.system ^definition = "GLN-kod för anropande system."
* klientinformation.system ^comment = "TKB-fält: `../system` (`string`, kardinalitet 1..1)."
* persNr ^definition = "Personnummer för den vars konto ska uppdateras."
* persNr ^comment = "TKB-fält: `persNr` (`string`, kardinalitet 1..1)."
