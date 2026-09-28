### ArtikelIdentiteterRequest

Domänschema `se.apotekensservice_pris_1.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| gtin | string | GTIN-kod | 0..1 |
| nplPackageId | string | Förpackningsid från Nationellt Produktregister för Läkemedel Unikt id för LM-artikel | 0..1 |
| varunr | string | Nordiskt varunummer Unik för handelsvaror. För läkemedel kan dubletter förekomma vid parallellimport | 0..1 |

### BalansResponse

Domänschema `se.apotekensservice_pris_1.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| netto | double | Nettobelopp i kronor och ören | 1..1 |

### FormansInfoResponse

Domänschema `se.apotekensservice_pris_1.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| formanskod | string | Förmånskod R, U, L, eller F | 1..1 |
| id | string | Id som representerar det id som var satt i motsvarande ArtikelIdentiteterTo. Det vill säga antingen GTIN, Förpackningsid eller Varunr beroende på vad som frågats efter. | 1..1 |

### KlientinformationRequest (1)

Domänschema `se.apotekensservice_pris_1.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| anvandare | string | Unikt användarid i anropande system. | 1..1 |
| session | string | Sessionens id i anropande system. | 1..1 |
| system | string | GLN-kod för anropande system. | 1..1 |

### KlientinformationRequest (4)

Domänschema `se.apotekensservice_pris_4.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:4`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| anvandare | string | Unikt användarid i anropande system. | 1..1 |
| session | string | Sessionens id i anropande system. | 1..1 |
| system | string | GLN-kod för anropande system. | 1..1 |

### PeriodResponse

Domänschema `se.apotekensservice_pris_1.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| balans | BalansResponse | Ackumulerad balans | 1..1 |
| start | dateTime | Periodens startdatum. | 0..1 |

### PrisfragaRadRequest

Domänschema `se.apotekensservice_pris_4.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:4`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| antal | int | Antal förpackningar av vara som expedieras. Vid kreditering sätts detta fält till ett negativt värde. Altenativt kan fälten pris och prisUtbyte sättas till negativa värden. | 1..1 |
| formansVal | string | Farmacevtens bedömning om vilken förmån som gäller för receptraden. Förmånstyp R, U, F, L kan förekomma. | 1..1 |
| pris | double | Apoteksaktörs utpris inkl. eventuell moms per förpackning för vara som avses att expedieras. | 1..1 |
| prisUtbyte | double | Apoteksaktörs utpris inkl. eventuell moms för billigare vara som ej expedieras vid möjligt byte inom högkostnadsskyddet. Anges om pristillägg skall gälla, dvs när kund motsätter sig byte och väljer förskriven vara. | 0..1 |
| radNr | int | Radnr. | 1..1 |

### PrisfragaRadResponse

Domänschema `se.apotekensservice_pris_4.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:4`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| bruttoPris | double | Apoteksaktörs utpris för receptrad inkl. ev. moms. Vid kreditering blir detta värde negativt. | 1..1 |
| prisTillagg | double | Radens ev. pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| radNr | int | Radnr. | 1..1 |

### TransaktionResponse

Domänschema `se.apotekensservice_pris_1.0.xsd` (namnrymd `urn:riv:se.apotekensservice:pris:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| anvandare | string | Användare som registrerat transaktionen. | 1..1 |
| apoteksNamn | string | Apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| apoteksOrt | string | Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| expeditionsId | string | Unikt expeditionsID. | 1..1 |
| flags | string | Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt. | 1..1 |
| inBrutto | long | Ingående brutto före transaktionen | 1..1 |
| inEgenavgift | long | Ingående högkostnadssaldo vid transaktionen | 1..1 |
| kommentar | string | Eventuell kommentar från korrigeringstransaktion | 0..1 |
| orgAktorId | string | GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| persNr | string | Personnummer för den som transaktionen gäller. | 1..1 |
| sign | string | Typ av trans: +,-,ABC, ... Detta fält används enbart internt. | 1..1 |
| transId | string | Aktörens expeditions-ID / verifikationsnr. | 1..1 |
| transPeriod | PeriodResponse | Transaktionens högkostnadsuppgifter. | 1..1 |
| transTid | dateTime | Transaktionstidpunkt. | 1..1 |
| transaktionBehandlades | dateTime | Tidpunkt då transaktionen behandlades av HKDB | 1..1 |
