# 7 Tjänstekontrakt - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

**SAKNAS I KÄLLDOKUMENT.** Det finns inga kontraktsbeskrivningar. Beskrivningarna nedan är hämtade ur WSDL och XSD. Alla kontrakt har SOAP-huvudena LogicalAddress och ArgosHeader och returnerar fel som `ApplicationException` eller `SystemException` (se [avsnitt 4](4-tjanstedomanens-krav-och-regler.md)). ArgosHeaderType har följande fält, alla string och 0..1: forskrivarkod, legitimationskod, fornamn, efternamn, yrkesgrupp, befattningskod, arbetsplatskod, arbetsplatsnamn, postort, postadress, postnummer, telefonnummer, requestId, rollnamn, hsaID, katalog, organisationsnummer, systemnamn, systemversion, systemIp. Enligt WSDL-filerna anger dokumentationen vilka ArgosHeader-fält som är obligatoriska för respektive tjänsteinteraktion; den dokumentationen finns inte i källan.

### HamtaBarn

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:HamtaBarn:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1:HamtaBarn` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| huvudPersNr | string | Personnummer för huvudperson (vårdnadshavare). | 1..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| **Svar** |   |   |   |
| barn | string | En lista med personnr för barnen. | 1..* |

#### FHIR-artefakter

* [HamtaBarnRequest](StructureDefinition-hamtabarn-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaBarn](StructureDefinition-hamtabarn.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaBarnInteraction_1.0_rivtabp21.wsdl](HamtaBarnInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaBarnResponder_1.0.xsd](HamtaBarnResponder_1.0.xsd) | Tjänsteschema |

### HamtaHkdbKonto

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:HamtaHkdbKonto:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1:HamtaHkdbKonto` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |
| **Svar** |   |   |   |
| ansluten | boolean | Personens högkostnadsstatus. False - Ej ansluten True - Ansluten | 1..1 |
| foregPeriod | PeriodResponse | Föregående högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| formansNiva | int | Kundens aktuella förmånsnivå i procent. | 0..1 |
| huvudPersNr | string | Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas. | 0..1 |
| innevPeriod | PeriodResponse | Innevarande högkostnadsperiod. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| kommandePeriod | PeriodResponse | Kommande högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen kommande period existerar. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| kvarTillFrikort | BalansResponse | Nettobelopp i kronor och ören som återstår innan kunden får frikort. Saknar värde om personen ej är ansluten. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |

#### FHIR-artefakter

* [HamtaHkdbKontoRequest](StructureDefinition-hamtahkdbkonto-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaHkdbKonto](StructureDefinition-hamtahkdbkonto.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaHkdbKontoInteraction_1.0_rivtabp21.wsdl](HamtaHkdbKontoInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaHkdbKontoResponder_1.0.xsd](HamtaHkdbKontoResponder_1.0.xsd) | Tjänsteschema |

