
|  | Tidbokning / Tjänstekontraktsbeskrivning / Version 1.1.5 / ARK_0015 / 2021-09-10 |
| :--- | :--- |
Innehåll
1	Inledning	8
1.1	Svenskt namn	8
2	Versionsinformation	9
2.1	Version 1.1	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Förändrade tjänstekontrakt	9
2.1.4	Utgångna tjänstekontrakt	11
2.2	Version tidigare	11
3	Tjänstedomänens arkitektur	11
3.1	Flöden	11
3.1.1	Flöde 1 - Boka tid	11
3.1.2	Flöde 2 - Se bokade tider vid en vårdenhet	14
3.1.3	Flöde 3 - Omboka tid	15
3.1.4	Flöde 4 - Avboka tid	17
3.1.5	Flöde 5 - Se nationell kalender	19
3.1.6	Flöde 6 - Tidsatt kallelse	21
3.1.7	Flöde 7 - Öppen kallelse	23
3.1.8	Obligatoriska kontrakt	25
3.2	Adressering	26
3.3	Aggregering	27
3.4	Anvisningar för uppdatering av Engagemangsindex	27
3.4.1	Domänspecifika attribut för tjänstedomänen Tidbokning	28
3.4.2	Vid ändringar i tidbokningssystemet ska tjänsteproducenten uppdatera Engagemangsindex	29
3.4.3	Endast dessa bokningar och kallelser ska finnas i Engagemangsindex	29
3.4.4	En bokad tid eller kallelse i tidbokningssystemet ska motsvaras av en post i Engagemangsindex	29
3.4.5	Då anses en bokning eller kallelse ha ändrats	29
3.4.6	Då anses en bokning eller kallelse vara inaktuell	31
3.4.7	Uppdatera befintlig post vs. ta bort befintlig post och skapa en ny	31
3.4.8	Då ska en befintlig engagemangsindexpost uppdateras	31
3.4.9	Då ska en befintlig engagemangsindexpost tas bort och ersättas med en ny	32
3.4.10	Så tas en befintlig post bort ur Engagemangsindex	32
3.4.11	Grundladdning	33
3.4.12	Ändringar från tidigare version av anvisningarna	33
3.5	Aktör som utför bokning	33
3.6	Kallelsehantering	34
3.7	Tidsluckor (TimeSlotType) och tomma element	35
3.8	ResultCode	36
3.9	DocBook	36
4	Tjänstedomänens krav och regler	38
4.1	Informationssäkerhet	38
4.2	Icke funktionella krav	38
4.2.1	SLA krav	38
4.3	Felhantering	39
4.3.1	Krav på en tjänsteproducent	39
4.3.2	Krav på en tjänstekonsument	39
5	Tjänstedomänens meddelandemodeller	39
5.1	V-MIM	39
5.2	Formatregler	39
5.2.1	Format för datum	39
5.2.2	Format för tidpunkter	40
5.2.3	Tidszon för tidpunkter	40
5.2.4	Format för HSA-id	40
6	Tjänstekontrakt	40
6.1	CancelBooking	40
6.1.1	Frivillighet	40
6.1.2	Version	41
6.1.3	Meddelandeinformationsmodell (MIM)	41
6.1.4	Fältregler	41
6.1.5	Övriga regler	41
6.2	GetAllCareTypes	42
6.2.1	Frivillighet	42
6.2.2	Version	42
6.2.3	Meddelandeinformationsmodell (MIM)	42
6.2.4	Fältregler	42
6.2.5	Övriga regler	43
6.3	GetAllHealthcareFacilities	43
6.3.1	Frivillighet	44
6.3.2	Version	44
6.3.3	Meddelandeinformationsmodell (MIM)	44
6.3.4	Fältregler	44
6.4	GetAllPerformers	45
6.4.1	Frivillighet	45
6.4.2	Version	45
6.4.3	Meddelandeinformationsmodell (MIM)	45
6.4.4	Fältregler	45
6.5	GetAllTimeTypes	46
6.5.1	Frivillighet	46
6.5.2	Version	46
6.5.3	Meddelandeinformationsmodell (MIM)	47
6.5.4	Fältregler	47
6.5.5	Övriga regler	47
6.6	GetAvailableDates	48
6.6.1	Frivillighet	48
6.6.2	Version	48
6.6.3	Meddelandeinformationsmodell (MIM)	48
6.6.4	Fältregler	48
6.7	GetAvailableTimeslots	50
6.7.1	Frivillighet	51
6.7.2	Version	51
6.7.3	Meddelandeinformationsmodell (MIM)	51
6.7.4	Fältregler	51
6.8	GetBookingDetails	53
6.8.1	Frivillighet	53
6.8.2	Version	53
6.8.3	Meddelandeinformationsmodell (MIM)	54
6.8.4	Fältregler	54
6.8.5	Övriga regler	56
6.9	GetSubjectOfCareSchedule	56
6.9.1	Frivillighet	56
6.9.2	Version	57
6.9.3	Meddelandeinformationsmodell (MIM)	57
6.9.4	Fältregler	57
6.9.5	Övriga regler	59
6.9.6	Annan information om kontraktet	59
6.10	MakeBooking	59
6.10.1	Frivillighet	59
6.10.2	Version	59
6.10.3	Meddelandeinformationsmodell (MIM)	60
6.10.4	Fältregler	60
6.10.5	Övriga regler	62
6.11	UpdateBooking	62
6.11.1	Frivillighet	62
6.11.2	Version	62
6.11.3	Meddelandeinformationsmodell (MIM)	63
6.11.4	Fältregler	63
6.11.5	Övriga regler	64
7	Definition av komplexa typer	65
7.1	TimeslotType	65
7.2	SubjectOfCareType	66
7.3	TimeTypeType	66
7.4	CareTypeType	67
7.5	PerformerInfoType	67
7.6	HealthcareFacilityInfoType	67
7.7	PerformerAvailabilityByDateType	67
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.1.3 |  | - | Revisionshistorik saknas i tidigare TKB:er. Ny revisionslista skapad härmed | Thomas Fafoutis |  |
| 1.1.4 | RC1 | 2021-06-07 | Uppdaterat tjänstekontraktsbeskrivning med den senaste mallen. | Thomas Fafoutis |  |
| 1.1.5 |  | 2021-09-10 | Diverse förtydliganden i TKB | Thomas Fafoutis |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Tidbokning | Obligatoriskt | Distribueras med detta dokument. |
| R2 | Tjänstedomän - Engagemangsindex | Obligatoriskt | https://rivta.se/tkview/#/domain/itintegration:engagementindex |
| R3 | Tjänstedomän - Tjänsteadressering | Frivillig | https://rivta.se/tkview/#/domain/itintegration:registry |
| R4 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
crm:scheduling
Tjänstekontrakten är baserade på RIVTA 2.1 [R4] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänens omfattning är invånarperspektivet på tidbokning mot en vårdenhet. Den kravställande processen är invånarens behov av e-tjänster för tidbokning – direkt som användare (ex. 1177 Vårdguidens e-tjänster), eller indirekt via vårdpersonal (ex. Rådgivningsstödet, RGS).
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
individens processtöd: tillgängliggör kontaktväg: tidbokning
tidbokning

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen crm:scheduling. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.
Historik, bakåtkompabilitet och konsumenter
Fram till denna version var tjänstedomänen Invånarens Tidbokning en s.k. projekt-specifik tjänstedomän. Det innebar att Mina vårdkontakter var den enda tillåtna konsumenten inom Tidbokning. Under tiden som projekt-specifik domän åtog sig Mina vårdkontakter att uppgradera till senaste versionen av tidbokningskontrakten före någon producent uppgraderat. Detta löste bristen på kompatibilitet mellan 1.0-konsument och 1.1-producent. Därför används versionsnummer 1.1 istället för 2.0.
Tjänstedomänen är godkänd nationellt. Nya konsumenter måste implementera version 1.1 av kontrakten

### Version 1.1

#### Oförändrade tjänstekontrakt
Det finns inga oförändrade kontrakt i denna version

#### Nya tjänstekontrakt
GetAllPerformers, version 1.1
GetAllHealthcareFacilities, version 1.1
GetAllCareTypes 1.1
CancelBooking, version 1.1

