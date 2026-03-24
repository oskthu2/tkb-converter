
![img_001.wmf](images/img_001.wmf)
Kontaktpersoner: Patrick Bäcklund (Mawell), Emma Lennestål (SVR)

## Inledning
”Nationell Listningstjänst” är en nationell tjänst baserad på den redan idag existerande HVAL-tjänsten (Husläkarval) i Stockholm. Den befintliga tjänsten har endast Mina Vårdkontakter (MVK) och lokala journalsystem samt SOS Alarm som konsumenter, men den nya tjänsten kommer potentiellt att få flera konsumenter och producenter som t.ex. NPÖ (Nationell Patientöversikt), RGS (rådgivningsstöd), andra lokala listningssystem etc. Detta ställer fler krav på den nya tjänsten. Att utveckla en nationell tjänst kräver bl.a. anpassning mot de riktlinjer som finns i VIT-boken.
Projektet Nationell Listningstjänst kommer som första steg ta fram en moderniserad och standardiserad (enligt VIT) tjänst som är tänkt att nyttjas av MVK, de lokala listningssystemen samt på sikt även NPÖ. Andra konsumenter och producenter kan även tillkomma i framtiden.
Syftet är att underlätta kommunikationen mellan de lokala listningssystemen och konsumenterna av deras information. I första hand bör MVK nämnas som konsument, då det är medborgarnas snabbaste väg in för att titta på informationen i listningssystemen.
I och med vårdvalsreformen som spridits bland landets landsting och regioner har möjligheten för invånarna att göra sina val på webben blivit ett krav från många. ”Nationell Listningstjänst” gör det möjligt för samtliga landsting och regioner att införa detta genom att låta invånarna göra sina val via MVK.
Denna informationsspecifikation beskriver och preciserar den information som Nationell listningstjänst behöver.
Informationsspecifikationen har arbetats fram enligt RIV Metodanvisningar för informationsspecifikationer.
Informationsspecifikationen innehåller:
Informationsmängdsöversikt.
Verksamhetsinformationsmodell (V-DIM)
Termer och definitioner
Klassifikationer och kodverk.
Specifikationen innehåller dessutom en beskrivning och teckenförklaring av UML.
Innehållsförteckning
1	Inledning	2
2	Informationsflöde	4
2.1.1	Visa vårdval	4
2.1.2	Visa möjliga tjänsteutövare	4
2.1.3	Göra vårdval	4
2.1.4	Visa listningstyp	4
2.1.5	Visa köstatus	5
2.2	Tjänsten	5
3	Informationsöversikt	5
4	Verksamhetsorienterad domäninformationsmodell (V-DIM)	7
4.1	Primärvårdstjänst	7
4.2	V-DIM Klasser och attribut	8
4.2.1	Enhet	8
4.2.2	Primärvårdstjänst	9
4.2.3	Vård- och omsorgspersonal	9
4.2.4	Vård- och omsorgstagare	10
5	Verksamhetsorienterad meddelandeinformationsmodell (V-MIM)	12
5.1	Visa tjänsteval	12
5.2	Visa möjliga tjänsteutövare	13
5.3	Göra tjänsteval	13
5.4	Visa listningstyp	14
5.5	Visa köstatus	15
6	Termer och definitioner	16
7	Klassifikationer och kodverk	17
Bilaga 2: UML-beskrivning	19
Bilaga 3:  Förklaring till Format och Multiplicitet	20

## Informationsflöde
Nationell Listningstjänst hanterar information om lokalt valbara primärvårdstjänster och lokalt gjorda invånarval av primärvårdstjänster. Som producent av listningsinformation finns de lokala listningssystemen. Konsumenter av informationen är exempelvis Mina Vårdkontakter (MVK), Nationell Patientöversikt (NPÖ) samt övriga intressenter som kan tänkas vara intresserade av listningsinformation.

#### Visa vårdval

![img_012.jpeg](images/img_012.jpeg)

#### Visa möjliga tjänsteutövare

![img_007.jpeg](images/img_007.jpeg)

#### Göra vårdval

![img_004.jpeg](images/img_004.jpeg)

#### Visa listningstyp

#### Visa köstatus

