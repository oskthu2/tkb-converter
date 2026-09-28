# 4 Tjänstedomänens krav och regler - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

Källa: **Spärr**, tjänstekontraktsbeskrivning version 4.0.4 (2024-10-18), [TKB_informationsecurity_authorization_blocking.docx](TKB_informationsecurity_authorization_blocking.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Tjänstedomänens juridiska krav baseras bl.a på RIV PDLiP [R1], Patientdatalagen [R2] samt HSLF-FS 2016:40 [R3]

### 4.2 Stark autentisering av användaren

Vid spärrhantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för spärradministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### 4.3 Krav på konsumenten

Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad (enligt kap 4.2) inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas. Tjänstekonsumenten ansvarar för att det endast är möjligt för en aktör att skapa och hantera spärrar för den vårdgivare som aktören har uppdrag för.

### 4.4 Icke funktionella krav

#### 4.4.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |   |
| Tillgänglighet | 24x7, 99,5% |   |
| Last | 10 transaktion per sekund |   |
| Aktualitet | Se respektive tjänstekontrakt |   |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### 4.4.2 Övriga krav

##### 4.4.2.1 Hantering av otillgänglighet

Tjänstekontrakten stödjer en arkitektur där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.

Ett vårdsystem som endast har behov av spärrar tillhörande lokala/regionala vårdgivare, kan anropa tjänsten på lokal nivå med angivande av ett begränsat organisationsomfång. Otillgänglighet på nationell spärrtjänst får inte påverka ett sådant svar från tjänsten.

För frågor som ställs med det nationella omfånget finns ett naturligt beroende till tillgång till det samlade underlaget i nationell spärrtjänst.

För att hantera åtkomst till vårdinformation i ett system är det främst tillgång till spärrunderlaget som är kritiskt. Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste spärrunderlaget respektive senaste spärrkontrollsbeslutet. Verksamhetens krav på aktualitet på spärrunderlaget måste här avgöra hur länge spärrinformationen kan mellanlagras.

Tjänsteproducenten, t ex på lokal nivå, kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implementering av tjänsten vilken förväntad aktualitet som gäller.

Lokal spärrtjänst skall ej påverkas av ett scenario där den nationella spärrtjänsten blir otillgänglig. De spärrar som finns tillgängliga i den lokala spärrtjänsten skall alltid returneras till det konsumerande systemet.

Se även Ref #7 för hantering av otillgänglighet.

### 4.5 Felhantering

#### 4.5.1 Krav på en tjänsteproducent

Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [R1-R3].

##### 4.5.1.1 Logiska fel

För uppdaterande tjänster skall resultCode sättas till någon av de giltiga koderna enligt [R6].

Om resultText innehåller ett meddelande så skall det vara sådant att det kan visas för en användare.

Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.

##### 4.5.1.2 Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### 4.5.2 Krav på en tjänstekonsument

Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### 4.5.2.1 Logiskt fel

För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### 4.5.2.2 Tekniska fel

Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### 4.5.3 Konfidentialitet

All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se ref [R5].

