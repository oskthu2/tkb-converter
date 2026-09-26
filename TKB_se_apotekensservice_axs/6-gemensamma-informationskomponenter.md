# 6 Gemensamma informationskomponenter - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

## Gemensamma informationskomponenter

**SAKNAS I KÄLLDOKUMENT.** Komponenterna nedan är hämtade ur domänschemana. Beskrivningarna är schemaannoteringarna.

### ApoteksinformationResponse

Domänschema `se.apotekensservice_axs_4.0.xsd` ([nedladdning](se.apotekensservice_axs_4.0.xsd)).

| | | | |
| :--- | :--- | :--- | :--- |
| aktorsnamn | string | Aktörsnamn | 0..1 |
| aktorsorgnr | long | Aktörens organisationsnummer. | 0..1 |
| allmantelefon | string | allmäntelefon | 0..1 |
| besoksadress | string | Expeditionsställets besöksadress | 0..1 |
| eReceptDjur | boolean | Anger om apoteket finns expedierar erecept för djur | 1..1 |
| fax | string | fax | 0..1 |
| glnKod | string | GLN-kod | 1..1 |
| huvudtypkod | string | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| namn | string | Apotekets Namn | 0..1 |
| ort | string | Expeditionsställets besöksort | 0..1 |
| registrerad | boolean | Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden. | 1..1 |
| slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| startdatum | dateTime | Datum för start av verksamhet | 0..1 |

### PatientInformationResponse

Domänschema `se.apotekensservice_axs_5.0.xsd` ([nedladdning](se.apotekensservice_axs_5.0.xsd)).

| | | | |
| :--- | :--- | :--- | :--- |
| lkKod | string | Län och kommun där personen är folkbokförd. Har formatet LLKK. LL - Län, 2 tecken. KK - Kommun, 2 tecken | 0..1 |
| omradeskod | string | Det område där personen är folkbokförd | 0..1 |
| redNamn | string | Redigerat namn | 0..1 |
| samtycke | SamtyckeResponse |   | 1..1 |
| statusKod | string | StatusKod - status på personen i FOLK. Mappat från träffkoder i FOLK. Se[kodverket](#statuskod). Vissa av dessa statuskoder innebär att det inte finns någon personinformation i svaret. | 0..1 |
| extension | ExtensionType | Utökningspunkt | 0..1 |

#### Statuskod

Kodverk: [FolkStatusKodCS](CodeSystem-axs-folkstatuskod-cs.md)

| | |
| :--- | :--- |
| 0 | Person finns i FOLK. |
| 1 | Person finns ej i FOLK, underliggande system är ej tillgängligt. |
| 2 | Person finns ej. |
| 3 | Person sekretesskyddad. |
| 4 | Person är avliden. |
| 5 | Träffkod okänd. |
| 6 | Testperson. |

### SamtyckeResponse

Domänschema `se.apotekensservice_axs_5.0.xsd`. För varje samtyckesflagga gäller: false = kunden har inte lämnat samtycke (sagt nej), true = kunden har samtyckt, saknas (null) = kunden har inte tillfrågats eller tagit ställning.

| | | | |
| :--- | :--- | :--- | :--- |
| dosSamtycke | boolean | Kunden (privatpersonen) samtycker till att spara recept på sitt personnummer för dosapotek. Null enbart vid utdata. | 0..1 |
| dosSamtyckeDatum | dateTime | Datum för senaste ändring av dos-samtycke | 0..1 |
| ees | boolean | Flagga för registrerat eessamtycke: kunden har samtyckt till att vara med i EES. | 0..1 |
| eesSamtyckeDatum | dateTime | Datum för senaste ändring av EES-samtycke | 0..1 |
| hkdb | boolean | Flagga för registrerat samtycke i HKDB. I indata är det endast möjligt att ange false och endast om inget värde finns registrerat. Samtycke uppdateras genom att skapa eller ta bort konto i HKDB. | 0..1 |
| hkdbSamtyckeDatum | dateTime | Datum för senaste ändring av HKDB-samtycke | 0..1 |
| rr | boolean | Kunden har samtyckt till att spara sina recept i RR. Null enbart vid utdata. | 0..1 |
| rrSamtyckeDatum | dateTime | Datum för senaste ändring av RR-samtycke | 0..1 |
| rrd | boolean | Kunden (privatpersonen) samtycker till att spara djurrecept på sitt personnummer i RR för djur. Null enbart vid utdata. | 0..1 |
| rrdSamtyckeDatum | dateTime | Datum för senaste ändring av RRD-samtycke | 0..1 |
| extension | ExtensionType | Utökningspunkt | 0..1 |

### Övriga typer i domänschemana

Domänschemana `se.apotekensservice_axs_1.0.xsd`, `se.apotekensservice_axs_4.0.xsd` och `se.apotekensservice_axs_5.0.xsd` innehåller fler typer (bl.a. `KundinformationResponse`) som användes av kontrakt som togs bort i version 7.0. De används inte av HamtaPatientInfo 6.0 och återges inte här. Schemafilerna finns som källfiler i [avsnitt 7](7-tjanstekontrakt.md#hamtapatientinfo).

