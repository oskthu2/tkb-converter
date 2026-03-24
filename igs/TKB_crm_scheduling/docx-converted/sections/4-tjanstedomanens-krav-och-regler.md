## Tjänstedomänens krav och regler

### Informationssäkerhet
Tidbokningsinformation klassas som patientuppgifter. Nyttjare (organisation som ansvarar för tjänstekonsumenter) av tjänstekontrakten blir personuppgiftsbiträde. I personuppgiftsbiträdesrollen ingår att säkerställa att invånaren är starkt autentiserad i enlighet med Socialstyrelsens föreskrifter (SOSFS 2008:14).
Genom att dessa krav hanteras av tjänstekonsumenten i kombination med att säker kommunikation mellan tjänstekonsument och tjänsteproducent sker enligt RIV Tekniska Anvisningar, etableras tekniska förutsättningar för tillit mellan respektive informationsägare (vårdenhet) och de förvaltningar/e-tjänster som erbjuder invånaren direktåtkomst till sina bokningsuppgifter via tjänstekontrakten som beskrivs i detta dokument.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 3 sekunder för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Online mot underliggande tidbok. Uppdateringar genom en tjänst ska omedelbart speglas i svar från frågor genom tjänsterna. T.ex. ska en avbokad tidpunkt bli öppen för bokning omedelbart efter avbokningsanropet. |  |

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren. Användaren kommer enbart att se ”tekniskt fel – inte detaljinformation. Den riktar sig till systemförvaltaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText. Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för invånaren.

#### Krav på en tjänsteproducent

##### Logiska fel

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
|  |  |  |

#### Krav på en tjänstekonsument

