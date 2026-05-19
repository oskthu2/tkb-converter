# 4 Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

## Informationssäkerhet och juridik

### Krav på en tjänsteproducent

**Informationssäkerhet**

Inga tjänster inom domän hanterar känslig eller skyddad information.

### Krav på en tjänstekonsument

**Informationssäkerhet**

Inga tjänster inom domän hanterar känslig eller skyddad information. Användningen av information bör följa riktlinjer från Socialstyrelsen kring Försäkringsmedicinskt beslutsstöd, se www.socialstyrelsen.se/riktlinjer/forsakringsmedicinsktbeslutsstod.

## Icke funktionella krav

### SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | <10 sekunder för 95 % av alla anrop |  |
| Tillgänglighet | 99,5% under vardagar 9-17. Detta motsvarar en tillgänglighet på 24% av den totalt tillgängliga upptiden på årsbasis |  |
| Last | 1 transaktion per minut |  |
| Återställningstid | 1 vecka | Vid katastrof, bortfall av hel hall |

### Säkerhet

Tjänsten skall vara publikt tillgänglig och är enbart läsande och har därför inga definierade krav på:

- autenticering
- auktorisering
- kryptering
- spårbarhet

## Felhantering

### Krav på en tjänsteproducent

**Tekniska fel**

Tekniska fel ska kommuniceras via SOAP Faults.

### Krav på en tjänstekonsument

En omsändningsstrategi skall endast tillämpas vid tekniska fel. Denna skall innehålla ett begränsat antal försök under ett ökande tidsintervall samt med ett begränsat antal omsändningsförsök.

**Felhantering**

Då alla tjänster används synkront är det tjänstekonsumenten som ansvarar för att korrekt tolka fel i samband med kommunikation.
