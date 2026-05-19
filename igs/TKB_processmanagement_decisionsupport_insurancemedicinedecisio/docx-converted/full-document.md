
| Försäkringsmedicinskt beslutsstöd / Tjänstekontraktsbeskrivning |
| :--- |
| Version 1.0 / 2015-11-11 |

| Du får gärna citera Socialstyrelsens texter om du uppger källan, exempelvis i utbildningsmaterial till självkostnadspris, men du får inte använda texterna i kommersiella sammanhang. Socialstyrelsen har ensamrätt att bestämma hur detta verk får användas, enligt lagen (1960:729) om upphovsrätt till litterära och konstnärliga verk (upphovsrättslagen). Även bilder, fotografier och illustrationer är skyddade av upphovsrätten, och du måste ha upphovsmannens tillstånd för att använda dem. / ISBN	Läggs in i större rapporter som ska vara maximalt sökbara.            
                                Du får ISBN-numret av produktionsledaren. / Artikelnummer 	Har de flesta rapporter. Du får artikelnumret av produktionsledaren. / Omslag 	Om formgivet omslag / Foto	Om det finns foton i rapporten / Sättning	Om sättning gjorts externt / Tryck	Tryckeri, ort, månad årtal, alt. om den publicerats på webbplatsen |
| :--- |
Innehåll
Inledning	5
Svenskt namn	5
WEB beskrivning	5
Versionsinformation	6
Version 1.0	6
Tjänstedomänens arkitektur	7
Flöden	7
Obligatoriska kontrakt	8
Adressering	8
Aggregering och engagemangsindex	8
Tjänstedomänens krav och regler	9
Informationssäkerhet och juridik	9
Icke funktionella krav	9
Felhantering	10
Tjänstedomänens meddelandemodeller	11
V-MIM GetFMB-Request	11
V-MIM GetFMB-Response	11
V-MIM DiagnosInformation-Request	12
V-MIM DiagnosInformation-Response	12
V-MIM GetVersions-response	12
Mappning av MIM mot RIM	13
Formatregler	13
Tjänstekontrakt	14
GetFmb	14
GetDiagnosInformation	19
GetVersions	22
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0 | 1 | 2015-05-20 | Omarbetad version där revisionshistorik läggs in i dokumentet. | Oskar Thunman | Fredrik Ström, Alexander gunnerhell, Johan Zetterström |
| 1.0 | 2 | 2015-05-25 | Rättat felaktigheter i fältregler för att det ska överensstämma med modell och schema | Oskar Thunman |  |
| 1.0 | 3 | 2015-06-08 | Rättat versionsnumrering enligt synpunkter från granskning av referensgrupp | Oskar Thunman |  |
| 1.0 | 4 | 2015-06-15 | Uppdaterar till nytt domännamn | Oskar Thunman |  |
| 1.0 | 5 | 2015-09-08 | Felhantering för logiska fel utgår från tjänsten  då den är en fråga-svar-tjänst | Oskar Thunman |  |
| 1.0 | 6 | 2015-09-23 | Lagt till begränsning av nyttjande kopplat till utredning av dynamisk modell för beslutsstödsfunktionalitet | Oskar Thunman |  |
| 1.0 | 7 | 2015-11-11 | Uppdaterar icke-funktionellt krav för tillgänglighet | Oskar Thunman |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0 |  | Samma mapp som detta dokument |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation_processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0 |  | Samma mapp som detta dokument |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
processmanagement: decisionsupport: insurancemedicinedecisionsupport
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.
Vid produktonssättning av tjänsten kommer initialt endast Ineras tjänst Webcert få anslutas som tjänstekonsument, tills utfallet av samordning med projektet behandlingsinstruktioner är analyserat. Detta kan innebära att tjänstekontraktet kan komma att uppdateras eller uppgå i en annan tjänstedomän. Beslut om detta kommer att tas före 2015-12-22.
Gränssnitt som integreras i journalsystemen, behöver i största möjliga mån samordna oss så att det blir så få gränssnitt som möjligt. Framför allt skulle en samordning kring medicinska beslutsstöd gynna utrullningstakten då flera pågående initiativ då inte behöver konkurrera om prioritering i journalleverantörernas och Ineras kundgruppers införandeplaner. Om detta även ger färre tjänstedomäner är förvaltningen enklare. Dock kan en framtida utredning visa att detta ej är aktuellt.
Ett mål för samordningen är att hitta ett gemensamt och vedertaget sätt att uttrycka beslutsregler med en dynamisk bindning till fackspråk istället för domänspecifika lösningar.
Svenskt namn
operativprocesstyrning:beslutsstöd:försäkringsmedicinsktbeslutsstöd
försäkringsmedicinsktbeslutsstöd
WEB beskrivning
1. För att effektivisera processen kring sjukskrivningsbedömningar tillgängliggör denna domän den information som ligger till grund för sådana bedömningar i strukturerad form för att kunna integreras i informationssystem. Genom att tillhandahålla information på ett strukturerat sätt ökar användbarheten av den information som Socialstyrelsen idag tillhandahåller i fritext via sin webbplats för försäkringsmedicinskt beslutsstöd (FMB).
2. Syftet med försäkringsmedicinskt beslutsstöd är att
Ge vägledning om vilka informationsmängder som är av vikt vid sjukskrivningsbedömning givet en viss diagnos.
Ge ett beslutsunderlag för sjukskrivningsbedömning baserat på de värden som anges för dessa informationsmängder.
Ge övrig information om diagnos som inte är kopplat till sjukskrivningsbedömningen men som kan vara till stöd i sjukskrivningsprocessen.
Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen processmanagement:decisionsupport:insurancemedicinedecisionsupport. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.
Version 1.0
Oförändrade tjänstekontrakt
Inga då detta är första versionen
Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
GetFmb 1.0
GetVersion 1.0
GetDiagnosInformation 1.0
Förändrade tjänstekontrakt
Inga då detta är första versionen
Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.
Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.
Flöden
Hämta FMB