### Tjänsten
Tjänsten består av fem interaktioner – ”Visa tjänsteval”[1], ”Visa möjliga tjänsteutövare”[2], ”Göra tjänsteval”[3], ”Visa listningstyp”[4] samt ”Visa köstatus” [5]. Kommunikationen sker över ett proprietärt XML-format.
[1] går till som så att konsumenten av tjänsten ställer en fråga till listningssystemet med ett person-id som inparameter. Listningssystemet å sin sida returnerar information om listningen för den aktuella personen enligt informationsmodellen nedan.
[2] går till som så att konsumenten av tjänsten ställer en fråga om vilka HSA-idn som en person kan välja att lista sig på. Listningssystemet å sin sida returnera en sammanställning över de HSA-idn som är valbara.
[3] går till som så att en producent (i dagsläget MVK) skickar in ett meddelande som innehåller ett person-id samt ett HSA-id på den valda tjänsteutövaren.
[4] går till som så att konsumenten av tjänsten ställer en fråga till listningssystemet med ett person-id som inparameter. Listningssystemet returnerar en lista med koder över de listningstyper som personen har möjlighet att lista sig på.
[5] går till som så att konsumenten av tjänsten ställer en fråga till listningssystemet med ett person-id som inparameter. Listningssystemet returnerar en köstatus (i kö, inte i kö) gällande personen i fråga samt den vård- och omsorgstagare varpå köstatusen gäller.

## Informationsöversikt
Följande information behövs för en beskriva en vård- och omsorgstagare med tillhörande gjorda tjänsteval

| Information | Innehåller information om | Innehåller information om |
| :--- | :--- | :--- |
| Vård- och omsorgstagare | Vård- och omsorgstagare | Information om den person, i rollen vård- och omsorgstagare, som informationen avser |
| Ansvarig/Tillhandahålls av | Ansvarig/Tillhandahålls av | Information om den personal eller enhet som är vald att utföra primärvårdstjänsten |
| Listningstyp | Listningstyp | Typ av primärvårdstjänst (BVC, HLM, FL etc) |

## Verksamhetsorienterad domäninformationsmodell (V-DIM)
Nedanstående bild visar informationsbehovet i en informationsmodell enligt UML.

### Primärvårdstjänst

![img_016.png](images/img_016.png)

### V-DIM Klasser och attribut

#### Enhet
Klassen Enhet hanterar information om organisatoriska enheter inom vård och omsorg. Motsvarighet i V-TIM 1.1: Klassen Enhet är en utökning av klassen Enhet i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: Facility

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| enhets-id | Identitetsbeteckningen för den organisatoriska enheten / Motsvarighet i HSA: HSA-id | II | 1 |  | HSA-ID eller Orgnr+lokalt id. | Facility/facilityId |
| namn | Enhetens officiella namn / Motsvarighet i HSA: Enhetsnamn | TXT | 1 |  |  | Facility/facilityName |
| har kö | Boolskt värde som indikerar om vårdenheten har kö vid listningar | BL | 0..1 |  |  | Facility/hasQueue |
| listningstyper | Lista med listningstyper som vårdeneheten stödjer. / Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1 | KTOV | 0..* | KV Listningstyp |  | Facility/supportedListingTypes |
| Associationer | Associationer | Associationer | Associationer | Associationer | Associationer | Associationer |
| En Enhet tillhandahåller noll eller flera Primärvårdsstjänst | En Enhet tillhandahåller noll eller flera Primärvårdsstjänst | En Enhet tillhandahåller noll eller flera Primärvårdsstjänst | En Enhet tillhandahåller noll eller flera Primärvårdsstjänst | En Enhet tillhandahåller noll eller flera Primärvårdsstjänst | En Enhet tillhandahåller noll eller flera Primärvårdsstjänst |  |
| En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal | En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal | En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal | En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal | En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal | En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal |  |

#### Primärvårdstjänst
Klassen Primärvårdstjänst hanterar information om vård- och omsorgstagarens utpekade vårdval t.ex. husläkare, husläkarmottagning eller annat giltigt vårdval. Listningstjänsten gäller i dagsläget endast primärvård, så terminologin från NPÖ har bibehållits i så stor utsträckning som möjligt. Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: Listing

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| tidsintervall | Datum som listning är skapad. Kan även innehålla slutdatum om något sådant finns. / Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1 | IVL | 1 |  |  | Listing/validFromDate, / Listing/validToDate |
| listningstyp | Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1 | KTOV | 1 | KV Listningstyp |  | Listing/listingType |
| Associationer | Associationer | Associationer | Associationer | Associationer | Associationer | Associationer |
| En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare | En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare | En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare | En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare | En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare | En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare |  |
| En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal | En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal | En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal | En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal | En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal | En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal | Listing/resource |
| En Primärvårdstjänst tillhandahålls av en och endast en Enhet | En Primärvårdstjänst tillhandahålls av en och endast en Enhet | En Primärvårdstjänst tillhandahålls av en och endast en Enhet | En Primärvårdstjänst tillhandahålls av en och endast en Enhet | En Primärvårdstjänst tillhandahålls av en och endast en Enhet | En Primärvårdstjänst tillhandahålls av en och endast en Enhet | Listing/healthcare_facility |

