# 4 Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika
tjänstekontrakt senare i dokumentet.

## 4.1 Uppdatering av engagemangsindex

Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en
händelse inträffar som påverkar indexposterna.

Uppdatering sker via:
`urn:riv:itintegration:engagementindex:UpdateResponder:1` ("index-push").

Ladda hem engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.

Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som
rör denna tjänstedomän:

Regler för tilldelning av värde i fältet **Categorization** i engagemangsposten för
tjänstekontrakt i denna domän. En tjänsteproducent av GetFunctionalStatus måste använda
samma värde för categorization i en Update som för elementet assessmentCategory i svaret.

## 4.2 Informationssäkerhet och juridik

### 4.2.1 Medarbetarens direktåtkomst

Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst
till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll
kan behöva genomföras.

HSLF-FS 2016:40 ställer också krav på att medarbetaren är starkt autentiserad om medarbetarens
inloggning ger tillgång till sammanhållen journalföring.

Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande
sammanhållen journalföring och/eller krav på spärrhantering uppstår först om tjänstekonsumenten
(e-tjänst eller journalsystem) tillåter sammanhållen journalföring.

### 4.2.2 Patientens direktåtkomst

Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten
(informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett
genom menprövning eller aktiv åtgärd av hälso- och sjukvårdspersonal.

### 4.2.3 Generellt

Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter
som informationsägaren godkänt.

## 4.3 Icke funktionella krav

Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller
informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem.

### 4.3.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster.
Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

### 4.3.2 Övriga krav och regler

#### Gemensamma konsumentregler

- **R1:** Filtrera enligt flagga "approvedForPatient"
- **R2:** Tillämpa regelverk enl. PDL

#### Gemensamma producentregler

- **R3:** Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla
  information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

#### Format för datum och tidpunkter

Datum anges alltid på formatet `ÅÅÅÅMMDD` (ISO 8601: `YYYYMMDD`).

Tidpunkter anges alltid på formatet `ÅÅÅÅMMDDttmmss` (ISO 8601: `YYYYMMDDhhmmss`).

#### Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter ska ange
datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som avses.

#### Partiell datahämtning direktadresseras

Om en tjänstekonsument väljer att hämta ytterligare information från en tjänsteproducent som
signalerat att detta finns med hasMore, så måste detta göras med direktadressering.
hasMoreReference får aldrig anges i ett anrop som inte är direktadresserat.

#### Dubblettkontroll vid partiell datahämtning

Vid partiell leverans av information är det tjänstekonsumentens ansvar att hantera eventuella
dubbletter om sådana skulle skickas i efterföljande anrop.

## 4.4 Felhantering

### 4.4.1 Krav på en tjänsteproducent

#### Logiska fel

Respektive kontrakt beskriver närmare hur logiska fel ska hanteras.

#### Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (Soap Fault). Tekniska fel får inte
förmedla personuppgifter.

### 4.4.2 Krav på en tjänstekonsument

Inga krav på konsument för logiska eller tekniska fel.
