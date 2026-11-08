// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesForCareWithQARequestFieldDescriptions
* person-id ^definition = "Person- eller samordningsnummer för patienten."
* person-id ^comment = "TKB-fält: `person-id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* enhets-id ^definition = "HSA-id för enheten."
* enhets-id ^comment = "TKB-fält: `enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 0..*).

**Mappning DIM:** Enhet.enhets-id"
* vardgivar-id ^definition = "HSA-id för vårdgivaren."
* vardgivar-id ^comment = "TKB-fält: `vardgivar-id` (`HsaId (se 7.2.5)`, kardinalitet 0..1).

**Mappning DIM:** Vårdgivare.vårdgivar-id"
* fromTidpunkt ^definition = "Hämta intyg och händelser, där händelserna inträffat från och med denna tidpunkt. Endast de händelser som inträffat från och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning bakåt i tiden."
* fromTidpunkt ^comment = "TKB-fält: `fromTidpunkt` (`TimeStampType`, kardinalitet 0..1).

**Mappning DIM:** -"
* tomTidpunkt ^definition = "Hämta intyg och händelser, där händelserna inträffat fram till och med denna tidpunkt. Endast de händelser som inträffat till och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning framåt i tiden."
* tomTidpunkt ^comment = "TKB-fält: `tomTidpunkt` (`TimeStampType`, kardinalitet 0..1).

**Mappning DIM:** -"
