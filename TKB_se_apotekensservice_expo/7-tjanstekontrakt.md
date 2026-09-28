# 7 Tjänstekontrakt - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

**SAKNAS I KÄLLDOKUMENT.** Det finns inga kontraktsbeskrivningar. Beskrivningarna nedan är hämtade ur WSDL och XSD. Alla kontrakt har SOAP-huvudena LogicalAddress och ArgosHeader och returnerar fel som `ApplicationException` eller `SystemException` (se [avsnitt 4](4-tjanstedomanens-krav-och-regler.md)). ArgosHeaderType har följande fält, alla string och 0..1: forskrivarkod, legitimationskod, fornamn, efternamn, yrkesgrupp, befattningskod, arbetsplatskod, arbetsplatsnamn, postort, postadress, postnummer, telefonnummer, requestId, rollnamn, hsaID, katalog, organisationsnummer, systemnamn, systemversion, systemIp. Enligt WSDL-filerna anger dokumentationen vilka ArgosHeader-fält som är obligatoriska för respektive tjänsteinteraktion; den dokumentationen finns inte i källan.

### HamtaApoteksInfo

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:HamtaApoteksInfo:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1:HamtaApoteksInfo` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| glnKod | string | Lista med en eller flera GLN-koder som identifierar de expeditionsställen man vill ha information om. GLN-koderna i listan ska vara unika. | 1..* |
| tidpunkt | dateTime | Om givet så returneras information som gällde vid tidpunkten, annars aktuell information. | 0..1 |
| **Svar** |   |   |   |
| apoteksinformationLista | ApoteksinformationResponse | Lista innehållande ett eller flera Apoteksinformation. | 1..* |
| ../aktorsnamn | string | Officiellt namn för aktör | 0..1 |
| ../aktorsorgnr | long | Aktörens organisationsnummer. | 0..1 |
| ../allmantelefon | string | Telefonnummer för allmänheten | 0..1 |
| ../besoksadress | string | Expeditionsställets besöksadress | 0..1 |
| ../eReceptDjur | boolean | Markering gällande om apoteket kan expediera elektroniska djurrecept. | 1..1 |
| ../fax | string | Expeditionsställets faxnummer | 0..1 |
| ../glnKod | string | Expeditionsställets GLN-kod | 1..1 |
| ../huvudtypkod | string | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| ../namn | string | Expeditionsställets officiella namn | 0..1 |
| ../ort | string | Expeditionsställets besöksort | 0..1 |
| ../slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| ../startdatum | dateTime | Datum för start av verksamhet | 1..1 |

#### FHIR-artefakter

* [HamtaApoteksInfoRequest](StructureDefinition-hamtaapoteksinfo-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaApoteksInfo](StructureDefinition-hamtaapoteksinfo.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaApoteksInfoInteraction_1.0_rivtabp21.wsdl](HamtaApoteksInfoInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaApoteksInfoResponder_1.0.xsd](HamtaApoteksInfoResponder_1.0.xsd) | Tjänsteschema |

### HamtaApoteksinfoEget

#### Version

5.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEget:5:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:4:HamtaApoteksinfoEget` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| apoteksId | string | GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata. | 0..1 |
| orgNr | long | Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata. | 0..1 |
| **Svar** |   |   |   |
| expeditionsstalleLista | ExpeditionsstalleEgetResponse | Lista innehållande en eller flera expeditionsstallen. | 1..* |
| ../aktorsnamn | string | Aktörens namn. | 1..1 |
| ../allmTelefon | string | Expeditionsställets allmänna telefonnummer. | 1..1 |
| ../apoteksId | string | GLN-kod för unik identifiering av apotek. | 1..1 |
| ../besoksAdress | string | Expeditionsställets besöksadress. | 1..1 |
| ../besoksort | string | Expeditionsställets ort (besöksort). | 1..1 |
| ../dosmottagareLista | DosmottagareResponse | Information om dosmottagare. | 0..* |
| ../../adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| ../../apoteksIdDosmottagare | string | Apoteks-id för dosmottagare om dosmottagare är av typen apotek. | 0..1 |
| ../../arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| ../../avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| ../../dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| ../../kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| ../../lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| ../../mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| ../../postnummer | string | Postnummer till dosmottagare. | 0..1 |
| ../../postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| ../../typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek). | 1..1 |
| ../eRecept | boolean | Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. | 1..1 |
| ../eReceptDjur | boolean | Markering gällande om apoteket kan expediera elektroniska djurrecept. | 1..1 |
| ../faxnummer | string | Expeditionsställets faxnummer. | 0..1 |
| ../huvudOrgTypKod | string | Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel. | 0..1 |
| ../kommun | int | Expeditionsställets kommuntillhörighet, kod enligt SCB. | 1..1 |
| ../kortNamn | string | Kortversion på apoteksnamn. Behövs i bla i vårdsystem. | 0..1 |
| ../lan | int | Expeditionsställets länstillhörighet, kod enligt SCB. | 1..1 |
| ../namn | string | Expeditionsställets officiella namn. | 1..1 |
| ../oppetHallandeLista | OppethallandeResponse | När expeditionsstället har öppet. | 0..* |
| ../../dagBenamning | string | Exempelvis "Nyårsafton". | 0..1 |
| ../../lunchFrom | string | Om lunchstängt, "stänger för lunch". Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../../lunchTom | string | Om lunchstängt, "Öppnar igen efter lunch kl". Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../../oppnar | string | Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../../slutDatum | dateTime | Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum. | 0..1 |
| ../../stanger | string | Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../../startDatum | dateTime | Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24. | 1..1 |
| ../../tfStangtOrsak | string | Orsak till tillfällig stängning. | 0..1 |
| ../../typ | string | Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period | 1..1 |
| ../../veckodagnr | string | Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar. | 0..1 |
| ../orgNr | long | Aktörens organisationsnummer | 1..1 |
| ../orgTypADM | boolean | Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. | 1..1 |
| ../orgTypDIST | boolean | Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner | 1..1 |
| ../orgTypDJAP | boolean | Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment. | 1..1 |
| ../orgTypDOS | boolean | Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel. | 1..1 |
| ../orgTypEA | boolean | Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. | 1..1 |
| ../orgTypEH | boolean | Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket. | 1..1 |
| ../orgTypGSL | boolean | Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. "General Sales list" - även kallad för "80-listan", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. | 1..1 |
| ../orgTypSA | boolean | Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter. | 1..1 |
| ../orgTypTILV | boolean | Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel. | 1..1 |
| ../postAdress | string | Expeditionsställets postAdress. | 1..1 |
| ../postNr | string | Expeditionsställets postNr. | 1..1 |
| ../postort | string | Expeditionsställets postort. | 1..1 |
| ../recepturtelefon | string | Expeditionsställets receptur telefonnummer. | 0..1 |
| ../slutDatum | dateTime | Datum för avslut av verksamhet. | 0..1 |
| ../startDatum | dateTime | Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket. | 1..1 |
| ../statusDate | dateTime | Expeditionsställets tillståndsstatus ändringsdatum. | 0..1 |
| ../tidigareGlnKod | string | Expeditionsställets tidigare ägares GLN. | 0..1 |
| ../tillstandsstatus | string | Expeditionsställets tillståndsstatus. | 0..1 |
| ../webbadress | string | Webbadress till apotekets webbtjänster. Apotekens Service använder adressen för att skicka notifieringsmeddelanden. Används endast av dosproducenter. | 0..1 |

