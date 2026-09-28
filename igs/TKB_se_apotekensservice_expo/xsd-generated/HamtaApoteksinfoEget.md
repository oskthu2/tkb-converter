| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| apoteksId | string | GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata. | 0..1 |
| orgNr | long | Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata. | 0..1 |
| **Svar** | | | |
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
