# 4 Tjänstedomänens krav och regler - infrastructure: itintegration: registry v2

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

## Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik

Inte tillämpligt.

### Icke funktionella krav

#### SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |   |
| Tillgänglighet | 24x7, 99,5% |   |
| Last | 1 transaktion per sekund |   |
| Aktualitet | Online mot underliggande lagringstjänst. |   |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel

| | | |
| :--- | :--- | :--- |
|   |   |   |
|   |   |   |

##### Tekniska fel

Utöver hantering av tekniska fel enligt RIV-TA är följande fel specifikt definierade:

| | | |
| :--- | :--- | :--- |
| IllegalArgumentException | ServiceContractNamespece must not be empty or null | Felet orsakas av att ServiceContractNamespece saknas. |
| IllegalArgumentException | ServiceConsumerHsaId must not be empty or null | Felet orsakas av att ServiceConsumerHsaId saknas. |

#### Krav på en tjänstekonsument

Vid tekniskt fel så får omsändningsförsök inte göras oftare än en gång var femte minut.

