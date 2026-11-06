// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateDraftCertificateFieldDescriptions
* intygsId ^definition = "Unikt ID för det intygsutkast som skapats."
* intygsId ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 0..1).

**Mappning DIM:** Intyg.intygs-id

**Modellanteckning:** Returneras om anropet lyckades. Utelämnas vid fel."
* result ^definition = "Information om anropets resultat (OK, ERROR, INFO)"
* result ^comment = "TKB-fält: `result` (`ResultType  (se 7.1.10)`, kardinalitet 1..1).

**Mappning DIM:** -"