#### FHIR-artefakter

* [HamtaApoteksinfoEgetRequest](StructureDefinition-hamtaapoteksinfoeget-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaApoteksinfoEget](StructureDefinition-hamtaapoteksinfoeget.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaApoteksinfoEgetInteraction_5.0_rivtabp21.wsdl](HamtaApoteksinfoEgetInteraction_5.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaApoteksinfoEgetResponder_5.0.xsd](HamtaApoteksinfoEgetResponder_5.0.xsd) | Tjänsteschema |

### KontaktuppgifterHamta

#### Version

4.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:KontaktuppgifterHamta:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4:KontaktuppgifterHamta` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| orgNr | long | Aktörens organisationsnummer | 0..1 |
| **Svar** |   |   |   |
| epostadressServicedesk | string | E-postadress till aktörens servicedesk | 0..1 |
| kontaktpersonLista | KontaktpersonResponse | Kontaktpersoner | 0..* |
| ../befattning | string | Kontaktpersonens befattning. | 1..1 |
| ../efternamn | string | Efternamn på kontaktperson hos aktören. | 1..1 |
| ../epostadress | string | Kontaktpersonens e-postadress | 1..1 |
| ../fornamn | string | Förnamn på kontaktperson hos aktören. | 1..1 |
| ../telefonnummer | string | Kontaktpersonens telefonnummer. | 1..1 |
| orgNr | long | Aktörens organisationsnummer | 0..1 |
| telefonnummerServicedesk | string | Telefonnummer till aktörens servicedesk | 0..1 |

#### FHIR-artefakter

* [KontaktuppgifterHamtaRequest](StructureDefinition-kontaktuppgifterhamta-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [KontaktuppgifterHamta](StructureDefinition-kontaktuppgifterhamta.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [KontaktuppgifterHamtaInteraction_4.0_rivtabp21.wsdl](KontaktuppgifterHamtaInteraction_4.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [KontaktuppgifterHamtaResponder_4.0.xsd](KontaktuppgifterHamtaResponder_4.0.xsd) | Tjänsteschema |

### KontaktuppgifterUppdatera

#### Version

5.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdatera:5:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5:KontaktuppgifterUppdatera` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| epostadressServicedesk | string | E-postadress till aktörens servicedesk | 1..1 |
| kontaktpersonLista | KontaktpersonRequest | Kontaktpersoner. Minst en kontaktperson måste anges. | 1..* |
| ../befattning | string | Kontaktpersonens befattning. | 1..1 |
| ../efternamn | string | Efternamn på kontaktperson hos aktören. | 1..1 |
| ../epostadress | string | Kontaktpersonens e-postadress | 1..1 |
| ../fornamn | string | Förnamn på kontaktperson hos aktören. | 1..1 |
| ../telefonnummer | string | Kontaktpersonens telefonnummer. | 1..1 |
| orgNr | long | Aktörens organisationsnummer | 1..1 |
| telefonnummerServicedesk | string | Telefonnummer till aktörens servicedesk | 1..1 |
| **Svar** |   |   |   |
| **(tomt)** |   | Svaret innehåller inga element utöver utökningspunkter. |   |

