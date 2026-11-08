// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesForCareRequestFieldDescriptions
* person-id ^definition = "Person- eller samordningsnummer för patienten."
* person-id ^comment = "TKB-fält: `person-id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* vardgivar-id ^definition = "HSA-id för vårdgivaren."
* vardgivar-id ^comment = "TKB-fält: `vardgivar-id*` (`HsaId (se 7.2.5)`, kardinalitet 0..1).

**Mappning DIM:** Vårdgivare.vårdgivar-id"
* enhets-id ^definition = "HSA-id för enheten."
* enhets-id ^comment = "TKB-fält: `enhets-id*` (`HsaId (se 7.2.5)`, kardinalitet 0..*).

**Mappning DIM:** Enhet.enhets-id"
