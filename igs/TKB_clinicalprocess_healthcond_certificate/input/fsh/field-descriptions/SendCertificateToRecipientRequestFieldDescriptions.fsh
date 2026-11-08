// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SendCertificateToRecipientRequestFieldDescriptions
* skickatTidpunkt ^definition = "Tidpunkt då begäran om att skicka intyg skickas."
* skickatTidpunkt ^comment = "TKB-fält: `skickatTidpunkt` (`TimeStampType`, kardinalitet 1..1).

**Mappning DIM:** -"
* intygs-id ^definition = "Identitet på intyget."
* intygs-id ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.intygs-id"
* patientPerson-id ^definition = "Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska skickas. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id."
* patientPerson-id ^comment = "TKB-fält: `patientPerson-Id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* mottagare ^definition = "Kodat värde som anger den part i intygshanteringsprocessen som intyget ska skickas till."
* mottagare ^comment = "TKB-fält: `mottagare` (`Part (se 7.2.9)`, kardinalitet 1..1).

**Mappning DIM:** Intygsmottagare.part"
* skickatAv ^definition = "Identifierar den person som skickar meddelandet. Denna information loggas men lagras inte i Intygstjänsten."
* skickatAv ^comment = "TKB-fält: `skickatAv`.

**Mappning DIM:** -"
* skickatAv.hosPersonal ^definition = "Skall anges när anrop görs från vården, och enbart då."
* skickatAv.hosPersonal ^comment = "TKB-fält: `../hosPersonal` (`HoSPersonal (se 7.1.4)`, kardinalitet 0..1).

**Mappning DIM:** HoS-personal, Enhet, Vårdgivare"
* skickatAv.person-id ^definition = "Skall anges när anrop görs från en invånartjänst, och enbart då."
* skickatAv.person-id ^comment = "TKB-fält: `../person-id` (`PersonId (se 7.2.10)`, kardinalitet 0..1).

**Mappning DIM:** Patient.person-id"