#### Vård- och omsorgspersonal
Klassen Vård- och omsorgspersonal hanterar information som rör personal inom vård och omsorg. Motsvarighet i V-TIM 1.1: Klassen Vård- och omsorgspersonal är en utökning av klassen Personal i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: Resource

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| personal-id | Identitetsbeteckning för personal inom vård och omsorg / Motsvarighet i HSA: HSA-id i de fall HSA-id kan anges | II | 1 | HSA-id | I de fall då HSA-id inte finns tillgängligt i systemet kan alternativ id-beteckning användas | Resource/resourceId |
| namn | Aktuell persons förnamn och efternamn / Motsvarighet i HSA: Fullständigt namn | TXT | 1 |  |  | Resource/resourceName |
| Associationer | Associationer | Associationer | Associationer | Associationer | Associationer | Associationer |
| En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er) |  |

#### Vård- och omsorgstagare
Klassen Vård- och omsorgstagare hanterar information om vård- och omsorgstagare. Motsvarighet i V-TIM 1.1: Klassen Vård- och omsorgstagare är en specialisering av klassen Patient i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: SubjectOfCare

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| person-id | Identitetsbeteckning för vård- och omsorgstagaren / Motsvarighet i V-TIM 1.1: person-id | II | 1 | Personnummer enligt SKV 704:08 / Samordningsnummer enligt SKV 707:02 / Reservnummer enligt Carelinks rekommendation. / Katastrofnummer enligt Socialstyrelsens anvisning | Identitetsbeteckningen måste vara unik inom Sverige. | SubjectOfCare/personId |
| Associationer | Associationer | Associationer | Associationer | Associationer | Associationer | Associationer |
| En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) | En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) | SubjectOfCare/listing |

## Verksamhetsorienterad meddelandeinformationsmodell (V-MIM)

### Visa tjänsteval
Indata

![img_013.png](images/img_013.png)
Utdata
Meddelandeutbytet i den här interaktionen består av ett inledande meddelande från konsument till listningstjänst som innehåller en person-id. Som svar får konsumenten ett meddelande som innehåller information om det tjänsteval som personen med det angivna person-id:t har gjort. Enheter och vård- och omsorgspersonal identifieras med HSA-id.

### Visa möjliga tjänsteutövare
Indata

![img_010.png](images/img_010.png)
Utdata (lista)

![img_005.png](images/img_005.png)
Meddelandeutbytet i den här interaktionen resulterar i en enkel lista i vilken det lokala listningssystemet presenterar HSA-id:n och namn på de valbara utövare av de tjänster som är tillgängliga i regionen. I anropet till tjänsten anges regionkod. Man kan även välja att lista enheter utifrån en viss listningstyp eller lista specifika enheter utifrån en lista av HSA-id:n. Varje region har möjlighet att själv bestämma vilka typer av val en invånare kan lista sig på. Det är upp till listningssystemet att självt hålla reda på de HSA-id:n som är valbara. Motsvarighet i V-TIM: Ingen motsvarighet i V-TIM.

### Göra tjänsteval
Indata

![img_003.png](images/img_003.png)
Utdata

![img_017.png](images/img_017.png)
Meddelandet i den här interaktionen består i en koppling mellan ett person-id och HSA-id:t på den valda tjänsteutövaren gällande en viss listningstyp. Det lokala listningssystemet använder informationen för att lagra listningsinformation för en vård- och omsorgstagare. Motsvarighet i V-TIM: Ingen motsvarighet i V-TIM.

### Visa listningstyp
Indata
Utdata

![img_014.png](images/img_014.png)
Meddelandeutbytet i interaktionen består i ett anrop innehållande person-id för aktuell person. Tjänsten returnerar möjliga typer av listningar som personen kan bruka vid listning. Motsvarighet i V-TIM: Ingen motsvarighet i V-TIM.

### Visa köstatus
Indata
Utdata

![img_009.png](images/img_009.png)
Meddelandeutbytet i interaktionen består i ett anrop innehållande person-id för aktuell person. Tjänsten returnerar köstatus (i kö, ej i kö) gällande personen och den enhet där eventuell köstatus föreligger. Motsvarighet i V-TIM: Ingen motsvarighet i V-TIM.

## Termer och definitioner

| Term | Definition | Kommentar och användningsområde | Synonym | Källa |
| :--- | :--- | :--- | :--- | :--- |
| primärvårdstjänst | Primärvård som tillhandahålls av en vård- och omsorgsgivaregivare. |  |  | Projekt: Nationell Patientöversikt |

