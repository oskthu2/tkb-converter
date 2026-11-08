// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RevokeCertificateRequestFieldDescriptions
* meddelande ^definition = "Beskrivning av orsak till makuleringen."
* meddelande ^comment = "TKB-fält: `meddelande` (`string`, kardinalitet 0..1).

**Mappning DIM:** Makulering.meddelande"
* skickatTidpunkt ^definition = "Tidpunkt då makuleringen skickades från vården."
* skickatTidpunkt ^comment = "TKB-fält: `skickatTidpunkt` (`TimeStampType`, kardinalitet 1..1).

**Mappning DIM:** Makulering.tidpunkt"
* intygs-id ^definition = "Unikt ID för det intyg som skall makuleras."
* intygs-id ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.intygs-id"
* patientPerson-id ^definition = "Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska makuleras. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id."
* patientPerson-id ^comment = "TKB-fält: `patientPerson-Id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* skickatAv ^definition = "Identifierar den som utför makuleringen."
* skickatAv ^comment = "TKB-fält: `skickatAv` (`HoSPersonal (se 7.1.4)`, kardinalitet 1..1).

**Mappning DIM:** HoS-personal, Enhet, Vårdgivare"