#### FHIR-artefakter

* [KontaktuppgifterUppdateraRequest](StructureDefinition-kontaktuppgifteruppdatera-request.md): logisk modell för begäran, inklusive SOAP-huvudena

#### Källfiler

| | |
| :--- | :--- |
| [KontaktuppgifterUppdateraInteraction_5.0_rivtabp21.wsdl](KontaktuppgifterUppdateraInteraction_5.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [KontaktuppgifterUppdateraResponder_5.0.xsd](KontaktuppgifterUppdateraResponder_5.0.xsd) | Tjänsteschema |

### SkapaApotek

#### Version

6.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:SkapaApotek:6:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6:SkapaApotek` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| allmTelefon | string | Expeditionsställets allmänna telefonnummer. | 1..1 |
| besoksAdress | string | Expeditionsställets besöksadress. | 1..1 |
| besoksort | string | Expeditionsställets ort (besöksort). | 1..1 |
| eRecept | boolean | Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| eReceptDjur | boolean | Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| faxnummer | string | Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS | 0..1 |
| huvudOrgTypKod | string | Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel. | 1..1 |
| idLista | IdentitetRequest | Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med. | 1..* |
| ../exportId | boolean | Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN). | 0..1 |
| ../glnKod | string | Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet. | 0..1 |
| kommun | int | Expeditionsställets kommuntillhörighet, kod enligt SCB. | 1..1 |
| kortNamn | string | Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| lan | int | Expeditionsställets länstillhörighet, kod enligt SCB. | 1..1 |
| namn | string | Expeditionsställets officiella namn. | 1..1 |
| oppetHallandeLista | OppethallandeRequest | När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in. | 0..* |
| ../dagBenamning | string | Exempelvis "Nyårsafton". | 0..1 |
| ../lunchFrom | string | Om lunchstängt, "stänger för lunch". Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../lunchTom | string | Om lunchstängt, "Öppnar igen efter lunch kl". Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../oppnar | string | Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../slutDatum | dateTime | Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum. | 0..1 |
| ../stanger | string | Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../startDatum | dateTime | Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-23. | 1..1 |
| ../tfStangtOrsak | string | Orsak till tillfällig stängning. | 0..1 |
| ../typ | string | Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period | 1..1 |
| ../veckodagnr | string | Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar. | 0..1 |
| orgNr | long | Aktörens organisationsnummer | 1..1 |
| orgTypADM | boolean | Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. | 1..1 |
| orgTypDIST | boolean | Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner | 1..1 |
| orgTypDJAP | boolean | Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment. | 1..1 |
| orgTypDOS | boolean | Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel. | 1..1 |
| orgTypEA | boolean | Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. | 1..1 |
| orgTypEH | boolean | Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket. | 1..1 |
| orgTypGSL | boolean | Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. "General Sales list" - även kallad för "80-listan", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. | 1..1 |
| orgTypSA | boolean | Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter. | 1..1 |
| orgTypTILV | boolean | Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel. | 1..1 |
| postAdress | string | Expeditionsställets postAdress. | 1..1 |
| postNr | string | Expeditionsställets postNr. | 1..1 |
| postort | string | Expeditionsställets postort. | 1..1 |
| recepturtelefon | string | Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| slutDatum | dateTime | Datum för avslut av verksamhet. | 0..1 |
| startDatum | dateTime | Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket. | 1..1 |
| tidigareGlnKod | string | Expeditionsställets tidigare ägares GLN. | 0..1 |
| **Svar** |   |   |   |
| allmTelefon | string | Expeditionsställets allmänna telefonnummer. | 1..1 |
| besoksAdress | string | Expeditionsställets besöksadress. | 1..1 |
| besoksort | string | Expeditionsställets ort (besöksort). | 1..1 |
| eRecept | boolean | Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| eReceptDjur | boolean | Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| faxnummer | string | Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS | 0..1 |
| huvudOrgTypKod | string | Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel. | 1..1 |
| idLista | IdentitetResponse | Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med. | 1..* |
| ../exportId | boolean | Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN). | 0..1 |
| ../glnKod | string | Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet. | 0..1 |
| kommun | int | Expeditionsställets kommuntillhörighet, kod enligt SCB. | 1..1 |
| kortNamn | string | Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| lan | int | Expeditionsställets länstillhörighet, kod enligt SCB. | 1..1 |
| namn | string | Expeditionsställets officiella namn. | 1..1 |
| oppetHallandeLista | OppethallandeResponse | När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in. | 0..* |
| ../dagBenamning | string | Exempelvis "Nyårsafton". | 0..1 |
| ../lunchFrom | string | Om lunchstängt, "stänger för lunch". Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../lunchTom | string | Om lunchstängt, "Öppnar igen efter lunch kl". Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../oppnar | string | Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../slutDatum | dateTime | Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum. | 0..1 |
| ../stanger | string | Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../startDatum | dateTime | Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24. | 1..1 |
| ../tfStangtOrsak | string | Orsak till tillfällig stängning. | 0..1 |
| ../typ | string | Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period | 1..1 |
| ../veckodagnr | string | Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar. | 0..1 |
| orgNr | long | Aktörens organisationsnummer | 1..1 |
| orgTypADM | boolean | Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. | 1..1 |
| orgTypDIST | boolean | Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner | 1..1 |
| orgTypDJAP | boolean | Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment. | 1..1 |
| orgTypDOS | boolean | Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel. | 1..1 |
| orgTypEA | boolean | Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. | 1..1 |
| orgTypEH | boolean | Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket. | 1..1 |
| orgTypGSL | boolean | Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. "General Sales list" - även kallad för "80-listan", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. | 1..1 |
| orgTypSA | boolean | Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter. | 1..1 |
| orgTypTILV | boolean | Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel. | 1..1 |
| postAdress | string | Expeditionsställets postAdress. | 1..1 |
| postNr | string | Expeditionsställets postNr. | 1..1 |
| postort | string | Expeditionsställets postort. | 1..1 |
| recepturtelefon | string | Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| slutDatum | dateTime | Datum för avslut av verksamhet. | 0..1 |
| startDatum | dateTime | Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket. | 1..1 |
| tidigareGlnKod | string | Expeditionsställets tidigare ägares GLN. | 0..1 |

#### FHIR-artefakter

* [SkapaApotekRequest](StructureDefinition-skapaapotek-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [SkapaApotek](StructureDefinition-skapaapotek.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [SkapaApotekInteraction_6.0_rivtabp21.wsdl](SkapaApotekInteraction_6.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [SkapaApotekResponder_6.0.xsd](SkapaApotekResponder_6.0.xsd) | Tjänsteschema |

### SkapaDosmottagare

#### Version

4.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:SkapaDosmottagare:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4:SkapaDosmottagare` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| apoteksIdDosmottagare | string | Apoteks-id för dosmottagare om dosmottagare är av typen apotek. | 0..1 |
| apoteksIdDosproducent | string | Apoteks-id för dosproducent som dosmottagaren ska registreras på. | 1..1 |
| arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| postnummer | string | Postnummer till dosmottagare. | 0..1 |
| postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek). | 1..1 |
| **Svar** |   |   |   |
| adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| apoteksIdDosmottagare | string | Apoteks-id för dosmottagare om dosmottagare är av typen apotek. | 0..1 |
| arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| postnummer | string | Postnummer till dosmottagare. | 0..1 |
| postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek). | 1..1 |

