Medicinskt underlag
Tjänstekontraktsbeskrivning
Version 3.1.1
2015-03-17
Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2010-05-04 | Första version | Mats Ekhammar, Callista Enterprise AB |  |
| 1.0 | 2010-06-18 | Uppdaterad efter granskning | Mats Ekhammar, Callista Enterprise AB |  |
| 1.8 | 2010-11-27 | Tillägg av nya tjänstekontrakt samt beskrivningar och regler | Mats Ekhammar, Callista Enterprise AB |  |
| 1.9 | 2011-05-05 | Kapitel 3.5 Förtydligande av regler för valfria fält och samband till fält 1. / Kapitel 4.4 Byte av engelska M/O (Mandatory/Optional) till svenska O/V (Obligatorisk/Valfri.) / Kapitel 5.4 Byte från M/O till O/V / Kapitel 6.4 Byte från M/O till O/V / Kapitel 6.5 Tillagd regeltext / Kapitel 7.4 Byte från M/O till O/V / Kapitel 7.5 Tillagd regeltext / Kapitel 8.4 Byte från M/O till O/V / Kapitel 9.4 Byte från M/O till O/V / Kapitel 10.4 Byte från M/O till O/V / Kapitel 11.4 Byte från M/O till O/V | Mats Ekhammar, Callista Enterprise AB |  |
| 2.0 | 2011-11-23 | Förtydliganden av regler vid smittskyddsärende. | Mats Ekhammar, Callista Enterprise AB |  |
| 2.1 | 2013-02-20 | Nya tjänstekontrakt för rättelse och vidareskicka läkarintyg till FK | Mats Ekhammar, Callista Enterprise AB |  |
| 2.2 | 2013-02-22 | Nya tjänstekontrakt för lista, hämta och sätta status för läkarintyg | Mats Ekhammar, Callista Enterprise AB |  |
| 2.3 | 2013-02-25 | Överlagt till nytt förslag på mall | Mats Ekhammar, Callista Enterprise AB |  |
| 2.4 | 2013-05-23 | Lättnad i MU7263-RIV_3.0.xsd för elementet prognosangivelse till minOccurs=0. | Mats Ekhammar, Callista Enterprise AB |  |
| 3.1.0 | 2013-06-04 | Uppdaterat till nya mallen. Inskickat för godkännande. | Mats Ekhammar, Callista Enterprise AB |  |
| 3.1.1 | 2015-01-23 | -Lagt till ny inledning för uppdatering till Ineras webb. / -Kapitel 3.3 Förtydligat att ett ärende kan bestå av enbart en fråga, det måste inte alltid skapas ett svar. / -Kapitel 3.3 Uppdaterat aktivitetsdiagram. Det framgår nu att det inte är obligatoriskt att skicka ett svar, och att ett svar kan skickas även om ett intyg skapas vid komplettering. / -Kapitel 3.3.2 Rättat sekvensdiagram för ärendehantering. Steg 5-8 har nu fått korrekta startpunkter / -Ändrat formulering kring fkReferens-id och vardReferens-id. Tidigare hade det tolkats som att de måste vara unika. Ny formulering klargör att ett referens-id kan förekomma i flera meddelanden. / - Rättat RegisterMedicalCertificate. Elementet lakarutlatande.medicinsktTillstand.tillstandskod är iso:CD, inte string. | Mats Ekhammar, Callista Enterprise AB / Johan Zetterström, Callista Enterprise AB |  |
|  | 2015-03-17 | Förtydligat att man på vårdsidan helst bör skapa unika id för varje fråga (med undantag för påminnelser) för att kunna koppla inkommet svar till en viss fråga. | Johan Zetterström, Callista Enterprise AB |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Medicinskt underlag | Obligatoriskt |  |
Innehållsförteckning
1	Inledning	5
1.1	Svenskt namn	5
1.2	WEB beskrivning	5
1.3	Inledning gammal	5
1.4	Översikt	5
2	Versionsinformation	7
2.1	Version 3.1.0	7
2.2	Version 3.0.0	7
3	Tjänstedomänenens arkitektur	9
3.1	Skapa och hantera intyg från ett journalsystem	9
3.2	Invånarens hantering av läkarintyg	11
3.3	Ärendehantering för ett läkarintyg	13
3.4	Ärendelåda	15
3.5	Obligatoriska kontrakt	17
3.6	Adressering	17
3.7	Aggregering och engagemangsindex	18
4	Tjänstedomänens krav och regler	19
4.1	Informationssäkerhet och juridik	19
4.2	Felhantering	19
4.3	Krav på en tjänstekonsument	20
4.4	Krav på en tjänsteproducent	20
5	Tjänstedomänens meddelandemodeller	21
5.1	V-MIM Läkarintyg 7263	21
5.2	V-MIM Funktionen för elektronisk ärendekommunikation	24
5.3	Format regler	25
6	Tjänstekontrakt	27
6.1	RegisterMedicalCertificate	27
6.2	ReceiveMedicalCertificateQuestion	33
6.3	ReceiveMedicalCertificateAnswer	35
6.4	SendMedicalCertificateQuestion	37
6.5	SendMedicalCertificateAnswer	39
6.6	FindAllQuestions	41
6.7	FindAllAnswers	42
6.8	DeleteQuestions	43
6.9	DeleteAnswers	44
6.10	RevokeMedicalCertificate	45
6.11	SendMedicalCertificate	47
6.12	ListCertificates	49
6.13	GetCertificate	51
6.14	SetCertificateStatus	52

## Inledning

### Svenskt namn
Vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering
Intygshantering

### WEB beskrivning
Denna tjänstedomän syftar till att hantera vårdgivarperspektivet på sjukskrivningsprocessen för en individ.
Tjänstekontrakten inom domänen hanterar vårdens, Försäkringskassans och invånarens behov av e-tjänster för hantering av läkarintyg (Blankett FK 7263). Dessutom hanteras stödprocesser för ärendehantering kring ett läkarintyg sk frågor och svar. Även processer för att hantera frågor i svar från Försäkringskassan till vårdens sk ärendelåda ingår.

### Inledning gammal
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen insuranceprocess:healthreporting (huvuddomän ”Insurance Process”, underdomän ”Health Reporting”). Den svenska benämningen är ”Nationella Tjänstekontrakt för Medicinskt underlag”. Tjänstedomänens omfattning är vårdgivarperspektivet på sjukskrivningsprocessen för en individ. De kravställande processerna är:
Vårdens, Försäkringskassans och invånarens behov av e-tjänster för hantering av läkarintyg (Blankett FK 7263).
Stödprocesserna kring hantering av ärenden (frågor/svar) för ett läkarintyg.
Processer för att hantera frågor och svar från Försäkringskassan till vårdens sk ärendelåda.
Tjänstekontraktsbeskrivningen är ett teknisk-oberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt . Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Översikt
Nedanstående bild visar schematisk vilka system som använder tjänstedomänens tjänstekontrakt. Det finns följande huvudflöden:
Skapa och hantera läkarintyg från ett journalsystem till Mina Intygs tjänster.
Invånarens hantering av läkarintyg i Mina Intygstjänster eller i en Intygsmottagares system.
Ärendehantering för ett läkarintyg mellan Journalsystem och Intygsmottagare (frågor och svar).
Hantering av frågor och svar från en Intygsmottagare via Ärendelådan till ett journalsystem.

![img_001.jpeg](images/img_001.jpeg)

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen avser version 3.1.0. Detta är den version som är den senast publicerade på RIV TA’s hemsida för tjänstedomänen.

### Version ..

#### Oförändrade tjänstekontrakt
DeleteAnswers, version 1.0
DeleteQuestions, version 1.0
FindAllQuestions, version 1.0
FindAllAnswers, version 1.0
ReceiveMedicalCertificateQuestion, version 1.0
ReceiveMedicalCertificateAnswer, version 1.0
SendMedicalCertificateQuestion, version 1.0
SendMedicalCertificateAnswer, version 1.0

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med version 3.1.0:
GetCertificate, version 1.0
ListCertificates, version 1.0
RevokeMedicalCertificate, version 1.0
SendMedicalCertificate, version 1.0
SetCertificateStatus, version 1.0

