## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Se informationsspecifikationen [R9].

### Icke-funktionella krav

#### SLA-krav
Följande SLA-krav gäller för producenter av tjänstekontraktet GetCareServiceOfferings.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 150 ms | för anrop som returnerar <= 10 poster |
| Svarstid | < 1 s | för anrop som returnerar <= 100 poster |
| Svarstid | < 5 s | för anrop som returnerar > 100 poster <= 1000 |
| Svarstid | <15 s | För anrop som returnerar >= 1000 poster |
| Tillgänglighet | Dygnet runt alla dagar i veckan, 99,5 % |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Ingen information får vara äldre än 80 timmar |  |
Följande SLA-krav gäller för producenter av tjänstekontraktet GetOfferingCatalogues.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95 % av alla anrop |  |
| Tillgänglighet | Dygnet runt alla dagar i veckan, 99,5 % |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Ingen information får vara äldre än 80 timmar |  |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Vid ett logiskt fel ska resultCode sättas till ERROR. Om resultText innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Detta gäller dock enbart för skrivande/uppdaterande tjänster.
Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

#### Krav på en tjänstekonsument
N/A

