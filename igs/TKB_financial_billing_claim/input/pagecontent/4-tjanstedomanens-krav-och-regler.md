# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning Utomlänsfakturering*, version 1.1 (2025-10-13), [TKB_financial_billing_claim.docx](TKB_financial_billing_claim.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Under den förstudie som gjordes av Inera 2015 [R3] hanterades frågor inom informationssäkerhet och information de slutsatser som man kom fram till under förstudien finns i bilaga ”Fakturering av utomregional vård – informationssäkerhet” [R4].

Även en juridisk utredning gjordes som återfinns i bilaga ”PM Uppgiftsutlämnande vid landsting fakturering utomlänsvård” [R5].

Se även informationssäkerhetsavsnittet i informationsspecifikationen [R7].

### 4.2 Icke funktionella krav

#### 4.2.1 Omsändning när tjänsteproducent är otillgänglig

Regler och riktlinjer för omsändning vid otillgänglig tjänsteproducent finns beskrivna i RIVTA BP 2.1.2 regel #22. Dessa regler är tillämpliga för tjänstekonsumenter av ProcessClaimSpecification-tjänstekontrakten.

En otillgänglig producent kan yttra sig på två olika sätt, det ena är vid timeout och det andra fallet är vid SoapException.

Tjänstekonsument bör ha en separat tråd för respektive tjänsteproducent man sänder till, där varje tråd har en omsändningspolicy enligt nedan.

Omsändningsfrekvens ska vara konfigurerbar och anges - i millisekunder - som paus mellan anrop till en och samma tjänsteproducent enligt SLA-krav under ”Last”, default ska vara 5000 ms. Omsändningsrekvens bör vara exponentiell backoff.

Max antal omsändningsförsök ska vara konfigurerbar, när max antal försök har uppnåtts ska systemet sluta att försöka sända meddelandet till tjänsteproducenten.

Max timeout ska vara konfigurerbar, när timeout har uppnåtts ska omsändning ske till max antal omsändningsförsök.

#### 4.2.2 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 10 transaktioner per sekund | En producent ska hantera 10 samtidiga transaktioner. / En tjänstekonsument ska ej i en och samma transaktion skicka en nyttolast som är större än 5MB. |
| Aktualitet | Ej tillämpbar |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| Svarstid | < 3s | för anrop med en nyttolast på   < 1MB |
| Svarstid | < 6s | för anrop med en nyttolast på   < 2MB |
| Svarstid | < 9s | för anrop med en nyttolast på   < 3MB |
| Svarstid | <15s | För anrop med nyttolast på        < 5MB |

#### 4.2.3 Övriga krav

Inga övriga krav.

### 4.3 Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).

Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel.

Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren. Användaren kommer enbart att se ”tekniskt fel” – inte detaljinformation.

Detaljinformationen riktar sig till systemförvaltaren.

För regler kring omsändning se 4.2.1.

#### 4.3.1 Krav på en tjänsteproducent

Se RIV Tekniska anvisningar [R2].

##### 4.3.1.1 Logiska fel

Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode och comment. Syftet med comment är att tjänstekonsumenten av tjänsten ska kunna visa eller spara information om vad som gick fel.

En tjänsteproducent ska validera meddelanden enligt xml schema och tillhörande schematron-regler som följer med interaktionen.

ResultCode kan vara:

| Felkod | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO | Transaktionen har utförts enligt uppdraget i begäran, men det finns ett meddelande som tjänstekonsumenten måste visa upp för användaren. Används ej i ProcessClaimSpecification. |
| ERROR | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. / Fältet comment ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering. / Meddelandet anses inte mottaget. / Exempel meddelande i comment (schematron): / Error: Total summa: 729001 fakturerat i fakturan är fel / Location: /urn1:ProcessClaimSpecification/urn1:claimSpecification/urn2:payableAmount/urn2:amount / Id: R5 / Test: . = sum(//urn2:invoicedAmountDetails/urn2:patientCareInvoiceNetAmount/urn2:amount) |

#### 4.3.2 Krav på en tjänstekonsument

Se RIV Tekniska anvisningar [R2].

En tjänstekonsument ska validera både med xml schema samt schematron innan begäran skickas till tjänsteproducent.