#### Förändrade tjänstekontrakt
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompabilitet |
| :--- | :--- | :--- | :--- |
| RegisterMedicalCertificate | 3.0 | 3.1 | Ja |
| RegisterMedicalCertificate | 3.1 | 3.0 | Ja |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version 3.0.0
Följande tjänstekontrakt ingår i denna version
DeleteAnswers, version 1.0
DeleteQuestions, version 1.0
FindAllQuestions, version 1.0
FindAllAnswers, version 1.0
ReceiveMedicalCertificateQuestion, version 1.0
ReceiveMedicalCertificateAnswer, version 1.0
RegisterMedicalCertificate, version 3.0
SendMedicalCertificateQuestion, version 1.0
SendMedicalCertificateAnswer, version 1.0

## Tjänstedomänenens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Skapa och hantera intyg från ett journalsystem
Nedanstående diagram visar hur ett intyg skapas och hanteras i ett journalsystem.  Diagrammen tar även upp rättelse av intyg.

#### Arbetsflöde

![img_004.jpeg](images/img_004.jpeg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Patient | Den person som besöker vården för att få ett intyg och som sedan använder detta intyg i kommunikation med intressenter, bl a Försäkringskassan. |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som skapar och hanterar en patients intyg. |
| Försäkringskassan | Mottagare av intyg. I detta sammanhang görs ingen skillnad på Försäkringskassan som organisation och de handläggare som verkar i verksamheten. |

##### Arbetssteg

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Ha behov av ett intyg | Det arbetssteg som startar flödet är att patienten upplever sig ha ett behov av ett intyg. Detta ger att patienten tar kontakt med hälso- och sjukvården. |
| Skapa intyg | Behörig hälso- och sjukvårdspersonal tar i samband en vårdkontakt (alternativt efteråt) fram ett intyg åt patienten. |
| Signera och spara intyg | När intyget är skapat och ifyllt ska det signeras av ansvarig läkare. Därefter sparas det i journalsystemet. 
Samtidigt som det sparas skickas det också till Intygstjänsten. |
|  | Efter det att ett intyg sparats finns det ett antal möjliga alternativ till fortsatta aktiviteter. Inget alternativ är uteslutande eller obligatoriskt. Det är alltså möjligt att flera av de givna alternativen till aktiviteterna väljs. |
| Ha behov av att intyget går direkt till FK | I vissa fall kan det bli nödvändigt att skicka ett intyg direkt till Försäkringskassan. Det kan exempelvis röra patienter som själva är oförmögna att sköta kontakten med Försäkringskassan eller patienter som inte har tillgång till Internet. |
| Inhämta samtycke att skicka intyg direkt till Försäkringskassan | Hälso- och sjukvården måste ha patientens samtycke för att få skicka över ett intyg direkt till Försäkringskassan. Samtycket måste dokumenteras. Notera att det inte är nödvändigt att samtycket lagras i journalsystemet, men att det är hälso- och sjukvårdens ansvar att hålla informationen. |
| Skicka intyg till FK | Hälso- och sjukvården skickar intyget direkt till Försäkringskassan. |
| Ta emot intyg | Försäkringskassan tar emot det inskickade intyget. |
| Vilja ha utskrift av intyg | Patienten uttrycker en önskan att få en papperskopia av intyget som tagits fram. |
| Skriva ut intyg | Hälso- och sjukvårdspersonal skriver ut intyg på papper. |
| Skriva under intyg | Ansvarig läkare skriver under intyget med sin namnteckning |
| Ta emot intyg | Patienten tar emot intyget. / Antingen kan patienten få sitt intyg direkt vid kontakt med sin vårdenhet eller om intyget skrivs först senare så får patienten intyget skickat till sig per post. |
| Konstatera behov av rättelse | Av olika anledningar kan hälso- och sjukvården ha behov av att rätta ett intyg på grund av uppenbara felaktigheter i intyget. |
| Genomföra rättelse | Ansvarig hälso- och sjukvårdspersonal genomför rättelsen i journalsystemet. När en rättelse sker innebär det att det den aktuella handlingen (eller anteckningen) markeras som ogiltig i systemet. / Information om att en rättelse skett propageras därefter till intygstjänsten. |

##### Informationsmängder

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Intyg på journalsystemsformat | Den information som intyget består av lagrat på ett sätt som är anpassat för journalsystemet. |
| Signatur | Signatur som behörig vårdpersonal tillför intyget för att bekräfta att dess innehåll är korrekt. |
| Intyg | Den fullständiga informationsmängd som utgör intyget och motsvarande ett anrop att lagra ny information till intygstjänsten. |
| Samtycke | Patientens samtycke till att intyget skickas elektroniskt till Försäkringskassan. |
| Intygsreferens | En unik referens till ett specifikt intyg i intygstjänsten |
| Rättelse i journalsystemet | Information om att ett intyg har markerats som ogiltigt och rättats i journalsystemet. |
| Rättelse | Information om att ett intyg har rättats och inte längre är giltigt. |

##### Informationslager

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Journalsystem | Journalsystem, inte specifikt inriktat på sjukskrivning, håller bred information om patienten t.ex. anamnes och status. I detta sammanhang hanteras även sjukskrivningsinformation i journalsystemet även om det i praktiken kan skötas i separat modul eller system. |
| Intygstjänst | Tjänst där alla intyg lagras och kommuniceras vidare från på vårdsidan. |

#### Sekvensdiagram
Nedanstående sekvensdiagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Här används RegisterMedicalCertificate, SendMedicalCertificate samt RevokeMedicalCertificate.

![img_005.jpeg](images/img_005.jpeg)
Ovanstående sekvensdiagram visar:
Hur ett intyg skapas i hälso-och sjukvården och därefter kommuniceras till intygstjänsten med hjälp av tjänstekontraktet RegisterMedicalCertificate.
Hur ett intyg efter explicit behov hos patienten kan skickas från journalsystemettill Försäkringskassan med hjälp av tjänstekontraktet SendMedicalCertificate.
Hur ett intyg efter behov hos hälso- och sjukvårdspersonal kan rättas i journalsystemet och information om detta kommuniceras till intygstjänsten (och eventuellt vidare) med hjälp av tjänstekontraktet RevokeMedicalCertificate.

### Invånarens hantering av läkarintyg
Nedanstående diagram visar hur läkarintyg hanteras av invånaren. Invånaren använder antingen tjänsten Mina Intyg eller en Intygsmottagares tjänst (ex. Försäkringskassans Mina Sidor). Det är alltid invånaren som hanterar sina intyg oavsett vilket system han loggat in i.
Nedanstående diagram visar hur ett intyg skapas och hanteras i ett journalsystem.  Diagrammen tar även upp rättelse av intyg.

#### Arbetsflöde

![img_006.jpeg](images/img_006.jpeg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Invånare | Den person som besöker vården för att få ett läkarintyg och som sedan använder detta läkarintyg i kommunikation med intressenter, bl a Försäkringskassan. |

##### Arbetssteg

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Visa lista av intyg | Det arbetssteg som startar flödet är att invånaren vill se en lista på intyg som finns sparade i Intygstjänsten för invånaren. |
| Visa intyg | Ett valt intyg visas för invånaren med sitt innehåll. |
| Skicka intyg till FK | Invånaren väljer att skicka intyget till en extern mottagare, i detta fallet Försäkringskassan. |
| Ansöka om sjukpenning | Invånaren vill ansöka om sjukpenning genom att logga in på Försäkringskassan och därefter starta ansökningsprocessen |
| Hämta lista av intyg | I ansökningsprocessen väljer invånaren att hämta en lista på intyg från Intygstjänsten för att använda i samband med ansökan, |
| Välj ett intyg | Invånaren väljer det intyg som skall användas i ansökan. |
| Bifoga intyget till sjukpenningsansökan | Valt intyg bifogas till ansökan och denna sparas hos Försäkringskassan. I samband med detta meddelar Försäkringskassan vården att valt intyg använts av Försäkringskassan. |

##### Informationsmängder

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Lista av intyg | Den information som beskriver ett intyg kort i listform. |
| Intyg | Den fullständiga informationsmängd som utgör intyget. |
| Status för ett intyg | Kort information om ett intygs status. |

##### Informationslager

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Intygstjänst | Tjänst där alla intyg lagras och kommuniceras vidare från på vårdsidan. |
| Försäkringskassan | Mottagare av intyg. I detta sammanhang görs ingen skillnad på Försäkringskassans olika interna system. |

#### Sekvensdiagram
Nedanstående sekvensdiagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används är ListMedicalCertificates, GetMedicalCertificate och SetCertificateStatus.

![img_007.jpeg](images/img_007.jpeg)
Ovanstående sekvensdiagram visar:
Hur man kan visa en lista över en invånares tillgängliga intyg som skapats i hälso-och sjukvården. Denna lista fås genom användningen tjänstekontraktet ListCertificates.
Hur man från en lista kan hämta ett intyg och visa dess innehåll för en invånare. Man hämtar ett intyg med hjälp av tjänstekontraktet GetCertificate.
Hur man kan skicka ett intyg till en mottagare (Försäkringskassan i detta fall) eller bifoga ett intyg till en sjukpenningsansökan hos Försäkringskassan. När man skickar ett intyg från vården används tjänstekontraktet SendMedicalCertificate (se kapitel 3.1). Använder man ett intyg hos en extern part meddelar man detta genom tjänstekontraktet SetCertificateStatus.

### Ärendehantering för ett läkarintyg
Nedanstående diagram visar hur ärenden, bestående av frågor och svar, hanteras. Ett ärende består alltid av en och endast en fråga, och ett eventuellt svar på denna fråga. Om ett nytt läkakrintyg behöver skapas följs flödet för ”Skapa och hantera läkarintyg från ett journalsystem”.

![img_008.png](images/img_008.png)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som skapar och hanterar frågor och svar för ett intyg. |
| Handläggare FK | Den personal på Försäkringskassan som handlägger ärenden där ett intyg används. |

##### Arbetssteg

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Skriva och skicka fråga | Ett behov finns att skapa en fråga för ett tidigare skickat intyg. Detta behov kan uppstå både hos vården och Försäkringskassan. |
| Visa fråga från FK | En fråga hämtas och visas för den hälso- och sjukvårdspersonal som hanterar frågor för ett intyg. |
| Visa fråga från vården | En fråga hämtas och visas för den Försäkringskassepersonal som hanterar frågor för ett intyg. |
| Skapa nytt läkarintyg | Ny eller ändrad information i intyget behöver förmedlas som svar på en fråga. Detta ledder till att ett nytt intyg skapas och skickas enligt tidigare beskriven process. |
| Skriva och skicka svar | Ett svar skapas för en fråga och skickas till frågeställaren. |

##### Informationsmängder

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Intyg | Den fullständiga informationsmängd som utgör intyget. |
| Fråga | Den informationsmängd som utgör en fråga. |
| Svar | Den informationsmängd som utgör ett svar på en fråga. |

##### Informationslager

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Journalsystem | Journalsystem, inte specifikt inriktat på sjukskrivning, håller bred information om patienten t.ex. anamnes och status. I detta sammanhang hanteras även fråga/svar i journalsystemet även om det i praktiken kan skötas i separat modul eller system. |
| Försäkringskassan | Mottagare av intyg. I detta sammanhang görs ingen skillnad på Försäkringskassans olika interna system. |
| Ärendelåda | Ett system för mellanlagring av frågor och svar från Försäkringskassan. |

#### Sekvensdiagram
Nedanstående sekvensdiagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används är SendMedicalCertificateQuestion, SendMedicalCertificateAnswer, ReceiveMedicalCertificateQuestion och ReceiveMedicalCertificateAnswer.

![img_009.png](images/img_009.png)
Ovanstående sekvensdiagram visar:
Hur man skickar en fråga från Försäkringskassan till vården och hur vården svarar på denna fråga. De tjänstekontrakt som används är ReceiveMedicalCertificateQuestion och SendMedicalCertificateAnswer.
Hur man skickar en fråga från vården till Försäkringskassan och hur Försäkringskassan svarar på denna fråga. De tjänstekontrakt som används är SendMedicalCertificateAnswer och ReceiveMedicalCertificateAnswer.

### Ärendelåda
Diagrammet visar hur ett journalsystem anropar Ärendelådan vid vissa tider för att se om det finns frågor eller svar avsedda till de verksamheter journalsystemet stöder.

![img_010.jpeg](images/img_010.jpeg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Journalsystem | Aktören är i detta fallet ett system, dvs ingen individ är inblandad. |

##### Arbetssteg

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hämta och spara frågor | Ett anrop görs för att se om det finns några nya frågor som är adresserade till en verksamhet som Journalsystemet hanterar. De frågor som eventuellt finns returneras som svar på denna förfrågan. |
| Ta bort frågor | Efter att ha sparat nya frågor görs ett anrop för att ta bort dessa. |
| Hämta och spara svar | Ett anrop görs för att se om det finns några nya svar som är adresserade till en verksamhet som Journalsystemet hanterar. De svar som eventuellt finns returneras som svar på denna förfrågan. |
| Ta bort svar | Efter att ha sparat nya svar görs ett anrop för att ta bort dessa. |

##### Informationsmängder

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Frågor | Den informationsmängd som utgör frågor. |
| Svar | Den informationsmängd som utgör svar på frågor. |

##### Informationslager

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Journalsystem | Journalsystem, inte specifikt inriktat på sjukskrivning, håller bred information om patienten t.ex. anamnes och status. I detta sammanhang hanteras även fråga/svar i journalsystemet även om det i praktiken kan skötas i separat modul eller system. |
| Ärendelådan | Ett system för mellanlagring av frågor och svar från Försäkringskassan. |

#### Sekvensdiagram
Nedanstående sekvensdiagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används är FindAllQuestions, FindAllAnswers, DeleteQuestions och DeleteAnswers.

![img_011.jpeg](images/img_011.jpeg)
Ovanstående sekvensdiagram visar:
Hur ett journalsystem frågar efter nya frågor inkomna till Ärendelådan och därefter sparar eventuellt nya frågor i Journalsystemet för att sedan ta bort dessa från Ärendelådan. De tjänstekontrakt som används är FindAllQuestions och DeleteQuestions.
Hur ett journalsystem frågar efter nya svar inkomna till Ärendelådan och därefter sparar eventuellt nya svar i Journalsystemet för att sedan ta bort dessa från Ärendelådan. De tjänstekontrakt som används är FindAllAnswers och DeleteAnswers.

### Obligatoriska kontrakt
Följande tabell anger vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 3.1 | Flöde 3.2 | Flöde 3.3 | Flöde 3.4 |
| :--- | :--- | :--- | :--- | :--- |
| RegisterMedicalCertificate | X |  |  |  |
| SendMedicalCertificate | X |  |  |  |
| RevokeMedicalCertificate | X |  |  |  |
| ListCertificates |  | X |  |  |
| GetCertificate |  | X |  |  |
| SetCertificateStatus |  | X |  |  |
| ReceiveMedicalCertificateQuestion |  |  | X |  |
| ReceiveMedicalCertificateAnswer |  |  | X |  |
| SendMedicalCertificateQuestion |  |  | X |  |
| SendMedicalCertificateAnswer |  |  | X |  |
| FindAllQuestions |  |  |  | X |
| FindAllAnswers |  |  |  | X |
| DeleteQuestions |  |  |  | X |
| DeleteAnswers |  |  |  | X |

### Adressering

#### Skapa och hantera intyg från ett journalsystem
Den logiska adressen för transaktionen är till intygstjänsten, som representeras av Ineras organisationnummer.
Detta tjänstekontrakt finns med sedan version 3.0 men används nu för att skicka intyg till intygstjänsten hellre än till Försäkringskassan, den logiska adressen reflekterar denna skillnad.

#### Invånarens hantering av läkarintyg
Den logiska adressen för transaktionen är till intygstjänsten, som representeras av Ineras organisationnummer.

#### Ärendehantering för ett läkarintyg
De logiska adresserna för transaktionerna är till vårdverksamheter (vårdgivare#vårdenhet) när vården är mottagare och Försäkringskassan (organisationsmummer) i annat fall.

#### Ärendelåda
Den logiska adressen för transaktionen är till Ärendelådan, som representeras av Ineras organisationnummer.

### Aggregering och engagemangsindex
Används ej i denna eller tidigare versioner.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt sneare i dokumentet.

### Informationssäkerhet och juridik

#### Krav på en tjänsteproducent

##### Informationssäkerhet
De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.
Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas.

#### Krav på en tjänstekonsument

##### Informationssäkerhet
De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.
Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas när hälso- och sjukvårdspersonal är mottagare av denna information. I dagsläget hämtas kan endast en vårdenhet hämta sin egen information. I samband med detta görs åtkomstkontroll i NTJP för dessa tjänster.
Flera av tjänsterna är riktade att användas av en invånare där syftet är att hantera sina intyg.

##### Stark autentisering
En inloggad användare från hälso- och sjukvården skall vara starkt autentiserad med SITHS-kort eller motsvarande nivå av säkerhet i systemet.
En inloggad invånare skall vara starkt autentiserad med eLegitimation eller motsvarande nivå i systemet.

### Felhantering
Ett logisk fel returneras i ett response (result) och anger om anropet lyckades eller ej (resultCode). Ett lyckad anrop motsvaras av OK eller INFO. Om INFO returneras finns mer information som anger under vilka specifika omständigheter anropet ansågs vara lyckat av mottagaren.
Ett tekniskt fel returnerar ett SoapFault.

#### Logiska fel
Då felkoden ERROR returneras (resultCode) skall typen av fel returneras i errorId. Denna kan vara av 4 huvudtyper som skall tolkas enligt följande:
VALIDATION_ERROR
Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande errorText kan närmare peka på vilken regel som ej efterföljts.
En omsändning av information kommer att ge samma fel.
TRANSFORMATION_ERROR
Informationsmängden som skickats kan ej översättas till mottagande systems format. Denna felkod kan uppträda i inledande tester av tjänstekontrakten och skall ej finnas vid produktionsklara system.
En omsändning av information kommer att ge samma fel.
APPLICATION_ERROR
Ett fel inträffade när informationen togs emot av det mottagande systemet. Denna felkod skickas av det mottagande systemet och mer information om felet skall skickas i fältet errorText.
En omsändning av informationen kan lyckas beroende på typ av fel.
TECHNICAL_ERROR
Ett fel inträffade som inte har med skickad information att göra. Denna typ av fel kan fås om mottagande system ej svarar (time-out) eller liknande fel.
En omsändning av informationen bör göras enligt ett förutbestämt schema, dock med ett begränsat antal försök.

#### Tekniska fel (SoapFault)
Denna typ av fel kan likställas vid ovanstående tekniska fel. En omsändning av informationen bör göras enligt ett förutbestämt schema, dock med ett begränsat antal försök.

### Krav på en tjänstekonsument

#### Omsändning vid fel
En strategi för omsändning av anrop bör finnas i de fall en tjänstekonsument agerar som en proxy för att system. Dvs ansvaret för att anrop genomförs har delegerats till denna proxy.
Omsändningstrategin skall innehålla ett begränsat antal försök under ett ökande tidsintervall. Dessutom skall den endast tillämpas vid tekniska fel eller vid logiska fel av typen TECHNICAL_ERROR.

#### Felhantering
Då alla tjänster används synkront är det tjänstekonsumenten som ansvarar för att tolka fel i samband med kommunikation korrekt.
Följande krav skall beaktas då system agerar som tjänsteproducenter och tjänstekonsumenter för tjänstedomänens ingående tjänster.

### Krav på en tjänsteproducent

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Alla information skall alltid vara uppdaterad. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot V-TIM version 2.0.

### V-MIM Läkarintyg 7263

![img_002.jpeg](images/img_002.jpeg)

| Klass.attribut | Mappning mot V-TIM 2.0 |
| :--- | :--- |
| Aktivitet | Aktivitet |
| Aktivitet.läkarintygsaktivitet | Aktivitet.aktivitetskod |
| Aktivitet.beskrivning | Aktivitet.aktivitetsbeskrivning |
| Arbetsförmåga | Bedömt tillstånd |
| Arbetsförmåga.motivering | Ingår i Bedömt tillstånd.specifikation bedömt tillstånd |
| Arbetsförmåga.prognosangivelse | Ingår i Bedömt tillstånd.specifikation bedömt tillstånd |
| Arbetsförmåga nedsättning | Bedömt tillstånd |
| Arbetsförmåga nedsättning. nedsättningsgrad | Ingår i Bedömt tillstånd.specifikation bedömt tillstånd, motsvarar allvarlighetsgrad |
| Arbetsförmåga nedsättning. varaktighet | Bedömt tillstånd.bedömt tillstånd tid |
| Arbetsuppgift | Saknar motsvarighet i V-TIM 2.2 |
| Arbetsuppgift.typ av arbetsuppgift | Saknar motsvarighet i V-TIM 2.2 |
| Bedömt tillstånd | Bedömt tillstånd |
| Bedömt tillstånd.beskrivning | Bedömt tillstånd.beskrivning |
| Enhet | Enhet |
| Enhet.enhets-id | Enhet.enhets-id |
| Enhet.enhetsnamn | Enhet.enhetsnamn |
| Enhet.postadress | Saknar motsvarighet i V-TIM 2.2 / Adressuppgifter.postadress i HSA |
| Enhet.postnummer | Saknar motsvarighet i V-TIM 2.2 / Adressuppgifter.postnr i HSA |
| Enhet.postort | Saknar motsvarighet i V-TIM 2.2 / Attributet motsvarar X i HSA |
| Enhet.telefonnummer | Saknar motsvarighet i V-TIM 2.2 / Telefonnummer.direktnummer eller Telefonnummer.växeltelefon i HSA |
| Funktionstillstånd | Bedömt tillstånd |
| Funktionstillstånd.beskrivning | Bedömt tillstånd.beskrivning |
| Funktionstillstånd.typ av funktionstillstånd | Ingår i Bedömt tillstånd.specifikation av det bedömda tillståndet |
| HoS-Personal | Personal i V-TIM 2.0. / Person i HSA |
| HoS-Personal.personal-id | Personal.personal-id i V-TIM 2.0. / Person.HSA-id i HSA |
| HoS-Personal. fullständigt namn | Personal.fullständigt namn i V-TIM 2.0. / Person.fullständigt namn i HSA. |
| Läkarutlåtande | Framställan |
| Läkarutlåtande.läkarutlåtande-id | Framställan.framställarens analysobjekts-id |
| Läkarutlåtande.typ av utlåtande | Framställan.framställan typ |
| Läkarutlåtande.kommentar | Framställan.kommentar i V-TIM 2.2 |
| Läkarutlåtande.signeringsdatum | Saknar motsvarighet i V-TIM 2.2 |
| Medicinskt tillstånd | Bedömt tillstånd |
| Medicinskt tilstånd.beskrivning | Bedömt tillstånd.beskrivning |
| Medicinskt tillstånd.tillståndskod | Ingår i Bedömt tillstånd.specifikation av det bedömda tillståndet, motsvarar tillståndskod |
| Patient | Patient |
| Patient.person-id | Patient.person-id |
| Patient.förnamn | Patient.förnamn |
| Patient.mellannamn | Patient.mellannamn |
| Patient.efternamn | Patient.efternamn |
| Referens | Saknar motsvarighet i V-TIM 2.0 |
| Referens.referenstyp | Saknar motsvarighet i V-TIM 2.0 |
| Referens.datum | Saknar motsvarighet i V-TIM 2.0 |
| Sysselsättning | Observation/Uppfattat tillstånd |
| Sysselsättning.typ av sysselsättning | Attributet motsvarar ANTINGEN Observation/Uppfattat tillstånd.observerat/uppfattat objekt ELLER ingår i Observation/Uppfattat tillstånd.observation/uppfattat tillstånd specifikation |
| Vårdgivare | Enhet |
| Vårdgivare.vårdgivare-id | Enhet.enhets-id |
| Vårdgivare.vårdgivarnamn | Enhet.enhetsnamn |
| Vårdkontakt | Saknar motsvarighet i V-TIM 2.0 |
| Vårdkontakt.vårdkontakttyp | Saknar motsvarighet i V-TIM 2.0 |
| Vårdkontakt.vårdkontaktstid | Saknar motsvarighet i V-TIM 2.0 |

### V-MIM Funktionen för elektronisk ärendekommunikation

![img_003.png](images/img_003.png)
En del av klasserna i modellen har bedömts ligga utanför V-TIMs tillämpningsområde och har därför inte mappats mot V-TIM. Det gäller klasserna Avsändare, Meddelande, Mottagare samt Organisation.

| Klass.attribut | Mappning mot V-TIM 2.0 |
| :--- | :--- |
| Avsändare | Mappas inte mot V-TIM |
| Enhet | Enhet |
| Enhet.enhets-id | Enhet.enhets-id |
| Enhet.enhetsnamn | Enhet.enhetsnamn |
| Enhet.postadress | Saknar motsvarighet i V-TIM 2.0 / Adressuppgifter.postadress i HSA |
| Enhet.postnummer | Saknar motsvarighet i V-TIM 2.0 / Adressuppgifter.postnr i HSA |
| Enhet.postort | Saknar motsvarighet i V-TIM 2.0 / Attributet motsvarar X i HSA |
| Enhet.telefonnummer | Saknar motsvarighet i V-TIM 2.0 / Telefonnummer.direktnummer eller Telefonnummer.växeltelefon i HSA |
| Enhet.e-post | Saknar motsvarighet i V-TIM 2.0 / Internetuppgifter.e-postadress i HSA |
| Enhet.arbetsplatskod | Saknar motsvarighet i V-TIM 2.0 / Organisationsuppgifter.arbetsplatskod i HSA |
| HoS-Personal | Personal i V-TIM 2.0. / Person i HSA |
| HoS-Personal.förskrivarkod | Saknar motsvarighet i V-TIM 2.0 / Förskrivarkod.förskrivarkod i HSA |
| HoS-Personal.personal-id | Personal.personal-id i V-TIM 2.0. / Person.HSA-id i HSA |
| HoS-Personal. fullständigt namn | Personal.fullständigt namn i V-TIM 2.0. / Person.fullständigt namn i HSA. |
| Läkarutlåtande | Framställan |
| Läkarutlåtande.läkarutlåtande-id | Framställan.framställarens analysobjekts-id |
| Läkarutlåtande.typ av utlåtande | Framställan.framställan typ |
| Läkarutlåtande.signeringsdatum | Saknar motsvarighet i V-TIM 2.2 |
| Meddelande | Mappas inte mot V-TIM |
| Meddelande.meddelande-rubrik | Mappas inte mot V-TIM |
| Meddelande.vård-referens-id | Mappas inte mot V-TIM |
| Meddelande.FK-referens-id | Mappas inte mot V-TIM |
| Meddelande.ämne | Mappas inte mot V-TIM |
| Meddelande.fält | Mappas inte mot V-TIM |
| Meddelande.meddelandetext | Mappas inte mot V-TIM |
| Meddelande.kompletteringstext | Mappas inte mot V-TIM |
| Meddelande.avsänt tidpunkt | Mappas inte mot V-TIM |
| Meddelande.signeringstidpunkt | Mappas inte mot V-TIM |
| Meddelande.sista datum för svar | Mappas inte mot V-TIM |
| Mottagare | Mappas inte mot V-TIM |
| Organisation | Mappas inte mot V-TIM |
| Organisation.kontaktuppgifter | Mappas inte mot V-TIM |
| Patient | Patient |
| Patient.person-id | Patient.person-id |
| Patient.fullständigt namn | Patient.förnamn, Patient.mellannamn, Patient.efternamn |
| Vårdgivare | Enhet |
| Vårdgivare.vårdgivare-id | Enhet.enhets-id |
| Vårdgivare.vårdgivarnamn | Enhet.enhetsnamn |

### Format regler

#### Personidentitet
Personidentitet anges på formatet ÅÅÅÅMMDD-XXXX. Samma format gäller för olika typer av personidentiteter(reservnummer mm), dvs 8 siffror, bindestreck samt 4 siffror.

#### Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

#### Datum och Tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänstekontrakt

### RegisterMedicalCertificate
Tjänsten skickar ett komplett läkarintyg med informationsmängden enligt blankett FK7263. Både begäran och svar består av xml-dokument.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1). Har denna benämning en * finns ytterliggare regler för detta element och beskrivs mer i detalj i efterkommande stycke Tjänstekontraktsspecifika krav och regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Identitet på läkarintyget. Är en GUID. | 1..1 |
| lakarutlatande.typAvUtlatande | string | Fix text enligt: Läkarintyg enligt 3 kap, 8 § lagen (1962:381) om allmän försäkring | 1..1 |
| lakarutlatande.kommentar | string | Extra upplysningar i fritext (Fält 13) | 0..1* |
| lakarutlatande.signeringsdatum | datetime | När läkarintyget signerades (Fält 14) | 1..1 |
| lakarutlatande.skickatdatum | datetime | När läkarintyget skickades till FK | 1..1 |
| lakarutlatande.patient |  | Patienten | 1..1 |
| ..patient.person-id | Id | Patientens personnummer eller samordningsnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens hela namn | 1..1 |
| lakarutlatande.skapadAvHosPersonal |  | Vårdpersonal | 1..1 |
| ..skapadAvHosPersonal.personal-id | hsaid | Hsa-Id för Hos-person som utfärdar läkarintyget. | 1..1 |
| ..skapadAvHosPersonal.forskrivarkod | string | Förskrivarkod för Hos-person | 0..1 |
| ..skapadAvHosPersonal.fullstandigtNamn | string | Namn för Hos-person som utfärdar läkarintyget | 1..1 |
| ..skapadAvHosPersonal.enhet |  | Vårdenhet | 1..1 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.arbetsplatskod | string | Arbetsplatskoden för vårdenheten (Fält 17) | 1..1 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet där läkarintyget utfärdas | 1..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet där läkarintyget utfärdas | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare där läkarintyget utfärdas. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare där läkarintyget utfärdas. | 1..1 |
| lakarutlatande.vardkontakt |  | Vårdkontakt | 0..2 |
| ..vardkontakt.vardkontakttyp | string | Typ av vårdkontakt (min undersökning av patienten eller min telefonkontakt med patienten) / (Fält 4, de 2 översta kryssrutorna) | 0..1* |
| ..vardkontakt.vardkontaktstid | datum | Datum då vårdkontakten skedde | 0..1* |
| lakarutlatande.referens |  | Referens | 0..2 |
| ..referens.referenstyp | string | Typ av referens (journaluppgifter eller annat) / (Fält 4, de 2 nedre kryssrutorna) | 0..1* |
| ..referens.datum | datum | Datum för ovanstående referens | 0..1* |
| lakarutlatande.aktivitet |  | Aktiviteter | 0..n* |
| ..aktivitet.aktivitetskod | string | Aktivitetskoder som representerar olika val i blanketten. / (Fält 1, Fält 6a alla kryssrutor, Fält 6b alla kryssrutor, Fält 7 alla kryssrutor, Fält 11 alla kryssrutor, Fält 12) | 0..1* |
| ..aktivitet.beskrivning |  | En eventuell fritext som hänger ihop med aktivitetskoden. | 0..1* |
| lakarutlatande.bedomtTillstand |  | Bedömt tillstånd | 0..1 |
| ..bedomtTillstand.beskrivning | string | Aktuellt sjukdomsförlopp (Fält 3) | 1..1 |
| lakarutlatande.medicinsktTillstand |  | Medicinskt tillstånd | 0..1* |
| ..medicinsktTillstand.beskrivning | string | Diagnosinformation i fritext (Fält 2) | 0..1 |
| ..medicinsktTillstand.tillstandskod |  | Diagnoskod enligt ICD-10-SE alt. KSH97P (Fält 2) | 0..1* |
| ..tillstandskod.code | string | kod | 0..1 |
| ..tillstandskod.codeSystem | Uid | Kodsystemets identifierare | 0..1 |
| ..tillstandskod.codeSystemName | string | Kodsystemets namn | 0..1 |
| ..tillstandskod.codeSystemVersion | string | Version av kodsystemet | 0..1 |
| lakarutlatande.funktionstillstand |  | Funktionstillstånd | 0..2* |
| ..funktionstillstand.beskrivning | string | Om typAvFunktionstillstand=Kroppsfunktion avses funktionsnedsättning (Fält 4) / Om typAvFunktionstillstand=Aktivitet avses aktivitetsbegränsning (Fält 5) | 0..1* |
| ..funktionstillstand.typAvFunktionstillstand | string | Styr olika typer enligt ovan | 1..1 |
| ..funktionstillstand.arbetsformaga |  | Arbetsförmåga, enbart då typAvFunktionstillstand=Aktivitet | 0..1 |
| ..arbetsformaga.motivering | string | Arbetsförmågebedömning (Fält 9) | 0..1 |
| ..arbetsformaga.prognosangivelse | string | Prognosangivelse (Fält 10 alla kryssrutor) | 0..1* |
| ..arbetsformaga.arbetsuppgift |  | Arbetsuppgift | 0..1* |
| ..arbetsuppgift.typAvArbetsuppgift | string | Anger patientens typ av arbetsuppgift i fritext (Fält 8a fritexten kopplad till översta kryssrutan) | 1..1 |
| ..arbetsformaga.arbetsformagaNedsattning |  |  | 0..4* |
| ..arbetsformagaNedsattning.varaktighetFrom | datum | Från när arbetsförmågan är nedsatt (Fält 8b) | 1..1 |
| ..arbetsformagaNedsattning.varaktighetTom | datum | Till när arbetsförmågan är nedsatt (Fält 8b) | 1..1 |
| ..arbetsformagaNedsattning.nedsattningsgrad | string | Hur mycket arbetsförmågan är nedsatt (Fält 8b) | 1..1 |
| ..arbetsformaga.sysselsattning |  | Sysselsättning(Fält 8a alla kryssrutor) | 0..3* |
| ..sysselsattning.typAvSysselsattning | string | Patientens typ av sysselsättning | 1..1 |
| Svar |  |  |  |
| result |  | Information om anropet gick bra(OK, ERROR, INFO) | 0..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Till denna informationsmängd finns en hel del regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Informationen är organiserad utifrån blankett FK7263 och dess fältidentiteter.
Fält 1 - Avstängning enligt SmL
Om detta fält är satt behöver inte fält 2 till och med 8a fyllas i. Om dessa fält fylls i gäller reglerna som anges i tabellen ovan eller i specifika fältregler nedan.
Motsvaras av värdet: Aktivitetskod.AVSTANGNING_ENLIGT_SM_L_PGA_SMITTA
Fält 2 - diagnoskod
Valfritt om fält 1 är valt annars obligatoriskt.
Fält 4 - funktionsnedsättning
Valfritt om fält 1 är valt annars obligatoriskt.
Fält 4 - intyget baseras på – de 4 kryssrutorna
Valfritt om fält 1 är valt.
Om fält 1 inte är valt måste minst en kryssryta enligt nedan väljas.
Fält 4 - intyget baseras på – undersökning
Motsvaras av värdet: Vardkontakttyp.MIN_UNDERSOKNING_AV_PATIENTEN
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges (gäller även om fält 1 är valt).
Fält 4 - intyget baseras på – telefonkontakt
Motsvaras av värdet: Vardkontakttyp.MIN_TELEFONKONTAKT_MED_PATIENTEN
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges (gäller även om fält 1 är valt).
Fält 4 - intyget baseras på – journaluppgift
Motsvaras av värdet: Referenstyp.Journaluppgifter
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges (gäller även om fält 1 är valt).
Fält 4 - intyget baseras på – annat
Motsvaras av värdet: Referenstyp.Annat
Valfritt om fält 1 är valt.
Om man väljer denna kryssruta skall tillhörande datum alltid anges  (gäller även om fält 1 är valt).
Om man väljer denna kryssruta skall fält 13 – Övriga upplysningar fyllas i med kompletterande information(gäller även om fält 1 är valt).
Fält 6a - rekommendationer - kontakt med Arbetsförmedlingen
Valfritt och motsvaras av värdet: Aktivitetskod.PATIENTEN_BEHOVER_FA_KONTAKT_MED_ARBETSFORMEDLINGEN
Fält 6a - rekommendationer - kontakt med företagshälsovård
Valfritt och motsvaras av värdet: Aktivitetskod.PATIENTEN_BEHOVER_FA_KONTAKT_MED_FORETAGSHALSOVARDEN
Fält 6a - rekommendationer - Övrigt
Valfritt och motsvaras av värdet: Aktivitetskod.OVRIGT
Om man väljer denna kryssruta skall tillhörande beskrivning fyllas i (gäller även om fält 1 är valt).
Fält 6b - planerad eller pågående behandling eller åtgärd -  inom sjukvården
Valfritt och motsvaras av värdet: Aktivitetskod.PLANERAD_ELLER_PAGAENDE_BEHANDLING_ELLER_ATGARD_INOM_SJUKVARDEN
Om man väljer denna kryssruta skall tillhörande beskrivning fyllas i (gäller även om fält 1 är valt).
Fält 6b - planerad eller pågående behandling eller åtgärd - annan
Valfritt och motsvaras av värdet: Aktivitetskod.PLANERAD_ELLER_PAGAENDE_ANNAN_ATGARD
Om man väljer denna kryssruta skall tillhörande beskrivning fyllas i (gäller även om fält 1 är valt).
Fält 7 - arbetslivsinriktad rehabilitering aktuell - Ja/Nej/Går ej att bedömma
Valfritt och motsvaras av värdena: Aktivitetskod.ARBETSLIVSINRIKTAD_REHABILITERING_AR_AKTUELL Aktivitetskod.ARBETSLIVSINRIKTAD_REHABILITERING_AR_EJ_AKTUELL Aktivitetskod.GAR_EJ_ATT_BEDOMMA_OM_ARBETSLIVSINRIKTAD_REHABILITERING_AR_AKTUELL
Man får endast välja en av dessa 3 kryssrutor.
Fält 8a - arbetsförmåga bedöms i förhållande till  - arbete/arbetslöshet/föräldraledig
Valfritt om fält 1 är valt annars skall minst en av de tre övre valen finnas.
Motsvaras av värdena: TypAvSysselsattning.FORVARVSARBETE
TypAvSysselsattning.ARBETSLOSHET
TypAvSysselsattning.FORALDRALEDIGHET
Om man väljer kryssruta : TypAvSysselsattning.FORVARVSARBETE skall tillhörande arbetsuppgifter alltid anges (gäller även om fält 1 är valt).
Fält 8b - bedömning patientens arbetsförmåga – de 4 kryssrutorna
Minst 1 av dessa 4 kryssrutor måste alltid väljas.
Fält 8b - bedömning patientens arbetsförmåga - nedsatt med 1/4
Motsvaras av värdet: Nedsattningsgrad.NEDSATT_MED_1_4
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 8b - bedömning patientens arbetsförmåga - nedsatt med hälften
Motsvaras av värdet: Nedsattningsgrad.NEDSATT_MED_1_2
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 8b - bedömning patientens arbetsförmåga - nedsatt med 3/4
Motsvaras av värdet: Nedsattningsgrad.NEDSATT_MED_3_4
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 8b - bedömning patientens arbetsförmåga – helt nedsatt
Motsvaras av värdet: Nedsattningsgrad.HELT_NEDSATT
Om man väljer denna kryssruta skall tillhörande 2 datum fält också fyllas i. Ett tom datum måste vara större än ett from datum.
Fält 10 - prognos återfå arbetsförmåga - Ja/Delvis/Nej/Går ej att bedöma
Valfritt och man kan endast välja 1 av dessa 4 kryssrutor.
Motsvaras av värdena: Prognosangivelse.ATERSTALLAS_HELT Prognosangivelse.ATERSTALLAS_DELVIS
Prognosangivelse.INTE_ATERSTALLAS
Prognosangivelse.DET_GAR_INTE_ATT_BEDOMMA
Om man väljer Prognosangivelse.DET_GAR_INTE_ATT_BEDOMMA skall fält 13 – Övriga upplysningar fyllas i med kompletternade information.
Fält 11 - resor till från arbetet - ja/nej
Valfritt och man kan endast välja 1 av dessa 2 kryssrutor.
Motsvaras av värdena: Aktivitetskod.FORANDRAT_RESSATT_TILL_ARBETSPLATSEN_AR_EJ_AKTUELLT Aktivitetskod.FORANDRAT_RESSATT_TILL_ARBETSPLATSEN_AR_AKTUELLT
Fält 12 - kontakt önskas med FK
Valfritt och motsvaras av värdet:
Aktivitetskod.KONTAKT_MED_FORSAKRINGSKASSAN_AR_AKTUELL

### ReceiveMedicalCertificateQuestion
Tjänsten tar emot frågor från Försäkringskassan för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Frågan som Försäkringskassan skickar till vården utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| fkReferens-id | string | Försäkringskassans referens-id. * | 1..1 |
| amne | Amne typ | Ämne som frågan gäller. Finns en avgränsad mängd | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Frågetexten rörande det angivna läkarintyg | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då frågan skickades från Försäkringskassan | 1..1 |
| fkKontaktInfo |  | Rader med kontaktinformation | 0..n |
| fkKontaktInfo.kontakt | string | Mer detaljerad kontaktinformation för den person som ställt frågan från Försäkringskassan. | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som utfärdade läkarintyget. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som utfärdade läkarintyget. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet |  |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet där läkarintyget utfärdades. | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet där läkarintyget utfärdades. | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet där läkarintyget utfärdades. | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare där läkarintyget utfärdades. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare där läkarintyget utfärdades. | 1..1 |
| fkMeddelanderubrik | string | En extra rubrik som Försäkringskassan kan använda för att beskriva frågan. | 0..1 |
| fkKomplettering |  | Komplettering | 0..n |
| fkKomplettering.falt | string | Referens till fält på blanketten MU7263 | 1..1 |
| fkKomplettering.text | string | Orsak till komplettering för detta fält | 1..1 |
| fkSistaDatumForSvar | datum | Datum då Försäkringskassan senast vill ha ett svar | 0..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
fkReferens-id
Samma referens-id kan förekomma i flera meddelanden. Försäkringskassan skickar ett id som refererar till deras interna ärende. När ämnet är påminnelse ska referens-id vara samma som för den fråga som påminnelsen gäller.

### ReceiveMedicalCertificateAnswer
Tjänsten tar emot svar från Försäkringskassan på en tidigare skickad fråga från vården för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svaret som Försäkringskassan skickar till vården utgår alltid från en tidigare inskickad fråga från vården för ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från denna fråga (och tidigare från läkarintyget). Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| vardReferens-id | string | Referens-id för den fråga från vården som detta svar gäller. * | 1..1 |
| fkReferens-id | string | Försäkringskassans referens-id. * | 0..1 |
| amne | Amne typ | Ämne som fråga/svar gäller. | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Frågetexten rörande det angivna läkarintyg | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| svar |  | Svaret | 1..1 |
| svar.meddelandeText | string | Själva svaret på ställd fråga | 1..1 |
| svar.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva svaret | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då svaret skickades från Försäkringskassan | 1..1 |
| fkKontaktInfo |  | Rader med kontaktinformation | 0..n |
| fkKontaktInfo.kontakt | string | Mer detaljerad kontaktinformation för den person som svarat från Försäkringskassan. | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet |  |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
vardReferens-id
Samma vardReferens-id kan förekomma i flera meddelanden, t.ex. om en påminnelse har skickats. Id:t måste överensstämma med id:t som skickades i den fråga som detta svar gäller.
fkReferens-id
Samma fkReferens-id kan förekomma i flera meddelanden. Försäkringskassan skickar ett id som refererar till deras interna ärende.

### SendMedicalCertificateQuestion
Tjänsten skickar en fråga till Försäkringskassan för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Fråga som vården skickar till Försäkringskassan utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| vardReferens-id | string | Identitet för denna fråga från vården. * | 1..1 |
| amne | string | Ämne som frågan gäller. | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Själva frågan | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då frågan skickades från vården | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som ställde frågan. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån frågan ställdes | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån frågan ställdes | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån frågan ställdes | 1..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som frågan gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och därmed överensstämma med denna.
vardReferens-id
Samma vardReferens-id kan förekomma i flera meddelanden, t.ex. om en påminnelse har skickats. För att tekniskt kunna koppla ett inkommet svar till en skickad fråga bör dock varje ny fråga tilldelas ett unikt id.

### SendMedicalCertificateAnswer
Tjänsten skickar ett svar till Försäkringskassan på en tidigare mottagen fråga från Försäkringskassan för ett läkarintyg. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svaret som vården skickar till Försäkringskassan utgår alltid från en tidigare skickad fråga från Försäkringskassan för ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från denna fråga (och tidigare från läkarintyget). Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| vardReferens-id | string | Identitet för detta svar från vården * | 1..1 |
| fkReferens-id | string | Försäkringskassans referens-id * | 1..1 |
| amne | string | Ämne som fråga/svar gäller. | 1..1 |
| fraga |  | Frågan | 1..1 |
| fraga.meddelandeText | string | Själva frågan | 1..1 |
| fraga.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva frågan | 1..1 |
| svar |  | Svaret | 1..1 |
| svar.meddelandeText | string | Själva svaret på ställd fråga | 1..1 |
| svar.signeringsTidpunkt | datumtid | Signeringstidpunkt för själva svaret | 1..1 |
| avsantTidpunkt | datumtid | Tidpunkt då svaret skickades från vården | 1..1 |
| adressVard |  | Vårdadress | 1..1 |
| adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som svarar på frågan. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som svarar på frågan. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån svaret skickas | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån svaret skickas | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån svaret skickas | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån svaret skickas | 1..1 |
| vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån svaret skickas | 1..1 |
| lakarutlatande |  |  | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som fråga/svar gäller | 1..1 |
| lakarutlatande.patient |  |  | 1..1 |
| ..patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| ..patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och tidigare inkommen fråga från Försäkringskassan och därmed överensstämma med dessa.
vardReferens-id
Samma vardReferens-id kan förekomma i flera meddelanden.
fkReferens-id
Samma fkReferens-id kan förekomma i flera meddelanden. Försäkringskassan skickar ett id som refererar till deras interna ärende. Id:t måste överensstämma med id:t som skickades i den fråga som detta svar gäller.

### FindAllQuestions
Tjänsten returnerar frågor från Försäkringskassan för ett läkarintyg som mellanlagrats av vården. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Frågor som Försäkringskassan skickat till vården och som vården lagrat i en ärendelåda. Frågans struktur följer den fråga som definieras under ReceiveMedicalCertificateQuestion. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |
| questionsLeft | int | Antal kvarvarande frågor för denna vårdenhet | 1..1 |
| questions |  | Fråga | 0..1 |
| questions.question |  | Lista av frågor | 0..n |
| ..question.question |  | Själva frågan, se ReceiveMedicalCertificateQuestion | 1..1 |
| ..question.id | int | Ärendelådans identitet på den returnerade frågan. Används när man senare vill ta bort frågan från ärendelådan | 1..1 |
| ..question.receivedDate | datum | Datum då frågan inkom | 1..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler

### FindAllAnswers
Tjänsten returnerar svar från Försäkringskassan på tidigare skickade frågor från vården för ett läkarintyg som mellanlagrats av vården. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svar som Försäkringskassan skickat till vården och som vården lagrat i en ärendelåda. Svarets struktur följer det svar som definieras under ReceiveMedicalCertificateAnswer. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |
| answersLeft | int | Antal kvarvarande svar för denna vårdenhet | 1..1 |
| answers |  | Svar | 0..1 |
| answers.answer |  | Lista av svar | 0..n |
| answers.answer |  | Själva svaret, se ReceiveMedicalCertificateAnswer | 1..1 |
| answers.id | int | Ärendelådans dentitet på det returnerade svaret. Används när man senare vill ta bort svaret från ärendelådan | 1..1 |
| answers.receivedDate | datum | Datum då svaret inkom | 1..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### DeleteQuestions
Tjänsten tar bort frågor som mellanlagrats av vården och som tidigare hämtats(FindAllQuestions). Både begäran och svar består av xml-dokument.

#### Fältregler
Frågor som skall tas bort ur vårdens ärendelåda. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| questionId | string | Ärendelådans identitet på frågor som skall tas bort ur ärendelådan. | 0..n |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### DeleteAnswers
Tjänsten tar bort svar som mellanlagrats av vården och som tidigare hämtats(FindAllAnswer). Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
Svar som skall tas bort ur vårdens ärendelåda. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitId | hsaid | Vårdenhetens hsa-id | 1..1 |
| careGiverId | hsaid | Vårdgivarens hsa-id | 1..1 |
| answerId | string | Ärendelådans identitet på svaren som skall tas bort ur ärendelådan. | 0..n |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### RevokeMedicalCertificate
Tjänsten skickar ett meddelande om en rättelse av ett tidigare inskickat läkarintyg. Både begäran och svar består av xml-dokument.

#### Fältregler
Rättelse som vården skickar till Försäkringskassan utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| revoke |  | Rättelsen | 1..1 |
| revoke.vardReferens-id | string | Identitet för denna rättelse från vården | 1..1 |
| revoke.meddelande | string | Beskrivning om orsk till rättningen | 0..1 |
| revoke.avsantTidpunkt | datumtid | Tidpunkt då rättelsen skickades från vården | 1..1 |
| revoke.adressVard |  | Vårdadress | 1..1 |
| ..adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som skickade rättelsen. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet |  |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån rättelsen skickades. | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån rättelsen skickades. | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån rättelsen skickades. | 0..1 |
| ..enhet.vardgivare |  | Vårdgivaren | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån rättelsen skickades. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån rättelsen skickades. | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som rättelsen gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som rättelsen gäller | 1..1 |
| lakarutlatande.patient |  | Patienten | 1..1 |
| patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och därmed överensstämma med detta.

### SendMedicalCertificate
Tjänsten skickar ett meddelande om att ett läkarintyg skall skickas vidare till Försäkringskassan. Själva läkarintyget är tidigare insänt via RegisterMedicalCertificate. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
En begäran om att ett läkarintyg skall skickas vidare till Försäkringskassan utgår alltid från ett specifikt tidigare inskickat läkarintyg. Detta innebär att en mängd information i meddelandet härstammar från detta läkarintyg. Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| send |  | Sända signal om att skicka ett intyg | 1..1 |
| send.vardReferens-id | string | Identitet för detta meddelande från vården | 1..1 |
| send.avsantTidpunkt | datumtid | Tidpunkt då meddelandet skickades från vården | 1..1 |
| send.adressVard |  | Vårdadress | 1..1 |
| ..adressVard.hosPersonal |  | Vårdpersonal | 1..1 |
| ..hosPersonal.personal-id | hsaId | Hsa-Id för Hos-person som skickade meddelandet. | 1..1 |
| ..hosPersonal.fullstandigtNamn | string | Namn för Hos-person som skickade meddelandet. | 1..1 |
| ..hosPersonal.forskrivarkod | string | Används ej | 0..0 |
| ..hosPersonal.enhet |  | Vårdenhet | 1..1 |
| ..enhet.enhets-id | hsaId | Hsa-Id för Hos-vårdenhet varifrån meddelandet skickades. | 1..1 |
| ..enhet.arbetsplatskod | string | Används ej | 0..0 |
| ..enhet.enhets-namn | string | Namn på Hos-vårdenhet varifrån meddelandet skickades. | 1..1 |
| ..enhet.postadress | string | Postadress för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.postnummer | string | Postnummer för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.postort | string | Postort för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.telefonnummer | string | Telefonnummer till Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.epost | string | Epost adress för Hos-vårdenhet varifrån meddelandet skickades. | 0..1 |
| ..enhet.vardgivare |  | Vårdgivare | 1..1 |
| ..vardgivare.vardgivare-id | hsaId | Hsa-Id för Hos-vårdgivare varifrån meddelandet skickades. | 1..1 |
| ..vardgivare.vardgivare-namn | string | Namn på Hos-vårdgivare varifrån meddelandet skickades. | 1..1 |
| lakarutlatande |  | Läkarutlåtandet | 1..1 |
| lakarutlatande.lakarutlatande-id | string | Unikt id för läkarintyget som meddelandet gäller | 1..1 |
| lakarutlatande.signeringsTidpunkt | datumtid | Signeringstidpunkt för läkarintyget som meddelandet gäller | 1..1 |
| lakarutlatande.patient |  | Patienten | 1..1 |
| patient.person-id | string | Patientens personnummer eller samordningnummer | 1..1 |
| patient.fullstandigtNamn | string | Patientens namn | 1..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Övriga regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler
Observera att en mängd information skall tas från det tidigare inskickade läkarintyget och därmed överensstämma med denna.

### ListCertificates
Tjänsten begär en lista av registrerade läkarintyg från intygstjänsten. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
En begäran om en lista gäller för en specifik personidentitet. Nedanstående tabell beskriver varje element i begäran och svar Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| nationalIdentityNumber | string | Patientens personnummer eller samordningsnummer | 1..1 |
| certificateType | string | Typ av intyg. Om inget anges returneras alla typer. | 0..n |
| available | string | Anger om man skall returnera tillgängliga (true) eller icke tillgängliga (false) intyg som är registrerade i intygstjänsten. Dvs om det kan användas (hämtas). / Om inget anges antas true. | 0..1 |
| fromDate | datum | Startdatum för sökning för utfärdandedatum för intyget. Om inget anges görs ingen datum begränsning. | 0..1 |
| toDate | datum | Slutdatum för sökning för utfärdandedatum för intyget. Om inget anges görs ingen datum begränsning. | 0..1 |
| Svar |  |  |  |
| meta |  | Metadata information | 0..1 |
| meta.certificateId | string | Identitet på intyget. Är en GUID. | 1..1 |
| meta.certificateType | string | Typ av intyg. Om inget anges returneras alla typer. | 1..1 |
| meta.validFrom | datum | Startdatum för sjukskrivningsperioden. | 1..1 |
| meta.validTo | datum | Slutdatum för sjukskrivningsperioden. | 1..1 |
| meta.issuerName | string | Namn för Hos-person som utfärdat intyget | 1..1 |
| meta.facilityName | string | Namn på Hos-vårdenhet där intyget utfärdats | 1..1 |
| meta.signDate | date | Datum när intyget signerades | 1..1 |
| meta.available | string | Anger om intyget är tillgängligt och kan användas. | 1..1 |
| meta.status |  | En lista över statustyper för olika mottagare | 0..n |
| ..status.target | string | Mottagare för en status. Ex FK | 1..1 |
| ..status.type | string | Typ av statusändring för intyget. | 1..1 |
| ..status.timestamp | datetime | När statusen sattes för intyget | 1..1 |
| result |  |  | 0..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### GetCertificate
Tjänsten hämtar ett läkarintyg från intygstjänsten. Både begäran och svar består av xml-dokument.

#### Version
1.0

#### Fältregler
En begäran om ett läkarintyg från intygstjänsten. Nedanstående tabell beskriver varje element i begäran och svar Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| certificateId | string | Identitet på intyget. Är en GUID. | O |
| nationalIdentityNumber | string | Patientens personnummer eller samordningsnummer | O |
| Svar |  |  |  |
| meta.certificateId | string | Identitet på intyget. Är en GUID. | O |
| meta.certificateType | string | Typ av intyg. Om inget anges returneras alla typer. | O |
| meta.validFrom | datum | Startdatum för sjukskrivningsperioden. | O |
| meta.validTo | datum | Slutdatum för sjukskrivningsperioden. | O |
| meta.issuerName | string | Namn för Hos-person som utfärdat intyget | O |
| meta.facilityName | string | Namn på Hos-vårdenhet där intyget utfärdats | O |
| meta.signDate | datetime | Datum och tid när intyget signerades | O |
| meta.available | string | Anger om intyget är tillgängligt. | O |
| meta.status |  | En lista över statustyper för olika mottagare |  |
| meta.status.target | string | Mottagare för en status. Ex FK | O |
| meta.status.type | string | Typ av statusändring för intyget. | O |
| meta.status.timestamp | datetime | När statusen sattes för intyget | O |
| certificate | <any> | Platshållare för intyget som är generisk. Typ av intyg anges i meta.certificateType. |  |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | O |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | V |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | V |
| result.errorText | string | Text som ytterliggare beskriver felet | V |

#### Tjänstekontraktsspecifika krav och regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.

### SetCertificateStatus
Tjänsten sätter status för ett registrerat läkarintyg i intygstjänsten. Både begäran och svar består av xml-dokument.

#### Fältregler
En ändring av status fäller ett tidigare registrerat läkarintyg i intygstjänsten. Nedanstående tabell beskriver varje element i begäran och svar Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | string | Identitet på intyget. Är en GUID. |  |
| certificateId | string | Patientens personnummer eller samordningsnummer | 1..1 |
| nationalIdentityNumber | datumtid | Tidpunkt då meddelandet skickades från vården | 1..1 |
| target | string | Mottagare för en status. Ex FK | 1..1 |
| status | string | Typ av statusändring för intyget. | 1..1 |
| timestamp | datetime | När anropet sattes för intyget | 0..1 |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.resultCode | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.infoText | string | Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text. | 0..1 |
| result.errorId | string | Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR) | 0..1 |
| result.errorText | string | Text som ytterliggare beskriver felet | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Inga extra förutom de som anger om fält är obligatoriska eller valbara under fältregler.
