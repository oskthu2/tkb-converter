## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Tjänsteproducenten ansvarar för att information som lagras knyts till den vårdgivare som skickat informationen. Vid uppdatering av data ansvarar tjänsteproducenten för att vårdgivare endast kan uppdatera information som tillhör den anropande vårdgivaren.

### Icke funktionella krav
Det är verksamhetens ansvar att data inte finns dubblerad i flera källsystem. För patientdata som lagras i flera källsystem skall endast ett källsystem tillhandahålla informationen via skrivtjänst.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden får inte överstiga 5 sekunder |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Det behöver inte vara absolut aktualitet i förhållande till källsystemet. Tjänstekonsumenten avgör själv hur aktuell data ska vara. |  |

#### Övriga krav

##### Omsändning
Om Infektionsverktyget vid överföring returnerar ett informationsinnehållsfel som exempelvis att en okänd kod har använts markeras posten som felaktig och schemaläggs inte för ny överföring.
Temporära fel är alla fel som kan antas bero på nätverk eller problem med driftmiljö. Lagra denna post för omsändning vid nästa överföringstillfälle.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Logiska fel hanteras endast i skrivtjänster i domänen. Dessa ger svarskod INFO och ERROR och en kommentarstext i svarsmeddelandet med information om felet. ERROR ska skickas när hela meddelandet misslyckades och INFO används när delar av meddelandet lagrats och andra delar inte kunde lagras.  Kommentarstexten får inte innehålla känsliga personuppgifter.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| OK |  | Operationen genomförd utan fel |
| ERROR |  | Fel vid operationen. Felet beskrivs i elementet comment Information finns om operationen. Informationen beskrivs i elementet comment |

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla känsliga personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

#### Krav på en tjänstekonsument

##### Logiska fel
I domänens skrivtjänster fås svarskod och en kommentarstext med information om att logiskt fel uppstått. Exempel på logiska fel är obligatorisk data som saknas och felformaterad data.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Koden rekommenderas vara ett log-id enligt 4.3.1.2. När tekniska fel uppstår p.g.a. att producenten inte är tillgänglig måste konsumenten sända om data vid användning av skrivtjänster.

