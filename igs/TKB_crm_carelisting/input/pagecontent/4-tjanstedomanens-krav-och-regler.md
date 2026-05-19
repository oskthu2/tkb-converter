## 4 Tjänstedomänens krav och regler

> **OBS:** Källdokumentet (RIV_spec_Nationell_Listningsstjänsten.docx) är en informationsspecifikation och saknar ett explicit avsnitt för krav och regler. Nedan återges de regler som kan utläsas ur källdokumentet och XSD-filerna.

### Identifieringsregler

* **personId** ska vara ett giltigt personnummer, samordningsnummer eller reservnummer. Personnummer kan anges med eller utan sekelsiffror; bindestreck är valfritt.
* **HSA-ID** används för att identifiera vårdenheter (facilityId) och personal (resourceId). Format: `1.2.752.129.2.1.4.1`.

### Listningstyper

Listningstyper (t.ex. BVC, HLM, FL) är inte definierade i ett centralt kodverk. Varje anslutningspunkt måste vara konsistent i benämningen — t.ex. om "BVC" används i ett anrop ska inte "BVM" användas i ett annat anrop mot samma system.

### Köhantering

* Om en vårdenhet har kö anges detta med `hasQueue = true`.
* Vid `CreateListing` kan konsumenten ange `addToQueue = true` om personen vill ställa sig i kö vid belastning.

### Felhantering

| Undantag | Beskrivning |
|----------|-------------|
| `PersonNotFoundException` | Personen kunde inte hittas i systemet. |
| `InvalidFacilityException` | Angiven vårdenhet är ogiltig (används av CreateListing). |
| `TechnicalException` | Tekniskt fel i tjänsten — det kan vara värt att försöka igen. |
