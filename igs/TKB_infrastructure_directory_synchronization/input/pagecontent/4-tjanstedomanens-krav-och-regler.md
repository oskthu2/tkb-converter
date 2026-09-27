# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning för katalogtjänstsynkronisering*, version 1.0_RC3 (2018-09-21), [TKB_infrastructure_directory_synchronization.docx](TKB_infrastructure_directory_synchronization.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Domänen hanterar inga personuppgifter.

### 4.2 Icke funktionella krav

#### 4.2.1 SLA krav

Följande SLA-krav gäller för producenter av tjänstekontraktet GetMasterDataChangeSet.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1s per 1 000 returnerade poster. | Mindre än 1s för upp till 1 000 returnerade poster och mindre än 2s för upp till 2 000 returnerade poster etc. |
| Tillgänglighet | Samma som för masterdatakällans primära tjänstekontrakt. |  |
| Last | Ett anrop per timme och tjänstekonsument. |  |
| Aktualitet | Svaret på en begäran ska i varje ögonblick spegla masterdatakällan, d.v.s. det ska inte finnas någon fördröjning från att masterdatakällan förändras till att posten ingår i svaret i GetMasterDataChangeSet. |  |

#### 4.2.2 Övriga krav

### 4.3 Felhantering

#### 4.3.1 Krav på en tjänsteproducent

Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### 4.3.1.1 Logiska fel

Ej tillämpbart.

##### 4.3.1.2 Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### 4.3.2 Krav på en tjänstekonsument

##### 4.3.2.1 Logiska fel

Ej tillämpbart.

##### 4.3.2.2 Tekniska fel

Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.
