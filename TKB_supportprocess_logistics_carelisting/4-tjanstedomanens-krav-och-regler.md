# 4 Tjänstedomänens krav och regler - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

Källa: **Tjänstekontraktsbeskrivning, Listning**, version 2.1 (2025-06-13), [TKB_supportprocess_logistics_carelisting.docx](TKB_supportprocess_logistics_carelisting.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Informationen innehåller information om personuppgifter, se vidare [R3] för utförligare beskrivning avseende informationssäkerhet.

#### 4.1.1 Juridik

Följande lagrum reglerar informationshanteringen:

* Patientdatalag (2008:355)
* Dataskyddsförordningen (GDPR, The General Data Protection Act)
* Offentlighets- och sekretesslag (2009:400)
* Hälso- och sjukvårdslagen (2017:30)
* Lag om valfrihetssystem (2008:962)

### 4.2 Icke funktionella krav

Tjänstedomänens arkitektur grundar sig på att varje sjukvårdshuvudman (region) tillhandahåller och exponerar ett (och endast ett) listningssystem. Det kan således nationellt endast förekomma lika många producerande system så som antalet regioner. Varje region ansvarar för att hålla information om var (i vilken region) som regionens egna folkbokförda invånare är listade (se även tjänstekontraktet GetListingCounty).

#### 4.2.1 Omsändning när tjänsteproducent är otillgänglig

Regler och riktlinjer för omsändning vid otillgänglig tjänsteproducent finns beskrivna i RIVTA BP 2.1.2 regel #22. Dessa regler är tillämpliga för tjänstekonsumenter av tjänstekontrakten CreateListing samt UpdateListing.

En otillgänglig producent kan yttra sig på två olika sätt, det ena är vid timeout och det andra fallet är vid SoapException.

Omsändningsfrekvens bör vara exponentiell backoff.

#### 4.2.2 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop | Svarstid |
| Tillgänglighet | 24x7, 99,5% | Tillgänglighet |
| Last | 1 transaktion per sekund | Last |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

### 4.3 Felhantering

#### 4.3.1 Krav på en tjänsteproducent

Se RIV Tekniska anvisningar [R2].

##### 4.3.1.1 Logiska fel

Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode och resultText.

Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa eller spara information om vad som gick fel.

Om producenten tillhandahåller en text i fältet resultText kan konsument välja att visa producentens feltext till slutanvändaren. Saknas feltext i resultText ska konsument visa upp en eget vald text till slutanvändaren.

ResultCode kan vara:

| | |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO | Transaktionen har utförts enligt uppdraget i begäran, men det finns ett meddelande som tjänstekonsumenten måste visa upp för användaren. |
| ERROR | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. / Fältet resultText ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering. / Meddelandet anses inte mottaget. |
| ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED | Invånaren har redan omlistat sig det maximala antalet gånger som folkbokföringsregionen tillåter per 12-månaders period. / Felkoden är applicerbar för tjänstekontrakten CreateListing och UpdateListing och ska returneras av producent när detta fall inträffat. |
| ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT | Vårdcentralen/mottagningen som invånaren önskar lista sig på har redan uppnått det tak på maximalt antal listade invånare som folkbokföringsregionen tillåter för vårdcentralen/mottagningen. / Felkoden är applicerbar för tjänstekontraktet CreateListing och ska returneras av producent när detta fall inträffat. |
| ERROR_GUARDIAN_CONSENT_NEEDED | Listning eller omlistning av minderåring accepteras inte på grund av att samtycke saknas från båda vårdnadshavare. Det är regionens ansvar att avgöra huruvida samtycken krävs, likaså att inhämta och förvalta dessa. / Felkoden är applicerbar för tjänstekontraktet CreateListing och ska returneras av producent när detta fall inträffat. |
| ERROR_AGE_LIMIT | Regionens har en åldersgräns för att tillåta listning/omlistning. / Felkoden är applicerbar för tjänstekontraktet CreateListing och ska returneras av producent när detta fall inträffat. |

#### 4.3.2 Krav på en tjänstekonsument

Se RIV Tekniska anvisningar [R2].

