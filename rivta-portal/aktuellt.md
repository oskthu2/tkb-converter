# Aktuellt - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* **Aktuellt**

## Aktuellt

Här hittar du information om bland annat nyheter, pågående arbeten och beslutsärenden. Prenumerera via [RSS-flödet](rss.xml).

**Arkiv:** [2026](#ar-2026) · [2025](#ar-2025) · [2024](#ar-2024) · [2023](#ar-2023) · [2022](#ar-2022) · [2021](#ar-2021) · [2020](#ar-2020) · [2018](#ar-2018) · [2017](#ar-2017) · [2016](#ar-2016) · [2015](#ar-2015) · [2014](#ar-2014)

### Nyheter från 2026

#### RIV-TA Refererade bilagor

*2026-06-08*

[Ny anvisning RIV-TA Refererade bilagor](https://rivta.se/documents/ARK_0078/) har publicerats. Denna anvisning ersätter tidigare RIV-TA Binära bilagor, vilken således har avpublicerats.

#### RIV-TA Basic Profile 2.1, version 3.1, samt RIV-TA Tjänsteplattform, version 2.1 har publicerats

*2026-06-08*

Anvisningarna har förtydligats bland annat kring att certifikat inte alltid måste användas vid anslutning till anpassningstjänster och liknande moduler inom en tjänsteplattform.

#### RIV-TA Konfigurationsstyrning tjänstedomäner

*2026-05-11*

[Anvisningen för konfigurationsstyrning av tjänstedomäner](https://rivta.se/documents/ARK_0007/) har uppdaterats till version 2.2.10. Uppdateringen förtydligar hur tjänstedomäner ska paketeras, särskilt vid parallella majorversioner av tjänstekontrakt, och innehåller nya figurer som stöd för detta. Avsnitten om versionshantering av domängemensamma scheman och kvalitetssäkring har också justerats och förtydligats.

#### Behörighetsmodell för vård och omsorg

*2026-01-30*

[Behörighetsmodellen](https://rivta.se/documents/ARK_0062/) har reviderats avseende administrativa medarbetaruppdrags organisationsomfång.

### Nyheter från 2025

#### RIV Tekniska Anvisningar - Översikt

*2025-08-11*

[RIV-TA Översikt](https://rivta.se/documents/ARK_0001/) har reviderats för att inkludera referenser till anvisningar för REST och FHIR.

#### RIV Tekniska Anvisningar - REST

*2025-03-14*

[RIV-TA REST](https://rivta.se/documents/ARK_0071/) har publicerats i en första revision.

#### Målarkitektur för samverkan enligt T2 inom svensk välfärd

*2025-02-03*

En [målarkitektur](https://rivta.se/documents/ARK_0076/) för samverkan enligt T2-arkitekturerna har tagits fram i en första revision.

#### Ny vägledning Skapa federation för informationsutbyte i enlighet med T2

*2025-01-17*

En [vägledning](https://rivta.se/documents/ARK_0077/) för skapandet av en informationsfederation har tagits fram i en första revision.

### Nyheter från 2024

#### Ny vägledning Skapa interoperabilitetsspecifikation

*2024-12-10*

En [vägledning](https://rivta.se/documents/ARK_0075/) för utformning av en interoperabilitetsspecifikation har tagits fram i en första revision.

#### Ny vägledning Introduktion till samverkansarkitektur

*2024-11-01*

Vi har i [Introduktion till samverkansarkitektur](https://rivta.se/documents/ARK_0074/) övergripande förklarat hur olika arkitekturella dokument relaterar till varandra och hur de kan användas när man tar fram en interoperabel lösning.

#### Revidering av RIV tekniska anvisningar

*2024-09-18*

Vi har i denna revidering förtydligat många anvisningar, ändrat strukturen för anvisningar, samt hur vi presenterar anvisningar på denna site. [Översikten](https://rivta.se/documents/ARK_0001/) har uppdaterats till att bli teknikoberoende. Vi har infört en ny anvisning för [SOAP Web Services](https://rivta.se/documents/ARK_0069/) och reviderat [Basic Profile 2.1](https://rivta.se/documents/ARK_0002/), [Tjänsteschema](https://rivta.se/documents/ARK_0005/), [Domänschema](https://rivta.se/documents/ARK_0006/), [Tjänsteplattform](https://rivta.se/documents/ARK_0034/), samt gjort en mindre uppdatering av [Livscykelhantering för tjänstekontrakt](https://rivta.se/documents/ARK_0057/).

I respektive dokument kan du läsa mer i detalj vad som uppdaterats, men här följer en listning av de mest signifikanta förändringarna:

1. **Identitetsheadrar:**Vid samverkan baserad på Basic Profile 2.1 över tjänsteplattformar ska identitetsinformation om bakomliggande uppdragsgivare bifogas anrop vid samverkan via agent- och leverantörssystem. HTTP-headern x-rivta-acting-on-behalf-of-hsaid används för detta och beskrivs i RIV-TA Basic Profile 2.1.
1. **Åtkomstbeslut av tjänsteproducenter:**Det har länge förekommit att åtkomst nekats av tjänsteproducenter trots att alla tjänsteplattformar har tagit positiva åtkomstbeslut. Vi har förtydligat hur nekad åtkomst ska återrapporteras till konsumenten som fel och hur de ska hanteras av tjänsteplattformar.
1. **Direkt kommunikation:**För samverkan baserad på tjänstekontrakt enligt Basic Profile 2.1 stipulerades det tidigare att sådan samverkan alltid skulle etableras via Nationell tjänsteplattform, även för annan samverkan än via nationella tjänster. Denna begränsning har tagits bort.
1. **Aggregerande tjänster:**Det fanns en regel som begränsade tjänsteplattformar att erbjuda fler än en aggregerande tjänst per tjänstekontrakt. Denna begränsning har tagits bort.
1. **Förändrad skrivning kring hur parallella huvudversioner ska kunna stödjas:**Kravet på att tjänsteproducenter ska exponeras via URL:er med specifikt format har tagits bort. Det har ersatts med instruktion om att man ur SOAP-headerns namespace kan särskilja mellan tjänstekontrakt.

#### Ny presentation av samverkansarkitekturen publicerad

*2024-06-12*

[Presentationen "Introduktion samverkansarkitekturen"](dokument.md#presentationer) och en inspelad dragning av den har publicerats.

### Nyheter från 2023

#### Version 3.1 av informationsspecifikationsmallen är publicerad

*2023-11-16*

[Mallen](https://rivta.se/documents/ARK_0026/informationsspecifikation_mall_inera_3_1.docx) har uppdaterats med datatyper för att följa iso-standarden.

#### Version 3.0 av informationsspecifikationsmallen är publicerad

*2023-08-24*

[Mallen](https://rivta.se/documents/ARK_0026/informationsspecifikation_mall_inera_3_0.docx) har uppdaterats som del av löpande förvaltning.

#### Anvisning autentisering, version 3.3 publicerad

*2023-08-10*

[Anvisningen](https://rivta.se/documents/ARK_0045/) har reviderats som del av löpande förvaltning.

#### "T2-arkitekturerna" fastställda i revision A

*2023-06-26*

Följande leverabler har fastställts i revision A:

1. [T2 – referensarkitektur för interoperabilitet inom svensk välfärd](https://rivta.se/documents/ARK_0064/)
1. [T2 – referensarkitektur för interoperabilitet inom svensk vård och omsorg](https://rivta.se/documents/ARK_0065/)
1. [FHIR-baserad interoperabilitetsarkitektur](https://rivta.se/documents/ARK_0066/)

#### Anvisning kryptering, version 3.3 publicerad

*2023-05-02*

[Anvisningen](https://rivta.se/documents/ARK_0036/) har reviderats som del av löpande förvaltning.

#### Referensarkitektur identitet och åtkomst, revision B publicerad

*2023-03-28*

[Revision B](https://rivta.se/documents/ARK_0046/) har fokus på system-till-system-kommunikation men innehåller även andra uppdateringar.

### Nyheter från 2022

#### RIV Tekniska Anvisningar Öppen källkod avpublicerad

*2022-12-16*

Anvisningen har avpublicerats då den inte längre förvaltas i sin nuvarande form.

#### RIV Tekniska Anvisningar Konfigurationsstyrning tjänstedomän, version 2.2.9 publicerad

*2022-12-07*

I denna uppdatering har man tagit bort information gällande byggskript så dessa ej kommer publiceras i domänpaketeringarna. Även bildtexter har tillförts i dokumentet.

#### Tillämpningsanvisning PDL-loggning, version 1.1 publicerad

*2022-11-29*

Lagt till en del förtydligande i texten och kompletteringar för att öka läsbarheten och underlätta förståelsen.

#### RIV Tekniska Anvisningar Basic Profile 2.1, version 2.1.8 publicerad

*2022-11-01*

Rättat stavfel på headern x-rivta-acting-on-behalf-of-hsaid i regel #24.

#### RIV Tekniska Anvisningar Livscykelhantering för tjänstekontrakt, version 1.2 publicerad

*2022-09-15*

I denna uppdatering har man utökat beskrivningar och genomfört förtydliganden. Man har även lagt till en bilaga med förslag till tillämpningar kring hantering av uppgradering till ny majorversion.

#### RIV Tekniska Anvisningar Konfigurationsstyrning tjänstedomän, version 2.2.8 publicerad

*2022-06-14*

I denna uppdatering har man gjort ett antal förtydliganden och kompletterat med exempel. Dessutom har man uppdaterat versioneringsvägledningen att linjera med de uppdaterade processer som gäller idag.

#### PDL i praktiken avpublicerad

*2022-05-09*

Då ARK_0031, PDL i praktiken, inte avspeglar nuvarande juridiska tolkningar av patientdatalagen, har dokumentet avpublicerats.

#### Uppdaterad säkerhetsgranskningsmall

*2022-05-02*

Enligt beslut från Ineras Arkitektursektion sker framöver Verksamhets-/Informatikgranskningar av tjänstekontraktsbeskrivningar (TKB), informationsspecifikationer (IS) och arkitekturella beslut (AB) i form av en självgranskning som tjänster och projekt själva är ansvariga för. I samband med detta har verksamhet- och informatikdelarna tagits bort ur ARK_0050. Detta dokument innehåller nu endast protokoll för säkerhetsgranskning.

#### Behörighetsmodell för vård och omsorg, version 3.2.1 publicerad

*2022-04-30*

Förtydligande gjort av organisationsomfång för administrativa medarbetaruppdrag.

#### Sårbarhet föranleder uppdatering av testsviter

*2022-03-02*

I slutet av 2021 upptäcktes en sårbarhet i komponenten Log4J. Log4J ingår som en komponent i SoapUI och ReadyAPI som använts för att ta fram de testsviter som ingår i de tjänstedomäner som Inera förvaltar. Ineras testsviter håller successivt på att uppdateras och publiceras på rivta.se. De testsviter som ännu inte uppdaterats fungerar endast med äldre versioner av SoapUI och ReadyAPI. Log4J har uppdaterats och inkluderats i version 5.6.1 av SoapUI och version 3.10.2 av ReadyAPI. I samband med detta har vissa funktioner tagits bort, vilket gör att de tidigare testsviterna inte längre är kompatibla med senaste versionerna av SoapUI och ReadyAPI.

Information om vilka releasepaket som är uppdaterade med nya testsviter finns på [Log4J - Status uppdaterade testsviter](https://inera.atlassian.net/wiki/spaces/OITOF/pages/2741764700/Log4J+-+Status+uppdaterade+testsviter).

#### RIV Tekniska Anvisningar Tjänsteplattform, version 1.8 publicerad

*2022-01-25*

Ny VP-felkod VP015 definierad i [RIV Tekniska Anvisningar Tjänsteplattform](https://rivta.se/documents/ARK_0034/).

### Nyheter från 2021

#### Behörighetsmodell för vård och omsorg publicerad på rivta.se

*2021-09-28*

Den behörighetsmodell för vård och omsorg som tidigare hittats endast via HSA-förvaltningens informationssidor publiceras nu på rivta.se.

#### RIV Tekniska Anvisningar Tjänsteplattform rättad

*2021-06-28*

I publiceringen 2021-03-12 av anvisningen angav regel #12 felaktigt att VP013 skulle returneras vid rundgång. Detta var fel. Korrekt felkod är VP014.

#### RIV Tekniska Anvisningar Basic Profile Valfria tillägg 2.1 avpublicerad

*2021-03-12*

Då denna anvisning innehåller tvingande anvisningar och namngivningen då varit otydlig avvecklas denna anvisning i syfte att göra det tydligare för läsare. Vi har flyttat generella delar till RIV Tekniska Anvisningar Basic Profile 2.1, version 2.1.6, och det som är specifikt för tjänsteplattformar till RIV Tekniska Anvisningar Tjänsteplattform, version 1.6.

#### RIV Tekniska Anvisningar Basic Profile 2.1, version 2.1.6 publicerad

*2021-03-12*

Headern x-rivta-acting-on-behalf-of-hsaid introduceras. Den kan användas för att informera producenter om att ursprunglig konsument anropar på begäran av en bakomliggande part.

#### RIV Tekniska Anvisningar Tjänsteplattform, version 1.6 publicerad

*2021-03-12*

Förtydligande av hur VP-fel ska representeras avseende faultcode, faultstring och detail. Ny felkod VP013 införs när anrop förmedlats via icke betrodd tjänsteplattform. Alla headrar som inleds med ”x-rivta-” ska vidarebefordras till tjänsteproducenten. Headern x-rivta-routing-history introduceras i syfte att underlätta felsökning. Ny anvisning om ett stabilitetshöjande rundgångsskydd och en ny felkod VP014 för när rundgång inträffat.

### Nyheter från 2020

#### Förändrade riktlinjer för lokalt driven e-tjänsteförsörjning

*2020-12-08*

T-boken är en arkitekturell beskrivning av hur man ska lösa interoperabilitetsbehov för informationsdelning inom svensk hälso- och sjukvård. Då hantering av källkod och val av licensmodell inte i huvudsak är en arkitekturell fråga utan ett lokalt beslut i de organisationer som realiserar tjänster enligt T-boken och dess anvisningsdokument har vi valt att förändra skrivningarna i kapitel 4.5 i T-boken.

[Referensarkitektur för vård och omsorg - T-boken](https://rivta.se/documents/ARK_0019/)

#### Förtydligande av parallella huvudversioner av ett tjänstekontrakt

*2020-12-08*

Anvisningen har förtydligats då det i tidigare anvisning inte var tydliggjort vems ansvar det var att identifiera och ta bort dubbletter då man som konsument anropar flera huvudversioner av ett kontrakt.

[RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt](https://rivta.se/documents/ARK_0040/)

#### Förtydligande av hur man ska hantera multipla minorversioner

*2020-12-08*

I tidigare versioner av anvisningar för tjänsteschema, domänschema och konfigurationsstyrning har det varit otydligt exakt hur man ska hantera multipla minorversioner av tjänstekontrakt. Dessa anvisningar har nu förtydligats och kompletterats med exempel.

* [RIV Tekniska Anvisningar - Tjänsteschema](https://rivta.se/documents/ARK_0005/)
* [RIV Tekniska Anvisningar - Domänschema](https://rivta.se/documents/ARK_0006/)
* [RIV Tekniska Anvisningar - Konfigurationsstyrning](https://rivta.se/documents/ARK_0007/)

#### Förtydligande av felhantering

*2020-12-08*

Tidigare version av anvisning för tjänsteschema beskrev best practice kring felhantering på ett sätt som lätt feltolkades. Vi har nu förtydligat hur felhantering ska ske.

[RIV Tekniska Anvisningar - Tjänsteschema](https://rivta.se/documents/ARK_0005/)

#### Referensarkitektur för elektronisk underskrift och stämpel

*2020-08-19*

Inera publicerar referensarkitektur för elektronisk underskrift och stämpel som syftar till att ge stöd till utformning av IT-stöd för att skapa och validera e-underskrifter och e-stämplar. Referensarkitekturen kan i tillämpliga delar appliceras både inom en organisation, och vid samverkan mellan organisationer, till exempel vid delning av tjänster för elektronisk underskrift och hantering av interna och externa undertecknare. Referensarkitekturen är tänkt att användas som referensunderlag vid anskaffning och vidareutveckling av lösningar för elektronisk underskrift och stämpel samt tillhörande stödtjänster, vilket kan omfatta såväl upphandling av leverantörsprodukter, anpassning av befintlig IT-infrastruktur och kravställning på e-tjänster/IT-system för följsamhet till arkitekturen. Referensarkitekturen är tänkt att tillämpas av Inera, regioner och kommuner, men den kan även tillämpas av andra aktörer så som myndigheter och privata utförare.

Läs mer: [Referensarkitektur - Elektronisk underskrift och stämpel](https://rivta.se/documents/ARK_0060/)

#### Referensarkitektur för grunddata och katalog

*2020-08-19*

Inera publicerar referensarkitektur för grunddata och kataloger. Grunddata, eller masterdata som det också kallas, är information om organisationer, personer, platser och tjänsteutbud, exempelvis roller, adress och kontaktuppgifter. Referensarkitekturen ska ge stöd till bland annat verksamhetsexperter och it-arkitekter när lösningar och tjänster som hanterar och använder grunddata och kataloger ska utvecklas. Referensarkitekturen bygger på både internationella och svenska ramverk, och tillämpning av standarder och etablerade metoder. Den ska stödja de som arbetar med hantering av grunddata om organisation, person, tjänst och kontaktuppgifter av olika slag. Den ska även vara ett stöd vid kravställning, utveckling och upphandling av it-system som används för att utbyta sådan information, samt vid förvaltning och framtagande av kataloglösningar. Referensarkitekturen är inte specifik för en viss domän, som exempelvis hälso- och sjukvård, utan ska kunna användas av Ineras alla intressenter som utgångspunkt för utveckling av verksamhets- och domänspecifika lösningar.

Läs mer: [Referensarkitektur - Grunddata och katalog](https://rivta.se/documents/ARK_0059/)

#### Interoperabilitet - med andra ord

*2020-05-14*

Det är inte lätt att komma in som ny och börja jobba med nationella tjänster och integrationer. Det är många nya termer att sätta sig in i ("TAK-ning", "aggregerande tjänster"...), och annat betyder inte det man tror (ex att "en tjänstekonsument kan producera information"). För att underlätta introduktionen till området har vi tagit fram en liten text där de grundläggande begreppen sätts i ett sammanhang. Ni hittar den här: [ARK_0058](https://rivta.se/documents/ARK_0058/).

### Nyheter från 2018

#### Uppdatering av RIV Tekniska anvisningar

*2018-08-27*

[RIV-Tekniska anvisningar - Översikt 2.0](https://rivta.se/documents/ARK_0001/) och [RIV-Tekniska anvisningar - Tjänsteplattform](https://rivta.se/documents/ARK_0034/) har uppdaterats avseende vägval och anropsbehörighet. Beskrivningar av sk HSA-adressering (trädklättring) samt användning av standardval har lagts till.

#### Begränsad hantering av ärenden under sommaren

*2018-06-28*

Under perioden 15 juni till 13 augusti har Arkitektur och regelverk begränsade möjligheter att hantera inkomna ärenden. Det gäller framförallt ärenden som avser begäran om kvalitetssäkring, beslut om domännamn, begäran om paketering och publicering av release av tjänstedomän samt ansökan om behörighet i Bitbucket. Detta innebär att vi kommer att ta emot inkomna ärenden, men med utökade svarstider på grund av att bemanningen av personal är lägre än normalt.

#### Nya tjänstedomäntyper

*2018-02-22*

Nya tjänstedomäntyper visas nu under respektive tjänstedomän på rivta.se för att tydliggöra ansvar och förvaltning av tjänstedomäner. Nedan beskrivs tjänstedomäntyper:

**Nationell tjänstedomän**

Tjänstedomänen utvecklas och/eller förvaltas av Inera. Inera A&R ansvarar för kvalité inom teknik, informatik, arkitektur och testsviter/tjänsteproducenter, samt att domänen passar in i och har en tydlig roll i den sammantagna portföljen av nationella tjänstekontrakt. A&Rs kvalitetssäkringsprocess följs under utvecklings- och förvaltningsfasen.

**Applikationsspecifik tjänstedomän**

Tjänstedomänen definierar ett applikations/lösningsspecifikt API till en applikation/tjänst som ägs av Inera. Applikationsförvaltningen vill återanvända Ineras anslutningsorganisation och infrastruktur (Tjänsteplattformen), men ha kvar full kontroll över alla beslut som rör kontraktsdesign, versioner och releaser. Förvaltningen har ett eget, lokalt ansvar för tjänstekontraktens arkitektur, informatik och teknik inom ramen för det ansvar som projektet/förvaltningen har för applikationen/tjänsten i sig. Tjänstekontrakten får bara användas när den specifika applikationen/tjänsten är en av parterna i informationsutbytet.

**Extern tjänstedomän**

Annan part än Inera A&R utvecklar/förvaltar tjänstedomänen. Annan part ansvarar för kvalité inom teknik, informatik och arkitektur. Tjänstekontrakten i tjänstedomänen följer giltig RIV TA-profil (tjänstekontraktens tekniska utformning och paketering) och kan därmed driftsättas och anslutningshanteras i NTJP om ICC:s infrastrukturkrav är uppfyllda. Tjänstekontrakten tillämpas inte inom Ineras uppdrag. Inera A&R ansvarar inte för namnsättning utöver vad som anges, men kan konsulteras om extern part önskar.

### Nyheter från 2017

#### Avveckling av stöd för tjänstekontraktet PingForConfiguration

*2017-11-13*

**Tjänstekontraktet PingForConfiguration avvecklas**

I dag finns det krav enligt regelverket i RIV-TA att tjänsteproducenter, som tillhandahåller tjänster baserade på nationella tjänstekontrakt, också ska tillhandahålla en tjänst för att kontrollera status för den informationsförsörjning de hanterar. Av den anledningen tog vi en gång i tiden fram tjänstekontraktet PingForConfiguration, som skulle användas för detta.

Det har dock visat sig att nästan ingen använder detta tjänstekontrakt. Antagligen beror detta på att det varit otydligt hur funktionen i tjänstekontraktet skulle användas, och vem som skulle använda funktionen. Vi har också fått en del kritik kring själva strukturen.

Med anledning av detta föreslår vi på Inera att kravet om att använda tjänstekontraktet PingForConfiguration, tas bort från RIV-TA. Det innebär också att vi slutar supportera tjänstekontraktet, samt att vi avinstallerar tjänster från Nationella tjänsteplattformen som är baserade på detta kontrakt.

**TKB:n uppdateras**

Vi kommer att uppdatera tjänstekontraktbeskrivningen (TKB:n), för att tydliggöra att kontraktet inte längre behöver användas. I TKB:n kommer vi också att skriva att vi inte kommer att ha någon nationell support kring kontraktets användning, samt att det heller inte sker några tillägg eller rättningar av kontraktet.

**Bör inte innebära några negativa konsekvenser**

Förslaget om att avveckla tjänstekontraktet för nationellt bruk bör inte ha några negativa konsekvenser för dem som använder nationella tjänstekontrakt, eller innebära några extra kostnader. Visst arbete kan dock behöva göras av Inera med att uppdatera domänens dokumentation samt dokumentationen i regelverket för RIV-TA.

**Kan fortfarande användas för lokalt bruk**

Om någon organisation vill fortsätta att använda tjänstekontraktet för lokalt bruk, så finns det inget som hindrar detta. Men det kommer inte finnas någon nationell support eller uppdatering av kontraktet.

**Hör av dig om du har synpunkter**

Om du inte tycker att vi ska avveckla tjänstekontraktet utan har synpunkter på detta, vill vi att du hör av dig till oss senast den 8 januari 2018. Om vi inte får in någon negativ respons på vårt förslag att avveckla kontraktet, så kommer detta att ske första halvan av 2018. Du hör av dig till oss genom att skicka ett e-postmeddelande till Kundservice, märk ditt meddelande med ”Avveckling PingForConfiguration”.

### Nyheter från 2016

#### Kontakta Nationell kundservice för att skicka ärenden

*2016-11-09*

Vi har nu ändrat så att ärenden till Inera Arkitektur och regelverk går via Nationell kundservice. [Läs mer om de olika ärendena](https://rivta.se/begaran/).

#### Ny hantering av webbtext

*2016-06-17*

Tjänstekontraktsbeskrivningar har hittills haft ett avsnitt kallat "webbtext", där den beskrivningstext som visas under respektive tjänstedomän på inera.se/rivta.se visas. Vi har nu ändrat denna hantering och sköter istället hanteringen vid sidan om TKB:er och domängranskningar, genom direkt kommunikation mellan Inera och Tjänstedomänansvarig. Detta gör att webbtextavsnittet nu bör tas bort ur TKB:er, vilket Inera kommer att upplysa om vid kommande domängranskningar.

Inera kommer att initiera en översyn av respektive domäners webbtext i samband med nya major-versioner. I övrigt hänvisas Tjänstedomänansvariga att ta kontakt med arkitektur@inera.se för uppdateringar av webbtexten.

#### Versionshantering på Bitbucket

*2016-06-06*

Tillämpningsanvisningar, RIV Tekniska anvisningar samt mallar och anvisningar versionshanteras på Bitbucket. Ärenden och wiki-sidor är uppdelade efter vilken anvisning de tillhör.

* Tillämpningsanvisningar finns under [https://bitbucket.org/rivta-applications/](https://bitbucket.org/rivta-applications/).
* RIV Tekniska anvisningar samt mallar och anvisningar finns på [https://bitbucket.org/rivta-documents/](https://bitbucket.org/rivta-documents/).

### Nyheter från 2015

#### Flytten från Google Code är klar

*2015-08-24*

Innehållet från Google Code är nu flyttat. Källkod, ärenden och wiki-sidor är numera uppdelade efter vilken tjänstedomän, anvisning eller mjukvara de tillhör.

* Tjänstedomäner finns under [https://bitbucket.org/rivta-domains](https://bitbucket.org/rivta-domains).
* RIV TA-profilerna, med tillhörande referensapplikationer, finns på [https://bitbucket.org/rivta-profiles](https://bitbucket.org/rivta-profiles).
* Övriga script och verktyg finns på [https://bitbucket.org/rivta-tools](https://bitbucket.org/rivta-tools).

#### RIVTA flyttar till Bitbucket

*2015-06-05*

På grund av Google Codes avveckling har vi beslutat att migrera RIV TA Tjänstedomänsutveckling till Bitbucket. Ny adress blir [https://bitbucket.org/rivta-domains](https://bitbucket.org/rivta-domains) och migreringen kommer till största delen att ske innan midsommar. För mer information om flytten, se [här](https://rivta.se/bitbucket).

#### Arbete med att lämna Google Code

*2015-05-18*

Som många vet så avvecklas Google Code under hösten. Vi är just nu i slutfasen av att utvärdera lämpliga kandidater till ersättare. Vi hoppas kunna informera om utgången under maj månad. Därefter är vårt mål att dokument och instruktioner är uppdaterade samt att en migreringsplan finns framtagen innan midsommar.

#### Två nya RIVTA-anvisningar upplagda

*2015-01-13*

ARK_0034 anvisning Kryptografi och ARK_0036 Tjänsteplattform är upplagda på RIVTA-siten.

### Nyheter från 2014

#### Omlagt hur länkar sker till downloads

*2014-12-29*

Efter policyändring på Google Code så finns zip-filer numera att nå via RIVTA.SE.

#### Uppdatering av script för hantering av domäner

*2014-08-04*

Scriptet för att verifiera innehåll i en tjänstedomän har uppdaterats till version 1.2.

* Motsvarar nu den aktuella version 2.0.5 av RIVTA Konfigurationsstyrning.
* Ändrad regel för förenkling av namnsättning av TKB och AB.
* Bättre kontroll av versionsnumrering.
* Visar om ändringar skett i en tag efter det att den skapas.
* Tydligare meddelanden.

Se [här](https://code.google.com/p/rivta/wiki/ToolsDomainManagement) för mer information och länk till programmet (Google Code är avvecklat sedan 2015).

#### Uppdatering 2.0.5 av Konfigurationsstyrningen publicerad

*2014-06-30*

En uppdatering av konfigurationsstyrningen har publicerats. De viktigaste förändringarna framgår av revisionshistoriken, och är:

* Ersatte alla referenser till ”CeHis” med ”Inera”.
* Tog bort alla referenser till självdeklaration av följsamhet.
* Fixade enstaka typos.
* Ändrade namnsättningsregeln för TKB och AB. Dessa skall inte längre ha versionsbeteckning i filnamnet.
* Förtydliga mappstrukturen och kravet på en undermapp per interaktion (WSDL-fil).
* Förtydliga versionsreglerna. Tredje versionstalet uppstår endast efter den första dokumentationsuppdateringen och kan därför aldrig vara 0.
* Förtydliga att Inera Arkitektur och regelverk skapar zip-filerna vid release.
* Förtydliga att en tag alltid skapas mha kommandot ”svn copy”. Adderade Bilaga 5 som beskriver hur en tjänstedomän byter namn (namnrymd).

Ni hittar, som alltid, dokumentet här: [ARK_0007](https://rivta.se/documents/ARK_0007/).

#### Ny revision av RIVTA Översikt publicerad

*2014-04-08*

En ny revision med fokus på källsystemsadressering och ändrade krav på hantering av anropsbehörighet har publicerats. Dokumentet återfinns via [ARK_0001](https://rivta.se/documents/ARK_0001/).

