// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesForCareFieldDescriptions
* intygsLista ^definition = "En lista av intyg som är signerade eller makulerade."
* intygsLista ^comment = "TKB-fält: `intygsLista` (`ListaType (lokalt definierad i kontraktet)`, kardinalitet 1..1).

**Mappning DIM:** -"
* intygsLista.intyg ^definition = "Ett intyg."
* intygsLista.intyg ^comment = "TKB-fält: `../intyg` (`Intyg (se 7.1.5)`, kardinalitet 0..*).

**Mappning DIM:** Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.skickattidpunkt"