### HamtaHkdbTransaktioner

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktioner:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1:HamtaHkdbTransaktioner` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| maxantal | int | Ställer in begränsning av maximala mängden returnerade transaktioner. T.ex innebär maxantal = 5, att endast de fem senaste transaktionerna hämtas. Om maxantal inte anges så är defaultvärde fem. Om man vill ha alla transaktioner sätts maxantal till -1. | 0..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |
| **Svar** |   |   |   |
| transaktionsLista | TransaktionResponse | Lista med de senaste transaktionerna för personens högkostnadskonto. Antalet som returneras kan ställas in med maxantal, men default är fem. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan. | 0..* |
| ../anvandare | string | Användare som registrerat transaktionen. | 1..1 |
| ../apoteksNamn | string | Apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../apoteksOrt | string | Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../expeditionsId | string | Unikt expeditionsID. | 1..1 |
| ../flags | string | Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt. | 1..1 |
| ../inBrutto | long | Ingående brutto före transaktionen | 1..1 |
| ../inEgenavgift | long | Ingående högkostnadssaldo vid transaktionen | 1..1 |
| ../kommentar | string | Eventuell kommentar från korrigeringstransaktion | 0..1 |
| ../orgAktorId | string | GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../persNr | string | Personnummer för den som transaktionen gäller. | 1..1 |
| ../sign | string | Typ av trans: +,-,ABC, … Detta fält används enbart internt. | 1..1 |
| ../transId | string | Aktörens expeditions-ID / verifikationsnr. | 1..1 |
| ../transPeriod | PeriodResponse | Transaktionens högkostnadsuppgifter. | 1..1 |
| ../../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../../start | dateTime | Periodens startdatum. | 0..1 |
| ../transTid | dateTime | Transaktionstidpunkt. | 1..1 |
| ../transaktionBehandlades | dateTime | Tidpunkt då transaktionen behandlades av HKDB | 1..1 |

#### FHIR-artefakter

* [HamtaHkdbTransaktionerRequest](StructureDefinition-hamtahkdbtransaktioner-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaHkdbTransaktioner](StructureDefinition-hamtahkdbtransaktioner.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaHkdbTransaktionerInteraction_1.0_rivtabp21.wsdl](HamtaHkdbTransaktionerInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaHkdbTransaktionerResponder_1.0.xsd](HamtaHkdbTransaktionerResponder_1.0.xsd) | Tjänsteschema |

### HamtaHkdbTransaktionerWebb

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebb:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1:HamtaHkdbTransaktionerWebb` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den som sökningen gäller. | 1..1 |
| **Svar** |   |   |   |
| periodSlut | dateTime | Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår. | 1..1 |
| transaktionsLista | TransaktionResponse | Lista med de senaste transaktionerna för personens högkostnadskonto. Defaultvärde för antalet returnerade transaktioner är fem, men detta är valbart. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan. | 0..* |
| ../anvandare | string | Användare som registrerat transaktionen. | 1..1 |
| ../apoteksNamn | string | Apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../apoteksOrt | string | Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../expeditionsId | string | Unikt expeditionsID. | 1..1 |
| ../flags | string | Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt. | 1..1 |
| ../inBrutto | long | Ingående brutto före transaktionen | 1..1 |
| ../inEgenavgift | long | Ingående högkostnadssaldo vid transaktionen | 1..1 |
| ../kommentar | string | Eventuell kommentar från korrigeringstransaktion | 0..1 |
| ../orgAktorId | string | GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd. | 0..1 |
| ../persNr | string | Personnummer för den som transaktionen gäller. | 1..1 |
| ../sign | string | Typ av trans: +,-,ABC, … Detta fält används enbart internt. | 1..1 |
| ../transId | string | Aktörens expeditions-ID / verifikationsnr. | 1..1 |
| ../transPeriod | PeriodResponse | Transaktionens högkostnadsuppgifter. | 1..1 |
| ../../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../../start | dateTime | Periodens startdatum. | 0..1 |
| ../transTid | dateTime | Transaktionstidpunkt. | 1..1 |
| ../transaktionBehandlades | dateTime | Tidpunkt då transaktionen behandlades av HKDB | 1..1 |

#### FHIR-artefakter

* [HamtaHkdbTransaktionerWebbRequest](StructureDefinition-hamtahkdbtransaktionerwebb-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaHkdbTransaktionerWebb](StructureDefinition-hamtahkdbtransaktionerwebb.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaHkdbTransaktionerWebbInteraction_1.0_rivtabp21.wsdl](HamtaHkdbTransaktionerWebbInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaHkdbTransaktionerWebbResponder_1.0.xsd](HamtaHkdbTransaktionerWebbResponder_1.0.xsd) | Tjänsteschema |

### KontrolleraForman

#### Version

