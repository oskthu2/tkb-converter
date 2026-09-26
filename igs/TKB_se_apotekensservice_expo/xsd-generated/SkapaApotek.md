| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
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
| **Svar** | | | |
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
