# 4 Tjänstedomänens krav och regler - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

## Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik

Se informationsspecifikationen [R3] för informationssäkerhetsklassning.

#### Krav på tjänstekonsumenten

Ansvarig för tjänstekonsumenten ansvarar för att slutanvändaren är inloggad och behörig att ta del av informationen i e-tjänsten.

#### Krav på tjänsteproducenten

Ansvarig för tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter och att slutanvändaren är inloggad med stark autentisering och behörig att ta del av informationen i e-tjänsten.

### SLA-krav/support

#### Tillgänglighet/support

Dessa tjänster driftas med kontorstidssupport. System som utnyttjar dem skall inte vara beroende av tillgänglighet hos tjänsterna under vård av enskild patient. Dessa system måste därför kunna hantera omsändningar av information vid ett senare tillfälle. Tjänsterna är normalt tillgängliga 24h/dygn.

#### SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund exklusive nätverksfördröjningar för 95% av alla anrop |   |
| Tillgänglighet | 99% |   |
| Last | 1 transaktion per sekund | Notera att användningsfrekvensen inte kommer vara jämn över dygnet utan toppar kommer finnas då antalet anrop är betydligt högre än snittet. Förväntad högre belastning 08:00 - 17:00 vardagar. |
| Aktualitet | All information skall alltid vara uppdaterad |   |
| Återställningstid | 2 dygn | Vid katastrof, bortfall av hel hall |
| Servicefönster | Servicefönster första tisdagen i månaden kl. 17-19 |   |

#### Intervall mellan hämtningar

När en tjänstekonsument hämtar förfrågningar (med tjänstekontraktet ListInquiries) så görs detta med fördel automatiskt med jämna mellanrum, t.ex. en minut. Hämtning får dock inte göras oftare än en gång per minut för att undvika överbelastning hos tjänsteproducenten. Det samma gäller vid hämtning av aktuella beställningar (med tjänstekontraktet ListBookings).

### Felhantering

#### Krav på en tjänsteproducent

Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiska fel

För uppdaterande tjänster skall resultCode sättas till någon av de giltiga koderna enligt [R6]. Om resultText innehåller ett meddelande så skall det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.

##### Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Det rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel

För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### Tekniska fel

Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

