// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesForCareWithQARequestFieldDescriptions
* personId ^definition = "Person- eller samordningsnummer för patienten."
* personId ^comment = "TKB-fält: `person-id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person-id"
* enhetsId ^definition = "HSA-id för enheten."
* enhetsId ^comment = "TKB-fält: `enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 0..*).

**Mappning DIM:** Enhet.enhets-id

**Modellanteckning:** Ska ej anges tillsammans med vardgivareId."
* fromTidpunkt ^definition = "Hämta intyg och händelser, där händelserna inträffat från och med denna tidpunkt. Endast de händelser som inträffat från och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning bakåt i tiden."
* fromTidpunkt ^comment = "TKB-fält: `fromTidpunkt` (`TimeStampType`, kardinalitet 0..1).

**Mappning DIM:** -"
* tomTidpunkt ^definition = "Hämta intyg och händelser, där händelserna inträffat fram till och med denna tidpunkt. Endast de händelser som inträffat till och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning framåt i tiden."
* tomTidpunkt ^comment = "TKB-fält: `tomTidpunkt` (`TimeStampType`, kardinalitet 0..1).

**Mappning DIM:** -"