#### Förändrade tjänstekontrakt
GetAllTimeTypes, version 1.1
GetBookingDetails, version 1.1
GetSubjectOfCareSchedule, version 1.1
GetAllCareTypes, version 1.1
GetAvailableDates, version 1.1
GetAvailableTimeslots, version 1.1
MakeBooking, version 1.1
UpdateBooking, version 1.1
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar; RIV-TA 2.1 översikt

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetAllTimeTypes | 1.1 | 1.0 | Ja |
| GetAllTimeTypes | 1.0 | 1.1 | Nej* |
| GetAvailableDates | 1.1 | 1.0 | Ja |
| GetAvailableDates | 1.0 | 1.1 | Nej* |
| GetAvailableTimeslots | 1.1 | 1.0 | Ja |
| GetAvailableTimeslots | 1.0 | 1.1 | Nej* |
| GetBookingDetail | 1.1 | 1.0 | Ja |
| GetBookingDetail | 1.0 | 1.1 | Nej* |
| GetSubjectOfCareSchedule | 1.1 | 1.0 | Ja |
|  | 1.0 | 1.1 | Nej* |
| MakeBooking | 1.1 | 1.0 | Ja |
| MakeBooking | 1.0 | 1.1 | Nej* |
| UpdateBooking | 1.1 | 1.0 | Ja |
| UpdateBooking | 1.0 | 1.1 | Nej* |

#### Utgångna tjänstekontrakt
GetCancelledAndRebooked 1.0

### Version tidigare
Version 1.0

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden
Följande flöden är definierade i domänen:
Flöde 1 – Boka tid
Flöde 2 – Se bokade tider vid en vårdenhet
Flöde 3 – Omboka tid
Flöde 4 – Avboka tid
Flöde 5 – Se nationell kalender
Flöde 6 – Tidsatt kallelse
Flöde 7 – Öppen kallelse

#### Flöde 1 - Boka tid
Flödet beskriver hur en invånare bokar en tid på vårdenhet.
Väljer vårdenhet – Invånaren loggar in i aktuell e-tjänst och väljer vårdenhet att boka tid på.
(Väljer vårdtyp) – Förutsatt att e-tjänsten (konsumenten) och vårdenheten (den logiska adressaten) stödjer det frivilliga tjänstekontraktet GetAllCareTypes kan e-tjänsten hämta och visa upp vårdtyper som är tillgängliga för invånaren. Invånaren väljer då typ av vård att boka tid för. Vårdtypens/ernas kod/er, som styrs av vårdenheten, kan sedan användas av e-tjänsten för att begränsa vilka tidstyper, utövare, datum och tider som visas upp för invånaren.
Väljer tidstyp – E-tjänsten hämtar och visar upp tidstyper som är tillgängliga för invånaren. Om invånaren valt vårdtyp i föregående steg kan e-tjänsten skicka med kod för denna/dessa i sin begäran, för att begränsa vilka tidstyper som visas upp för invånaren. Invånaren väljer sen typ av tid att boka tid för. Observera att det frivilliga tjänstekontraktet GetAllTimeTypes är obligatoriskt om e-tjänst stödjer flödet Boka tid.
(Väljer utövare) – Förutsatt att e-tjänsten (konsumenten) och vårdenheten (den logiska adressaten) stödjer det frivilliga tjänstekontraktet GetAllPerformers kan e-tjänsten hämta och visa upp utövare/medarbetare som är tillgängliga för invånaren. Om invånaren valt vårdtyp/tidstyp i föregående steg, kan e-tjänsten skicka med kod för denna/dessa i sin begäran för att begränsa vilka utövare som visas upp för invånaren. Invånaren väljer sen utförare att boka tid hos.
Väljer datum – E-tjänsten hämtar datum med lediga tider för angivet datumintervall. Om invånaren valt vårdtyp/tidstyp/utövare i föregående steg, kan e-tjänsten skicka med kod för denna/dessa i sin begäran för att begränsa vilka datum som visas upp för invånaren. Invånaren väljer datum att boka tid på.
Väljer tid – E-tjänsten hämtar lediga tider för angivet datumintervall. Om invånaren valt vårdtyp/tidstyp/utövare i föregående steg, kan e-tjänsten skicka med kod för denna/dessa i sin begäran för att begränsa vilka tider som visas upp för invånaren.
Bokar tid – När invånaren valt en ledig tid skickar e-tjänsten en begäran till tjänstekontraktet MakeBooking för att boka tiden i verksamhetssystemet.

##### Arbetsflöde

