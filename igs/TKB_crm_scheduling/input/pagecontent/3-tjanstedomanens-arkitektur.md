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

