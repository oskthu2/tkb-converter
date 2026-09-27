# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning informationsecurity: authorization: pip*, version 1.0_RC1 (2017-06-28), [TKB_informationsecurity_authorization_pip.docx](TKB_informationsecurity_authorization_pip.docx).

### 4.1 Informationssäkerhet och juridik

Se informationsspecifikationen [R4].

### 4.2 Icke funktionella krav

Inga särskilda krav är definierade.

#### 4.2.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | 100 ms för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 50 anrop per sekund. |  |
| Aktualitet | Information i producent ska alltid vara aktuell när den visas för mottagaren (uppdatering är ej aktuell) |  |
| Återställningstid |  | 1 dygn. Vid katastrof som bortfall av drifthall. |

#### 4.2.2 Övriga krav

### 4.3 Felhantering

#### 4.3.1 Krav på en tjänsteproducent

##### 4.3.1.1 Logiska fel

Inga krav på producent.

##### 4.3.1.2 Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### 4.3.2 Krav på en tjänstekonsument

##### 4.3.2.1 Logiska fel

Inga krav på konsument.

##### 4.3.2.2 Tekniska fel

Inga krav på konsument.