![img_022.png](images/img_022.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.
Notering: De grå blocken indikerar att tjänstekontrakten är frivilliga.

![img_017.png](images/img_017.png)

#### Flöde 2 - Se bokade tider vid en vårdenhet
Flödet beskriver hur en invånare tar del av sina bokade tider vid en vårdenhet.
Väljer vårdenhet – Invånaren loggar in i aktuell e-tjänst och väljer vårdenhet.
Ser bokade tider – E-tjänsten skickar en begäran till tjänstekontraktet GetSubjectOfCareSchedule som returnerar bokade tider och kallelser som finns för invånaren på vårdenheten. E-tjänsten visar upp dessa för invånaren.

##### Arbetsflöde

![img_010.png](images/img_010.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att se sina bokade tider vid en vårdenhet. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_006.png](images/img_006.png)

#### Flöde 3 - Omboka tid
Flödet beskriver hur en invånare uppdaterar en bokning med nytt datum och tid.
Alt 1: Väljer vårdenhet – Invånaren loggar in i aktuell e-tjänst och väljer vårdenhet.
Alt 2: E-tjänst – alla mina bokade tider – Invånaren loggar in i aktuell e-tjänst och väljer att se alla sina bokade tider.
Ser bokade tider – E-tjänsten skickar en begäran till tjänstekontraktet GetSubjectOfCareSchedule som returnerar bokade tider och kallelser som finns för invånaren. Beroende på e-tjänst (alt 1 eller alt 2 ovan) visar e-tjänst antingen upp invånares tider på specifik mottagning eller en sammanfattande vy med alla invånares tider, oavsett mottagning.
Väljer bokad tid – Invånaren väljer bokad tid att omboka. En förutsättning för att kunna göra detta är att den bokade tiden är ombokningsbar (rebooking_allowed = ”true”).
(Väljer vårdenhet) – Förutsatt att e-tjänsten (konsumenten) och vårdenheten (den logiska adressaten) stödjer det frivilliga tjänstekontraktet GetAllHealthcareFacilities kan e-tjänsten hämta och visa upp vårdenheter som är tillgängliga för invånaren att boka sin tid på. E-tjänsten inkluderar den ursprungliga bokningens bookingId i sin begäran för att indikera ombokning. Verksamhetssystemet (tidbokningssystemet) returnerar endast vårdenheter som är valbara vid ombokning av just angiven bokning. Invånaren väljer vårdenhet att boka tid på.
Väljer datum – E-tjänsten hämtar datum med lediga tider för ursprunglig bokning och angivet datumintervall. Begäran adresseras till den vårdenhet för den ursprungliga bokningen eller den vårdenhet som eventuellt valts av invånaren i föregående steg. E-tjänsten inkluderar den ursprungliga bokningens bookingId i sin begäran för att indikera ombokning. Baserat på det ursprungliga bookingId kan producenten implementera logik för att exempelvis endast returnera de lediga tider där samma resurs som tidigare var bokad också är ledig eller där tidigare vald vårdpersonal också är ledig. Invånaren väljer därefter datum att boka tid på.
Väljer tid – E-tjänsten hämtar lediga tider för ursprunglig bokning och angivet datumintervall. Invånaren väljer en tid.
Ombokar tid – När invånaren valt en ledig tid skickar e-tjänsten en begäran till tjänstekontraktet UpdateBooking för att omboka tiden i verksamhetssystemet.

##### Arbetsflöde

![img_001.png](images/img_001.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att omboka en tid på en vårdenhet. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.
Notering: De grå blocken indikerar att tjänstekontrakten är frivilliga.

![img_020.png](images/img_020.png)

#### Flöde 4 - Avboka tid
Flödet beskriver hur en invånare avbokar en bokning på en vårdenhet.
Alt 1: Väljer vårdenhet – Invånaren loggar in i aktuell e-tjänst och väljer vårdenhet.
Alt 2: E-tjänst – alla mina bokade tider – Invånaren loggar in i aktuell e-tjänst och väljer att se alla sina bokade tider.
Ser bokade tider – E-tjänsten skickar en begäran till tjänstekontraktet GetSubjectOfCareSchedule som returnerar bokade tider och kallelser som finns för invånaren. Beroende på e-tjänst (alt 1 eller alt 2 ovan) visar e-tjänst antingen upp invånares tider på specifik mottagning eller en sammanfattande vy med alla invånares tider, oavsett mottagning.
Väljer bokad tid – Invånaren väljer bokad tid att avboka. En förutsättning för att kunna göra detta är att den bokade tiden är avbokningsbar (cancel_booking_allowed = ”true”).
Avbokar tid – När invånaren valt bokad tid att avboka skickar e-tjänsten en begäran till tjänstekontraktet CancelBooking för att avboka tiden i verksamhetssystemet.

##### Arbetsflöde

![img_011.png](images/img_011.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att avboka en tid på en vårdenhet. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_004.png](images/img_004.png)

#### Flöde 5 - Se nationell kalender
Flödet beskriver hur en invånare tar del av sin nationella kalender.
Loggar in i e-tjänst – Invånaren loggar in i aktuell e-tjänst. E-tjänsten skickar en begäran till GetSubjectOfCareSchedule och adresserar begäran till en aggregerande tjänst. Den aggregerande tjänsten konsulterar Engagemangsindex för att ta reda på vilka vårdenheter invånaren har bokade tider hos. Den aggregerande tjänsten adresserar därefter en begäran till tjänstekontraktet GetSubjectOfCareSchedule till respektive vårdenhet och sammanställer ett svar (en lista med bokade tider) till e-tjänsten.
Ser nationell kalender – E-tjänsten visar upp det sammansatta svaret för invånaren.

##### Arbetsflöde

![img_023.png](images/img_023.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att se sin nationella kalender. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_018.png](images/img_018.png)

#### Flöde 6 - Tidsatt kallelse
Flödet beskriver hur en hälso- och sjukvårdspersonal skickar en tidsatt elektronisk kallelse till en invånare.
Skapar kallelse – En hälso- och sjukvårdpersonal loggar in i sitt verksamhetssystem och skapar en öppen kallelse. Verksamhetssystemet uppdaterar Engagemangsindex med ett nytt engagemang för invånaren. Engagemangsindex informerar e-tjänsten (via tjänstekontraktet ProcessNotification i domänen itintegration:engagementindex) om att invånaren har ett nytt engagemang. E-tjänsten hämtar detaljer om engagemanget med tjänstekontraktet GetBookingDetails.
Tar del av kallelse – Invånaren loggar in i e-tjänsten och tar del av kallelsen.

##### Arbetsflöde

![img_013.png](images/img_013.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Personal inom hälso- och sjukvården i behov av att skicka tidsatt kallelse till en invånare. |
| Invånare | Person som tar emot en tidsatt kallelse. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_007.png](images/img_007.png)

#### Flöde 7 - Öppen kallelse
Flödet beskriver hur en hälso- och sjukvårdspersonal skickar en öppen (ej tidsatt) elektronisk kallelse till en invånare och hur invånaren bokar en tid utifrån kallelsen.
Skapar kallelse – En hälso- och sjukvårdpersonal loggar in i sitt verksamhetssystem och skapar en öppen kallelse. Verksamhetssystemet uppdaterar Engagemangsindex med ett nytt engagemang för invånaren. Engagemangsindex informerar e-tjänsten (via tjänstekontraktet ProcessNotification i domänen itintegration:engagementindex) om att invånaren har ett nytt engagemang. E-tjänsten hämtar detaljer om engagemanget med tjänstekontraktet GetBookingDetails.
Tar del av kallelse – Invånaren loggar in i e-tjänsten och tar del av kallelsen som uppmanar invånaren att boka en tid.
Väljer vårdenhet – E-tjänsten skickar en begäran till tjänstekontraktet GetAllHealthcareFacilities för att hämta och visa upp vårdenheter som är tillgängliga för invånaren att boka sin tid på. E-tjänsten inkluderar kallelsens BookingId i sin begäran. Verksamhetssystemet (tidbokningssystemet) returnerar endast vårdenheter som är valbara vid bokning utifrån just angiven kallelse. Invånaren väljer vårdenhet att boka tid på.
Väljer datum – E-tjänsten hämtar datum med lediga tider för den ursprungliga bokningen (kallelsen) och angivet datumintervall. Begäran adresseras till den vårdenhet som valts av invånaren i föregående steg. Invånaren väljer datum att boka tid på.
Väljer tidpunkt – E-tjänsten hämtar lediga tider för den ursprungliga bokningen (kallelsen) och angivet datumintervall. Invånaren väljer tidpunkt.
Bokar tid – När invånaren valt en ledig tid skickar e-tjänsten en begäran till tjänstekontraktet MakeBooking för att boka tiden i verksamhetssystemet.

##### Arbetsflöde

![img_002.png](images/img_002.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Personal inom hälso- och sjukvården i behov av att skicka öppen kallelse till en invånare. |
| Invånare | Person som bokar tid utifrån en öppen kallelse. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_024.png](images/img_024.png)

#### Obligatoriska kontrakt
En tjänsteproducent måste minst stödja kontraktet GetSubjectOfCareSchedule. Övriga av tjänstedomänens tjänstekontrakt är frivilliga att stödja för tjänsteproducent. Tjänsteproducent ska åtminstone kunna returnera invånares bokade tider på vårdenheten/mottagningen. Som en följd av detta måste tjänsteproducent samtidigt också uppdatera engagemangsindex med indexposter som motsvarar bokningarna. Se referens [R2] - Tjänstedomän Engagemangsindex för vidare detaljer kring tjänstekontraktet Update, likaså denna tjänstedomäns specifika regler som gäller utöver tjänstedomänen för engagemangsindex (kap i detta dokument: Anvisningar för uppdatering av Engagemangsindex).
En tjänstekonsument kan välja att stödja ett eller flera av flödena nedan. Då flera av tjänstekontrakten som innefattas i respektive flöde är frivilliga för tjänsteproducent behöver tjänstekonsument ta hänsyn till det faktum att en adresserad vårdenhet/mottagning (logisk adress) saknar stöd för tilltänkt tjänstekontrakt. Tjänstekonsumenten behöver därmed säkerställa detta genom att exempelvis kunna hantera felkod/returkod genererad av tjänsteplattform eller på förhand säkerställa att adresserad logisk adress finns i tjänsteadresseringskatalogen (TAK). Detta kan exempelvis implementeras via tjänstekontraktet GetSupportedServiceContract (se ref [R3] - Tjänstedomän Tjänsteadressering) eller genom tjänstekonsumentens egna lokala konfiguration.
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde:
(följande flöden är definierade i domänen):
Flöde 1 – Boka tid
Flöde 2 – Se bokade tider vid en vårdenhet
Flöde 3 – Omboka tid
Flöde 4 – Avboka tid
Flöde 5 – Se nationell kalender
Flöde 6 – Tidsatt kallelse
Flöde 7 – Öppen kallelse

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde4 | Flöde 5 | Flöde 6 | Flöde 7 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| CancelBooking |  |  |  | X |  |  |  |
| GetAllCareTypes |  |  |  |  |  |  |  |
| GetAllHealthcareFacilities |  |  |  |  |  |  | X |
| GetAllPerformers |  |  |  |  |  |  |  |
| GetAllTimeTypes | X |  |  |  |  |  |  |
| GetAvailableDates | X |  | X |  |  |  | X |
| GetAvailableTimeslots | X |  | X |  |  |  | X |
| GetBookingDetails |  |  |  |  |  | X | X |
| GetSubjectOfCareSchedule |  | X | X | X | X |  |  |
| MakeBooking | X |  |  |  |  |  | X |
| UpdateBooking |  |  | X |  |  |  |  |

### Adressering
Regler kring adressering styrs av T-Boken och detta avsnitt avser endast att förtydliga skrivningen för dessa regler. Själva reglerna beskrivs i T-Boken kapitel 8.3 (Översikt tekniska anvisningar utgåva C)
Domänen tillämpar verksamhetsadressering där vårdenhetens HSA-id används för adressering och tolkningen av detta HSA-id måste vara skiftlägesokänsligt i såväl konsument som producent.

### Aggregering
Det finns utrymme för anrop via en aggregerande tjänst för tjänstekontraktet GetSubjectOfCareSchedule i denna domän. En aggregerande tjänst har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men de nås på olika logiska adresser. Om en verksamhets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet utan att passera en aggregerande tjänst. Om logisk adress är HSA-id för Inera eller en huvudman, kommer anropet istället att dirigeras till en aggregerande tjänst som i sin tur, efter att ha konsulterat Engagemangsindex, vidarebefordrar frågan till de källsystem som har information om invånaren.
För användning av en aggregerande tjänst behöver producenter uppdatera Engagemangsindex och den aggregerande tjänsten behöver vara utvecklad inom ramen för en anpassningsplattform.

| Begäran om att hämta invånares/patients bokade tider (GetSubjectOfCareSchedule) | Logisk adress |
| :--- | :--- |
| Nationell sammanfattning av invånares bokade tider | Ineras HSA-id: 5565594230 
Genom att adressera på detta sätt triggas aggregerad tjänst igång på den nationella tjänsteplattformen som i sin tur baserar sina vidare anrop på innehållet i engagemangsindex. |
| Regional sammanfattning av invånares bokade tider | Huvudmannens länskod eller annan identifierare som är TAKad på den nationella tjänsteplattformen. / Genom att adressera på detta sätt dirigeras anropet till annan (regional tjänsteplattform) som i sin tur triggar regional aggregerad tjänst. |
| Invånares bokade tider på en mottagning | E-tjänst adresserar specifik mottagning direkt. Den logiska adressen motsvarar mottagningens HSA-Id |
För tjänstespecifika regler kring aggregerande tjänster, se respektive tjänsteinteraktion.

### Anvisningar för uppdatering av Engagemangsindex
Anslutna tjänsteproducenter som erbjuder visning, nybokning, ombokning eller avbokning genom domänens tjänstekontrakt ska uppdatera Engagemangsindex för att informera tjänstekonsumenter om bokningar och kallelser som finns i tidboken.
Engagemangsindex är en egen tjänstedomän, separat från tidbokningsdomänen, som definierar kontrakt och regler för uppdatering av indexet. För mer information, se tjänstedomänen itintegration:engagementindex på http://www.rivta.se.
Varje tjänstedomän har ansvar att definiera anvisningar och regler för uppdatering och hantering av information inom Engagemangsindex. Detta avsnitt innehåller tjänstedomänen crm:schedulings anvisningar och regler.

#### Domänspecifika attribut för tjänstedomänen Tidbokning
Följande regler gäller för innehållet i begäran till tjänstekontraktet Update i Engagemangsindex för uppdateringar som rör denna tjänstedomän (crm:scheduling). Observera att nedanstående beskrivning endast avser de attribut där tjänstedomänen crm:scheduling styr reglerna. För en komplett förteckning av attribut och tjänstekontraktsbeskrivning hänvisas till beskrivningen för tjänstedomänen ”itintegration:engagementindex”.

| Attribut | Format | Mult | Domänspecifik semantik eller värde | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- |
| serviceDomain | Text | 1..1 | Värdet ska vara ”riv:crm:scheduling” | Del av instansens unikhet. |
| categorization | Text bestående av bokstäver i ASCII. | 1..1 | Värdet ska vara ”NA”. / - Ändring fr.o.m. version 1.1.2. | Del av instansens unikhet. |
| logicalAddress | Text, enligt hsaid standard | 1..1 | Mottagningens/vård-enhetens HSA-id. Denna logiska adressen ska vara den logiska adress som ska användas av konsumenter som ska adressera mottagningens tidbok genom tjänstekontrakten i denna domän. | Del av instansens unikhet. |
| businessObjectInstanceIdentifier | Text | 1..1 | BookingId för bokningen som denna engagemangsindexpost pekar på eller kallelse. | Del av instansens unikhet. |
| mostRecentContent | DT | 1..1 | För bokningar och tidsatta kallelser: Starttidpunkt för den bokade tiden. / För ej tidsatta (öppna) kallelser: Verksamhetens datum för kallelsen. |  |

#### Vid ändringar i tidbokningssystemet ska tjänsteproducenten uppdatera Engagemangsindex
Engagemangsindex ska uppdateras när en bokning eller kallelse skapas, ändras, blir inaktuell, eller av annan anledning tas bort i tidbokningssystemet. Beroende på̊ förutsättningar och implementation hos producenten så kan en ombokning innebära att befintlig post i Engagemangsindex tas bort och att en ny skapas.
Uppdatering av Engagemangsindex ska göras oavsett om bokningen eller kallelsen i tidbokningssystemet skapats/ändrats av invånaren via tjänstekontrakt eller av mottagningens personal med hjälp av verksamhetens bokningsfunktion (exempelvis via verksamhetssystemets gränssnitt).

#### Endast dessa bokningar och kallelser ska finnas i Engagemangsindex
Endast bokningar och kallelser som uppfyller samtliga av följande kriterier ska finnas i Engagemangsindex:
Bokningen eller kallelsen ligger framåt i tiden (ska äga rum).
Bokningen eller kallelsen är lämplig för e-tjänster att presentera för invånaren. Ett känt exempel på en typ av bokning med koppling till en specifik invånare, men som inte bör presenteras för denne, är en bokning där vårdpersonal avsatt tid för administrativt arbete inom invånarens behandling.
Detaljer om bokningen eller kallelsen kan hämtas genom tjänstekontrakten för Tidbokning. Tjänstekonsumenter ska kunna skicka en begäran till tjänstekontraktet GetBookingDetails för att hämta detaljer om en bokning eller kallelse som skickats till Engagemangsindex. Det leder till att en tidboksproducent behöver logik för att kunna selektera för vilka mottagningar som förändringar ska notifieras till Engagemangsindex.
Historiken ska rensas från Engagemangsindex av tjänsteproducenten. Tjänsteproducenten ska rensa information som inte längre är relevant, exempelvis när en bokning är passerad eller när en kallelse inte längre är giltig. Regelverket för när informationen inte är relevant kan skilja sig mellan olika verksamheter och styrs från tjänsteproducenten.

#### En bokad tid eller kallelse i tidbokningssystemet ska motsvaras av en post i Engagemangsindex
Varje enskild bokning eller kallelse i källsystemet som uppfyller kriterierna i dessa anvisningar ska motsvaras av en post i nationella Engagemangsindex.

#### Då anses en bokning eller kallelse ha ändrats
En bokning eller kallelse anses ha ändrats när värdet för något av attributen som utgör dess engagemangspost har ändrats. Tabellen nedan redovisar för de attribut* som utgör en engagemangsindexpost.
Observera att det endast är vid ändring av attributet mostRecentContent, d.v.s. vid ombokning, som en befintlig post kan uppdateras. Ändring av övriga attribut innebär att befintlig post i Engagemangsindex måste tas bort och ersättas med en ny eftersom dessa attribut utgör instansens unikhet (engagemangsindexpostens sammansatta nyckel).
* Attributen creationTime, updateTime och owner tas inte upp i tabellen eftersom värden för dessa attribut sätts av Engagemangsindex.

| Attribut | Beskrivning | Beslutsregler och kommentar | Hantering |
| :--- | :--- | :--- | :--- |
| registeredResidentIdentification | Invånarens personnummer. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| serviceDomain | Värdet ska vara ”riv:crm:scheduling”. | Del av instansens unikhet. | Detta värde kan inte ändras. |
| categorization | Värdet ska vara "NA”. / - Ändring fr.o.m. version 1.1.2. | Del av instansens unikhet. | Detta värde kan inte ändras. |
| logicalAddress | Mottagningens/vårdenhetens HSA-id. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| businessObjectInstanceIdentifier | BookingId för bokningen eller kallelsen. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| clinicalProcessInterestId | Värdet ska vara "NA”. | Del av instansens unikhet. | Detta värde kan inte ändras. |
| mostRecentContent | Bokningens starttidpunkt. För ej tidsatta kallelser ska verksamhetens datum för kallelsen uppges. | Ej del av instansens unikhet. | En ändring av detta värde innebär att befintlig post måste uppdateras. |
| sourceSystem | Källsystemet som genererade engagemangsposten. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| dataController | Ett värde som kan användas för att härleda (kan kräva manuella insatser) vem som är personuppgiftsansvarig för posten. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |

#### Då anses en bokning eller kallelse vara inaktuell
En bokning eller kallelse anses vara inaktuell när den avbokats, dess starttidpunkt passerats (besöket påbörjats) eller när kallelsens giltighetstid löpt ut. När en bokning eller kallelse blivit inaktuell ska dess post i nationella Engagemangsindex tas bort av tjänsteproducenten.

#### Uppdatera befintlig post vs. ta bort befintlig post och skapa en ny
En befintlig post i Engagemangsindex ska tas bort och ersättas med en ny vid ändring av något av värdena för attributen som ingår i begäran till tjänsten Update och utgör del postens unikhet. Följande attribut ingår i begäran till tjänsten Update och utgör del av en engagemangsindexposts unikhet:
registeredResidentIdentification
serviceDomain
categorization
logicalAddress
businessObjectInstanceIdentifier
clinicalProcessInterestId
sourceSystem
dataController
Observera att attributet mostRecentContent är det enda attribut som ingår i begäran till tjänsten Update men som inte utgör del av postens unikhet. Det är följaktligen endast vid en ändring av detta värde (ombokning) som en befintlig post kan uppdateras. Vid alla andra typer av ändringar måste den befintliga posten tas bort och ersättas med en ny.

#### Då ska en befintlig engagemangsindexpost uppdateras
Vid ändring av värdet för attributet mostRecentContent.
Exempel: En bokad tid får en ny starttidpunkt (ombokas) men behåller sitt BookingId. Denna ändring i tidbokningssystemet innebär en ändring av attributet mostRecentContent i engagemangsindexposten. Eftersom inget av de attribut som utgör engagemangsindexpostens unikhet har ändrats ska befintlig post uppdateras (snarare än att tas bort och ersättas med en ny).

#### Då ska en befintlig engagemangsindexpost tas bort och ersättas med en ny
Vid ändring av värdet för attributet businessObjectInstanceIdentifier. Aktuellt när en bokad tid får ett nytt BookingId.
Exempel: Tidbokningssystemet skapar ett nytt BookingId för en bokad tid som fått en ny starttidpunkt (ombokats). Eftersom värdet för attributet businessObjectInstanceIdentifier, som är en del av postens unikhet, har ändrats.
Vid ändring av värdet för attributet logicalAddress.
Exempel: En bokad tid bokas om till en annan vårdenhet/mottagning. Engagemangsindexposten måste tas bort och ersättas med en ny eftersom värdet för attributet logicalAddress, som är en del av postens unikhet, har ändrats.
Exempel: Vårdenheten/mottagningen byter HSA-id. Engagemangsindexposten måste tas bort och ersättas med en ny eftersom värdet för attributet logicalAddress, som är en del av postens unikhet, har ändrats.
Vid ändring av värdet för attributet sourceSystem. Aktuellt om den bokade tiden eller kallelsen flyttas till ett nytt källsystem, eller om befintligt källsystem byter HSA-id.
Vid ändring av värdet för attributet registeredResidentIdentification. Aktuellt om invånaren får ett nytt personnummer.
Vid ändring av värdet för attributet dataController. Aktuellt om personuppgiftsansvarig för posten ändras.

#### Så tas en befintlig post bort ur Engagemangsindex
Exempel på en befintlig post i Engagemangsindex:
<engagement>
<registeredResidentIdentification>191212121212</registeredResidentIdentification>
<serviceDomain>riv:crm:scheduling</serviceDomain>
<categorization>NA</categorization>
<logicalAddress>SE2321000016-A65H</logicalAddress>
<businessObjectInstanceIdentifier>861245</businessObjectInstanceIdentifier>
<clinicalProcessInterestId>NA</clinicalProcessInterestId>
<mostRecentContent>20160613140000</mostRecentContent>
<sourceSystem>SE2321000016-84GX</sourceSystem>
<dataController>SE232100-0016</dataController>
</engagement>
Attributen creationTime, updateTime och owner tas inte upp för posten i exemplet ovan eftersom värden för dessa attribut sätts av Engagemangsindex.
Begäran till tjänsten Update för att ta bort posten ovan
En post i Engagemangsindex tas bort via begäran till tjänsten Update med den befintliga postens sammansatta nyckel och attributet deleteFlag satt till "true".
<urn1:Update>
<urn1:engagementTransaction>
<urn2:deleteFlag>true</urn2:deleteFlag>
<urn2:engagement>
<urn2:registeredResidentIdentification>191212121212</urn2:registeredResidentIdentification>
<urn2:serviceDomain>riv:crm:scheduling</urn2:serviceDomain>
<urn2:categorization>NA</urn2:categorization>
<urn2:logicalAddress>SE2321000016-A65H</urn2:logicalAddress>
<urn2:businessObjectInstanceIdentifier>861245</urn2:businessObjectInstanceIdentifier>
<urn2:clinicalProcessInterestId>NA</urn2:clinicalProcessInterestId>
<urn2:sourceSystem>SE2321000016-84GX</urn2:sourceSystem>
<urn2:dataController>SE232100-0016</urn2:dataController>
</urn2:engagement>
</urn1:engagementTransaction>
</urn1:Update>
Observera att attributet/elementet mostRecentContent inte ska uppges i begäran vid borttag av poster. D.v.s. när deleteFlag är satt till "true".

#### Grundladdning
Engagemangsindex behöver inte grundladdas med engagemang inom tjänstedomänen crm:scheduling.

#### Ändringar från tidigare version av anvisningarna
Attributet categorization
Tidigare skulle engagemangsindexposter för bokningar och kallelser kategoriseras med "Booking" respektive "Invitation". Fr.o.m. version 1.1.2 av tjänstedomänen crm:scheduling ska samtliga engagemangsindexposter där serviceDomain är "riv:crm:scheduling" kategoriseras med "NA" oavsett om posten avser en bokning eller kallelse.

### Aktör som utför bokning
Alla tjänsteinteraktioner i domänen har en obligatorisk ”header” för att från tjänstekonsumenten ange aktör (Actor). En aktör kan vara invånaren (subject_of_care) eller en medarbetare i professionen (subject_of_care_agent) som handräcker invånaren med genomförandet av bokningen. Det kan t.ex. vara en sköterska på 1177 Sjukvårdsrådgivningen som på invånarens begäran genomför en bokning via 1177 Vårdguidens e-tjänster eller via Rådgivningsstödet.
Följande xml-struktur anger att aktören är en invånare/invånare. ActorId ska då vara personnummer/samordningsnummer:
<ah:Actor xmlns:ah=”urn:riv:interoperability:headers:1” >
<ah:actorId>121212121212</ah:actorId>
<ah:actorType>subject_of_care</ah:actorType>
</ah:Actor>
Följande xml-struktur anger att aktören är en medarbetare i professionen.  actorId ska då vara medarbetarens HSA-id:
<ah:Actor xmlns:ah=”urn:riv:interoperability:headers:1” >
<ah:actorId>Ett hsa-id</ah:actorId>
<ah:actorType>subject_of_care_agent</ah:actorType>
</ah:Actor>
Om aktören är medarbetare i professionen (subject_of_care_agent) får INGA frågetjänster för lediga tider eller resurser med subject_of_care i begäran basera urvalslogik på invånaren. Syftet med denna regel är att undvika att en tjänstekonsument enbart genom användningen av dessa tjänstekontrakt faller under sammanhållen journalföring. Denna regel gäller följande tjänster:
GetAllCareTypes
GetAllHealthcareFacilities
GetAllPerformers
GetAllTimetypes
GetAvailableDates
GetAvailableTimeslots
För aktören medarbetare i professionen får endast Flöde 1 – Boka tid tillgängliggöras i tjänstekonsument. Detta för att inte tjänstekonsument ska hamna inom lagrum direktåtkomst/sammanhållen journalföring.

### Kallelsehantering
En kallelse ska användas för att uppmärksamma en invånare att det finns en planerad vårdåtgärd för denne. Kallelser kan vara antingen i förhand tidsbestämda eller s.k. ”öppna kallelser” där invånaren själv förväntas boka en tid för när åtgärden ska utföras. För att hämta information om kallelser används interaktionen GetBookingDetails.
För att särskilja mellan en bokning och en kallelse finns två typer: ”Booking” för bokning och ”Invitation” för kallelse. En kallelse ska innehålla en kallelsetext som returvärde i fältet ”purpose” för interaktionen GetBookingDetails, mer om purpose finns i kapitel 13 GetBookingDetails. En bokning innehåller normalt inte en kallelsetext i ”purpose” och är normalt bokad av invånaren själv.
Man särskiljer en bokning från en kallelse genom värdet på fältet ”isInvitation” i svaret från tjänsten GetBookingDetails. Om värdet saknas eller är ”false” är det en bokning, annars en kallelse.
En kallelse övergår i en bokning så snart den ombokats av invånaren.
Det finns två typer av kallelser: öppna kallelser och tidsatta kallelser. Öppna kallelser saknar – till skillnad från tidsatta kallelser - startTimeExclusive och endTimeInclusive i svaret från GetBookingDetails.
Öppna kallelser behöver bokas (MakeBooking) för att få en tid (och bli en bokning), medan tidsatta kallelser ombokas (UpdateBooking) om invånaren vill ändra tiden.
Öppna kallelser kommer inte att returneras i interaktionen GetSubjectOfCareSchedule, då denna kräver att start- och sluttid för bokningen.

### Tidsluckor (TimeSlotType) och tomma element
Följande tjänster återanvänder schema-typen TimeslotType i begäran eller svar:
GetBookingDetails (svar)
GetSubjectOfCareSchedule (svar)
MakeBooking (begäran)
UpdateBooking (begäran)
GetAvailableTimeslots (svar)
För att schemat ska vara återanvändbart mellan dessa tjänstekontrakt är de flesta elementen i TimeslotType frivilliga (minOccurs=”0”). I praktiken är elementen inte frivilliga för alla tjänsterna som återanvänder TimeslotType. Därför definieras semantiska fältregler textuellt i detta dokument som komplement till XML-schemat. Tjänstekonsumenter och producenter måste följa dessa fält-regler. Det är alltså inte säkert att ett element i TimeslotType är frivilligt i en begäran eller i ett svar för en tjänst även om det står så i XML-schemat.
Följande generella regler gäller för frivilliga fält utan värde och för fält som inte alls får användas för en specifik tjänst:
När ett fält i TimeslotType är utelämnat i definitionen av en begäran eller ett svar för en tjänst ska XML-elementet vara utelämnat i meddelandet
När ett fält i TimeslotType är beskrivet som ”O” (Optional/Frivilligt) i definitionen av en begäran eller ett svar och konsumenten eller producenten väljer att inte skicka ett värde, ska fältet vara utelämnat (d.v.s. varken <tag></tag> eller </tag> är då tillåtet).

### ResultCode
Resultcode returneras i vissa interaktioner där inte svaret på interaktionen har något direkt returvärde.
OK
Transaktionen har utförts enligt uppdraget i frågemeddelandet.
INFO
Transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren. Exempel på detta kan vara ”kom fastande”.
ERROR
Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara ”tiden har blivit upptagen av annan invånare”.

### DocBook
I vissa element i SOAP-meddelandet har producenten möjlighet att ange texten i det standardiserade layout-formatet ”DocBook” version 5.0 (Oasis standard). Konsumenten måste då transformera texten till ett presentationsformat enligt konsumentens implementationslösning, så som exempelvis XHTML eller PDF. Det kan t.ex. ske med hjälp av de XSLT-baserade transformeringsskript som tillhandahålls på DocBooks hemsida: http://docbook.org/tdg5/en/html/.
Texten i elementet ska vara i s.k. ”entity encoding” så att DocBook-elementen inte uppfattas som del av SOAP-meddelandets XML-struktur när meddelandet tas emot av konsumenten. Konsumenten behöver sedan återskapa ursprunglig XML från innehållet i elementet. Det finns många exempel på open-source-bibliotek som kan användas av producenten för att göra ”entity encoding” och av konsumenten för att återställa till XML. Ett exempel är Apache Commons Lang StringEscapeUtils: http://commons.apache.org/proper/commons-lang/javadocs/api-2.1/org/apache/commons/lang/StringEscapeUtils.html (se metoderna escapeXml respektive unescapeXml).
Vilka Docbook-element som är tillåtna i respektive element i SOAP-meddelandet framgår av reglerna för det aktuella tjänstekontraktet.
Exempel på DocBook:

| <?xml version="1.0"?> / <article> / <info> / <title>...</title> / </info> / <para> ... </para> / <para> ... </para> / <section> / <title>...</title> / <para> ... </para> / <para> / <ulink url="http://example.com"> ... </ulink> / </para> / </section> / <section> / <title>...</title> / <itemizedlist> / <listitem> ... </listitem> / <listitem> ... </listitem> / <listitem> ... </listitem> / </itemizedlist> / </section> / <bibliography> ... </bibliography> / </article> |
| :--- |
För ovanstående DocBook-exempel ska alltså elementet i SOAP-meddelandet innehålla en version som är ”entity encoded” enligt följande:

| &lt;?xml version=&quot;1.0&quot;?&gt; / &lt;article&gt; / &lt;info&gt; / &lt;title&gt;...&lt;/title&gt; / &lt;/info&gt; / &lt;para&gt; ... &lt;/para&gt; / &lt;para&gt; ... &lt;/para&gt; / &lt;section&gt; / &lt;title&gt;...&lt;/title&gt; / &lt;para&gt; ... &lt;/para&gt; / &lt;para&gt; / &lt;ulink url=&quot;http://example.com&quot;&gt; ... &lt;/ulink&gt; / &lt;/para&gt; / &lt;/section&gt; / &lt;section&gt; / &lt;title&gt;...&lt;/title&gt; / &lt;itemizedlist&gt; / &lt;listitem&gt; ... &lt;/listitem&gt; / &lt;listitem&gt; ... &lt;/listitem&gt; / &lt;listitem&gt; ... &lt;/listitem&gt; / &lt;/itemizedlist&gt; / &lt;/section&gt; / &lt;bibliography&gt; ... &lt;/bibliography&gt; / &lt;/article&gt; |
| :--- |
Konsumenten kan t.ex. använda något av tillgängliga verktyg för att generera RTF, HTML eller PDF från innehållet i elementet (efter att det återställts till ursprunglig XML-syntax).

## Tjänstedomänens krav och regler

### Informationssäkerhet
Tidbokningsinformation klassas som patientuppgifter. Nyttjare (organisation som ansvarar för tjänstekonsumenter) av tjänstekontrakten blir personuppgiftsbiträde. I personuppgiftsbiträdesrollen ingår att säkerställa att invånaren är starkt autentiserad i enlighet med Socialstyrelsens föreskrifter (SOSFS 2008:14).
Genom att dessa krav hanteras av tjänstekonsumenten i kombination med att säker kommunikation mellan tjänstekonsument och tjänsteproducent sker enligt RIV Tekniska Anvisningar, etableras tekniska förutsättningar för tillit mellan respektive informationsägare (vårdenhet) och de förvaltningar/e-tjänster som erbjuder invånaren direktåtkomst till sina bokningsuppgifter via tjänstekontrakten som beskrivs i detta dokument.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 3 sekunder för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Online mot underliggande tidbok. Uppdateringar genom en tjänst ska omedelbart speglas i svar från frågor genom tjänsterna. T.ex. ska en avbokad tidpunkt bli öppen för bokning omedelbart efter avbokningsanropet. |  |

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren. Användaren kommer enbart att se ”tekniskt fel – inte detaljinformation. Den riktar sig till systemförvaltaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText. Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för invånaren.

#### Krav på en tjänsteproducent

##### Logiska fel

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
|  |  |  |

#### Krav på en tjänstekonsument

## Tjänstedomänens meddelandemodeller
Tjänstekontrakten i denna domän är process-stödjande, för att stödja en invånares ny-, om- och avbokning av ett vårdbesök. Tjänstekontrakten är således tänkta att kunna kombineras beroende på flöde. Respektive tjänstekontrakts meddelandemodell beskrivs var för sig längre ner i dokumentet.

### V-MIM
tjänstekontraktens struktur, datatyp, kardinalitet och de benämningar som används. För en mer verksamhetsnära modell, se domänens  [R3].

### Formatregler

#### Format för datum
Några av tjänsterna inom tidbokning handlar om att söka efter information baserat på datum.
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tidpunkter
Flera av tjänsterna inom tidbokning handlar om att utbyta information om tidpunkter. Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för HSA-id
HSA-id är ett objekts unika identifierare i HSA katalogen. Inom tidbokning används HSA-id både för att identifiera vårdenheter och individer. HSA-id ska alltid anges komplett d.v.s. med id för organisation och id för objekt.
Kortfattad beskrivning av HSA-id strukturen:
SE<identifierare för utfärdande organisation>-<identifierare för objektet>
Exempel: SE2321000016-1hz5
Anslutande parter ska kunna hantera HSA-id skiftlägesokänsligt i såväl konsument som producent.
Exempel:
SE2321000016-1hz5 och SE2321000016-1HZ5 ska tolkas som samma HSA-id.

## Tjänstekontrakt

### CancelBooking
Tjänst för att avboka en bokning vid en vårdenhet. För att vårdgivaren ska kunna spåra avbokningar gjorda av invånaren genom direkttjänst, bör vårdsystemet kunna betjäna vårdgivaren med möjlighet att följa upp invånarens bokningsaktiviteter.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder avbokning och således kan svara ”sant” i fältet ”cancelBookingAllowed” för någon av följande tjänster:
GetSubjectOfCareSchedule
GetAvailableTimeslots
GetBookingDetails
I övriga fall är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har inte uppdaterats sedan 1.0.

#### Meddelandeinformationsmodell (MIM)

![img_021.jpg](images/img_021.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet | 1..1 |
| message | string | Invånarens beskrivning av orsak för avbokning. Fältet kan bara skickas om värdet på message_allowed är ”true” i svaret från GetBookingDetails. | 0..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Om bokningen som avbokas är en tidsatt kallelse (isInvitation = ”true” och start- och endDateInclusive är angivna) behöver tjänsteproducenten agera utifrån gällande verksamhetsregler för avbokad kallad tid. Det skulle t.ex. kunna vara att generera en ny kallelse.

### GetAllCareTypes
Tjänst att för invånaren kunna visa en lista över vilka typer av vård som kan bokas hos en viss vårdenhet/mottagning (ex: Provtagning, Sjukgymnastik, Vaccinering, Synundersökning). Efter val kan konsumerande system begränsa visade tider till den typ av vård som invånaren är ute efter.
Betydelse och kodverk är inte nationellt standardiserat, utan styrs av respektive vårdenhet. Tjänstekonsumenten får därför inte binda logik till specifika värden. De värden (koder och beskrivningar) som returneras i svaret kan visas för användaren (t.ex. i vallistor), samt användas som värde i begäran till andra tjänster i denna domän som har fältet. All annan användning av CareType saknar stöd i detta regelverk.
Tjänsten returnerar en lista över vårdtyper som erbjuds angiven invånare (subject_of_care) av angiven vårdenhet och som kan bokas online för angivna tidstyper och utförare. Om utförare (performer) eller tidstyper utelämnats i begäran, motsvaras det av att alla tidstyper och alla utförare angivits i begäran.

#### Frivillighet
Kontraktet är frivilligt att implementera för producent.

#### Version
Tjänsten finns sedan 1.1. Tjänsten har inte uppdaterats sedan 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_014.jpg](images/img_014.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| timeTypeIDs | TimeTypeIDType (string) | Lista med tidstyper. | 0..* |
| performer | HsaIdType (string) | HSA-id för medarbetaren. | 0..* |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (careTypes) | CareTypeType | Lista med vårdtyper. | 0..* |
| careTypeName | string | Beskrivande text för vårdtypen (att visas för användare). | 1..1 |
| careTypeId | CareTypeIDType (string) | Kod för vårdtypen (intern för vårdenheten). | 1..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
De careType-koder som tjänsteproducenten returnerar måste vara giltiga att ange som CareType i övriga tjänstekontrakt (där fältet förekommer) i denna domän i interaktion med samma vårdenhet.
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### GetAllHealthcareFacilities
Tjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare (vårdenhet i begäran representerar då den kallande organisationen). Denna tjänst följer inte riktigt samma mönster som övriga tjänster, genom att vårdenheten som får begäran i någon mening agerar ställföreträdare för en sortiments- och utbudskatalog och därigenom svarar för andra vårdenheters räkning. Det är dock underförstått att de vårdenheter som listas i svaret utför samma typ av behandling som den vårdenhet som fick begäran och följer samma kodverk för CareType, TimeType etc. Det är den svarande vårdenhetens ansvar att de vårdenheter som listas i svaret är bokningsbara, rent avtalsmässigt och att de har stöd för online-bokning enligt dessa tjänstekontrakt.
Tjänsten returnerar en lista av vårdenheter som kan bokas online av angiven invånare. Om bookingId är med i begäran, returneras endast vårdenheter som är valbara vid ombokning av just angiven bokning. Om namn på vårdenhet returneras, indikeras att detta värde bör visas för användaren, snarare än värdet i HSA-katalogen.
Förtydligande:
I listan med vårdenheter i svaret ska även den vårdenhet som svarar på frågan finnas med om denna erbjuder tider för aktuell behandling. D.v.s. det ska inte vara underförstått för konsumenten att den svarande vårdenheten alltid kan utföra det som efterfrågas. Exempel på situationer när den svarande vårdenheten inte ska finnas med i listan är om denna är en så kallad virtuell mottagning/vårdenhet som används som avsändare vid kallelser för screening men som inte utför åtgärden.
Tjänsten är obligatorisk för vårdenheter som tillåter ombokning på annan vårdenhet (t.ex. cytologi-prov där kvinnan kan välja olika vårdenheter baserat på en bokning eller kallelse).

#### Frivillighet
Kontraktet är frivilligt att implementera för producent.

#### Version
Tjänsten finns sedan 1.1. Tjänsten har inte uppdaterats sedan 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_008.jpg](images/img_008.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. / Kan användas för att filtrera vad en tjänsteproducent ska returnera för en viss invånare (även vid nybokning). | 1..1 |
| bookingId | BookingIdType (string) | Internt bokningsid. Obligatoriskt när förfrågan gäller ombokning. Detta bokningsid behövs för tjänsteproducenten ska kunna filtrera på egenskaper för en grundbokning | 0..1 |
| Svar (healthcareFacilityInfos) | HealthcareFacilityInfoType | Lista med tillgängliga mottagningar/vårdenheter. | 0..* |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| healthcare_facility_name | string | Vårdenhetens föredragna namn, vid visning för användare (i förhållande till HSA-katalogens innehåll). | 0..1 |

### GetAllPerformers
Tjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet för aktuell invånare. Tjänsteproducenten ansvarar för att tillämpa verksamhetens regelverk för att filtrera svaret (t.ex. en vårdenhet som bara tillåter invånare att boka tid enligt listad doktor).
Tjänsten returnerar en lista med information om utförare (en medarbetare). För varje utförare ska HSA-id vara med.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder val av vårdpersonal i samband med nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_005.jpg](images/img_005.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| timeTypeIDs | TimeTypeIDType (string) | Tidstypid för att begränsa svarslistan. | 0..* |
| careTypeIDs | CareTypeIDType (string) | Vårdtypsid för att begränsa svarslistan. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..* |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx för begränsa/utöka svarslistan. | 1..1 |
| Svar (performerInfos) | PerformerInfoType | Lista med medarbetare. | 0..* |
| perfomer | HsaIdType (string) | HSA-id för bokningsbar medarbetare. / Felstavning på namnet (”perfomer” istället för ”performer”) är enligt schema. Se issue id 19. | 1..1 |
| firstName | string | Medarbetarens förnamn. | 1..1 |
| lastName | string | Medarbetarens efternamn. | 1..1 |
| title | string | Medarbetarens titel. | 0..1 |

### GetAllTimeTypes
Tjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet. Tidstyperna kan filtreras för valda vårdtyper, utförare och per invånare.
Tjänsten returnerar en lista över tidstyper som erbjuds angiven invånare av angiven vårdenhet och som kan bokas online för angivna vårdtyper och utförare. Om utförare eller vårdtyper utelämnats ur begäran, motsvaras det av att alla vårdtyper eller alla utförare angivits.

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har förändrats i version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_025.jpg](images/img_025.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| careTypeIDs | CareTypeIDType (string) | Vårdtypsidentitet för att begränsa sökningen. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..* |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. / Kan användas för att filtrera vad tjänsteproducenten ska returnera för en viss invånare. (T.ex. patient som pga. av sjukdom måste erbjudas enstaka speciella tidstyper, som inte erbjuds alla patienter). | 1..1 |
| Svar (ListOfTimeTypes) | TimeTypeType | Lista med tillgängliga tidstyper. | 0..* |
| timeTypeName | string | Namnet på tidstypen. | 1..1 |
| timeTypeId | TimeTypeIDType (string) | Identifierare för tidstypen. | 1..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### GetAvailableDates
Tjänsten hämtar datum med lediga tider för angivet datumintervall. Vid anrop för ombokning styr tidstyp och resurs från ursprungsbokningen vilka datum som returneras. Om det är nybokning hämtas tillgängliga datum utifrån tidstyp. Observera att passerade tider inte ska returneras av tjänsten.
Tjänsten returnerar lediga tider som är bokningsbara online för angiven invånare (historiska tider får inte returneras).

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0.

#### Meddelandeinformationsmodell (MIM)

![img_019.jpg](images/img_019.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | Hsa-Id för mottagning/vårdenhet. | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet. Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven bokning. | 0..1 |
| startDateInclusive | DT (string) | Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| endDateInclusive | DT (string) | Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| performer | HsaIdType (string) | HSA-id för HoS-personal. | 0..* |
| timeTypeName | string | Namn på tidstyp. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp | 0..1 |
| careTypeName | string | Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (performerAvailabilityByDate) | PerformerAvailabilityByDateType | Lista med tillgängliga tider. | 0..* |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för HoS-personal. | 0..1 |
| date | DT (string) | Ett datum där lediga tider finns, på formatet ÅÅÅÅMMDD. | 1..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| resourceID | ResourceIDType (string) | Identifierare för resurs. | 0..1 |
| timeTypeName | string | Namn på tidstyp. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp. | 0..1 |
| careTypeName | string | Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |

### GetAvailableTimeslots
Tjänsten hämtar lediga tider för angivet datumintervall. Vid anrop för ombokning styr tidstyp och resurs från ursprungsbokningen vilka datum som returneras. Om det är nybokning hämtas tillgängliga datum utifrån tidstyp. Observera att passerade tider inte ska returneras av tjänsten (tider som är historiskt bokbara).

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har inte förändrats sedan version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_015.jpg](images/img_015.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | Hsa-ID för mottagning/vårdenhet. | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet. Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven bokning. | 0..1 |
| startDateInclusive | DT (string) | Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| endDateInclusive | DT (string) | Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| performer | HsaIdType (string) | HSA-id för HoS-personal. | 0..* |
| timeTypeName | string | Namn på tidstyp. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp. | 0..1 |
| careTypeName | string | Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identifierare för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (timeslotDetail) | TimeslotType | Lista med tillgängliga tider. | 0..* |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 0..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identifierare för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identifierare för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. | 0..1 |

### GetBookingDetails
Tjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet. Bokningen kan också avse en kallelse, vilket indikeras av flaggan isInvitation i svaret. Svaret kan vara en öppen kallelse – d.v.s. isInvitation är ”true” och start- och endTimeInclusive saknas.

#### Frivillighet

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har förändrats i version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_009.jpg](images/img_009.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet. | 1..1 |
| Svar (timeslotDetail) | TimeslotType | Information om den aktuella tiden. | 1..1 |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose* | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. | 1..1 |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. | 1..1 |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. | 1..1 |
| isInvitation | boolean | Sätts av producenten. Anger om bokningen har skapats på vårdgivarens (isInvitation = ”true”) eller invånarens (isInvitation = ”false”, eller fältet saknas) initiativ. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
* Elementet purpose är obligatoriskt om bokningen är en kallelse (isInvitation = ”true”). Producenten har möjlighet att ange kallelsetexten i det standardiserade layout-formatet ”DocBook” version 5.0 (Oasis standard). Se avsnitt DocBook under Generella regler för instruktioner och regler för användning.
Användningen av DocBook för i elementet purpose är begränsad till följande element:
Article
Info
Title
Para
Section
Ulink
Bibliography

### GetSubjectOfCareSchedule
Tjänsten hämtar alla bokade tider för en invånare. Information om tiden är möjlig att av/omboka medföljer.
Vid direktadressering med verksamhets HSA-id returneras samtliga tider för den aktuella verksamheten.
Om tjänsten anropas som aggregerande tjänst så returneras invånarens bokade tider för samtliga enheter som har uppdaterat Engagemangsindex.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för producenter.

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har förändrats i version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_003.jpg](images/img_003.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. / Observera att vid adressering av aggregerande tjänst kommer detta fält att ignoreras av den aggregerande tjänsten. Fältet måste ändå finnas med av kompatibilitetsskäl. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (timeslotDetail*) | TimeslotType | Lista med användarens tider för angiven vårdenhet. | 0..* |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. | 0..1 |
| isInvitation | boolean | Sätts av producenten. Anger om bokningen har skapats på vårdgivarens (isInvitation = ”true”) eller invånarens (isInvitation = ”false”, eller fältet saknas) initiativ. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
* Öppna kallelser ingår inte i svaret.

#### Annan information om kontraktet

##### Användning med aggregerande tjänst
Tjänstekontraktet kan användas inom en aggregerande tjänst genom att i LogicalAddress i frågemeddelandets header, uppge HSA-id för aktuell plattform där den aggregerande tjänsten finns (normalt Nationella tjänsteplattformen hos Inera). I dessa fall måste även elementet healthcare_facility i frågemeddelandets body vara plattformens HSA-id.

### MakeBooking
Tjänst för nybokning vid en vårdenhet. Tjänsten returnerar en status för genomförd nybokning.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för vårdenheter som erbjuder nybokning.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har inte förändrats sedan version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_016.jpg](images/img_016.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility_med | HsaIdType (string) |  | 1..1 |
| requestedTimeslot | TimeslotType | Information för aktuell bokning. | 1..1 |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care_info | SubjectOfCareType |  | 1..1 |
| phone | string | Telefonnummer. | 0..1 |
| email | string | Email-adress. | 0..1 |
| address | string | Adress. | 0..1 |
| coaddress | string | Co-adress. | 0..1 |
| firstName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| middleName | string | Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 0..1 |
| lastName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| notification | string | Notifiering till producent | 0..1 |
| Svar |  |  |  |
| bookingId | BookingIdType (string) | Id för skapad bokning. Ska anges vid genomförd bokning (resultCode OK eller INFO), annars inte (ERROR). | 0..1 |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Om bookingId angivits i begäran (nybokning mot öppen kallelse) ska producenten säkerställa att upprepad nybokning mot samma kallelse inte kan göras även om ledig tid anges.
Om bookingId anges (för öppen kallelse) får nybokning endast ske mot healthcare_facility som hämtats från GetAllHealthcareFacilities med bookingId för kallelsen som sökparameter.
Logiskt fel: resultCode, resultText.

### UpdateBooking
Tjänst för att uppdatera en bokning med nytt datum och tid, alltså en ombokning. För att vårdgivaren ska kunna spåra ombokningar gjorda av invånaren genom direkttjänst, bör vårdsystemet kunna betjäna vårdgivaren med möjlighet att följa upp invånarens bokningsaktiviteter.
Tjänsten returnerar en status för genomförd ombokning.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder ombokning och således kan svara ”sant” i fältet ”rebooking_allowed” för någon av följande tjänster:
GetSubjectOfCareSchedule
GetAvailableTimeslots
GetBookingDetail
I övriga fall är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har inte förändrats sedan version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_012.jpg](images/img_012.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| requestedTimeslot | TimeslotType |  | 1..1 |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care_info | SubjectOfCareType |  | 0..1 |
| phone | string | Telefonnummer. | 0..1 |
| email | string | Email-adress. | 0..1 |
| address | string | Adress. | 0..1 |
| coaddress | string | Co-adress. | 0..1 |
| firstName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| middleName | string | Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 0..1 |
| lastName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| notification | string | Avisering | 0..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Efter genomförd begäran ska en kallelse ha omvandlats till en bokning – d.v.s. ett bookingId som vid anrop till GetBookingDetail har isInvitation = ”true” ska vid anrop efter UpdateBooking ha isInvitation = ”false”.
Begäran får endast skickas om healthcare_facility är samma healthcare_facility som ursprunglig bokning eller är en healthcare_facility som hämtats från GetAllHealthcareFacilities med bookingId för ursprunglig bokning som sökparameter.
BookingId måste avse en tidssatt bokning (oavsett värde på IsInvitation). D.v.s. UpdateBooking får inte användas för öppna kallelser (IsInvitation = ”true” och start- och endTimeInclusive saknas). För öppna kallelser ska istället MakeBooking användas (även om bookingId finns för kallelsen).
Logiskt fel: resultCode, resultText. Exempel på detta kan vara ”tiden har blivit upptagen av annan invånare”.

## Definition av komplexa typer
För kardinalitet se beskrivning för respektive tjänsteinteraktion, då den skiljer sig mellan olika interaktioner.

### TimeslotType
TimeslotType återkommer i flera interaktioner och innehåller detaljer om en tid oavsett om denna är bokad eller ledig.

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. |
| reason | string | Kontaktorsak som invånare uppger vid bokning. |
| resourceName | string | Namn på resurs. |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. |
| resourceID | ResourceIDType (string) | Identitet för resurs. |
| timeTypeName | string | Tidstyp för det bokade besöket. |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. |
| isInvitation | boolean | Sätts av producenten / Anger om bokningen har skapats på vårdgivarens (isInvitation = ”true”) eller invånarens (isInvitation = ”false”, eller fältet saknas) initiativ. |

### SubjectOfCareType

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| phone | string | Telefonnummer. |
| email | string | Email-adress. |
| address | string | Adress. |
| coaddress | string | Co-adress. |
| firstName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). |
| middleName | string | Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). |
| lastName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). |

### TimeTypeType

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| timeTypeName | string | Beskrivande text för tidstypen (att visas för användare). |
| timeTypeId | TimeTypeIDType (string) | Identifierare för tidstypen. |

### CareTypeType

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| careTypeName | string | Beskrivande text för vårdtypen (att visas för användare). |
| careTypeId | CareTypeIDType (string) | Kod för vårdtypen (intern för vårdenheten). |

### PerformerInfoType

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| perfomer | HsaIdType (string) | HSA-id för bokningsbar medarbetare. / Felstavning på namnet (”perfomer” istället för ”performer”) är enligt schema. Se issue id 19. |
| firstName | string | Medarbetarens förnamn. |
| lastName | string | Medarbetarens efternamn. |
| title | string | Medarbetarens titel. |

### HealthcareFacilityInfoType

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. |
| healthcare_facility_name | string | Vårdenhetens föredragna namn, vid visning för användare (i förhållande till HSA-katalogens innehåll). |

### PerformerAvailabilityByDateType

| Namn | Typ | Beskrivning |
| :--- | :--- | :--- |
| healthcare_facility | HsaIdType (string) |  |
| performer | HsaIdType (string) |  |
| date | DT (string) |  |
| resourceName | string |  |
| resourceID | ResourceIDType (string) |  |
| timeTypeName | string |  |
| timeTypeID | TimeTypeIDType (string) |  |
| careTypeName | string |  |
| careTypeID | CareTypeIDType (string) |  |
