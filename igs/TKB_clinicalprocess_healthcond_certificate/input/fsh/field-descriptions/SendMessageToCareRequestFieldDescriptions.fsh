// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SendMessageToCareRequestFieldDescriptions
* meddelande-id ^definition = "Unikt ID för meddelandet. ”Meddelande” syftar här på själva requestet. Är en GUID."
* meddelande-id ^comment = "TKB-fält: `meddelande-id` (`string`, kardinalitet 1..1).

**Mappning DIM:** Meddelande.meddelande-id"
* referens-id ^definition = "Valfri referens till entitet hos sändande part. Behöver ej vara unikt."
* referens-id ^comment = "TKB-fält: `referens-id` (`string`, kardinalitet 0..1).

**Mappning DIM:** Meddelande.referens-id"
* skickatTidpunkt ^definition = "Tidpunkt då meddelandet skickades."
* skickatTidpunkt ^comment = "TKB-fält: `skickatTidpunkt` (`TimeStampType`, kardinalitet 1..1).

**Mappning DIM:** Meddelande.avsänt tidpunkt"
* intygs-id ^definition = "Unikt ID för det intyg som meddelandet hör till."
* intygs-id ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.intygs-id"
* patientPerson-id ^definition = "Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som meddelandet hör till. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id."
* patientPerson-id ^comment = "TKB-fält: `patientPerson-Id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* logiskAdressMottagare ^definition = "Logisk adress för den vårdenhet som intygstjänsten ska vidarebefordra meddelandet till."
* logiskAdressMottagare ^comment = "TKB-fält: `logiskAdressMottagare*` (`string`, kardinalitet 1..1).

**Mappning DIM:** Enhet.Enhets-id.extension"
* amne ^definition = "Kodat värde som anger ämnet för frågan."
* amne ^comment = "TKB-fält: `amne*` (`Amneskod (se 7.2.1)`, kardinalitet 1..1).

**Mappning DIM:** Meddelande.ämne"
* rubrik ^definition = "En valfri rubrik som beskriver meddelandet."
* rubrik ^comment = "TKB-fält: `rubrik` (`string`, kardinalitet 0..1).

**Mappning DIM:** Meddelande.rubrik"
* meddelande ^definition = "Meddelandets text.

Om meddelandet är av ämne “Komplettering” ska det via det här fältet skickas det generella kompletteringsmeddelandet. Kompletteringmeddelandet som gäller en specifik fråga i intyget ska skickas via fältet komplettering/text"
* meddelande ^comment = "TKB-fält: `meddelande*` (`string`, kardinalitet 1..1).

**Mappning DIM:** Meddelande.meddelande"
* paminnelseMeddelande-id ^definition = "Identitet på ett tidigare skickat meddelande, som detta meddelande är en påminnelse om."
* paminnelseMeddelande-id ^comment = "TKB-fält: `paminnelseMeddelande-id*` (`string`, kardinalitet 0..1).

**Mappning DIM:** Meddelande.meddelande-id"
* svarPa ^definition = "Om detta meddelande är ett svar på en fråga från vården ska referens till frågan skickas"
* svarPa ^comment = "TKB-fält: `svarPa` (`MeddelandeReferens (se 7.1.7)`, kardinalitet 0..1).

**Mappning DIM:** Meddelande.meddelande-id, Meddelande.referens-id"
* skickatAv ^definition = "-"
* skickatAv ^comment = "TKB-fält: `skickatAv` (`-`, kardinalitet 1..1).

**Mappning DIM:** -"
* skickatAv.part ^definition = "Kodat värde som anger den part i intygshanteringsprocessen som skickar meddelandet."
* skickatAv.part ^comment = "TKB-fält: `../part` (`Part (se 7.2.9)`, kardinalitet 1..1).

**Mappning DIM:** Intygsmottagare.part"
* skickatAv.kontaktInfo ^definition = "Rader med kontaktinformation. Vilken information som skickas kan variera för olika intygsmottagare, och måste överenskommas mellan vården och intygsmottagaren."
* skickatAv.kontaktInfo ^comment = "TKB-fält: `../kontaktInfo` (`string`, kardinalitet 0..*).

**Mappning DIM:** Intygsmottagare. kontaktuppgift"
* komplettering ^definition = "Komplettering"
* komplettering ^comment = "TKB-fält: `komplettering*` (`-`, kardinalitet 0..*).

**Mappning DIM:** -"
* komplettering.frage-id ^definition = "Identitet på den fråga som intygsmottagaren önskar få kompletterad."
* komplettering.frage-id ^comment = "TKB-fält: `../frage-id` (`string`, kardinalitet 1..1).

**Mappning DIM:** Fråga.fråge-id"
* komplettering.instans ^definition = "Instansnummer för en fråga som förekommer i flera instanser."
* komplettering.instans ^comment = "TKB-fält: `../instans*` (`int`, kardinalitet 0..1).

**Mappning DIM:** Svar.instans"
* komplettering.text ^definition = "Kompletteringsmeddelande som gäller en specifik fråga i intyget. Texten ska inte vara redundant med den texten som skickades via fältet meddelande"
* komplettering.text ^comment = "TKB-fält: `../text*` (`string`, kardinalitet 1..1).

**Mappning DIM:** Kompletteringsfråga.kompletteringsfråga"
* sistaDatumForSvar ^definition = "Datum då intygsmottagaren senast vill ha ett svar."
* sistaDatumForSvar ^comment = "TKB-fält: `sistaDatumForSvar` (`DateType`, kardinalitet 0..1).

**Mappning DIM:** Meddelande.sista datum för svar"
