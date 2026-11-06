// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateDraftCertificateRequestFieldDescriptions
* intyg ^definition = "Utkast till intyg."
* intyg ^comment = "TKB-fält: `intyg` (`Intyg (lokalt definierad i kontraktet)`, kardinalitet 1..1).

**Mappning DIM:** Intyg"
* intyg.typAvIntyg ^definition = "Kodat värde som anger intygstypen."
* intyg.typAvIntyg ^comment = "TKB-fält: `../typAvIntyg` (`TypAvIntyg (se 7.2.11)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.typ"
* intyg.patient ^definition = "Uppgifter om den patient som intyg skapas för."
* intyg.patient ^comment = "TKB-fält: `../patient*` (`Patient (se 7.1.8)`, kardinalitet 1..1).

**Mappning DIM:** Patient"
* intyg.skapadAv ^definition = "Hälso- och sjukvårdspersonal som skapar intyg."
* intyg.skapadAv ^comment = "TKB-fält: `../skapadAv` (`HosPersonal (lokalt definierad i kontraktet)`, kardinalitet 1..1).

**Mappning DIM:** Hos-personal

**Modellanteckning:** Namn hämtas från vårdsystemet — ej från HSA — och skickas med i anropet.
Uppgifter om vårdgivare ska ej skickas, utan hämtas från HSA via enhets-id."
* intyg.skapadAv.personalId ^definition = "HSA-id för hälso- och sjukvårdspersonalen som skapar intygsutkastet."
* intyg.skapadAv.personalId ^comment = "TKB-fält: `../../personal-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).

**Mappning DIM:** HoS-personal.personal-id"
* intyg.skapadAv.fullstandigtNamn ^definition = "Personalens förnamn + efternamn."
* intyg.skapadAv.fullstandigtNamn ^comment = "TKB-fält: `../../fullstandigtNamn` (`string`, kardinalitet 1..1).

**Mappning DIM:** HoS-personal.fullständigt namn"
* intyg.skapadAv.enhet ^definition = "Enhet som intyg skapas på."
* intyg.skapadAv.enhet ^comment = "TKB-fält: `../../enhet` (`Enhet (lokalt definierad i kontraktet)`, kardinalitet 1..1).

**Mappning DIM:** Enhet"
* intyg.skapadAv.enhet.enhetsId ^definition = "HSA-id för enheten."
* intyg.skapadAv.enhet.enhetsId ^comment = "TKB-fält: `../../../enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).

**Mappning DIM:** Enhet.enhets-id"
* intyg.skapadAv.enhet.enhetsnamn ^definition = "Enhetens namn."
* intyg.skapadAv.enhet.enhetsnamn ^comment = "TKB-fält: `../../../enhetsnamn` (`string`, kardinalitet 1..1).

**Mappning DIM:** Enhet.enhetsnamn"
* intyg.ref ^definition = "Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt."
* intyg.ref ^comment = "TKB-fält: `../ref` (`string`, kardinalitet 0..1).

**Mappning DIM:** Referens.ref"
