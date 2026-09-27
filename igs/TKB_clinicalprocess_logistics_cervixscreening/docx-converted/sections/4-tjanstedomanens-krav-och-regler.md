## Tjänstedomänens krav och regler
I version 1.0 av detta dokument gäller följande krav och regler för tjänstekontraktet ProcessCervixScreeningInformation.

### Informationssäkerhet och juridik

#### Informationssäkerhet
Informationen innehåller information om personuppgifter, se vidare [R3] för utförligare beskrivning avseende informationssäkerhet.

#### Juridik
Följande lagrum reglerar informationshanteringen:
Patientdatalag (2008:355)
Dataskyddsförordningen (GDPR, The General Data Protection Act)
Offentlighets- och sekretesslag (2009:400)
Se vidare den legala analysen [R6] för hur den kallelsegrundande informationen får hanteras.

### Icke funktionella krav

#### Omsändning när tjänsteproducent är otillgänglig
Regler och riktlinjer för omsändning vid otillgänglig tjänsteproducent finns beskrivna i RIVTA BP 2.1.2 regel #22. Dessa regler är tillämpliga för tjänstekonsumenter av ProcessCervixScreeningInformation-tjänstekontraktet.
En otillgänglig producent kan yttra sig på två olika sätt, det ena är vid timeout och det andra fallet är vid SoapException.
Tjänstekonsument bör ha en separat tråd för respektive tjänsteproducent man sänder till, där varje tråd har en omsändningspolicy enligt nedan.
Omsändningsfrekvens ska vara konfigurerbar och anges - i millisekunder - som paus mellan anrop till en och samma tjänsteproducent enligt SLA-krav under ”Last”, default ska vara 5000 ms.
Omsändningsrekvens bör vara exponentiell backoff.
Max antal omsändningsförsök ska vara konfigurerbar, när max antal försök har uppnåtts ska systemet sluta att försöka sända meddelandet till den tjänsteproducenten.
Max timeout ska vara konfigurerbar, när timeout har uppnåtts ska omsändning ske till max antal omsändningsförsök.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för tjänstekontraktet ProcessCervixScreeningInformation.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Aktualitet | - | Se [R7] |
| Last | 10 transaktioner per sekund | En producent ska hantera 10 samtidiga transaktioner. / En tjänstekonsument ska ej i en och samma transaktion skicka en nyttolast som är större än 5MB. |
| Tillgänglighet | 24x7, 99,5% |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav
Inga övriga krav finns specificerade.

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Fault).
Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
Användaren kommer enbart att se ”tekniskt fel” – inte detaljinformation.
Detaljinformationen riktar sig till systemförvaltaren.
För regler kring omsändning se 4.2.1.

#### Krav på en tjänsteproducent
Se RIV Tekniska anvisningar [R2].

##### Logiska fel
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode och resultText.
Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa eller spara information om vad som gick fel.
En tjänsteproducent ska validera meddelanden enligt xml schema och tillhörande schematron-regler som följer med interaktionen (test-suite/[interaktionens namn]/constraints.xml).
ResultCode kan vara:

| Kod | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO | Transaktionen har utförts enligt uppdraget i begäran, men det finns ett meddelande som tjänstekonsumenten måste visa upp för användaren. |
| ERROR | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. / Fältet resultText ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering. / Meddelandet anses inte mottaget. |

#### Krav på en tjänstekonsument
Se RIV Tekniska anvisningar [R2].

