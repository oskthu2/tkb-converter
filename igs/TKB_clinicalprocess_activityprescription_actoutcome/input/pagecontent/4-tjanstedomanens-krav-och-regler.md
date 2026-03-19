# 4 Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för
specifika tjänstekontrakt senare i dokumentet.

## 4.1 Uppdatering av engagemangsindex

Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en
händelse inträffar som påverkar indexposterna.

All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex
via tjänstekontraktet `urn:riv:itintegration:engagementindex:UpdateResponder:1` ("index-push").

### 4.1.1 Engagemangsindexattribut

| Attribut | Beskrivning | Format | Kardinalitet |
|----------|-------------|--------|--------------|
| Service domain | Den tjänstedomän som förekomsten avser | URN | 1..1 |
| Categorization | Kategorisering enligt domänspecifikt kodverk | Text | 1..1 |
| Logical address | Referens till informationskällan | Logisk adress | 1..1 |
| Business object Instance Identifier | Unik identifierare för händelsebärande objekt | Text | 1..1 |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 |
| Most Recent Content | Tidpunkt för senaste uppdatering | DT | 1..1 |
| Source system | Källsystemet som genererade engagemangsposten | HSA-id | 1..1 |
| Data Controller | Personuppgiftsansvarig organisation | Text | 1..1 |

## 4.2 Informationssäkerhet och juridik

### 4.2.1 Medarbetarens direktåtkomst

Åtkomst till patientens journalinformation regleras av Patientdatalagen (PDL).
Tjänstekonsumenten ansvarar för att åtkomstkontroll genomförs i enlighet med gällande lagstiftning.

#### 4.2.1.1 Spärrkontroll

Innan ett källsystem returnerar information om en patient ska spärrkontroll genomföras.
Information som är spärrad ska ej returneras.

### 4.2.2 Patientens direktåtkomst

Vid konsumtion av tjänstekontraktet från en patient-/invånartjänst kan fält som är
valfria i kontraktet utelämnas om källsystemet saknar information i dessa fält.

### 4.2.3 Generellt

Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem
som saknar (fullständig) HSA-id-information är HSA-id-attribut i beskrivningarna nedan valfria.

## 4.3 Icke funktionella krav

### 4.3.1 SLA-krav

SLA-krav specificeras per tjänstekontrakt i respektive avsnitt under kapitel 7.

### 4.3.2 Övriga krav och regler

#### Gemensamma konsumentregler

- Tjänstekonsumenten ska hantera att svar kan innehålla 0 poster
- Tjänstekonsumenten ska hantera att valfria fält kan saknas i svaret

#### Gemensamma producentregler

- Tjänsteproducenten ska filtrera svar baserat på patientens personnummer
- Tjänsteproducenten ska returnera information från det egna källsystemet

#### Format för datum och tidpunkter

Datum anges i formatet `YYYYMMDD`. Tidpunkter anges i formatet `YYYYMMDDhhmmss`.

#### Tidszon för tidpunkter

Tidpunkter anges i lokal svensk tid (CET/CEST).

## 4.4 Felhantering

### 4.4.1 Krav på en tjänsteproducent

#### Logiska fel

Om ett logiskt fel uppstår ska tjänsteproducenten returnera `resultCode = ERROR` med en
relevant `errorCode`.

| Felkod | Värde | Beskrivning |
|--------|-------|-------------|
| INVALID_REQUEST | INVALID_REQUEST | Begäran är felaktig |

#### Tekniska fel

Tekniska fel resulterar i ett SOAP Fault.

### 4.4.2 Krav på en tjänstekonsument

#### Logiska fel

Tjänstekonsumenten ska hantera svar med `resultCode = ERROR` och visa lämpligt felmeddelande.

#### Tekniska fel

Tjänstekonsumenten ska hantera SOAP Fault och visa lämpligt felmeddelande.