## Klassifikationer och kodverk
Klassifikationer och kodverk inkl begreppssystem och identifikationssystem som hanteras i informationsutbytet kring vårdkontakter

| Namn | OID | Ägare/förvaltare och länk | Innehåll |
| :--- | :--- | :--- | :--- |
| KV Befattningsklassificering | 1.2.752.129.2.2.1.4 | Se HSA |  |
| KV Listningstyp |  |  | Finns inte för tillfället, istället använd en fritext. |
Identifierare

| Namn | OID | Ägare/förvaltare och länk | Innehåll |
| :--- | :--- | :--- | :--- |
| Person- / nummer | 1.2.752.129.2.1.3.1 | Skatteverket, www.skatteverket.se | Person-id för någon som är folkbokförd i Sverige enligt SKV704 |
| Samordnings- / nummer | 1.2.752.129.2.1.3.3 | Skatteverket, www.skatteverket.se | Person-id för någon som inte är eller har varit folkbokförd i Sverige enligt SKV704 / Samordningsnummer tilldelas av Skatteverket på begäran av en myndighet. |
| Reservnummer | 1.2.752.129.2.1.3.2 | Carelink, www.carelink.se | Tillfälligt person-id som huvudsakligen används för att kunna koppla samman patient och dennes vårddokumentation när personnummer eller samordningsnummer saknas eller är okänt / Nummerserier för reservnummer tilldelas av Carelink |
| HSA-id | 1.2.752.129.2.1.4.1 | Carelink, förvaltningsgrupp HSA / www.carelink.se/tjanster/hsa/ | HSA-id för objekt i HSA-katalogen såsom personer, roller, funktioner, enheter mfl. |

## Bilaga 2: UML-beskrivning
UML – en beskrivning och teckenförklaring
Unified Modeling Language, ett allmänt accepterat beskrivningsspråk för modellering. Informationsmängder redovisas i modellen i form av informationsklasser. Informationsmodellen består av begreppen och deras relationer. I varje informationsklass finns också inskrivet de informationsdelar som bygger upp klassen, attributen.

| Hierarkisk relation | Aggregation |
| :--- | :--- |
|  |  |
| Association och attribut |  |
|  |  |
Hierarkisk relation
Förhållandet mellan informationsmängderna kan vara hierarkiskt, dvs. en informationsmängd är en specialisering av en annan. En sådan relation betecknas med en pil riktad från specialiseringen till generaliseringen.
Aggregation
En särskild association är aggregationen. Den kan uttydas ”ingår i” i ena riktningen och ”består av” i andra.
Association
De flesta förhållanden är associationer. En sådan relation kan representera vilket som helst samband, och det ska därför benämnas. Associationsnamnet förses med en pilsymbol för att man ska kunna se i vilken riktning namnet gäller. Siffrorna invid informationsklasserna i ändarna av associationsstrecket representerar multipliciteten. För varje exemplar (instans) av den ena klassen kan association av den benämnda sorten finnas till ett antal exemplar (instanser) av den andra klassen som anges av siffrorna vid den andra klassen. Exempel: En (1) vårdplan kan förteckna en eller flera (1..*) hälso- och sjukvårdsaktiviteter. En (1) hälso- och sjukvårdsaktivitet behöver inte vara förtecknad i någon vårdplan alls men kan vara förtecknad i flera vårdplaner (0..*).
Attribut
I informationsklassen skrivs in dess attribut. Det är informationsdelar som ingår i den informationsmängd som klassen representerar. Även informationsmängder kan uppträda som attribut. Ett avslutsmeddelande skall innehålla den upprättade vårdplanen, som i sig är en informationsmängd som representeras av en klass. I den ingår som attribut alla dess informationsdelar. Symbolerna vid attributen beskriver hur de representeras, om de kan ändras medan en instans av klassen existerar, vilken datatyp attributet har och sist multipliciteten, dvs. hur många exemplar av attributet som kan förekomma. I exemplet ovan ses bl.a. att det måste finnas en ansvarig läkare och uppgiften kan ändras.  Det kan finnas flera områdesinsatser och flera mål för vårdplanen. Närståendesamverkan är något som antingen görs eller inte görs och är därmed ett booliskt värde (ja/nej). Det kan ändras. Tid fastställdes vid skapande av vårdplan och kan inte ändras ({frozen}).

## Bilaga 3:  Förklaring till Format och Multiplicitet
Nedanstående datatyper för tidpunkter/-intervall  utgår från ISO 8601 om inte annat anges. För information om ISO 8601 se t ex http://en.wikipedia.org/wiki/ISO_8601  För ytterligare behov av specificering av format – kontakta RIV-förvaltningsgrupp

