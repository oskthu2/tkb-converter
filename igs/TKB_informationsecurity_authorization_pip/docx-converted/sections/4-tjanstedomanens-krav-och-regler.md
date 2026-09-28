## Tjänstedomänens krav och regler

### Informationssäkerhet och juridik
Se informationsspecifikationen [R4].

### Icke funktionella krav
Inga särskilda krav är definierade.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | 100 ms för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 50 anrop per sekund. |  |
| Aktualitet | Information i producent ska alltid vara aktuell när den visas för mottagaren (uppdatering är ej aktuell) |  |
| Återställningstid |  | 1 dygn. Vid katastrof som bortfall av drifthall. |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Inga krav på producent.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav på konsument.

##### Tekniska fel
Inga krav på konsument.

