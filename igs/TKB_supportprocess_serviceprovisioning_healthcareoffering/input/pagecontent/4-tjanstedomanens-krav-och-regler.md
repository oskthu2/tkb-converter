# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning Vård- och omsorgsutbud*, version 3.0 (2023-04-25), [TKB_supportprocess_serviceprovisioning_healthcareoffering.docx](TKB_supportprocess_serviceprovisioning_healthcareoffering.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Se informationsspecifikationen [R9].

### 4.2 Icke-funktionella krav

#### 4.2.1 SLA-krav

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

#### 4.2.2 Övriga krav

### 4.3 Felhantering

#### 4.3.1 Krav på en tjänsteproducent

##### 4.3.1.1 Logiska fel

Vid ett logiskt fel ska resultCode sättas till ERROR. Om resultText innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Detta gäller dock enbart för skrivande/uppdaterande tjänster.

Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

#### 4.3.2 Krav på en tjänstekonsument

N/A