![img_002.png](images/img_002.png)
Ett system kan hämta hem hela informationsmängden för det försäkringsmedicinska beslutsstödet, eller en delmängd genom att ange inparametrar,  i ett anrop för lagring och bearbetning lokalt. Hjälpmetoden GetVersions används för att detektera om en ny version av FMB finns tillgänglig.
Hämta diagnosinformation

![img_003.png](images/img_003.png)
Ett system kan hämta hem hela informationsmängden för diagnosinformationen, eller en delmängd genom att ange inparametrar, i ett anrop för lagring och bearbetning lokalt. Hjälpmetoden GetVersions används för att detektera om en ny version av diagnosinformation finns tillgänglig.
Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Hämta FMB | Hämta diagnosinformation |
| :--- | :--- | :--- |
| GetFmb | X |  |
| GetDiagnosisInformation |  | X |
| GetVersion |  |  |
Adressering
Den logiska adressen är till den nationella instansen för försäkringsmedicinskt beslutsstöd samt diagnosinformation, som representeras av Socialstyrelsens organisationsnummer.
Aggregering och engagemangsindex
Används ej inom domänen.
Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.
Informationssäkerhet och juridik
Krav på en tjänsteproducent
Informationssäkerhet
Inga tjänster inom domän hanterar känslig eller skyddad information.
Krav på en tjänstekonsument
Informationssäkerhet
Inga tjänster inom domän hanterar känslig eller skyddad information. Användningen av information bör följa riktlinjer från Socialstyrelsen kring Försäkringsmedicinskt beslutsstöd, se www.socialstyrelsen.se/riktlinjer/forsakringsmedicinsktbeslutsstod.
Icke funktionella krav
SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | <10 sekunder för 95 % av alla anrop |  |
| Tillgänglighet | 99,5% under vardagar 9-17. Detta motsvarar en tillgänglighet på 24% av den totalt tillgängliga upptiden på årsbasis |  |
| Last | 1 transaktion per minut |  |
| Återställningstid | 1 vecka | Vid katastrof, bortfall av hel hall |
|  |  |  |
Säkerhet
Tjänsten skall vara publikt tillgänglig och är enbart läsande och har därför inga definierade krav på:
autenticering
auktorisering
kryptering
spårbarhet
Felhantering
Krav på en tjänsteproducent
Tekniska fel
Tekniska fel ska kommuniceras via SOAP Faults.
Krav på en tjänstekonsument
En omsändningsstrategi skall endast tillämpas vid tekniska fel. Denna skall innehålla ett begränsat antal försök under ett ökande tidsintervall samt med ett begränsat antal omsändningsförsök.
Felhantering
Då alla tjänster används synkront är det tjänstekonsumenten som ansvarar för att korrekt tolka fel i samband med kommunikation.
Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning sker mot domäninformationsmodellen som återfinns i Informationsspecifikationen[R3] i de fall de skiljer sig åt. Skillnad i form av användning av a istället för å eller ä, samt o istället för ö tas inte med.
V-MIM GetFMB-Request

