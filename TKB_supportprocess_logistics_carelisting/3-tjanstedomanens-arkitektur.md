# 3 Tjänstedomänens arkitektur - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* **3 Tjänstedomänens arkitektur**

## 3 Tjänstedomänens arkitektur

# 3 Tjänstedomänens arkitektur

Källa: **Tjänstekontraktsbeskrivning, Listning**, version 2.1 (2025-06-13), [TKB_supportprocess_logistics_carelisting.docx](TKB_supportprocess_logistics_carelisting.docx).

Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller. För varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet samt dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### 3.1 Flöden

För detaljerad beskrivning av verksamhetsscenarion och informationsflöden hänvisas till [R3].

Nedan redovisas en kortfattad beskrivning av verksamhetsscenarion för att underlätta förståelsen av den tekniska lösningen.

#### 3.1.1 Obligatoriska kontrakt

Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| CreateListing |   | X | X |   | X | X |   |   |
| GetAvailableHealthcareFacilities |   | X | X |   | X | X |   |   |
| GetAvailableHealthcarePersonnel |   |   |   |   |   |   |   |   |
| GetListingCounty | X | X | X |   | X | X |   |   |
| GetListing | X |   |   |   |   |   |   |   |
| GetListingTypes |   | X | X |   | X | X |   |   |
| UpdateListing |   |   |   | X | X | X |   | X |

### 3.2 Adressering

Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt (version 2.0.4 – 2018-08-27) avsnitt 8.3 där mer information kan hittas.

Tjänstedomänen tillämpar verksamhetsadressering.

Inom denna domän används en regions länskod som logisk adress. Endast en logisk adress per region är således tillämplig enligt tjänstedomänens interaktionsarkitektur.

#### 3.2.1 Sammanfattning av adresseringsmodell

| | |
| :--- | :--- |
| För en region | Länskod (kv/län – 1.2.752.129.2.2.1.18) |

### 3.3 Aggregering och engagemangsindex

Inget av tjänstedomänens tjänstekontrakt tillämpar aggregering. Domänen använder således inte engagemangsindex.