1.1

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:KontrolleraForman:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1:KontrolleraForman` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| artikelIdLista | ArtikelIdentiteterRequest | Artikel - Endast ett id per artikel | 1..* |
| ../gtin | string | GTIN-kod | 0..1 |
| ../nplPackageId | string | Förpackningsid från Nationellt Produktregister för Läkemedel Unikt id för LM-artikel | 0..1 |
| ../varunr | string | Nordiskt varunummer Unik för handelsvaror. För läkemedel kan dubletter förekomma vid parallellimport | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| fodelsedatum | string | Födelsedatum. Anges på formen yyyymmdd. Används vid framtagning av förmånskod när varan är preventivmedel med förmånskod R. Om personen är under 21 år blir förmånskoden F för dessa varor. Gäller när lagen om gratis preventivmedel för personer under 21 år trätt i kraft. (Refererat element ur KontrolleraFormanResponder_1_ext_1.0.xsd, namnrymd urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1:ext:1.) | 0..1 |
| **Svar** |   |   |   |
| formansLista | FormansInfoResponse | Lista med förmånskoder per artikel. | 1..* |
| ../formanskod | string | Förmånskod R, U, L, eller F | 1..1 |
| ../id | string | Id som representerar det id som var satt i motsvarande ArtikelIdentiteterTo. Det vill säga antingen GTIN, Förpackningsid eller Varunr beroende på vad som frågats efter. | 1..1 |

#### FHIR-artefakter

* [KontrolleraFormanRequest](StructureDefinition-kontrolleraforman-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [KontrolleraForman](StructureDefinition-kontrolleraforman.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [KontrolleraFormanInteraction_1.1_rivtabp21.wsdl](KontrolleraFormanInteraction_1.1_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [KontrolleraFormanResponder_1.1.xsd](KontrolleraFormanResponder_1.1.xsd) | Tjänsteschema |
| [KontrolleraFormanResponder_1_ext_1.0.xsd](KontrolleraFormanResponder_1_ext_1.0.xsd) | Tjänsteschema |

### KopplaBarnKonto

#### Version

4.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:KopplaBarnKonto:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4:KopplaBarnKonto` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| huvudPersNr | string | Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot. | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den vars konto ska uppdateras. | 1..1 |
| **Svar** |   |   |   |
| status | int | Status för koppling av barnkonto Möjliga värden är: 1 - Anslutning OK. 2 - Omkoppling OK. 3 - Frikoppling OK. | 1..1 |

#### FHIR-artefakter

