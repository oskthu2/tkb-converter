## Tjänstedomänens krav och regler
Beskriv behandlingsregler som är gemensamma för tjänstekontrakten i domänen. Exempel nedan.
Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.
Detta kan t ex inbegripa:
Villkor för att få använda informationen…
Omsändning, inte för ofta…
Autentisering av användare
Informationssäkerhet specifikt för konsumentapplikationer
…
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Se Tjänstekontraktsbeskrivning – exempel.

### Icke funktionella krav
Här skall de icke funktionella krav som verksamheten har och som gäller för aktuell domän och/eller tjänstekontrakt beskrivas.
Kan lämpligen hämtas från tidigare dokumentation i mallen ”Icke funktionella krav”  http://rivta.se/documents/ARK_0023

#### SLA krav
SLA-krav är obligatoriskt att beskriva.
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Ingen information får vara äldre än… |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| … |  |  |

#### Övriga krav

### Felhantering
Se Tjänstekontraktsbeskrivning – exempel.

#### Krav på en tjänsteproducent

##### Logiska fel
Beskriv vilka felkoder som används samt hur de skall tolkas. Tänk speciellt på eventuella krav som ställs på konsumenters hantering. Om inte krav finns är tabellen nedan tom.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Fel X | 1 | Bla bla |
| … |  |  |

#### Krav på en tjänstekonsument