| Format | För-kortning | Datatyp enligt ISO | Engelsk benämning enligt ISO | Förklaring |
| :--- | :--- | :--- | :--- | :--- |
| Sant/Falskt/ / Tomt | S/F/T | BL | Boolean | Kan antingen vara sant, falskt eller ”tomt”. |
| Sant/Falskt | S/F | BN | Boolean not null | Kan antingen vara sant eller falskt. |
| Kodat värde med text och OID | KTOV | CD | Coded value | Identifiering av berört kodverk/klassifikation (genom sk OID) samt aktuell kod och text / Exempel: ” A00.9 Kolera, ospecificerat OID för KSH97 v97 mycket allvarlig kolera ” / kod / K / aktuellt kodvärde / text / TX / klartext / kodverk / OID / identifiering av berört kodverk/ / klassifikation / version / TX / kodverkets version / förtydligande / TX / används t ex vid förtydligande av / kod ”Övrigt” |
| Instans / identifierare | II | II | Instance Identifier | En unikt identifikation av en instans, företeelse eller objekt. T.ex. remissid, personnummer, HSA-id. / Exempel: ” MMÅÅDD-XXXX OID för personnummer” / kod / CV / aktuellt kodvärde / kodverk / OID / identifierng av berört kodverk/ / klassifikation |
| Datapaket | DP | ED | Encapsulated data | Används för att ange typ av bild, ljud och andra multimediadata – detta specificeras senare vid behov (för information kontakta RIV förvaltningsgrupp) |
| Värde | VÄ |  |  | Uttrycker värdets datatyp och sort / värde / aktuellt värde / värdetyp / Kodat värde / Värdets datatyp / enhet / Text / värdets enhet |
| Kvantitet | KV | PQ | Physical Quantity | Uttrycker mängd och sort som resultat av en mätning. / Exempel: ”10 kg” |
| Flertal | FLT<x> | SET<x> | Set | Uttrycker ett flertal/upprepningar av angiven datatyp / Exempel. FLT<DT> 20060915 20061001 20061105 |
| Fritext | TXT | ST | Simple Text | Fritext |
| Tele- och data-kommunikation | KOM | TEL/HL7 | TEL/HL7 | Beskriver telekommunikationsadresser t.ex. telefonnummer, fax och e-post   Möjlighet till fritext |
| Datum | DT | Date | Date | Angivelse av datum. Formatet är ÅÅÅÅMMDD. / Det är tillåtet att ange ”datum” med lägre precision, dvs månad eller år. Datatypen kallas fortfarande ”datum”. Formatet är ÅÅÅÅMM respektive ÅÅÅÅ / Exempel: 20060713 |
| Tidpunkt | TP | TS | Point in Time | Angivelse av datum och klockslag med exaktheten sekund. Formatet är ÅÅÅÅ-MM-DDThh:mm:ss.xxxxx / Det är tillåtet att ange tidpunkt med lägre precision, dvs minut eller timme. Formatet är hhmm respektive hh. / Exempel:  	ÅÅÅÅ-MM-DDThh:mm   eller ÅÅÅÅ-MM-DDThh / Detta format är enligt ISO8601. För ytterligare behov av datatyper för tidpunkter – kontakta RIV-förvaltningsgrupp |
| Tidsintervall | IVL | ITV<TS> | Time interval | Angivelse av ett utrymme i tiden. Detta kan anges på 4 sätt: / Start och slut / Start och varaktighet / Varaktighet och slut / Varaktighet (utan relation till realtid) / Formatet är P[tY][mM][dD][T[hH][mM][s[.s]S]] där uppgifter inom [ ] är valfria. / Av de första 3 krävs två separata värden åtskilda av ”/”. / Exempel: / 1. 2002-03-01T13:00:00Z/2003-05-11T15:30:00Z / 2. 2002-03-01T13:00:00Z/P1Y2M10DT2H30M / 3. P1Y2M10DT2H30M/2003-05-11T15:30:00Z / 4. PT2H31M26.34S , dvs jordbävningen pågick i 2 timmar, 31 minuter och 26,34 sekunder |
| Webbadress | URL | URL |  |  |
Kolumn Multiplicitet (antal möjliga förekomster)

| Kod, ex | Förklaring |
| :--- | :--- |
| 1 | En förekomst |
| 0..1 | Ingen eller en förekomst |
| 0..* | Ingen eller många förekomster |
| 1..2 | En till två förekomster |
| 1..* | En till många förekomster |