#### FHIR-artefakter

* [SkapaDosmottagareRequest](StructureDefinition-skapadosmottagare-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [SkapaDosmottagare](StructureDefinition-skapadosmottagare.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [SkapaDosmottagareInteraction_4.0_rivtabp21.wsdl](SkapaDosmottagareInteraction_4.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [SkapaDosmottagareResponder_4.0.xsd](SkapaDosmottagareResponder_4.0.xsd) | Tjänsteschema |

### SokDosmottagare

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:SokDosmottagare:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1:SokDosmottagare` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| aktorsnamn | string | Aktörens namn. Inledande del av aktörsnamnet kan anges | 0..1 |
| arbetsplatskod | string | Arbetsplatskod. Inledande del av arbetsplatskoden kan anges | 0..1 |
| dosproducentsNamn | string | Dosproducentens namn. Inledande del av dosproducentens kan anges | 0..1 |
| kommunkod | string | Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| mottagarnamn | string | Mottagarens namn. Inledande del av mottagarnamn kan anges | 0..1 |
| postort | string | Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges | 0..1 |
| typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. | 0..1 |
| **Svar** |   |   |   |
| resultat | SokDosmottagareResultatResponse | Lista med apotek och kopplade dosmottagare som utdata | 0..* |
| ../apotek | HamtaApoteksInfoResponse | Apoteksinformation för dosproducenten. | 0..1 |
| ../../apoteksinformationLista | ApoteksinformationResponse | Lista innehållande ett eller flera Apoteksinformation. | 1..* |
| ../../../aktorsnamn | string | Officiellt namn för aktör | 0..1 |
| ../../../aktorsorgnr | long | Aktörens organisationsnummer. | 0..1 |
| ../../../allmantelefon | string | Telefonnummer för allmänheten | 0..1 |
| ../../../besoksadress | string | Expeditionsställets besöksadress | 0..1 |
| ../../../eReceptDjur | boolean | Markering gällande om apoteket kan expediera elektroniska djurrecept. | 1..1 |
| ../../../fax | string | Expeditionsställets faxnummer | 0..1 |
| ../../../glnKod | string | Expeditionsställets GLN-kod | 1..1 |
| ../../../huvudtypkod | string | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| ../../../namn | string | Expeditionsställets officiella namn | 0..1 |
| ../../../ort | string | Expeditionsställets besöksort | 0..1 |
| ../../../slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| ../../../startdatum | dateTime | Datum för start av verksamhet | 1..1 |
| ../dosmottagare | DosmottagareResponse |   | 0..* |
| ../../adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| ../../apoteksIdDosmottagare | string | Apoteks-id för dosmottagare om dosmottagare är av typen apotek. | 0..1 |
| ../../arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| ../../avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| ../../dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| ../../kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| ../../lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| ../../mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| ../../postnummer | string | Postnummer till dosmottagare. | 0..1 |
| ../../postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| ../../typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek). | 1..1 |

#### FHIR-artefakter

* [SokDosmottagareRequest](StructureDefinition-sokdosmottagare-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [SokDosmottagare](StructureDefinition-sokdosmottagare.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [SokDosmottagareInteraction_1.0_rivtabp21.wsdl](SokDosmottagareInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [SokDosmottagareResponder_1.0.xsd](SokDosmottagareResponder_1.0.xsd) | Tjänsteschema |

### TaBortDosmottagare

#### Version

1.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:TaBortDosmottagareResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:TaBortDosmottagare:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:TaBortDosmottagareResponder:1:TaBortDosmottagare` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| apoteksIdDosproducent | string | Apoteks-id för dosproducent som dosmottagaren ska registreras på. | 1..1 |
| dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| **Svar** |   |   |   |
| **(tomt)** |   | Svaret innehåller inga element utöver utökningspunkter. |   |

#### FHIR-artefakter

* [TaBortDosmottagareRequest](StructureDefinition-tabortdosmottagare-request.md): logisk modell för begäran, inklusive SOAP-huvudena

#### Källfiler

| | |
| :--- | :--- |
| [TaBortDosmottagareInteraction_1.0_rivtabp21.wsdl](TaBortDosmottagareInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [TaBortDosmottagareResponder_1.0.xsd](TaBortDosmottagareResponder_1.0.xsd) | Tjänsteschema |

### UppdateraDosmottagare

#### Version

4.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:UppdateraDosmottagareResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:UppdateraDosmottagare:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:UppdateraDosmottagareResponder:4:UppdateraDosmottagare` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| apoteksIdDosproducent | string | Apoteks-id för dosproducent som dosmottagaren ska registreras på. | 1..1 |
| arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| postnummer | string | Postnummer till dosmottagare. | 0..1 |
| postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| **Svar** |   |   |   |
| **(tomt)** |   | Svaret innehåller inga element utöver utökningspunkter. |   |

#### FHIR-artefakter

* [UppdateraDosmottagareRequest](StructureDefinition-uppdateradosmottagare-request.md): logisk modell för begäran, inklusive SOAP-huvudena

#### Källfiler

| | |
| :--- | :--- |
| [UppdateraDosmottagareInteraction_4.0_rivtabp21.wsdl](UppdateraDosmottagareInteraction_4.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [UppdateraDosmottagareResponder_4.0.xsd](UppdateraDosmottagareResponder_4.0.xsd) | Tjänsteschema |

### UppdateraExpoMedApotek

#### Version

6.0

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotek:6:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6:UppdateraExpoMedApotek` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| allmTelefon | string | Expeditionsställets allmänna telefonnummer. | 1..1 |
| besoksAdress | string | Expeditionsställets besöksadress. | 1..1 |
| besoksort | string | Expeditionsställets ort (besöksort). | 1..1 |
| eRecept | boolean | Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| eReceptDjur | boolean | Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| faxnummer | string | Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS | 0..1 |
| huvudOrgTypKod | string | Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel. | 1..1 |
| idLista | IdentitetRequest | Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med. | 1..* |
| ../exportId | boolean | Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN). | 0..1 |
| ../glnKod | string | Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet. | 0..1 |
| kommun | int | Expeditionsställets kommuntillhörighet, kod enligt SCB. | 1..1 |
| kortNamn | string | Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| lan | int | Expeditionsställets länstillhörighet, kod enligt SCB. | 1..1 |
| namn | string | Expeditionsställets officiella namn. | 1..1 |
| oppetHallandeLista | OppethallandeRequest | När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in. | 0..* |
| ../dagBenamning | string | Exempelvis "Nyårsafton". | 0..1 |
| ../lunchFrom | string | Om lunchstängt, "stänger för lunch". Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../lunchTom | string | Om lunchstängt, "Öppnar igen efter lunch kl". Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../oppnar | string | Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../slutDatum | dateTime | Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum. | 0..1 |
| ../stanger | string | Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59) | 0..1 |
| ../startDatum | dateTime | Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-23. | 1..1 |
| ../tfStangtOrsak | string | Orsak till tillfällig stängning. | 0..1 |
| ../typ | string | Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period | 1..1 |
| ../veckodagnr | string | Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar. | 0..1 |
| orgNr | long | Aktörens organisationsnummer | 1..1 |
| orgTypADM | boolean | Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. | 1..1 |
| orgTypDIST | boolean | Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner | 1..1 |
| orgTypDJAP | boolean | Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment. | 1..1 |
| orgTypDOS | boolean | Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel. | 1..1 |
| orgTypEA | boolean | Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. | 1..1 |
| orgTypEH | boolean | Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket. | 1..1 |
| orgTypGSL | boolean | Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. "General Sales list" - även kallad för "80-listan", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. | 1..1 |
| orgTypSA | boolean | Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter. | 1..1 |
| orgTypTILV | boolean | Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel. | 1..1 |
| postAdress | string | Expeditionsställets postAdress. | 1..1 |
| postNr | string | Expeditionsställets postNr. | 1..1 |
| postort | string | Expeditionsställets postort. | 1..1 |
| recepturtelefon | string | Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| slutDatum | dateTime | Datum för avslut av verksamhet. | 0..1 |
| startDatum | dateTime | Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket. | 1..1 |
| tidigareGlnKod | string | Expeditionsställets tidigare ägares GLN. | 0..1 |
| **Svar** |   |   |   |
| allmTelefon | string | Expeditionsställets allmänna telefonnummer. | 1..1 |
| besoksAdress | string | Expeditionsställets besöksadress. | 1..1 |
| besoksort | string | Expeditionsställets ort (besöksort). | 1..1 |
| eRecept | boolean | Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| eReceptDjur | boolean | Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 1..1 |
| faxnummer | string | Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS | 0..1 |
| huvudOrgTypKod | string | Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel. | 1..1 |
| idLista | IdentitetResponse | Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med. | 1..* |
| ../exportId | boolean | Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN). | 0..1 |
| ../glnKod | string | Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet. | 0..1 |
| kommun | int | Expeditionsställets kommuntillhörighet, kod enligt SCB. | 1..1 |
| kortNamn | string | Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| lan | int | Expeditionsställets länstillhörighet, kod enligt SCB. | 1..1 |
| namn | string | Expeditionsställets officiella namn. | 1..1 |
| oppetHallandeLista | OppethallandeResponse | När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in. | 0..* |
| ../dagBenamning | string | Exempelvis "Nyårsafton". | 0..1 |
| ../lunchFrom | string | Om lunchstängt, "stänger för lunch". Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../lunchTom | string | Om lunchstängt, "Öppnar igen efter lunch kl". Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../oppnar | string | Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../slutDatum | dateTime | Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum. | 0..1 |
| ../stanger | string | Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut | 0..1 |
| ../startDatum | dateTime | Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24. | 1..1 |
| ../tfStangtOrsak | string | Orsak till tillfällig stängning. | 0..1 |
| ../typ | string | Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period | 1..1 |
| ../veckodagnr | string | Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar. | 0..1 |
| orgNr | long | Aktörens organisationsnummer | 1..1 |
| orgTypADM | boolean | Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. | 1..1 |
| orgTypDIST | boolean | Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner | 1..1 |
| orgTypDJAP | boolean | Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment. | 1..1 |
| orgTypDOS | boolean | Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel. | 1..1 |
| orgTypEA | boolean | Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. | 1..1 |
| orgTypEH | boolean | Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket. | 1..1 |
| orgTypGSL | boolean | Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. "General Sales list" - även kallad för "80-listan", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. | 1..1 |
| orgTypSA | boolean | Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter. | 1..1 |
| orgTypTILV | boolean | Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel. | 1..1 |
| postAdress | string | Expeditionsställets postAdress. | 1..1 |
| postNr | string | Expeditionsställets postNr. | 1..1 |
| postort | string | Expeditionsställets postort. | 1..1 |
| recepturtelefon | string | Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska. | 0..1 |
| slutDatum | dateTime | Datum för avslut av verksamhet. | 0..1 |
| startDatum | dateTime | Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket. | 1..1 |
| tidigareGlnKod | string | Expeditionsställets tidigare ägares GLN. | 0..1 |

#### FHIR-artefakter

* [UppdateraExpoMedApotekRequest](StructureDefinition-uppdateraexpomedapotek-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [UppdateraExpoMedApotek](StructureDefinition-uppdateraexpomedapotek.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [UppdateraExpoMedApotekInteraction_6.0_rivtabp21.wsdl](UppdateraExpoMedApotekInteraction_6.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [UppdateraExpoMedApotekResponder_6.0.xsd](UppdateraExpoMedApotekResponder_6.0.xsd) | Tjänsteschema |

### Gemensamma källfiler

| | |
| :--- | :--- |
| [ArgosHeader_1.0.xsd](ArgosHeader_1.0.xsd) | SOAP-huvud |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | SOAP-huvud |
| [se.apotekensservice_expo_1.0.xsd](se.apotekensservice_expo_1.0.xsd) | Domänschema |
| [se.apotekensservice_expo_4.0.xsd](se.apotekensservice_expo_4.0.xsd) | Domänschema |
| [se.apotekensservice_expo_5.0.xsd](se.apotekensservice_expo_5.0.xsd) | Domänschema |
| [se.apotekensservice_expo_6.0.xsd](se.apotekensservice_expo_6.0.xsd) | Domänschema |
| [AB_se_apotekenservice_expo.docx](AB_se_apotekenservice_expo.docx) | Arkitekturella beslut |

