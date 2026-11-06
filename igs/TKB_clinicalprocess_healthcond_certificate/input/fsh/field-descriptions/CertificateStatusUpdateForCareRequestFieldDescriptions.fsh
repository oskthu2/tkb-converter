// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CertificateStatusUpdateForCareRequestFieldDescriptions
* intyg ^definition = "Intygsutkast eller signerat intyg enligt den gemensamma typen Intyg."
* intyg ^comment = "TKB-fält: `intyg` (`Intyg (se 7.1.5)`, kardinalitet 1..1).

**Mappning DIM:** Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt"
* handelse ^definition = "Information om en händelse.

Händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg."
* handelse ^comment = "TKB-fält: `handelse` (`Handelse (se 7.1.3)`, kardinalitet 1..1).

**Mappning DIM:** Händelse"
* skickadeFragor ^definition = "Frågor som rör intyget och som har skickats från vården."
* skickadeFragor ^comment = "TKB-fält: `skickadeFragor` (`Arenden (se 7.1.1)`, kardinalitet 1..1).

**Mappning DIM:** Ärenden"
* mottagnaFragor ^definition = "Frågor som rör intyget och som har skickats från intygsmottagaren."
* mottagnaFragor ^comment = "TKB-fält: `mottagnaFragor` (`Arenden (se 7.1.1)`, kardinalitet 1..1).

**Mappning DIM:** Ärenden"
* ref ^definition = "Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt."
* ref ^comment = "TKB-fält: `ref` (`string`, kardinalitet 0..1).

**Mappning DIM:** Referens.ref"
* hanteratAv ^definition = "Den hälso- och sjukvårdspersonal som hanterar intyget och ger upphov till en statusuppdatering."
* hanteratAv ^comment = "TKB-fält: `hanteratAv` (`HSAId (se 7.2.5)`, kardinalitet 0..1).

**Mappning DIM:** HoS-personal.personal-id"
