# 4 Tjänstedomänens krav och regler - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

Källa: **Logg – Loggning och uppföljning av åtkomst till patientjournal**, tjänstekontraktsbeskrivning version 2.0.8 (2024-10-24), [TKB_informationsecurity_auditing_log.docx](TKB_informationsecurity_auditing_log.docx).

### 4.1 Informationssäkerhet och juridik

Tjänstedomänens juridiska krav baseras bl.a på RIV PDLiP [R1], Patientdatalagen [R2] samt SOS2008:14 [R3].

#### 4.1.1 Förlitande parter enligt RIV TA Basic Profile

Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att konsument och producent ömsesidigt kan verifiera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### 4.1.2 Stark autentisering av slutanvändare

All åtkomst ska ske genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet Socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för loggadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

#### 4.1.3 Krav på konsumenten

Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad (se kap 4.1.2) inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten (läsande tjänster), samt att slutanvändarens aktiviteter loggas.

### 4.2 Hantering av otillgänglighet

För att minska beroendet av hög tillgänglighet till loggtjänsten vid lagring av logposter så bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

### 4.3 Icke funktionella krav

#### 4.3.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 15 sekund för 95% av alla anrop | Se separata tjänstekontrakt för mer info. |
| Tillgänglighet | 24x7, 99,8% |   |
| Last | 1 transaktion per sekund |   |
| Aktualitet | Se respektive tjänstekontrakt |   |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### 4.3.2 Övriga krav

Kravet på en producent av åtkomstloggar är att dessa minst ska vara tillgängliga online i minst 18 månader via de läsande tjänsterna. För de fall en tjänsteproducent väljer att efter 18 månader arkivera åtkomstloggar och ej längre tillhandahålla dem via de läsande tjänsterna så skall producentens förvaltning kunna leverera åtkomstloggarna på beställning. Dessa ska då normalt kunna levereras inom 2 veckor från det att beställningen är gjord.

### 4.4 Felhantering

#### 4.4.1 Krav på en tjänsteproducent

Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [R1-R3].

##### 4.4.1.1 Logiska fel

Vid ett logiskt fel i tjänsten levereras ett resultatobjekt med olika statuskod beroende på fel tillsammans med en beskrivande text. Det tjänstekontrakt som beskrivs i detta dokument använder olika statuskoder för att underlätta felhanteringen för anropande vårdsystem. Se vidare tjänstekontrakten för vilka statuskoder som är definierade.

##### 4.4.1.2 Tekniska fel

Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.

#### 4.4.2 Krav på en tjänstekonsument

Alla fel hos konsumenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### 4.4.2.1 Logiskt fel

För konsumenter så skall beskrivna felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### 4.4.2.2 Tekniska fel

Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### 4.4.3 Konfidentialitet

All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se ref [R5].

