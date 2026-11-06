// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesForCareWithQAFieldDescriptions
* list ^definition = "En lista av intyg som kan vara signerade, makulerade eller i form av intygsutkast."
* list ^comment = "TKB-fält: `list` (`List (lokalt definierad i kontraktet)`, kardinalitet 0..1).

**Mappning DIM:** -"
* list.item ^definition = "Element som håller ihop objekt för ett intyg"
* list.item ^comment = "TKB-fält: `../item` (`ListItem (lokalt definierad i kontraktet)`, kardinalitet 0..*).

**Mappning DIM:** -"
* list.item.intyg ^definition = "Ett intyg enligt den gemensamma fälttypen Intyg."
* list.item.intyg ^comment = "TKB-fält: `../../intyg` (`Intyg (se 7.1.5)`, kardinalitet 1..1).

**Mappning DIM:** Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt"
* list.item.handelser ^definition = "En lista innehållande samtliga händelser för ett intyg."
* list.item.handelser ^comment = "TKB-fält: `../../handelser` (`HandelseList`, kardinalitet 1..1).

**Mappning DIM:** -"
* list.item.handelser.handelse ^definition = "Information om en händelse.

En händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg."
* list.item.handelser.handelse ^comment = "TKB-fält: `../../../handelse` (`Handelse (se 7.1.3)`, kardinalitet 0..*).

**Mappning DIM:** Händelse"
* list.item.skickadeFragor ^definition = "Frågor som rör intyget och som har skickats från vården."
* list.item.skickadeFragor ^comment = "TKB-fält: `../../skickadeFragor` (`Arenden (se 7.1.1)`, kardinalitet 1..1).

**Mappning DIM:** Ärende"
* list.item.mottagnaFragor ^definition = "Frågor som rör intyget och som har skickats från intygsmottagaren."
* list.item.mottagnaFragor ^comment = "TKB-fält: `../../mottagnaFragor` (`Arenden (se 7.1.1)`, kardinalitet 1..1).

**Mappning DIM:** Ärende"
* list.item.ref ^definition = "Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt."
* list.item.ref ^comment = "TKB-fält: `../../ref` (`string`, kardinalitet 0..1).

**Mappning DIM:** Referens.ref"
