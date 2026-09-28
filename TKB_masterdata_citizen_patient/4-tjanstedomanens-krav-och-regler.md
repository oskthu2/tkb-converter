# 4 Tjänstedomänens krav och regler - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

Källa: **Tjänstekontraktsbeskrivning masterdata: citizen: patient**, version 1.0_RC1 (2017-01-26), [TKB_masterdata_citizen_patient.docx](TKB_masterdata_citizen_patient.docx). Dokumentet är till stor del en ej ifylld mall; texten återges ordagrant och fältreglerna enligt schemat finns i avsnitt 7.

Beskriv behandlingsregler som är gemensamma för tjänstekontrakten i domänen. Exempel nedan.

Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.

Detta kan t ex inbegripa:

Villkor för att få använda informationen…

Omsändning, inte för ofta…

Autentisering av användare

Informationssäkerhet specifikt för konsumentapplikationer

…

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Se Tjänstekontraktsbeskrivning – exempel.

### 4.2 Icke funktionella krav

Här skall de icke funktionella krav som verksamheten har och som gäller för aktuell domän och/eller tjänstekontrakt beskrivas.

Kan lämpligen hämtas från tidigare dokumentation i mallen ”Icke funktionella krav” http://rivta.se/documents/ARK_0023

#### 4.2.1 SLA krav

SLA-krav är obligatoriskt att beskriva.

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |   |
| Tillgänglighet | 24x7, 99,5% |   |
| Last | 1 transaktion per sekund |   |
| Aktualitet | Ingen information får vara äldre än… |   |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| … |   |   |

#### 4.2.2 Övriga krav

### 4.3 Felhantering

Se Tjänstekontraktsbeskrivning – exempel.

#### 4.3.1 Krav på en tjänsteproducent

##### 4.3.1.1 Logiska fel

Beskriv vilka felkoder som används samt hur de skall tolkas. Tänk speciellt på eventuella krav som ställs på konsumenters hantering. Om inte krav finns är tabellen nedan tom.

| | | |
| :--- | :--- | :--- |
| Fel X | 1 | Bla bla |
| … |   |   |

#### 4.3.2 Krav på en tjänstekonsument

