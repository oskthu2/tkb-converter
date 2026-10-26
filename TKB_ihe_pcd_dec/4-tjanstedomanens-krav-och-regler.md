# 4 Tjänstedomänens krav och regler - ihe: pcd: dec v1.0.1

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

Källa: **Tjänstekontraktsbeskrivning IHE PCD DEC – Mätdata från mätutrustning**, version 1.0.1 (2017-10-18), [TKB_IHE_PCD_DEC.docx](TKB_IHE_PCD_DEC.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Behöver information ifrån Inera AR

### 4.2 Icke funktionella krav

#### 4.2.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |   |
| Tillgänglighet | 24x7, 99,5% |   |
| Last | 1 transaktion per sekund |   |
| Aktualitet | Ingen information får vara äldre än… |   |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### 4.2.2 Övriga krav

### 4.3 Felhantering

#### 4.3.1 Krav på en tjänsteproducent

##### 4.3.1.1 Logiska fel

Skall följa de regler för ”PCD-01 Observation Result message”, och följa de koder som anges som giltiga enligt Message Acknowledgment Segment. Se referenser R10, R11, R12. Exempel på svarsmeddelande finns även I kapitel 6.1.3

##### 4.3.1.2 Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### 4.3.2 Krav på en tjänstekonsument

N/A

### 4.4 Kodverk

Nedan listas tre huvudområden och dess kodverk som domänen tillåter att användas i OBX-fält, utöver det som Continua kräver för en WAN-certifierad device så tillåter domänen ytterligare två områden med utpekade kodverk.

#### 4.4.1 Continua

Continua guidelines pekar ut IEEE 11073 20601/104xx för överföring av mätdata ifrån PHD.

#### 4.4.2 Medicinteknisk utrustning

Medicinteknisk utrustning som används vid vårdplats som stödjer IEEE 11073-10101/10201 får användas, dvs de MDC_koder som finns definierade i 11073-10101/10201 används istället för 11073-20601/104xx i OBX-fält.

