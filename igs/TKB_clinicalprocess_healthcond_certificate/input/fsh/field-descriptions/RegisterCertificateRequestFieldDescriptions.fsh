// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterCertificateRequestFieldDescriptions
* svarPa ^definition = "Om intyget utfärdas som ett svar på en fråga från intygsmottagaren (t.ex. en begäran om komplettering) ska referens till meddelandet skickas."
* svarPa ^comment = "TKB-fält: `svarPa*` (`MeddelandeReferens (se 7.1.7)`, kardinalitet 0..1).

**Mappning DIM:** Meddelande.meddelande-id, Meddelande.referens-id

**Modellanteckning:** Ska anges om intyget utfärdas som svar på en kompletteringsbegäran.
referensId ska anges om det skickades i frågan."
* intyg ^definition = "Ett intyg."
* intyg ^comment = "TKB-fält: `intyg*` (`Intyg (se 7.1.5)`, kardinalitet 1..1).

**Mappning DIM:** Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt

**Modellanteckning:** Komplett intyg inkl. patient, skapadAv, enhet och vårdgivare.
mottagare ska ej anges vid registrering.
skickatTidpunkt ska ange aktuell tidpunkt."
