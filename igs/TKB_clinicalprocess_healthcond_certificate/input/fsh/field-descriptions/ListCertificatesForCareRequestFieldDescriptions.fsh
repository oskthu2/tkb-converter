// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesForCareRequestFieldDescriptions
* personId ^definition = "Person- eller samordningsnummer för patienten."
* personId ^comment = "TKB-fält: `person-id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* enhetsId ^definition = "HSA-id för enheten."
* enhetsId ^comment = "TKB-fält: `enhets-id*` (`HsaId (se 7.2.5)`, kardinalitet 0..*).

**Mappning DIM:** Enhet.enhets-id

**Modellanteckning:** HSA-id för en eller flera enheter vars intyg ska sökas. Kan ej kombineras med vardgivareId.
Villkorlig kardinalitet: antingen enhetsId eller vardgivareId ska anges."