![img_004.png](images/img_004.png)
V-MIM GetFMB-Response

![img_005.png](images/img_005.png)
V-MIM DiagnosInformation-Request

![img_006.png](images/img_006.png)
V-MIM DiagnosInformation-Response

![img_007.png](images/img_007.png)
V-MIM GetVersions-response

![img_001.png](images/img_001.png)
Mappning av MIM mot RIM

| Klass.attribut MIM | Klass.attribut RIM (NI 2015-2) |
| :--- | :--- |
| beslutsunderlag.underlagsId | Saknar motsvarighet i RIM |
| beslutsunderlag.giltighetstid | Saknar motsvarighet i RIM |
| beslutsunderlag.version | Saknar motsvarighet i RIM |
| beslutsunderlag.textuelltUnderlag | Saknar motsvarighet i RIM |
| beslutsunderlag.sjukskrivningstidTest | Saknar motsvarighet i RIM |
| beslutsunderlag.sjukskrivningstid | Saknar motsvarighet i RIM |
| beslutsunderlag.sjukskrivningsgrad | Saknar motsvarighet i RIM |
| beslutsunderlag.senastAndrad | Saknar motsvarighet i RIM |
| rehabiliteringsInformation.beskrivning | Saknar motsvarighet i RIM |
| huvudDiagnos.värde | Huvuddiagnos.Värde |
| arbetsbelastning.kod | Observation.värde |
| komplicerandeFaktor.kod | Observation.värde |
| planeradAtgard.kod | Åtgärd.kod |
| pagaendeAtgard.kod | Åtgärd.kod |
| samsjuklighet.kod | Observation.värde |
| sjukdomsforlopp.kod | Observation.värde |
| svarighetsgrad.kod | Observation.värde |
| utfordAtgard.kod | Åtgärd.kod |
| diagnosInformation.informationsId | Saknar motsvarighet i RIM |
| diagnosInformation.giltighetsTid | Saknar motsvarighet i RIM |
| diagnosInformation.version | Saknar motsvarighet i RIM |
| diagnosInformation.rubrik | Saknar motsvarighet i RIM |
| diagnosInformation.aktivitetsbegransningBeskrivning | Saknar motsvarighet i RIM |
| diagnosInformation.funktionsnedsattningsBeskrivning | Saknar motsvarighet i RIM |
| diagnosInformation.senastAndrad | Saknar motsvarighet i RIM |
| huvuddiagnos.varde | Saknar motsvarighet i RIM |
| aktivitetsbegransning.kod | Observation.värde |
| funktionsnedsattning.kod | Observation.värde |
| ovrigFmbInformation.symtomPrognosBehandling | Saknar motsvarighet i RIM |
| ovrigFmbInformation.generellInformation | Saknar motsvarighet i RIM |
Formatregler
Tidsangivelser
Datum värdet är en sträng på formatet ”ÅÅÅÅMMDDhhmmss” som matchar begränsad ISO 8601. Tidszon skall ej vara, alla tider anges i svensk normaltid respektive svensk normalsommartid.
Tjänstekontrakt
GetFmb
Tjänsten returnerar beslutsunderlag från FMB (Försäkringsmedicinskt beslutsstöd).
Version
1.0
Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Anges inga parametrar i begäran returneras samtliga aktiva underlag.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| underlagsId | IIType | Anger om endast ett eller ett antal underlag skall hämtas och i så fall vilka. Anges inget underlagsId returneras alla underlag. | 0..* |
| diagnosKod | CV | Anger om beslutsunderlag endast skall hämtas för en eller ett antal diagnoskoder. Anges med ICD-10-SE kodverket. Anges ingen diagnoskod returneras alla underlag. | 0..* |
| avenEjAktiva | Boolean | Anger om även ej aktiva beslutsunderlag skall hämtas. Anges ej attributet hämtas endast aktiva. | 0..1 |
| Svar |  |  |  |
| beslutsunderlag | BeslutsunderlagType | Beslutsunderlag innehåller information om beslutsunderlag som kan användas vid bedömning om sjukskrivning. Ett beslutunderlag kan användas som underlag för bedömning när samtliga villkor kopplades till klassen är uppfyllda. | 0..* |
| ../underlagsId | IItype | Globalt unik identifierare för beslutsunderlaget. | 1..1 |
| ../giltighetstid | IVL | Tid då en rekommendation är giltig. Starttiden i intervallet skall alltid anges. Om sluttid ej anges är beslutsrekommendationen aktiv. Ett beslutsunderlag som inte är aktiv skall innehålla ett slutdatum, som ligger tidigare än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum. | 1..1 |
| ../../start | Date | Starttid | 1..1 |
| ../../slut | Date | Sluttid | 0..1 |
| ../version | int | Versionsnummer för ett beslutsunderlag. Versionen räknas upp när ett beslutsunderlag förändrats i sin innebörd eller ändrar giltighetstid. | 1..1 |
| ../textuelltUnderlag | String | Varje beslutsunderlag beskrivs i textuell form, som omfattar alla villkor och rekommendationer som omfattas av beslutsunderlag samt annan information som är relevant i beslutsfattandet även om den informationen inte finns representerad i kodad form. | 0..1 |
| ../sjukskrivningstidTest | String | Totala sjukskrivningstidens längd med början från första intygsdag. Textuell representation som alltid är ifylld även där sjukskrivningstiden inte kan kvantifieras. | 1..1 |
| ../sjukskrivningstid | PQType | Totala sjukskrivningstidens längd med början från första intygsdag. Anges ej om sjukskrivningstiden inte kan kvantifieras. | 0..1 |
| ../../value | string | värde för tidsangivelsen | 1..1 |
| ../../unit | string | Enhet för tidsangivelsen enligt UCUM, månad=”mo”, vecka = ”wk”, dag = ”d” | 1..1 |
| ../sjukskrivningsgrad | CVType | Anger grad av sjukskrivning. Exempel på värden: Heltid, Deltid | 1..1 |
| ../senastAndrad | dateTime | Anger när ett beslutsunderlag senast ändrats | 1..1 |
| ../rehabiliteringsInformation | RehabiliteringsInformationType |  | 0..1 |
| ../../beskrivning | String | Text som beskriver en rehabiliteringsåtgärd | 1..1 |
| ../huvudDiagnos | HuvudDiagnosType | Den diagnos för vilken beslutsunderlaget gäller. | 1..* |
| ../../värde | CVType | Huvuddiagnos som anges med kod. Anges med ICD-10-SE kodverket. | 1..1 |
| ../villkor* | VillkorType | Villkor för att ett beslutsunderlag skall vara uppfyllt. | 1..1 |
| ../../urvalArbetsbelastning | UrvalArbetsbelastningType | Anges om villkoret är beroende av en eller flera koder för arbetsbelastning | 0..1 |
| ../../../arbetsbelastning | ArbetsbelastningType | Anger koder för arbetsbelastning för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Arbetsbelastning som anges med ett lokalt småkodverk. | 1..1 |
| ../../urvalKomplicerandeFaktor | UrvalKomplicerandeFaktorType | Anges om villkoret är beroende av en eller flera koder för komplicerande faktorer | 0..* |
| ../../../komplicerandeFaktor | KomplicerandeFaktorType | Anger koder för komplicerande faktorer för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Komplicerandefaktor som anges med en kod. (Kod för den typ av observation som avses.) | 1..1 |
| ../../urvalPlaneradAtgard | UrvalPlaneradAtgardType | Anges om villkoret är beroende av en eller flera koder för planerade åtgärder | 0..* |
| ../../../planeradAtgard | PlaneradAtgardType | Anger koder för planerade åtgärder för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Åtgärd som anges med en kod | 1..1 |
| ../../urvalPagaendeAtgard | UrvalPagaendeAtgardType | Anges om villkoret är beroende av en eller flera koder för pågående åtgärder | 0..* |
| ../../../pagaendeAtgard | PagaendeAtgardType | Anger koder för pågående åtgärder för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Åtgärd som anges med en kod | 1..1 |
| ../../urvalSamsjuklighet | UrvalSamsjuklighetType | Anges om villkoret är beroende av en eller flera koder för samsjuklighet | 0..* |
| ../../../samsjuklighet | SamsjuklighetType | Anger koder för samsjuklighet för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Diagnos som anges med kod. (Kod för den typ av obser-vation som avses.) Anges med ICD-10-SE kodverket | 1..1 |
| ../../UrvalSjukdomsforlopp | UrvalSjukdomsforloppType | Anges om villkoret är beroende av en eller flera koder för sjukdomsforlopp | 0..1 |
| ../../../sjukdomsforlopp | SjukdomsforloppType | Anger koder för sjukdomsforlopp för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType |  | 1..1 |
| ../../urvalSvarighetsgrad | UrvalSvarighetsgradType | Anges om villkoret är beroende av en eller flera koder för svårighetsgrad | 0..1 |
| ../../../svarighetsgrad | SvarighetsgradType | Anger koder för svårighetsgrad för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Svårighetsgrad som anges med ett lokalt småkodverk Giltiga värden är Lindrig, Medelsvår eller Svår. | 1..1 |
| ../../../utfordAtgard | UtfordAtgardType | Anger koder för utförda åtgärder för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Åtgärd som anges med en kod | 1..1 |
| version | versionType | Versioninformation för hela FMB | 1..1 |
| ../senasteVersionsuppdatering | dateTime | Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../senasteAndring | dateTime | Anger när ett beslutsunderlag senast uppdaterades, både  mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret. | 1..1 |
Övriga regler
Villkor
Villkor samlar underliggande faktorer som måste vara uppfyllda för att ett beslutsunderlag skall gälla. Dessa faktorer består av klasserna UrvalSvårighetsgrad, UrvalSjukdomsförlopp, UrvalKomplicerandeFaktor, UrvalSamsjuklighet, UrvalPlaneradårgärd, UrvalUtfördÅtgärd, UrvalPågåendeÅtgärd, UrvalTillstånd och UrvalArbetsbesastning. Dessa klasser består i sin tur av ett givet urval av koder. Förekomsten av en ”urvals-klass” är att betrakta som ett OCH-villkor, det vill säga varje urval måste vara sant för att patienten skall uppfylla villkoret. Exempelvis kan ett villkor ha ett underliggande UrvalArbetsbesastning med en ingående Arbetsbelastning = ”hög” samt UrvalSjukdomsforlopp med en ingående Sjukdomsforlopp=” kontinuerliga symtom”. Detta betyder att villkoret är uppfyllt om patienten har hög arbetsbelastning OCH kontinuerliga symtom . I det fall ett urval samlar fler än en kod är detta att betrakta som ett ELLER-villkor mellan dessa ingående koder, det vill säga om ett urval innehåller två eller flera koder är ett villkor uppfyllt om en av dessa koder är sann för patienten i fråga. Exempelvis kan ett villkor ha ett underliggande UrvalArbetsbesastning som innehåller både en Arbetsbeslatning=”måttlig” och Arbetsbelastning= ”hög”.  Detta betyder att villkoret är uppfyllt om patienten har en arbetsbelastning som är ”måttlig” ELLER ”hög”.
Om ett beslutsunderlag alltid är sant för en huvuddiagnos saknar villkoret underliggande klasser.
GetDiagnosInformation
Tjänsten returnerar generell information om diagnoser. Sådan information kan gälla för en eller flera diagnoser samtidigt
Version
1.0
Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| diagnosKod | CV | Anger om endast diagnosinformation skall hämtas för en eller ett antal diagnoskoder. Anges ej parametern returneras diagnosinformation för alla diagnoskoder. | 0..* |
| avenEjAktiva | Boolean | Anger om även ej aktiv diagnosinformation skall hämtas. Anges ej villkoret returneras endast aktiva. | 0..1 |
| Svar |  |  |  |
| diagnosInformation | diagnosInformationType |  | 0..* |
| ../informationsId | II | Identitet för diagnosinformationen | 1..1 |
| ../giltighetsTid | IVL | Tid då diagnosinformationen är giltig. Starttiden i intervallet skall alltid anges. Om sluttid ej anges är diagnosinformationen aktiv. Diagnosinformation som inte är aktiv skall innehålla ett slutdatum, som ligger tidigare än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum. | 1..1 |
| ../../start | Date | Starttid | 1..1 |
| ../../slut | Date | Sluttid | 0..1 |
| ../version | Int | Versionsnummer för diagnosinformationen. Versionen räknas upp när diagnosinformationen förändrats i sin innebörd eller ändrar giltighetstid. | 1..1 |
| ../rubrik | string | Rubriken för diagnosinformationen | 1..1 |
| ../aktivitetsbegransningBeskrivning | string | En beskrivande text för aktivitetsbegränsningar förknippade med diagnosen. | 0..1 |
| ../funktionsnedsattningsBeskrivning | string | En beskrivande text för funktionsnedsättningar förknippade med diagnosen. | 0..1 |
| ../senastAndrad | dateTime | Anger när ett beslutsunderlag senast ändrats | 1..1 |
| ../huvuddiagnos | HuvuddiagnosType |  | 1..* |
| ../../varde | CVtype | Diagnos som anges med kod. (Kod för den typ av observation som avses.) / Anges med ICD-10-SE kodverket. | 1..1 |
| ../aktivitetsbegransning | AktivitetsbegransningType | Innehåller information om en eller flera aktivitetsbegränsning som vanligt förekommer för den eller de diagnoser som diagnosgruppen omfattar. | 0..* |
| ../../kod | CVtype | Kod som anger Aktivitetsbegränsning | 1..1 |
| ../funktionsnedsattning | FunktionsnedsattningType | Innehåller information om en eller flera funktionsnedsättningar som vanligt förekommer för den eller de diagnoser som diagnosgruppen omfattar. | 0..* |
| ../../kod | CVtype | Kod som anger Funktionsnedsättning | 1..1 |
| ../ovrigFmbInformation | OvrigFmbInformationType |  | 0..1 |
| ../../symtomPrognosBehandling | String | Allmän information om symtom, prognos samt behandling. | 0..1 |
| ../../generellInformation | String | Information av betydelse för bedömning av behovet av sjuk-skrivning. | 0..1 |
| version | versionType | Versioninformation för hela FMB | 1..1 |
| ../senasteVersionsuppdatering | dateTime | Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../senasteAndring | dateTime | Anger när diagnosinformation senast uppdaterades, både  mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret. | 1..1 |
Övriga regler
Inga övriga regler finns.
GetVersions
Tjänsten returnerar tidpunkten när fmb och diagnosinformation senast versionsuppdaterades, respektive senast ändrades.
Version
1.0
Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
|  |  |  |  |
| Svar |  |  |  |
| versioner |  |  | 1..1 |
| ../fmbSenasteVersionsuppdatering | DateTime | Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../fmbSenasteAndring | DateTime | Anger när ett beslutsunderlag senast uppdaterades, både  mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret. | 1..1 |
| ../diagnosInformationSenasteVersionsuppdatering | DateTime | Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../diagnosInformationSenasteAndring | DateTime | Anger när diagnosinformation senast uppdaterades; både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret. | 1..1 |
Övriga regler
En versionsuppdatering innebär att något av de underliggande beslutsunderlagen respektive diagnosinformationen skapades, togs bort eller bytte innebörd (major release). En ändring kan vara en versionsuppdatering eller en mindre förändring av en textuell beskrivning där innebörden är oförändrad (minor release).
Genom att lagra den versionsinformation som returneras i elementet ”version” i tjänsterna GetDiagnosisInformation respektive GetFMB kan en konsument därefter anropa GetVersions för att få reda på om någon information i respektive tjänst förändrats och gör endast ett anrop mot dessa tjänster om tjänsten getVersions returnerar ett nyare datum. Konsumenter kan också avgöra om man vill göra en hämtning till följd av en minor release eller endast vid major release.
Om man konsumerar tjänsterna med filterparametrar för en viss diagnos/grupp av diagnoser eller ett urval av beslutsunderlag är det inte säkert att just dessa har uppdaterats när datumen i tjänsten GetVersions uppdateras.  För att avgöra det behöver frågan ställas om till respektive tjänst.