* [KopplaBarnKontoRequest](StructureDefinition-kopplabarnkonto-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [KopplaBarnKonto](StructureDefinition-kopplabarnkonto.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [KopplaBarnKontoInteraction_4.0_rivtabp21.wsdl](KopplaBarnKontoInteraction_4.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [KopplaBarnKontoResponder_4.0.xsd](KopplaBarnKontoResponder_4.0.xsd) | Tjänsteschema |

### Prisfraga

#### Version

4.1

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:PrisfragaResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:Prisfraga:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:PrisfragaResponder:4:Prisfraga` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| periodStart | dateTime | Start av period. Om periodStart anges så avses normalt annan period än innevarande period. Innehållet är en periodstart och kan avse föregående period, innevarande period eller kommande period. | 0..1 |
| personnummer | string | Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga | 1..1 |
| rader | PrisfragaRadRequest | Rader | 1..* |
| ../antal | int | Antal förpackningar av vara som expedieras. Vid kreditering sätts detta fält till ett negativt värde. Altenativt kan fälten pris och prisUtbyte sättas till negativa värden. | 1..1 |
| ../formansVal | string | Farmacevtens bedömning om vilken förmån som gäller för receptraden. Förmånstyp R, U, F, L kan förekomma. | 1..1 |
| ../pris | double | Apoteksaktörs utpris inkl. eventuell moms per förpackning för vara som avses att expedieras. | 1..1 |
| ../prisUtbyte | double | Apoteksaktörs utpris inkl. eventuell moms för billigare vara som ej expedieras vid möjligt byte inom högkostnadsskyddet. Anges om pristillägg skall gälla, dvs när kund motsätter sig byte och väljer förskriven vara. | 0..1 |
| ../radNr | int | Radnr. | 1..1 |
| transaktionstid | dateTime | Transaktionsdag som priset ska beräknas för. Om värdet inte anges används dagens datum. För att garantera korrekt prisberäkning för en efterföljande transaktionsregistrering skall denna parameter ha samma värde som parametern transTid i RegistreraHkdbTransaktion. Får inte vara mer än ett år och en dag bakåt i tiden, eller två timmar framåt i tiden. | 0..1 |
| ursprungligTransaktionstid | dateTime | Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur PrisfragaResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:PrisfragaResponder:4.1.) | 0..1 |
| **Svar** |   |   |   |
| bruttoBeloppHogkostnad | double | Förmånsgrundande bruttobelopp kopplat till högkostnadsskyddet. Bruttobelopp inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| bruttoPris | double | Summa apoteksaktörs utpris inkl. ev. moms för receptexpeditionen. Vid kreditering blir detta värde negativt. | 1..1 |
| egenAvgiftHogkostnad | double | Summa kundens egenavgift kopplat till högkostnadsskyddet. Egenavgift inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| egenAvgiftLivsmedel | double | Summa kundens egenavgift inkl. moms för livsmedel till barn under 16 år. Gäller förmånskod = L. Max 120 kr. Vid kreditering blir detta värde negativt. | 0..1 |
| kundKostnad | double | Kostnad kunden skall betala. Egenavgift, pristillägg samt pris inkl. ev . moms för varor utan förmån. Vid kreditering blir detta värde negativt. | 1..1 |
| landstingetsFormanskostnad | double | Summa förmån inkl. ev. moms för receptexpeditionen. Gäller förmånskod = R, F och L. Vid kreditering blir detta värde negativt. | 0..1 |
| personnummer | string | Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga | 1..1 |
| prisTillagg | double | Summa pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| rader | PrisfragaRadResponse | Rader | 1..* |
| ../bruttoPris | double | Apoteksaktörs utpris för receptrad inkl. ev. moms. Vid kreditering blir detta värde negativt. | 1..1 |
| ../prisTillagg | double | Radens ev. pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| ../radNr | int | Radnr. | 1..1 |

#### FHIR-artefakter

* [PrisfragaRequest](StructureDefinition-prisfraga-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [Prisfraga](StructureDefinition-prisfraga.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [PrisfragaInteraction_4.1_rivtabp21.wsdl](PrisfragaInteraction_4.1_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [PrisfragaResponder_4.1.xsd](PrisfragaResponder_4.1.xsd) | Tjänsteschema |
| [PrisfragaResponder_4.1_ext.xsd](PrisfragaResponder_4.1_ext.xsd) | Tjänsteschema |

### RegistreraHkdbTransaktion

#### Version

1.1

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktion:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1:RegistreraHkdbTransaktion` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| ackBrutto | double | Om transaktionen avser föregående period skall alltså ackBrutto innehålla FPbrutto i kronor. Om transaktionen avser kommande period skall ackBrutto innehålla motsvarande KPbrutto. I normalfallet används alltså värdet från IPbrutto användas. ackBrutto och periodStart ersätter termerna IPbrutto från version 10.3.0. | 0..1 |
| bruttobelopp | double | Transaktionens högkostnadsgrundande bruttobelop i kronor och ören. | 1..1 |
| expeditionsId | string | Expeditionens unika id för spårbarhet. | 1..1 |
| ipBrutto | double | Ackumulerat bruttobelopp i högkostnadstrappan för innevarande period i kronor och ören. Används för att verifiera att ingen ny transaktion registrerats för personen efter att högkostnadsfrågan ställts. Skall inte används som indata från och version 10.3.0. Använd periodStart och ackBrutto i stället. | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| kommentar | string | Kommentar till kreditering. | 0..1 |
| periodStart | dateTime | Startdatum för den högkostnadsperiod som transaktionen tillhör. | 0..1 |
| persNr | string | Personnummer som transaktionen ska registreras för. | 1..1 |
| transId | string | Aktörens expeditions-ID. | 1..1 |
| transTid | dateTime | Transaktionstidpunkt. | 1..1 |
| ursprungligtApoteksaktorsExpeditionsId | string | Apoteksaktörens ursprungliga expeditionsid, ska anges vid kreditering | 0..1 |
| ursprungligtExpeditionsId | string | Expeditionens ursprungliga expeditionsid, ska anges vid kreditering | 0..1 |
| ursprungligTransTid | dateTime | Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur RegistreraHkdbTransaktionResponder_1.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1.1.) | 0..1 |
| **Svar** |   |   |   |
| fpBalans | BalansResponse | Nya ackumulerade brutto/netto belopp i kronor och ören för föregånde period. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ipBalans | BalansResponse | Nya ackumulerade brutto/netto belopp i kronor och ören för innevarande period. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| kpBalans | BalansResponse | Nya ackumulerade brutto/netto belopp i kronor och ören för kommande period. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| resultat | int | Resultat av högkostnadsuppdatering. 1 - Transaktionen accepterad och registrerad. | 1..1 |

#### FHIR-artefakter

* [RegistreraHkdbTransaktionRequest](StructureDefinition-registrerahkdbtransaktion-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [RegistreraHkdbTransaktion](StructureDefinition-registrerahkdbtransaktion.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [RegistreraHkdbTransaktionInteraction_1.1_rivtabp21.wsdl](RegistreraHkdbTransaktionInteraction_1.1_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [RegistreraHkdbTransaktionResponder_1.1.xsd](RegistreraHkdbTransaktionResponder_1.1.xsd) | Tjänsteschema |
| [RegistreraHkdbTransaktionResponder_1.1_ext.xsd](RegistreraHkdbTransaktionResponder_1.1_ext.xsd) | Tjänsteschema |

### SkapaHkdbKonto

#### Version

4.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:SkapaHkdbKonto:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4:SkapaHkdbKonto` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| huvudPersNr | string | Personnummer för eventuell huvudperson. | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| periodBrutto | double | Ackumulerat bruttobelopp i kronor och ören. Från och med version 10.3 ersätter periodBrutto periodNetto. | 0..1 |
| periodStart | dateTime | Eventuellt startdatum för innevarande högkostnadsperiod. | 0..1 |
| persNr | string | Personnummer för den som ska anslutas. | 1..1 |
| **Svar** |   |   |   |
| ansluten | boolean | Personens högkostnadsstatus. False - Konto ej skapat True - Konto skapat | 1..1 |

#### FHIR-artefakter

* [SkapaHkdbKontoRequest](StructureDefinition-skapahkdbkonto-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [SkapaHkdbKonto](StructureDefinition-skapahkdbkonto.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [SkapaHkdbKontoInteraction_4.0_rivtabp21.wsdl](SkapaHkdbKontoInteraction_4.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [SkapaHkdbKontoResponder_4.0.xsd](SkapaHkdbKontoResponder_4.0.xsd) | Tjänsteschema |

### TaBortHkdbKonto

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:pris:TaBortHkdbKonto:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1:TaBortHkdbKonto` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| persNr | string | Personnummer för den som ska tas bort. | 1..1 |
| **Svar** |   |   |   |
| innevPeriod | PeriodResponse | Innevarande högkostnadsperiod. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| kommandePeriod | PeriodResponse | Kommande högkostnadsperiod. | 0..1 |
| ../balans | BalansResponse | Ackumulerad balans | 1..1 |
| ../../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ../start | dateTime | Periodens startdatum. | 0..1 |
| resultat | boolean | Resultat av kontouppdatering i HKDB. True - Konto borttaget. | 1..1 |
| samlingBort | boolean | Anger om samlingskonto tagits bort i samband med anropet. True - Samlingskonto borttaget. | 1..1 |

#### FHIR-artefakter

* [TaBortHkdbKontoRequest](StructureDefinition-taborthkdbkonto-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [TaBortHkdbKonto](StructureDefinition-taborthkdbkonto.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [TaBortHkdbKontoInteraction_1.0_rivtabp21.wsdl](TaBortHkdbKontoInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [TaBortHkdbKontoResponder_1.0.xsd](TaBortHkdbKontoResponder_1.0.xsd) | Tjänsteschema |

### Gemensamma källfiler

| | |
| :--- | :--- |
| [ArgosHeader_1.0.xsd](ArgosHeader_1.0.xsd) | SOAP-huvud |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | SOAP-huvud |
| [se.apotekensservice_pris_1.0.xsd](se.apotekensservice_pris_1.0.xsd) | Domänschema |
| [se.apotekensservice_pris_4.0.xsd](se.apotekensservice_pris_4.0.xsd) | Domänschema |
| [AB_se_apotekenservice_pris.docx](AB_se_apotekenservice_pris.docx) | Arkitekturella beslut |

