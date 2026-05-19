# 3 Tjänstedomänens arkitektur

## Stödtjänst Erbjuden e-tjänst

Stödtjänster kan jämföras med funktioner som kan hämtas och användas i många olika e-tjänster. Genom att stödtjänsterna friläggs i form av tjänstekontrakt kan de återanvändas av flera konsumerande system.

Stödtjänster stöttar eller effektiviserar inte någon specifik verksamhetsprocess utan kan användas i flera olika sammanhang.

**Erbjuden e-tjänst** är en stödtjänst som visar vilka e-tjänster som erbjuds av en vårdenhet. Stödtjänstekontraktet möjliggör för en mängd aktörer att hämta information om tillgängliga e-tjänster på en specifik vårdenhet.

Ett exempel på hur stödtjänsten Erbjuden e-tjänst kan användas av ett konsumerande system, är att 1177.se med hjälp av stödtjänsten kan presentera vilka e-tjänster som finns tillgängliga för en patient.

## Tjänstedomänens namnrymd

| Attribut | Värde |
|----------|-------|
| Domän | eservicesupply |
| Underdomän | eoffering |
| Namnrymd | `urn:riv:eservicesupply:eoffering` |

## SLA-krav

Följande generella SLA-krav gäller för tjänsteproducenter av dessa tjänstekontrakt:

| Krav | Värde |
|------|-------|
| Svarstid | < 3 sekunder under 95% av alla anrop |
| Tillgänglighet | 24x7, 99,5% |
| Kapacitet | 1 transaktion per sekund |
