
|  | Tidbokning / Tjänstekontraktsbeskrivning / Version 2.0 RC2 / ARK_0015 / 2023-11-01 |
| :--- | :--- |
Innehåll
1	Inledning	8
1.1	Svenskt namn	8
2	Versionsinformation	9
2.1	Version 2.0	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Förändrade tjänstekontrakt	10
2.1.4	Utgångna tjänstekontrakt	10
2.2	Version tidigare	10
3	Tjänstedomänens arkitektur	10
3.1	Obligatoriska kontrakt	10
3.2	Flöden	11
3.2.1	Flöde 1a – Boka tid direkt på vårdcentral	11
3.2.2	Flöde 1b – Boka tid direkt på virtuell vårdcentral	15
3.2.3	Flöde 2 – Boka tid med ett kvalificerande försteg (triagering som görs av vårdcentralen)	20
3.2.4	Flöde 3 – Boka tid via en digital kallelse	23
3.2.5	Flöde 4 – Bekräfta en bokning, bokad av verksamheten	26
3.2.6	Flöde 5 – Se bokade tider på en vårdcentral	28
3.2.7	Flöde 6 – Se bokade tider – nationell kalender	30
3.2.8	Flöde 7 – Hitta lediga tider baserat på utvald vårdtjänst	32
3.2.9	Flöde 8 – Omboka tid	34
3.2.10	Flöde 9 – Avboka tid	37
3.3	Adressering	40
3.4	Aggregering och engagemangsindex	40
3.5	Anvisningar för uppdatering av Engagemangsindex	41
3.5.1	Domänspecifika attribut för tjänstedomänen Tidbokning	41
3.5.2	Vid ändringar i tidbokningssystemet ska tjänsteproducenten uppdatera Engagemangsindex	42
3.5.3	Endast dessa bokningar ska finnas i Engagemangsindex	42
3.5.4	En bokad tid i tidbokningssystemet ska motsvaras av en post i Engagemangsindex	43
3.5.5	Då anses en bokning ha ändrats	43
3.5.6	Då anses en bokning vara inaktuell	44
3.5.7	Uppdatera befintlig post vs. ta bort befintlig post och skapa en ny	44
3.5.8	Då ska en befintlig engagemangsindexpost uppdateras	45
3.5.9	Då ska en befintlig engagemangsindexpost tas bort och ersättas med en ny	45
3.5.10	Så tas en befintlig post bort ur Engagemangsindex	45
3.5.11	Grundladdning	47
3.5.12	Ändringar från tidigare version av anvisningarna	47
3.6	Aktör som utför bokning	47
3.7	ResultCode	47
1.1.1	Specifika felkoder per tjänstekontrakt	47
1.1.2	MakeAppointment	48
1.1.3	UpdateAppointment	48
1.1.4	CancelAppointment	48
1.1.5	ConfirmAppointment	49
4	Tjänstedomänens krav och regler	49
4.1	Informationssäkerhet	49
4.2	Icke funktionella krav	49
4.2.1	SLA krav	49
4.3	Felhantering	50
4.3.1	Krav på en tjänsteproducent	50
4.3.2	Krav på en tjänstekonsument	50
5	Tjänstedomänens meddelandemodeller	50
5.1	Formatregler	50
5.1.1	Format för datum	50
5.1.2	Format för tidpunkter	51
5.1.3	Tidszon för tidpunkter	51
5.1.4	Format för HSA-id	51
6	Tjänstekontrakt	51
6.1	CancelAppointment	51
6.1.1	Frivillighet	52
6.1.2	Version	52
6.1.3	Meddelandeinformationsmodell (MIM)	52
6.1.4	Fältregler	52
6.1.5	Övriga regler	53
6.2	ConfirmAppointment	54
6.2.1	Frivillighet	54
6.2.2	Version	54
6.2.3	Meddelandeinformationsmodell (MIM)	54
6.2.4	Fältregler	54
6.2.5	Övriga regler	55
6.3	GetAppointment	55
6.3.1	Frivillighet	55
6.3.2	Version	55
6.3.3	Meddelandeinformationsmodell (MIM)	56
6.3.4	Fältregler	56
6.3.5	Övriga regler	60
6.4	GetAppointments	60
6.4.1	Frivillighet	60
6.4.2	Version	61
6.4.3	Meddelandeinformationsmodell (MIM)	61
6.4.4	Fältregler	61
6.4.5	Övriga regler	62
6.5	GetTimeTypes	62
6.5.1	Frivillighet	62
6.5.2	Version	62
6.5.3	Meddelandeinformationsmodell (MIM)	63
6.5.4	Fältregler	63
6.5.5	Övriga regler	64
6.6	GetAvailableDates	65
6.6.1	Frivillighet	65
6.6.2	Version	65
6.6.3	Meddelandeinformationsmodell (MIM)	66
6.6.4	Fältregler	66
6.7	GetAvailableTimeslots	68
6.7.1	Frivillighet	68
6.7.2	Version	68
6.7.3	Meddelandeinformationsmodell (MIM)	69
6.7.4	Fältregler	69
6.8	GetHealthcareFacilities	72
6.8.1	Frivillighet	72
6.8.2	Version	72
6.8.3	Meddelandeinformationsmodell (MIM)	73
6.8.4	Fältregler	73
6.9	GetHealthcareFacility	74
6.9.1	Frivillighet	74
6.9.2	Version	74
6.9.3	Meddelandeinformationsmodell (MIM)	75
6.9.4	Fältregler	75
6.10	GetPractitioners	76
6.10.1	Frivillighet	76
6.10.2	Version	76
6.10.3	Meddelandeinformationsmodell (MIM)	76
6.10.4	Fältregler	76
6.11	MakeAppointment	77
6.11.1	Frivillighet	77
6.11.2	Version	78
6.11.3	Meddelandeinformationsmodell (MIM)	78
6.11.4	Fältregler	78
6.11.5	Övriga regler	79
6.12	UpdateAppointment	79
6.12.1	Frivillighet	79
6.12.2	Version	80
6.12.3	Meddelandeinformationsmodell (MIM)	80
6.12.4	Fältregler	80
6.12.5	Övriga regler	82
7	Definition av komplexa typer	82
7.1	ActorType	82
7.2	AvailableDateType	84
7.3	PersonIdType	84
7.4	ReferenceType	84
7.5	ResourceType	84
7.6	TimeslotType	85
7.7	PractitionerType	86
7.8	TimeTypeRulesType	86
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.1.3 |  | - | Revisionshistorik saknas i tidigare TKB:er. Ny revisionslista skapad härmed | Thomas Fafoutis |  |
| 1.1.4 | RC1 | 2021-06-07 | Uppdaterat tjänstekontraktsbeskrivning med den senaste mallen. | Thomas Fafoutis |  |
| 1.1.5 |  | 2021-09-10 | Diverse förtydliganden i TKB | Thomas Fafoutis |  |
| 2.0 RC1 | RC1 | 2022-09-25 | Utkast version 2.0 | Thomas Fafoutis |  |
| 2.0 RC2 | RC2 | 2022-12-29 | Div rättelser inför RC2 | Thomas Fafoutis |  |
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
supportprocess:logistics:scheduling
Tjänstekontrakten är baserade på RIVTA 2.1 [R4] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänens omfattning är invånarperspektivet på tidbokning hos en vårdenhet. Den kravställande processen är invånarens behov av e-tjänster för tidbokning – direkt som användare (ex. 1177 Vårdguidens e-tjänster), eller indirekt via vårdpersonal (ex. Rådgivningsstödet, RGS).
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
individens processtöd: tillgängliggör kontaktväg: tidbokning
tidbokning

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen supportprocess:logistics:scheduling. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0

#### Oförändrade tjänstekontrakt
Det finns inga oförändrade kontrakt i denna version

#### Nya tjänstekontrakt
Samtliga tjänstekontrakt i domänen är förändrade utifrån att den information de bär är om-modellerad, i förhållande till föregående version (version 1). Tjänstekontraktens namnsättning är också förändrad för att bättre liera med de begrepp som används inom FHIR i relation till tidbokning.
Här följer en mappningstabell som visar respektive tjänstekontrakts motsvarighet i de två versionerna (version 1 och version 2),

| Tjänstekontrakt v1 | Tjänstekontrakt v2 | Funktion |
| :--- | :--- | :--- |
| CancelBooking | CancelAppointment | Avbokar en befintlig bokning |
| - | ConfirmAppointment | Bekräftar en bokning som bokats från verksamheten |
| GetAllCareTypes | - | Hämtar vårdtyper som stödjs av vårdcentral. (Detta tjänstekontrakt används inte av 1177) |
| - | GetHealthcareFacility | Nytt tjänstekontrakt för att hämta detaljer om vårdcentral |
| GetAllHealthcareFacilities | GetHealthcareFacilities | Hämtar vårdcentraler som ingår i en grupp av vårdcentraler med samma utbud |
| GetAllPerformers | GetPractitioners | Hämtar vårdpersonal som kan bokas i samband med tidbokningen |
| GetAllTimeTypes | GetTimeTypes | Hämtar tidstyper (vad bokningen avser) som vårdcentral erbjuder |
| GetAvailableDates | GetAvailableDates | Hämtar datum som har lediga tider |
| GetAvailableTimeslots | GetAvailableTimeslots | Hämtar lediga tider |
| GetBookingDetails | GetAppointment | Hämtar detaljer om en bokning |
| GetSubjectOfCareSchedule | GetAppointments | Hämtar en lista med bokningar (invånarens bokningar) |
| MakeBooking | MakeAppointment | Bokar en ny tid, baserat på en tid (tidslucka) |
| UpdateBooking | UpdateAppointment | Uppdaterar en bokning med ny tid (baserat på en ny tidslucka) |

#### Förändrade tjänstekontrakt
Se kap 2.1.2

#### Utgångna tjänstekontrakt

### Version tidigare
Version 1.1

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Kapitlet beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av flödesmodeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet, dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Obligatoriska kontrakt
En tjänsteproducent måste minst stödja kontrakten GetAppointments och GetAppointment. Övriga av tjänstedomänens tjänstekontrakt är frivilliga att stödja för tjänsteproducent. Tjänsteproducent ska åtminstone kunna returnera invånares bokade tider på vårdenheten/vårdcentralen. Som en följd av detta måste tjänsteproducent samtidigt också uppdatera engagemangsindex med indexposter som motsvarar bokningarna. Se referens [R2] - Tjänstedomän Engagemangsindex för vidare detaljer kring tjänstekontraktet Update, likaså denna tjänstedomäns specifika regler som gäller utöver tjänstedomänen för engagemangsindex (kap i detta dokument: Anvisningar för uppdatering av Engagemangsindex).
En tjänstekonsument kan välja att stödja ett eller flera av tjänstedomänens flöden enligt nedan. Då flera av tjänstekontrakten som innefattas i respektive flöde är frivilliga för tjänsteproducent behöver tjänstekonsument ta hänsyn till det faktum att en adresserad vårdenhet/vårdcentral (logisk adress) saknar stöd för tilltänkt tjänstekontrakt. Tjänstekonsumenten behöver därmed säkerställa detta genom att exempelvis kunna hantera felkod/returkod genererad av tjänsteplattform eller på förhand säkerställa att adresserad logisk adress finns i tjänsteadresseringskatalogen (TAK). Detta kan exempelvis implementeras via tjänstekontraktet GetSupportedServiceContract (se ref [R3] - Tjänstedomän Tjänsteadressering) eller genom tjänstekonsumentens egen lokala konfiguration.

### Flöden
Flödena beskriver interaktionerna mellan e-tjänst för tidbokning (tjänstekonsument) och en verksamhets tidbokningssystem (tjänsteproducent).
Följande flöden är definierade i domänen:
Flöde 1 – Boka tid direkt på vårdcentral
1a – Boka tid direkt på vårdcentral
1b – Boka tid direkt på virtuell vårdcentral
Flöde 2 – Boka tid med ett kvalificerande försteg (triagering)
Flöde 3 – Boka tid via en digital kallelse
Flöde 4 – Bekräfta en av verksamheten bokad tid
Flöde 5 – Se bokade tider vid en vårdenhet
Flöde 6 – Se bokade tider - nationell kalender
Flöde 7 – Hitta lediga tider baserat på vald vårdtjänst
Flöde 8 – Omboka tid
Flöde 9 – Avboka tid
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera i respektive flöde:
X= Tjänstekontraktet används i flödet, (X) = Tjänstekontraktet är frivilligt i flödet, ((X)) = Tjänstekontraktet används indirekt i flödet, då flödet kan relatera till annat flöde

| Tjänstekontrakt | 1a | 1b | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| CancelAppointment |  |  |  |  | ((X)) |  | ((X)) |  |  | X |
| ConfirmBooking |  |  |  |  | X |  |  |  |  |  |
| GetHealthcareFacility | X | X | X | X |  |  |  |  | X | X |
| GetHealthcareFacilities |  |  |  |  | ((X)) |  | ((X)) |  | (X) |  |
| GetPractitioners | (X) | (X) | (X) | (X) |  |  |  | ((X)) | (X) |  |
| GetTimeTypes | X | X | X | X |  |  |  | X |  |  |
| GetAvailableDates | X | X | X | X | ((X)) |  | ((X)) | X | X |  |
| GetAvailableTimeslots | X | X | X | X | ((X)) |  | ((X)) | X | X |  |
| GetAppointment |  |  |  |  | X | X | X |  | X | X |
| GetAppointments | (X) | (X) |  |  |  | X | X |  | ((X)) | ((X)) |
| MakeAppointment | X | X | X | X |  |  |  | ((X)) |  |  |
| UpdateAppointment |  |  |  |  | ((X)) |  | ((X)) |  | X |  |

#### Flöde 1a – Boka tid direkt på vårdcentral
Flödet beskriver hur invånare bokar tid på en utvald vårdcentral. Flödet utgår från att invånaren i förväg vet vilken vårdcentral som invånaren vill boka tid på.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att utan förkrav boka ny tid, exempelvis utan att ha kallat invånare / Vårdcentralen ingår inte som en del av en grupp vårdcentraler, eller är en virtuell vårdcentral för flera fysiska vårdcentraler (m a o exponerar inte tjänstekontraktet GetHealthcareFacilities) |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_018.jpeg](images/img_018.jpeg)

##### Aktörer

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 e-tjänster. |
| 2 | Invånare söker fram önskad vårdcentral för att boka tid |
| 3 | Invånare väljer tjänst som erbjuder nybokning hos vårdcentralen |
| 4 | E-tjänst anropar tjänstekontraktet GetHealthcareFacility för att hämta information om vårdcentralen. Svaret innehåller bl a eventuella villkorstexter eller informationstexter som vårdcentralen vill förmedla, sådana villkorstexter och informationstexter som gäller generellt för vårdcentralen, oavsett tidstyp, vårdtjänst eller typ av flöde (nybokning, ombokning eller avbokning). |
| 5 | E-tjänst presenterar villkorstexter och informationstexter till invånaren. Invånaren behöver aktivt bekräfta villkorstexterna (om sådana finns) för att kunna fortsätta i flödet. |
| 6 | E-tjänst hämtar vårdcentralens erbjudna tidstyper. |
| 7 | E-tjänst presenterar tidstyperna som vårdcentralen erbjuder. De tidstyper som vårdcentralen har märkt som gömda (skyddade) visas inte för invånaren. Vårdcentralen kan välja att mappa varje tidstyp mot den/de vårdtjänster som kan erbjudas för tidstypen. E-tjänst presenterar en lista med val. Om tidstyperna inte är mappade mot vårdtjänster erbjuds invånaren att välja bland tidstyperna. Om vårdcentralen har mappat tidstyperna mot vårdtjänster visas lista med vårdtjänster. |
| 8 | Invånare väljer en tidstyp eller vårdtjänst från listan att boka tid för. |
| 9 | Om vårdcentralen erbjuder möjlighet att också boka/välja vårdpersonal i samband med bokningen anropar e-tjänst det frivilliga tjänstekontraktet GetPractitioners. Listan med vårdpersonal visas för invånaren. E-tjänst tillåter även invånare att gå vidare utan att specifikt välja vårdpersonal. |
| 10 | Invånaren väljer vårdpersonal i listan (om vårdcentralen erbjuder valmöjligheten) |
| 11 | E-tjänst hämtar lediga datum baserat på vald tidstyp, vårdtjänst och vårdpersonal. |
| 12 | Invånare väljer datum för att se lediga tider |
| 13 | E-tjänst hämtar lediga tider för valt datum, samt för vald typ av tid (tidstyp), vårdtjänst och vårdpersonal. |
| 14 | Invånare väljer en tid att boka |
| 15 | Baserat på tidstypens inställning (inställning som hämtats tillsammans med tidstypen) kan verksamheten kräva att invånaren anger en anledning till bokningen. Verksamheten kan välja att kräva att invånaren anger anledning eller att invånaren frivilligt anger anledning eller att invånaren inte får ange anledning (då visas inte möjlighet för invånaren att ange en anledning) |
| 16 | Invånaren anger en anledning till bokningen (baserat på tidstypens inställning enligt föregående steg) |
| 17 | Invånaren bekräftar eventuella villkor och bokar tiden |
| 18 | E-tjänst begär att boka vald tid genom att anropa tjänstekontraktet MakeAppointment. |
| 19 | Om bokningen lyckas, anropar e-tjänsten tjänstekontraktet GetAppointment för att hämta detaljer om bokningen. Verksamheten kan ha valt att komplettera bokningen med ytterligare detaljer, t ex en unik länk till ett videobesök i fall att kontaktsättet är videobesök. |
| 20 | E-tjänst presenterar en bokningsbekräftelse med detaljerna som hämtats. |
| 21 | Verksamheten skickar en bokningsbekräftelse till invånaren, t ex till 1177 Inkorgen. Verksamheten kan i bokningsbekräftelsen också samtidigt erbjuda möjlighet till avbokning eller ombokning. |

#### Flöde 1b – Boka tid direkt på virtuell vårdcentral
Flödet beskriver hur invånare bokar tid på en utvald vårdcentral. Flödet utgår från att invånaren i förväg vet vilken vårdcentral som invånaren vill boka tid på. Verksamheten har i förväg grupperat sina vårdcentraler som erbjuder samma typ av tider, där denna vårdcentral ingår i gruppen. Invånaren tillåts därmed i flödet att även välja en annan vårdcentral inom gruppen. 
Ett exempel på en sådan verksamhetsmässig uppdelning kan vara då verksamheten väljer att i e-tjänst till invånare publicera en virtuell vårdcentral som i sin tur innefattar flera olika fysiska vårdcentraler, på olika platser.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att utan för-krav boka ny tid, exempelvis att ha kallat invånare / Vårdcentralen ingår som en del av en grupp vårdcentraler, eller är en virtuell vårdcentral för flera fysiska vårdcentraler (m a o stödjer tjänstekontraktet GetHealthcareFacilities) |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_001.jpeg](images/img_001.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 e-tjänster. |
| 2 | Invånare söker fram önskad vårdcentral för att boka tid |
| 3 | Invånare väljer tjänst som erbjuder nybokning hos vårdcentralen |
| 4 | Tidbokningstjänst anropar tjänstekontraktet GetHealthcareFacility för att hämta information om vårdcentralen. Svaret innehåller bl a eventuella villkorstexter eller informationstexter som vårdcentralen vill förmedla, sådana villkorstexter och informationstexter som gäller generellt för vårdcentralen, oavsett tidstyp eller vårdtjänst. |
| 5 | E-tjänst presenterar villkorstexter och informationstexter till invånaren. Invånaren behöver aktivt bekräfta villkorstexterna (om sådana finns) för att kunna fortsätta i flödet. |
| 6 | E-tjänst hämtar vårdcentralens erbjudna tidstyper. |
| 7 | E-tjänst presenterar tidstyperna som vårdcentralen erbjuder. De tidstyper som vårdcentralen har märkt som gömda visas inte för invånaren. Vårdcentralen kan välja att mappa varje tidstyp mot den/de vårdtjänster som kan erbjudas för tidstypen. E-tjänst presenterar en lista med val. Om tidstyperna inte är mappade mot vårdtjänster erbjuds invånaren att välja bland tidstyperna. Om vårdcentralen har mappat tidstyperna mot vårdtjänster visas lista med vårdtjänster. |
| 8 | Invånare väljer en tidstyp eller vårdtjänst från listan att boka tid för |
| 9 | E-tjänst hämtar lista med andra vårdcentraler som ingår i grupp med vald vårdcentral. E-tjänst skickar med tidigare vald tidstyp, så att tidbokningssystemet kan returnera vårdcentraler i gruppen som också erbjuder samma tidstyp |
| 10 | Invånare väljer en annan vårdcentral från listan eller låter ursprungsvårdcentralen vara valet att gå vidare med |
| 11 | Om vårdcentralen erbjuder möjlighet att boka vårdpersonal i samband med bokningen anropar e-tjänst det frivilliga tjänstekontraktet GetPractitioners. Listan med vårdpersonal visas för invånaren. E-tjänst tillåter även invånare att gå vidare utan att välja vårdpersonal. |
| 12 | Invånaren väljer vårdpersonal i listan (om vårdcentralen erbjuder valmöjligheten) |
| 13 | E-tjänst hämtar lediga datum baserat på vald tidstyp, vårdtjänst och vårdpersonal. |
| 14 | Invånare väljer datum för att se lediga tider |
| 15 | E-tjänst hämtar lediga tider för valt datum, samt för vald tidstyp, vårdtjänst och vårdpersonal. |
| 16 | Invånare väljer en tid att boka |
| 17 | Baserat på tidstypens inställning (inställning som hämtats tillsammans med tidstypen) kan verksamheten kräva att invånaren anger en anledning till bokningen. Verksamheten kan välja att kräva att invånaren anger något eller att invånaren frivilligt anger något eller att invånaren inte får ange något (då visas inte något till invånaren) |
| 18 | Invånaren anger en anledning till bokningen (baserat på tidstypens inställning enligt föregående steg) |
| 19 | Invånaren bekräftar eventuella villkor och bokar tiden |
| 20 | E-tjänst begär att boka vald tid genom att anropa tjänstekontraktet MakeAppointment. |
| 21 | Om bokningen lyckas anropar e-tjänst tjänstekontraktet GetAppointment för att hämta detaljer om bokningen. Verksamheten kan ha valt att komplettera bokningen med ytterligare detaljer, t ex en unik länk till ett videobesök i fall att kontaktsättet är videobesök. |
| 22 | E-tjänst presenterar en bokningsbekräftelse med detaljerna som hämtats |
| 23 | Verksamheten skickar en bokningsbekräftelse till invånaren, t ex till 1177 Inkorgen. Verksamheten kan i bokningsbekräftelsen också samtidigt erbjuda möjlighet till avbokning eller ombokning. |

#### Flöde 2 – Boka tid med ett kvalificerande försteg (triagering som görs av vårdcentralen)
Flödet utgår från att invånaren i förväg vet vilken vårdcentral som invånaren vill boka tid på. Vårdcentralen erbjuder olika typer av tider men kräver att invånare genomgår en triagering. Baserat på utfallet hänvisas invånaren till en specifik typ av tid.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att utan förkrav boka ny tid, exempelvis att ha kallat invånare / Vårdcentralen erbjuder tidbokning men först efter att invånaren blivit kvalificerad till specifik typ av tid. Exempel på ett sådant försteg kan vara ett frågebatteri som invånaren först måste besvara. Baserat på invånarens svar hänvisas invånaren att boka tid av framräknad typ av tid. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_014.jpeg](images/img_014.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. Invånare söker fram önskad vårdcentral för att boka tid |
| 2 | Invånare väljer vårdcentral att boka tid hos. Vårdcentralen kan exempelvis vara den vårdcentral invånaren har som sitt vårdval eller vårdcentral som invånaren på annat sätt sökt fram i 1177. |
| 3 | Vårdcentralen erbjuder inte sin tidbokningstjänst direkt till invånaren utan har i stället valt att låta invånaren svara på ett par frågor, för att därigenom hänvisa invånaren till rätt typ av tid |
| 4 | Hänvisningstjänst beräknar fram en typ av tid eller vårdtjänst baserat på invånarens svar |
| 5 | Hänvisningstjänst dirigerar vidare invånaren till vårdcentralens tidbokningstjänst och med typ av tid eller vårdtjänst som parameter |
| 6 | E-tjänst hämtar lista med andra vårdcentraler som ingår i grupp med vald vårdcentral. E-tjänst skickar med tidigare vald tidstyp, så att tidbokningssystemet kan returnera vårdcentraler i gruppen som också erbjuder samma tidstyp |
| 7 | Invånare väljer en annan vårdcentral från listan eller låter ursprungsvårdcentralen vara valet att gå vidare med |
| 8 | Tidbokningstjänst anropar tjänstekontraktet GetHealthcareFacility för att hämta information om vårdcentralen. Svaret innehåller bl a eventuella villkorstexter eller informationstexter som vårdcentralen vill förmedla, sådana villkorstexter och informationstexter som gäller generellt för vårdcentralen, oavsett tidstyp eller vårdtjänst. |
| 9 | Tidbokningstjänst presenterar villkorstexter och informationstexter till invånaren. Invånaren behöver bekräfta villkorstexterna. |
| 10 | Om vårdcentralen erbjuder möjlighet att boka vårdpersonal i samband med bokningen anropar e-tjänst det frivilliga tjänstekontraktet GetPractitioners. Listan med vårdpersonal visas för invånaren. E-tjänst tillåter även invånare att gå vidare utan att välja vårdpersonal. |
| 11 | Invånaren väljer vårdpersonal i listan (om vårdcentralen erbjuder valmöjligheten) |
| 12 | E-tjänst hämtar lediga datum baserat på aktuell tidstyp, vårdtjänst och vårdpersonal. |
| 13 | Invånare väljer datum för att se lediga tider |
| 14 | E-tjänst hämtar lediga tider för valt datum, samt för vald tidstyp, vårdtjänst och vårdpersonal (via tjänstekontraktet GetAvailableTimeslots). |
| 15 | Invånare väljer en tid att boka |
| 16 | Baserat på tidstypens inställning (inställning som hämtats tillsammans med tidstypen) kan verksamheten kräva att invånaren anger en anledning till bokningen. Verksamheten kan välja att kräva att invånaren anger något eller att invånaren frivilligt anger något eller att invånaren inte får ange något (då visas inte något till invånaren) / Invånaren anger en anledning till bokningen (baserat på tidstypens inställning enligt föregående steg) / Invånaren bekräftar eventuella villkor och bokar tiden |
| 17 | E-tjänst begär att boka vald tid genom att anropa tjänstekontraktet MakeAppointment. |
| 18 | Om bokningen lyckas anropar tidbokningstjänst tjänstekontraktet GetAppointment för att hämta detaljer om bokningen. Verksamheten kan ha valt att komplettera bokningen med ytterligare detaljer, t ex en unik länk till ett videobesök i fall att kontaktsättet är videobesök. |
| 19 | E-tjänst presenterar en bokningsbekräftelse med detaljerna som hämtats |
| 20 | Verksamheten skickar en bokningsbekräftelse till invånaren, t ex till 1177 Inkorgen. Verksamheten kan i bokningsbekräftelsen också samtidigt erbjuda möjlighet till avbokning eller ombokning. |

#### Flöde 3 – Boka tid via en digital kallelse
Flödet utgår från att vårdcentralen skickar en digital kallelse till invånaren, där invånaren erbjuds att boka en tid hos vårdcentralen. Kallelsen är öppen, d v s ger invånaren möjlighet att själv söka fram bäst passande tid för besöket. Kallelsen är definierad för en specifik typ av tid.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att utan förkrav boka ny tid, exempelvis att ha kallat invånare / Vårdcentralen skickar en digital kallelse till invånaren med erbjudande att själv boka en tid för en specifik typ av tid |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_009.jpeg](images/img_009.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Verksamheten skickar en digital kallelse till invånaren, t ex till 1177 Inkorg, via tjänstekontrakt AddMessage (i tjänstedomänen infrastructure:eservicesupply:patientportal). Om invånaren aktiverat avisering via 1177 skickas ett SMS eller email till invånaren (beroende på invånarens inställning) |
| 2 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 e-tjänster. |
| 3 | Invånare öppnar sitt nya meddelande som innehåller kallelsen. |
| 4 | Invånare klickar på valet att boka tid och dirigeras vidare till vårdcentralens tidbokningstjänst. Kallelsen är definierad för den vårdtjänst eller tidstyp som verksamheten bestämt. Vårdtjänsten/tidstypen skickas med som parameter. |
| 5 | E-tjänst hämtar lista med andra vårdcentraler som ingår i grupp med vald vårdcentral. E-tjänst skickar med tidigare vald tidstyp, så att tidbokningssystemet kan returnera vårdcentraler i gruppen som också erbjuder samma tidstyp (anropar tjänstekontraktet GetHealthcareFacilities) |
| 6 | Invånare väljer en annan vårdcentral från listan eller låter ursprungsvårdcentralen vara valet att gå vidare med |
| 7 | Tidbokningstjänst anropar tjänstekontraktet GetHealthcareFacility för att hämta information om vårdcentralen. Svaret innehåller bl a eventuella villkorstexter eller informationstexter som vårdcentralen vill förmedla, sådana villkorstexter och informationstexter som gäller generellt för vårdcentralen, oavsett tidstyp eller vårdtjänst. |
| 8 | Tidbokningstjänst presenterar villkorstexter och informationstexter till invånaren. Invånaren behöver bekräfta villkorstexterna. |
| 9 | Om vårdcentralen erbjuder möjlighet att boka vårdpersonal i samband med bokningen anropar e-tjänst det frivilliga tjänstekontraktet GetPractitioners. Listan med vårdpersonal visas för invånaren. E-tjänst tillåter även invånare att gå vidare utan att välja vårdpersonal. |
| 10 | Invånaren väljer vårdpersonal i listan (om vårdcentralen erbjuder valmöjligheten) |
| 11 | E-tjänst hämtar lediga datum baserat på vald tidstyp, vårdtjänst och vårdpersonal. |
| 12 | Invånare väljer datum för att se lediga tider |
| 13 | E-tjänst hämtar lediga tider för valt datum, samt för vald tidstyp, vårdtjänst och vårdpersonal. |
| 14 | Invånare väljer en tid att boka |
| 15 | Baserat på tidstypens inställning (inställning som hämtats tillsammans med tidstypen) kan verksamheten kräva att invånaren anger en anledning till bokningen. Verksamheten kan välja att kräva att invånaren anger något eller att invånaren frivilligt anger något eller att invånaren inte får ange något (då visas inte något till invånaren) / Invånaren anger en anledning till bokningen (baserat på tidstypens inställning enligt föregående steg) / Invånaren bekräftar eventuella villkor och bokar tiden |
| 16 | E-tjänst begär att boka vald tid genom att anropa tjänstekontraktet MakeAppointment. |
| 17 | Om bokningen lyckas anropar e-tjänst tjänstekontraktet GetAppointment för att hämta detaljer om bokningen. Verksamheten kan ha valt att komplettera bokningen med ytterligare detaljer, t ex en unik länk till ett videobesök i fall att kontaktsättet är videobesök. |
| 18 | E-tjänst presenterar en bokningsbekräftelse med detaljerna som hämtats |
| 19 | Verksamheten skickar en bokningsbekräftelse till invånaren, t ex till 1177 Inkorgen. Verksamheten kan i bokningsbekräftelsen också samtidigt erbjuda möjlighet till avbokning eller ombokning. |

#### Flöde 4 – Bekräfta en bokning, bokad av verksamheten
Flödet utgår från att vårdcentralen bokar en tid åt patienten och därefter kräver att patienten bekräftar bokningen, genom att skicka en digital bokningsbekräftelse till patienten som patient måste bekräfta. Vårdcentralen skulle därmed exempelvis kunna applicera verksamhetsregler där de bokade tider som inte bekräftats inom en viss period innan besöket kan automatiskt avbokas.

| Förutsättningar |
| :--- |
| Vårdcentralen har som krav att patient i förväg bekräftar bokad tid för att besöket ska få äga rum |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_005.jpeg](images/img_005.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Verksamheten skickar ett bokningsförslag till invånaren som verksamheten vill att invånaren ska bekräfta, för att bokningen ska genomföras |
| 2 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. Invånare söker fram önskad vårdcentral för att boka tid |
| 3 | Invånare öppnar sitt nya meddelande som innehåller bokningsförslaget. |
| 4 | Invånare klickar på valet att bekräfta tiden och dirigeras vidare till vårdcentralens tidbokningstjänst. Det unika id för bokningsförslaget skickas med som parameter. |
| 5 | Tidbokningstjänst anropar ConfirmAppointment för att bekräfta bokningen |
| 6 | Tidbokningstjänst presenterar ett meddelande för att visa att bekräftelsen är mottagen av verksamheten |
| 7 | Invånare tar del av informationen om att bekräftelsen har mottagits av vårdcentralen |
| 8 | Verksamheten skickar en bokningsbekräftelse till invånaren som visar att tiden nu är bekräftad, t ex till 1177 Inkorgen. Verksamheten kan i bokningsbekräftelsen också samtidigt vidare erbjuda möjlighet till avbokning eller ombokning. |

#### Flöde 5 – Se bokade tider på en vårdcentral
Flödet beskriver hur patient kan se en sammanställning av sina bokade tider på en vårdcentral. Och utifrån sammanställningen se detaljer om bokningen/bokningarna. Flödet utgår från att patienten i förväg vet vilken vårdcentral som patienten kan ha bokade tider på.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att digitalt att boka ny tid utan att ha kallat invånare / Vårdcentralen skickar en digital kallelse till invånaren med erbjudande att själv boka en tid för en specifik typ av tid |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_019.jpeg](images/img_019.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. Invånare söker fram önskad vårdcentral för att boka tid |
| 2 | Invånare har en snabblänk till sin vårdcentral via sin listning eller genom att invånare söker efter vårdcentralen |
| 3 | Vårdcentralen erbjuder tjänst för invånare att se sina bokade tider på vårdcentralen. Invånare väljer att se sina bokningar. |
| 4 | E-tjänst anropar vårdcentralen för att hämta invånarens bokade tider (GetAppointments). Svaret innehåller en lista med unika bokningsId’n för invånarens samtliga bokningar på vårdcentralen. Varje bokningsId som returneras är kopplad till vårdcentralens HSAId. I detta flöde förväntas listan bara innehålla vald vårdcentrals HSAId |
| 5 | E-tjänst hämtar bokningsdetaljer för varje returnerat bokningsId |
| 6 | E-tjänst sammanställer listan med bokningar och presenterar svaret till invånaren |
| 7 | Invånare tar del av information om samtliga sina bokningar på vårdcentralen. Härifrån kan sedan invånare välja exempelvis att omboka/avboka, alternativt att bekräfta bokningen om bokningen ännu inte är bekräftad. Respektive vägval finns beskrivet i annat flöde. |

#### Flöde 6 – Se bokade tider – nationell kalender
Flödet beskriver interaktionerna mellan e-tjänst för tidbokning (tjänstekonsument) och en verksamhets tidbokningssystem (tjänsteproducent). Flödet utgår från att vårdcentralen skickar en kallelse till invånaren, där invånaren erbjuds boka en tid hos vårdcentralen. Kallelsen är öppen, d v s ger invånaren möjlighet att söka fram bäst passande tid för besöket. Kallelsen är för en specifik typ av tid.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att boka ny tid utan att ha kallat invånare / Vårdcentralen skickar en digital kallelse till invånaren med erbjudande att själv boka en tid för en specifik typ av tid |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_002.jpeg](images/img_002.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. |
| 2 | Invånare har en snabblänk till sin vårdcentral via sin listning eller genom att invånare söker efter vårdcentralen |
| 3 | Vårdcentralen erbjuder tjänst för invånare att se sina bokade tider på vårdcentralen. Invånare väljer att se sina bokningar. |
| 4 | E-tjänst adresserar tjänstekontraktet GetAppointments med Ineras organisationsnummer, istället för en direktadressering till vårdcentral, vilket triggar aggregerande tjänst på den Nationella tjänsteplattformen. |
| 5 | Den aggregerande tjänsten söker vidare i engagemangsindex efter patientens samtliga bokningar och var bokningarna finns.  Svaret innehåller en lista med unika bokningsId’n för invånarens samtliga bokningar på de vårdcentralerna som bokningarna finns på. Varje bokningsId som returneras är kopplad till vårdcentralens HSAId. |
| 6-7 | Den aggregerande tjänsten anropar vidare varje vårdcentral som har bokning(ar) tillhörande patienten genom tjänstekontraktet GetAppointments. |
| 8 | Den aggregerande tjänsten inväntar alla svar från vårdcentralerna och sammanställer sedan en komplett lista med patientens bokningar. |
| 9-10 | E-tjänst hämtar detaljer om varje bokning i sammanställningen genom att direktadressera vårdcentralen/vårdcentralerna. |
| 11 | Patient tar del av en samlad bild av sina bokningar och kan se detaljerna om dem. |

#### Flöde 7 – Hitta lediga tider baserat på utvald vårdtjänst
Flödet beskriver interaktionerna mellan e-tjänst för tidbokning (tjänstekonsument) och en verksamhets tidbokningssystem (tjänsteproducent). Flödet utgår från att vårdcentralen skickar en kallelse till invånaren, där invånaren erbjuds boka en tid hos vårdcentralen. Kallelsen är öppen, d v s ger invånaren möjlighet att söka fram bäst passande tid för besöket. Kallelsen är för en specifik typ av tid.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att boka ny tid utan att ha kallat invånare / Vårdcentralen skickar en digital kallelse till invånaren med erbjudande att själv boka en tid för en specifik typ av tid |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_012.jpeg](images/img_012.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. Invånare söker fram önskad vårdcentral för att boka tid |
| 2 | Invånare söker efter vårdutbud genom att exempelvis beskriva sina symptom. Detta kan exempelvis ske genom att invånare svarar på en rad frågor och att invånare därefter triageras baserat på de angivna svaren |
| 3 | Triageringstjänst dirigerar vidare invånare till tidbokningstjänst och skickar med den vårdtjänst som triageringen resulterat i. Vårdtjänst uttrycks som en SNOMED-CT kod. |
| 4 | Tidbokningstjänst söker fram vilka vårdcentraler som erbjuder utvald vårdtjänst, via exempelvis via utbudstjänst |
| 5 & 7 | Tidbokningstjänst söker efter lediga datum hos de vårdcentraler som erbjuder vårdtjänsten. |
| 6 & 8 | Tidbokningstjänst hämtar lediga tider för det första datum som varje vårdcentral har lediga tider |
| 9 | Tidbokningstjänst presenterar en lista med första lediga tid per vårdcentral |
| 10 | Invånaren väljer en vårdcentral för att fortsätta bokningen. Se flöde 1 för vidare beskrivning om nybokning på vårdcental |

#### Flöde 8 – Omboka tid
Flödet beskriver interaktionerna mellan e-tjänst för tidbokning (tjänstekonsument) och en verksamhets tidbokningssystem (tjänsteproducent). Flödet utgår från att vårdcentralen erbjuder en e-tjänst till patienten som ger patienten möjlighet att omboka en befintlig bokning.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att omboka en bokad tid / Patienten har en bokning på vårdcentralen / Vårdcentralen tillåter att bokningen får ombokas av patienten |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_022.jpeg](images/img_022.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Invånare loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. Invånare söker fram önskad vårdcentral för att boka tid |
| 2 | Patient söker efter sin vårdcentral för att se vilka bokade tider patient har |
| 3 | Patienten dirigeras till vårdcentralens tidbokningstjänst för att hämta bokade tider |
| 4 | Tidbokningstjänst anropar vårdcentralen (via tjänstekontraktet GetAppointments) för att hämta bokningar på vårdcentralen. En lista med unika bokningsId:n returneras |
| 5 | Tidbokningstjänst hämtar detaljer om varje bokning (baserat på tidigare returnerat bokningsId) |
| 6 | Tidbokningstjänst sammanställer en lista med bokningar |
| 7 | Patient tar del av informationen om sina bokade tider på vårdcentralen |
| 8 | Patient väljer den bokning som patient önskar omboka |
| 9 | Tidbokningstjänst hämtar detaljer om vald bokning. I bokningsdetaljerna ingår även en flagga som verksamheten returnerar och som avgör om bokningen får ombokas av patient (attributet updateAppointmentAllowed i datatypen AppointmentType) |
| 10 | Tidbokningstjänst hämtar lista med andra vårdcentraler som ingår i grupp med vald vårdcentral. E-tjänst skickar med tidigare vald tidstyp, så att tidbokningssystemet kan returnera vårdcentraler i gruppen som också erbjuder samma tidstyp |
| 11 | Invånare väljer en annan vårdcentral från listan eller låter ursprungsvårdcentralen vara valet att gå vidare med. |
| 12 | Om vårdcentralen erbjuder möjlighet att boka vårdpersonal i samband med bokningen anropar e-tjänst det frivilliga tjänstekontraktet GetPractitioners. Listan med vårdpersonal visas för invånaren. E-tjänst tillåter även invånare att gå vidare utan att välja vårdpersonal. |
| 13 | Invånaren väljer vårdpersonal i listan (om vårdcentralen erbjuder valmöjligheten). |
| 14 | E-tjänst hämtar lediga datum baserat på vald tidstyp, vårdtjänst och vårdpersonal. |
| 15 | Invånare väljer datum för att se lediga tider. |
| 16 | Tidbokningstjänst hämtar lediga tider för valt datum, samt för vald typ av tid (tidstyp), vårdtjänst och vårdpersonal. |
| 17 | Invånare väljer en tid att avboka. |
| 18 | Baserat på tidstypens inställning (inställning som hämtats tillsammans med tidstypen) kan verksamheten kräva att invånaren anger en anledning till bokningen. Verksamheten kan välja att kräva att invånaren anger något eller att invånaren frivilligt anger något eller att invånaren inte får ange något (då visas inte något till invånaren). |
| 19 | Invånaren anger en anledning till bokningen (baserat på tidstypens inställning enligt föregående steg). |
| 20 | Invånaren bekräftar eventuella villkor och bokar tiden. |
| 21 | Tidbokningstjänst begär att omboka vald tid genom att anropa tjänstekontraktet UpdateAppointment. |
| 22 | Tidbokningstjänst presenterar en bekräftelse på att ombokningen lyckats. |
| 23 | Verksamheten skickar en digital bekräftelse om ombokningen som dessutom innehåller detaljer om den nya tiden. |

#### Flöde 9 – Avboka tid
Flödet visar hur invånare ges möjlighet att avboka en befintlig bokning.

| Förutsättningar |
| :--- |
| Vårdcentralen erbjuder invånare möjlighet att avboka en redan bokad tid |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet.

![img_003.jpeg](images/img_003.jpeg)

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Invånare | Person i behov av att en boka tid. |
| Tidbokningssystem | Regionens verksamhetssystem som administrerar tidbokning, resursplanering av personal och resurser mm |
| E-tjänst/tidbokningstjänst | Digital tjänst som möjliggör tidbokning för invånare |

##### Arbetssteg

| Steg | Beskrivning |
| :--- | :--- |
| 1 | Patient loggar in i e-tjänst via stark autentisering, exempelvis via mobilt bankId i 1177 Vårdguidens e-tjänster. Patient söker fram önskad vårdcentral för att boka tid |
| 2 | Patient söker efter sin vårdcentral för att se vilka bokade tider patient har |
| 3 | Patienten dirigeras till vårdcentralens tidbokningstjänst för att hämta bokade tider |
| 4 | Tidbokningstjänst anropar vårdcentralen (via tjänstekontraktet GetAppointments) för att hämta bokningar på vårdcentralen. En lista med unika bokningsId:n returneras |
| 5 | Tidbokningstjänst hämtar detaljer om varje bokning (baserat på tidigare returnerat bokningsId) |
| 6 | Tidbokningstjänst sammanställer en lista med bokningar |
| 7 | Patient tar del av informationen om sina bokade tider på vårdcentralen |
| 8 | Patient väljer den bokning som patient önskar avboka |
| 9 | Tidbokningstjänst hämtar detaljer om vald bokning. I bokningsdetaljerna ingår även en flagga som verksamheten returnerar och som avgör om bokningen får avbokas av patient (attributet cancelAppointmentAllowed i datatypen AppointmentType). / Baserat på tidstypens inställning (inställning som hämtats tillsammans med tidstypen) kan verksamheten kräva att invånaren anger en anledning till avbokningen. Verksamheten kan välja att kräva att invånaren anger något eller att invånaren frivilligt anger något eller att invånaren inte får ange något (då visas inte något till invånaren) / Invånaren anger en anledning till avbokningen |
| 10 | Invånaren anger en anledning till bokningen (baserat på tidstypens inställning enligt föregående steg) |
| 11 | Invånaren bekräftar eventuella villkor och bokar tiden |
| 12 | Tidbokningstjänst begär att omboka vald tid genom att anropa tjänstekontraktet CancelAppointment. |
| 13 | Tidbokningstjänst presenterar en bekräftelse på att avbokningen lyckats |
| 14 | Verksamheten skickar en digital bekräftelse om avbokningen som dessutom innehåller detaljer om den nya tiden |

### Adressering
Regler kring adressering styrs av T-Boken och detta avsnitt avser endast att förtydliga skrivningen för dessa regler. Själva reglerna beskrivs i T-Boken kapitel 8.3 (Översikt tekniska anvisningar utgåva C)
Domänen tillämpar verksamhetsadressering där vårdenhetens HSA-id används för adressering och tolkningen av detta HSA-id måste vara skiftlägesokänsligt i såväl konsument som producent.

### Aggregering och engagemangsindex
Det finns utrymme för anrop via en aggregerande tjänst för tjänstekontraktet GetAppointments i denna domän. En aggregerande tjänst har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men de nås på olika logiska adresser. Om en verksamhets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet utan att passera en aggregerande tjänst. Om logisk adress är HSA-id för Inera eller en huvudman, kommer anropet i stället att dirigeras till en aggregerande tjänst som i sin tur, efter att ha konsulterat Engagemangsindex, vidarebefordrar frågan till de källsystem som har information om invånaren.
För användning av en aggregerande tjänst behöver producenter uppdatera Engagemangsindex och den aggregerande tjänsten behöver vara utvecklad inom ramen för en anpassningsplattform.

| Begäran om att hämta invånares/patients bokade tider (GetAppointments) | Logisk adress |
| :--- | :--- |
| Nationell sammanfattning av invånares bokade tider | Ineras HSA-id: 5565594230 
Genom att adressera på detta sätt triggas aggregerad tjänst igång på den nationella tjänsteplattformen som i sin tur baserar sina vidare anrop på innehållet i engagemangsindex. |
| Regional sammanfattning av invånares bokade tider | Huvudmannens länskod eller annan identifierare som är TAKad på den nationella tjänsteplattformen. / Genom att adressera på detta sätt dirigeras anropet till annan (regional tjänsteplattform) som i sin tur triggar regional aggregerad tjänst. |
| Invånares bokade tider på en vårdcentral | E-tjänst adresserar specifik vårdcentral direkt. Den logiska adressen motsvarar vårdcentralens HSA-Id |
För tjänstespecifika regler kring aggregerande tjänster, se respektive tjänsteinteraktion.

### Anvisningar för uppdatering av Engagemangsindex
Anslutna tjänsteproducenter som erbjuder visning, ombokning eller avbokning genom domänens tjänstekontrakt ska uppdatera Engagemangsindex för att informera tjänstekonsumenter om bokningar som finns i tidboken.
Engagemangsindex är en egen tjänstedomän, separat från tidbokningsdomänen, som definierar kontrakt och regler för uppdatering av indexet. För mer information, se tjänstedomänen itintegration:engagementindex på http://www.rivta.se.
Varje tjänstedomän har ansvar att definiera anvisningar och regler för uppdatering och hantering av information inom Engagemangsindex. Detta avsnitt innehåller tjänstedomänen crm:schedulings anvisningar och regler.

#### Domänspecifika attribut för tjänstedomänen Tidbokning
Följande regler gäller för innehållet i begäran till tjänstekontraktet Update i Engagemangsindex för uppdateringar som rör denna tjänstedomän (supportprocess:logistics:scheduling). Observera att nedanstående beskrivning endast avser de attribut där tjänstedomänen supportprocess:logistics:scheduling styr reglerna. För en komplett förteckning av attribut och tjänstekontraktsbeskrivning hänvisas till beskrivningen för tjänstedomänen ”itintegration:engagementindex”.
Observera:
I föregående version av tjänstedomänen crm:scheduling (version 1) uttrycktes att attributet mostRecentContent i EI-posten skulle motsvara ”Starttidpunkt för den bokade tiden”. Detta krav är fr o m denna version (2.0) borttaget. Attributet mostRecentContent ska fr o m denna version populeras enligt TKB för Engagemangsindex (itintegration:engagementindex) och motsvara datum och tid för när uppdateringen skett i informationsobjektet, således till den tidpunkten då EI-posten (bokningen) skapas (eller ändras).

| Attribut | Format | Mult | Domänspecifik semantik eller värde | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- |
| serviceDomain | Text | 1..1 | Värdet ska vara ”riv:supportprocess:logistics:scheduling” | Del av instansens unikhet. |
| categorization | Text bestående av bokstäver i ASCII. | 1..1 | Värdet ska vara ”NA”. / - Ändring fr.o.m. version 1.1.2. | Del av instansens unikhet. |
| logicalAddress | Text, enligt hsaid standard | 1..1 | Vårdcentralens/vård-enhetens HSA-id. Värdet ska vara den logiska adress som ska användas av konsumenter som ska adressera vårdcentralens tidbok genom tjänstekontrakten i denna domän. | Del av instansens unikhet. |
| businessObjectInstanceIdentifier | Text | 1..1 | BookingId för bokningen som denna engagemangsindexpost pekar på eller kallelse. | Del av instansens unikhet. |

#### Vid ändringar i tidbokningssystemet ska tjänsteproducenten uppdatera Engagemangsindex
Engagemangsindex ska uppdateras när en bokning skapas, ändras, blir inaktuell, eller av annan anledning tas bort i verksamhetens tidbokningssystem. Beroende på förutsättningar och implementation hos producenten så kan en ombokning innebära att befintlig post i Engagemangsindex tas bort och att en ny skapas.
Uppdatering av Engagemangsindex ska göras oavsett om bokningen i verksamhetens tidbokningssystem skapats/ändrats av invånaren via tjänstekontrakt eller av vårdcentralens personal med hjälp av verksamhetens bokningsfunktion (exempelvis via verksamhetssystemets gränssnitt).

#### Endast dessa bokningar ska finnas i Engagemangsindex
Endast bokningar som uppfyller samtliga av följande kriterier ska finnas i Engagemangsindex:
Bokningen ligger framåt i tiden (ska äga rum).
Bokningen är lämplig för e-tjänster att presentera för invånaren. Ett känt exempel på en typ av bokning med koppling till en specifik invånare, men som inte bör presenteras för denne, är en bokning där vårdpersonal avsatt tid för administrativt arbete inom invånarens behandling.
Detaljer om bokningen kan hämtas genom tjänstekontrakten för Tidbokning. Tjänstekonsumenter ska kunna skicka en begäran till tjänstekontraktet GetAppointment för att hämta detaljer om en bokning som skickats till Engagemangsindex. Det leder till att en tidboksproducent behöver logik för att kunna selektera för vilka vårdcentraler som förändringar ska notifieras till Engagemangsindex.
Historiken ska rensas från Engagemangsindex av tjänsteproducenten. Tjänsteproducenten ska rensa information som inte längre är relevant, exempelvis när en bokning är passerad (när besöket ägt rum). Regelverket för när informationen inte är relevant kan skilja sig mellan olika verksamheter och styrs från tjänsteproducenten.

#### En bokad tid i tidbokningssystemet ska motsvaras av en post i Engagemangsindex
Varje enskild bokning i verksamhetens tidbokningssystem som uppfyller kriterierna i dessa anvisningar ska motsvaras av en post i nationella Engagemangsindex.

#### Då anses en bokning ha ändrats
En bokning anses ha ändrats när värdet för något av attributen som utgör dess engagemangspost har ändrats. Tabellen nedan redovisar för de attribut* som utgör en engagemangsindexpost.
Observera att det endast är vid ändring av attributet mostRecentContent, d.v.s. vid ombokning, som en befintlig post kan uppdateras. Ändring av övriga attribut innebär att befintlig post i Engagemangsindex måste tas bort och ersättas med en ny eftersom dessa attribut utgör instansens unikhet (engagemangsindexpostens sammansatta nyckel).
* Attributen creationTime, updateTime och owner tas inte upp i tabellen eftersom värden för dessa attribut sätts av Engagemangsindex.

| Attribut | Beskrivning | Beslutsregler och kommentar | Hantering |
| :--- | :--- | :--- | :--- |
| registeredResidentIdentification | Invånarens personnummer. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| serviceDomain | Värdet ska vara ”riv:supportprocess:logistics:scheduling”. | Del av instansens unikhet. | Detta värde kan inte ändras. |
| categorization | Värdet ska vara "NA”. / - Ändring fr.o.m. version 1.1.2. | Del av instansens unikhet. | Detta värde kan inte ändras. |
| logicalAddress | Vårdcentralens/vårdenhetens HSA-id. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| businessObjectInstanceIdentifier | BookingId för bokningen. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| clinicalProcessInterestId | Värdet ska vara "NA”. | Del av instansens unikhet. | Detta värde kan inte ändras. |
| mostRecentContent | Datum och tid för när uppdateringen skett i informationsobjektet, således den tidpunkten då EI-posten (bokningen) skapas (eller ändras). | Ej del av instansens unikhet. | En ändring av detta värde innebär att befintlig post måste uppdateras. |
| sourceSystem | Källsystemet som genererade engagemangsposten. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |
| dataController | Ett värde som kan användas för att härleda (kan kräva manuella insatser) vem som är personuppgiftsansvarig för posten. | Del av instansens unikhet. | En ändring av detta värde innebär att posten måste tas bort och ersättas med en ny. |

#### Då anses en bokning vara inaktuell
En bokning anses vara inaktuell när den avbokats, dess starttidpunkt passerats (besöket påbörjats). När en bokning blivit inaktuell ska dess post i nationella Engagemangsindex tas bort av tjänsteproducenten.

#### Uppdatera befintlig post vs. ta bort befintlig post och skapa en ny
En befintlig post i Engagemangsindex ska tas bort och ersättas med en ny vid ändring av något av värdena för attributen som ingår i begäran till tjänstekontraktet Update och utgör del postens unikhet. Följande attribut ingår i begäran till tjänsten Update och utgör del av en engagemangsindexposts unikhet:
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
Exempel: En bokad tid bokas om till en annan vårdenhet/vårdcentral. Engagemangsindexposten måste tas bort och ersättas med en ny eftersom värdet för attributet logicalAddress, som är en del av postens unikhet, har ändrats.
Exempel: Vårdenheten/vårdcentralen byter HSA-id. Engagemangsindexposten måste tas bort och ersättas med en ny eftersom värdet för attributet logicalAddress, som är en del av postens unikhet, har ändrats.
Vid ändring av värdet för attributet sourceSystem. Aktuellt om den bokade tiden flyttas till ett nytt källsystem, eller om befintligt källsystem byter HSA-id.
Vid ändring av värdet för attributet registeredResidentIdentification. Aktuellt om invånaren får ett nytt personnummer.
Vid ändring av värdet för attributet dataController. Aktuellt om personuppgiftsansvarig för posten ändras.

#### Så tas en befintlig post bort ur Engagemangsindex
Exempel på en befintlig post i Engagemangsindex:

| <engagement> / <registeredResidentIdentification>191212121212</registeredResidentIdentification> / <serviceDomain>riv:crm:scheduling</serviceDomain> / <categorization>NA</categorization> / <logicalAddress>SE2321000016-A65H</logicalAddress> / <businessObjectInstanceIdentifier>861245</businessObjectInstanceIdentifier> / <clinicalProcessInterestId>NA</clinicalProcessInterestId> / <mostRecentContent>20160613140000</mostRecentContent> / <sourceSystem>SE2321000016-84GX</sourceSystem> / <dataController>SE232100-0016</dataController> / </engagement> |
| :--- |
Attributen creationTime, updateTime och owner tas inte upp för posten i exemplet ovan eftersom värden för dessa attribut sätts av Engagemangsindex-implementationen.
Begäran till tjänsten Update för att ta bort posten ovan
En post i Engagemangsindex tas bort via begäran till tjänsten Update med den befintliga postens sammansatta nyckel och attributet deleteFlag satt till "true".

| <urn1:Update> / <urn1:engagementTransaction> / <urn2:deleteFlag>true</urn2:deleteFlag> / <urn2:engagement> / <urn2:registeredResidentIdentification>191212121212</urn2:registeredResidentIdentification> / <urn2:serviceDomain>riv:crm:scheduling</urn2:serviceDomain> / <urn2:categorization>NA</urn2:categorization> / <urn2:logicalAddress>SE2321000016-A65H</urn2:logicalAddress> / <urn2:businessObjectInstanceIdentifier>861245</urn2:businessObjectInstanceIdentifier> / <urn2:clinicalProcessInterestId>NA</urn2:clinicalProcessInterestId> / <urn2:sourceSystem>SE2321000016-84GX</urn2:sourceSystem> / <urn2:dataController>SE232100-0016</urn2:dataController> / </urn2:engagement> / </urn1:engagementTransaction> / </urn1:Update> |
| :--- |
Observera att attributet/elementet mostRecentContent inte ska uppges i begäran vid borttag av poster. D.v.s. när deleteFlag är satt till "true".

#### Grundladdning
Engagemangsindex behöver inte grundladdas med engagemang inom tjänstedomänen supportprocess:logistics:scheduling.

#### Ändringar från tidigare version av anvisningarna

### Aktör som utför bokning
Alla tjänsteinteraktioner i domänen har ett obligatoriskt attribut för att från tjänstekonsumenten ange aktör (Actor). En aktör kan vara invånaren själv, vårdnadshavare eller en medarbetare i professionen som handräcker invånaren med genomförandet av bokningen. Se kapitlet Definition av komplexa typer för mer detaljer.

### ResultCode
ResultCode returneras i vissa interaktioner där inte svaret på interaktionen har något direkt returvärde.
OK
Transaktionen har utförts enligt uppdraget i frågemeddelandet.
INFO
Transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren. Exempel på detta kan vara ”kom fastande”.
ERROR
Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara ”tiden har blivit upptagen av annan invånare”.
Specifika felkoder per tjänstekontrakt
För vissa av tjänstekontrakten finns det dessutom möjlighet att från verksamhetssystemet förmedla specifika felkoder för inträffade situationer. I ett sådant fall förväntas en konsument att endast nyttja felkoden och själv välja hur exakt felfallet ska uttryckas till invånare. En konsument kan exempelvis välja att bete sig olika för olika felkoder. Ett exempel skulle kunna vara att om en tid redan hann bli bokad av annan invånare under tiden när invånare inte hann boka, då kan exempelvis invånaren ges möjlighet att välja ny tid i kalendern, i stället för att tvingas börja om hela processen från början.
MakeAppointment

| Felkod | Betydelse |
| :--- | :--- |
| REQUESTED_TIME_IS_ALREADY_RESERVED | Efterfrågad tid är redan bokad. |
| REQUESTED_TIME_HAS_ALREADY_PASSED | Efterfrågad tid har passerat. |
| REQUESTED_TIME_IS_NO_LONGER_AVAILABLE | Efterfrågad tid är ej tillgänglig. |
| TOO_LATE_TO_MAKE_APPOINTMENT | För sent att boka tiden. Mottagningen tillåter inte bokning en viss tid innan tiden startar. |
| USER_IS_ALREADY_OCCUPIED | Invånaren har redan bokat en annan tid vid samma tillfälle på mottagningen. |
| APPOINTMENT_IS_NOT_ALLOWED | Bokning är inte tillåtet. Kan bero på konfigurationsfel eller att möjligheten att boka just har ändrats. |
UpdateAppointment

| Felkod | Betydelse |
| :--- | :--- |
| APPOINTMENT_IS_ALREADY_CANCELED | Tiden är redan avbokad. |
| APPOINTMENT_IS_ALREADY_UPDATED | Tiden är redan ombokad. |
| REQUESTED_TIME_IS_ALREADY_RESERVED | Efterfrågad tid är redan bokad |
| REQUESTED_TIME_HAS_ALREADY_PASSED | Efterfrågad tid har passerat |
| REQUESTED_TIME_IS_NO_LONGER_AVAILABLE | Efterfrågad tid är ej tillgänglig |
| TOO_LATE_TO_UPDATE_APPOINTMENT | För sent att omboka tiden. Mottagningen tillåter inte ombokning en viss tid innan tiden startar. |
| APPOINTMENT_DOES_NOT_EXIST | Bokningen saknas. |
| USER_IS_ALREADY_OCCUPIED | Invånaren har redan bokat en annan tid vid samma tillfälle på mottagningen |
| UPDATE_APPOINTMENT_IS_NOT_ALLOWED | Ombokning är inte tillåtet. |
| APPOINTMENT_IS_ALREADY_CANCELED | Tiden är redan avbokad. |
| APPOINTMENT_IS_ALREADY_UPDATED | Tiden är redan ombokad. |
CancelAppointment

| Felkod | Betydelse |
| :--- | :--- |
| APPOINTMENT_IS_ALREADY_CANCELED | Tiden är redan avbokad. |
| APPOINTMENT_IS_ALREADY_UPDATED | Tiden är redan ombokad. |
| TOO_LATE_TO_CANCEL_APPOINTMENT | För sent att avboka tiden. Mottagningen tillåter inte avbokning en viss tid innan tiden startar. |
| APPOINTMENT_DOES_NOT_EXIST | Bokningen saknas. |
| CANCEL_IS_NOT_ALLOWED | Avbokning är inte tillåtet. |
ConfirmAppointment

| Felkod | Betydelse |
| :--- | :--- |
| APPOINTMENT_IS_ALREADY_CONFIRMED | Tiden är redan bekräftad. |
| TOO_LATE_TO_CONFIRM_APPOINTMENT | För sent att bekräfta tiden. Mottagningen tillåter inte bekräftelse en viss tid innan tiden startar. |
| APPOINTMENT_DOES_NOT_EXIST | Bokningen saknas. |
| CONFIRM_IS_NOT_ALLOWED | Bekräftelse ej tillåtet. |

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

| SE<identifierare för utfärdande organisation>-<identifierare för objektet> / Exempel: SE2321000016-1hz5 |
| :--- |
Anslutande parter ska kunna hantera HSA-id skiftlägesokänsligt i såväl konsument som producent.
Exempel:
SE2321000016-1hz5 och SE2321000016-1HZ5 ska tolkas som samma HSA-id.

## Tjänstekontrakt

### CancelAppointment
Tjänstekontraktet ger aktören möjlighet att avboka en befintlig bokning, baserat på kombinationen av unikt bokningsid samt personnummer för patienten som bokningen gäller.

#### Frivillighet
Tjänstekontraktet är obligatorisk för vårdenheter som erbjuder avbokning och således kan svara ”sant” i fältet ”cancelAppointmentAllowed” för bokningens tidstyp (appointment.timeslot.timeType.cancelAppointmentAllowed)
I övriga fall är tjänsten frivillig.

#### Version
Tjänstekontraktet finns sedan version 1.0. Aktuell version är 2.0. Tjänstekontraktets meddelandeinformationsmodell har förändrats sedan föregående version med följd att kompatibiliteten bakåt har brutits.

#### Meddelandeinformationsmodell (MIM)

![img_015.png](images/img_015.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| appointmentId | uuidType | Unikt id för bokningen. Ska uttryckas som ett uuid (universally unique identifier). | 1..1 |
| personId | PersonIdType (IIType) | Patientens personnummer, för den patient som tidbokningen gäller. | 1..1 |
| reasonText | string | Patientens anledning till avbokningen, uttryckt som fritext | 0..1 |
| reasonCode | CVType | Patientens anledning till avbokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själv koder och kodsystem att använda | 0..1 |
| reasonCode.code | string | Kod för anledningen till avbokningen | 1..1 |
| reasonCode.codeSystem | string | Definierar vilket kodsystem som fältet code tillhör. | 1..1 |
| reasonCode.displayName | string | Den text som beskriver koden och ska visas till invånaren | 1..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### ConfirmAppointment
Tjänstekontraktet ger aktören möjlighet att bekräfta en tidbokning som verksamheten bokat åt patienten, baserat på kombinationen av ett unikt boknings-id samt personnummer för patienten som bokningen gäller.

#### Frivillighet
Tjänstekontraktet är frivilligt.

#### Version
Tjänstekontraktet är nytt fr o m denna version. Aktuell version är 1.0.

#### Meddelandeinformationsmodell (MIM)

![img_010.png](images/img_010.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| appointmentId | uuidType | Unikt id för bokningen som ska bekräftas. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| personId | PersonIdType (IIType) | Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### GetAppointment
Tjänstekontraktet hämtar detalj-information om en befintlig tidbokning vid en vårdenhet, baserat på kombinationen av ett unikt boknings-id samt personnummer för patienten som bokningen gäller.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för tjänsteproducent.

#### Version
Tjänstekontraktet finns sedan version 1.0. men har bytt namn från GetBookingDetails till GetAppointment. Nuvarande version är 2.0

#### Meddelandeinformationsmodell (MIM)

![img_006.png](images/img_006.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| appointmentId | uuidType | Unikt id för bokningen. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| personId | PersonIdType (IIType) | Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| Svar |  |  |  |
| appointment | AppointmentType | Information om den aktuella tidbokningen.
Svaret tillåts vara tomt i fallet där tidbokningssystemet inte kan matcha det angivna boknings-id eller personnumret som skickades i begäran | 0..1 |
| appointment.appointmentId | uuidType | Unikt id för bokningen. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| appointment.relatedAppointmentId | uuidType | Unikt id för tidbokning(ar) som är relaterade till denna tidbokning. Ska uttryckas som uuid (universally unique identifier). | 0..* |
| appointment.timeslot | TimeslotType | Tidslucka som tidbokningen gäller | 1..1 |
| appointment.timeslot.timeslotId | uuidType | Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| appointment.timeslot.timeType | TimeTypeType | Typ av tid som uttrycker var bokningen/besöket avser | 1..1 |
| appointment.timeslot.timeType.code | string | Kod för tidstypen | 1..1 |
| appointment.timeslot.timeType.hidden | boolean | Visar huruvida tidstypen är märkt som skyddad av verksamheten – hidden=TRUE.
En skyddad tidstyp ska inte vara valbar för invånare från en lista med tidstyper som vårdcentralen erbjuder, t ex vid ett nybokningsflöde. Skyddade tidstyper ska bara kunna bokas av invånare om verksamheten tilldelat tidstypen till invånaren, t ex genom en digital kallelse eller om invånare blivit triagerad i ett försteg och resultatet därifrån resulterat i tidstypen. Om attributet utelämnas ska tidstypen anses vara ”ej skyddad”. | 0..1 |
| appointment.timeslot.timeType.careContactCode | CVType | Anger vilken typ av vårdkontakt som bokningen avser. Se Kv kontakttyp för vidare information (https://inera.atlassian.net/wiki/download/attachments/2648506471/kv_kontakttyp.xlsx?api=v2).
Observera att schemat definierar kardinaliteten så som [0..*]. Schemats kardinalitet är applicerbart då tidstypen förmedlas tillsammans med en ledig tid (tidslucka) och då verksamheten erbjuder tiden valbart så som olika kontakttyper (t ex fysiskt besök eller videomöte). När vårdkontaktstypen förmedlas tillsammans med bokningen är det redan bestämt på vilket sätt besöket ska utföras. Därav kardinaliteten [0..1] i detta kontext. | 0..1 |
| appointment.timeslot.timeType.healthcareService | HealthcareServiceType | Anger vilken typ av vårdtjänst |  |
| appointment.timeslot.timeType.healthcareTeam | boolean | Anger huruvida patienten möter ett team av personal vid besöket. Om attributet utelämnas anses besöket ej vara av typen teambokning. | 0..1 |
| appointment.timeslot.timeType.patientGroup | boolean | Bokning av tid där flera personer/patienter i grupp möter vården för samma typ av vårdtjänst. Om attributet utelämnas anses besöket ej vara av typen gruppbokning | 0..1 |
| appointment.timeslot.timeType.cancelAppointmentAllowed | boolean | Anger huruvida invånaren tillåts att avboka bokningen via e-tjänst | 1..1 |
| appointment.timeslot.timeType.updateAppointmentAllowed | boolean | Anger huruvida invånaren tillåts att omboka bokningen via e-tjänst | 1..1 |
| appointment.timeslot.timeType.appointmentRule | TimeTypeRulesType | Regler och inställningar som ska appliceras vid ett ny-/om- och avbokningsflöde. Observera kardinaliteten för attributet, endast en instans av appointmentRule får anges per flödestyp (Nybokning/Ombokning/Avbokning). | 0..3 |
| appointment.timeslot.startTime | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| appointment.timeslot endTime | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| appointment.timeslot.timeLength | double | Längd på besöket i minuter | 0..1 |
| appointment.timeslot healthcareFacility | OrgUnitType | Vårdenheten som bokningen gäller hos | 1..1 |
| appointment.timeslot practitioner | PractitionerType | HoS-person som besöket är bokat hos. | 0..* |
| appointment.timeslot.resource | ResourceType | En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst. | 0..* |
| appointment.timeslot.withinCareGuarantee | boolean | Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. | 0..1 |
| appointment.timeslot.alternativeAddress | string | En alternativ adress som kan anges av verksamheten, kopplat till den specifika tidsluckan. Om vårdcentralen vill förmedla en alternativ adress mer generellt rekommenderas motsvarande attribut i OrgUnitType | 0..1 |
| appointment.personId | PersonIdType / (IIType) | Patientens personnummer, för den patient som tidbokningen gäller | 1..1 |
| appointment.personId.root | string | OID som definierar typ av identifierare. / 1) För PNR ska Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas. / 2) För SNR ska Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas. | 1..1 |
| appointment.personId.extension | string | Personnummer eller samordningsnummer | 1..1 |
| appointment.information | InformationType | Information som verksamheten vill förmedla inför besöket | 0..1 |
| appointment.status | AppointmentStatusEnum | Visar vilket tillstånd bokningen är i. Giltiga tillstånd:
1) confirm = bokningen är bekräftad av patienten / 2) preliminary = bokningen är ännu inte bekräftad av patienten | 1..1 |
| appointment.newAppointmentReasonText | string | Patientens angivna anledning till nybokningen i fritext. | 0..1 |
| appointment.newAppointmentReasonCode | CVType | Patientens angivna anledning till nybokningen, representerad som kod. | 0..1 |
| appointment.updateAppointmentReasonText | string | Patientens angivna anledning till ombokningen i fritext. Om bokningen har ombokats i flera omgångar ska senaste anledningen anges. | 0..1 |
| appointment.updateAppointmentReasonCode | CVType | Patientens angivna anledning till ombokningen, representerad som kod. Om bokningen har ombokats i flera omgångar ska senaste anledningen anges. | 0..1 |
| appointment.alternativeLocation | string | En alternativ adress för bokningen att presentera för invånaren. En alternativ adress kan vara intressant att förmedla om besöket ska ske på annan adress än där mottagningen normalt utför besök. Fältet är frivilligt. | 0..1 |
| appointment.reference | ReferenceType | Referenser som ska förmedlas till patienten kopplat till besöket. Referenserna kan exempelvis peka på websidor öppna på nätet. | 0..* |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### GetAppointments
Tjänstekontraktet hämtar lista med invånarens samtliga tidbokningar, baserat på personnummer för patienten som bokningen/bokningarna gäller. Konsument kan välja att begära filtrering på ett tidsspann, en specifik tidstyp eller vårdtjänst.
Tjänstekontraktet kan adresseras gentemot en aggregerande, sammanställande tjänst eller direkt mot en specifik vårdenhet. Svaret är en lista med paret - unika boknings-id’n per HSAId för vårdenhet.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för tjänsteproducent.

#### Version
Ett motsvarande tjänstekontrakt som kan hämta en sammanställning av patientens bokningar finns sedan version 1.0. men har bytt namn från GetSubjectOfCareSchedule till GetAppointments. GetAppointments returnerar bara unika identifierare för tidbokningarna och vårdenheterna. Nuvarande version är 2.0

#### Meddelandeinformationsmodell (MIM)

![img_016.png](images/img_016.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| personId | PersonIdType (IIType) | Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| fromDate | DT | Filtrering på tidbokningar som ska äga rum fr o m datum. | 0..1 |
| toDate | DT | Filtrering på tidbokningar som ska äga rum t o m datum. | 0..1 |
| timetypeCode | string | Filtrering på tidbokningar som gäller en specifik tidstyps-kod. | 0..1 |
| healthcareServiceCode | string | Filtrering på tidbokningar som gäller en specifik vårdtjänst. Koden förväntas vara hämtad från svenska utgåvan av Snomed-CT (OID: 1.2.752.116.2.1.1) | 0..1 |
| Svar |  |  |  |
| appointment | AppointmentPerHealthcareFacilityType | Lista med tidbokningar per vårdenhet. Svaret innehåller en lista där endast den unika identifieraren för tidbokningen samt HSAId för vårdenheten returneras. | 0..* |
| appointment.appointmentId | uuidType | Unikt id för bokningen. Ska uttryckas som uuid (universally unique identifier). | 1..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### GetTimeTypes
Tjänstekontraktet hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet. Tidstyperna kan filtreras för vald vårdtjänst, vårdpersonal och per invånare. Samtliga filter är frivilliga. En vårdenhet förväntas returnera alla tillgängliga tidstyper i fallet då konsument frågar utan att förmedla ett personnummer, ett scenario som skulle kunna vara tillämpbart i fallet då konsument implementerar administrativa funktioner kring tidstyper. 
Vårdenhet har samtidigt möjlighet att märka utvalda tidstyper som skyddade. Konsumerande tjänst förväntas erbjuda dessa tidstyper endast om invånarens nybokningsflöde har föregåtts av ett kvalificerings-steg (triagering).

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för tjänsteproducent om tjänsteproducenten stödjer nybokning.
I övrigt är tjänstekontraktet frivilligt.

#### Version
Tjänstekontraktet finns sedan version 1.0. men har bytt namn från GetAllTimeTypes till GetTimeTypes. Tjänstekontraktets meddelandeinformationsmodell har samtidigt ändrats, ändringen är kompatibilitetsbrytande gentemot version 1.0. Nuvarande version är 2.0

#### Meddelandeinformationsmodell (MIM)

![img_013.png](images/img_013.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga datum ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”). | 0..1 |
| healthcareServiceCode | string | Filtrering på tidstyper som kan utföra en specifik vårdtjänst. Vårdtjänstkoden som anges här ska motsvara en kod enligt SNOMED-CT (svenska upplagan) | 0..1 |
| practitionerId | HSAIdType | Filtrering på tidstyper som erbjuds av specifik vårdpersonal | 0..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. | 0..1 |
| Svar |  |  |  |
| timeType | TimeTypeType | Lista med tidstyper. | 0..* |
| timeType.code | string | Kod för tidstypen | 1..1 |
| timeType.hidden | boolean | Visar huruvida tidstypen är märkt som skyddad av verksamheten – hidden=TRUE.
En skyddad tidstyp ska inte vara valbar för invånare från en lista med tidstyper som vårdcentralen erbjuder, t ex vid ett nybokningsflöde. Skyddade tidstyper ska bara kunna bokas av invånare om verksamheten tilldelat tidstypen till invånaren, t ex genom en digital kallelse eller om invånare blivit triagerad i ett försteg och resultatet därifrån resulterat i tidstypen. / Om attributet utelämnas ska tidstypen anses vara ”ej skyddad”. | 0..1 |
| timeType.careContactCode | CVType | Anger vilken typ av vårdkontakt som bokningen avser. Se Kv kontakttyp för vidare information (https://inera.atlassian.net/wiki/download/attachments/2648506471/kv_kontakttyp.xlsx?api=v2). | 0..1 |
| timeType.healthcareService | boolean | Anger vilken typ av vårdtjänst | 0..* |
| timeType.healthcareTeam | boolean | Anger huruvida patienten möter ett team av personal vid besöket. Om attributet utelämnas anses besöket ej vara av typen teambokning. | 0..1 |
| timeType.patientGroup | boolean | Bokning av tid där flera personer/patienter i grupp möter vården för samma typ av vårdtjänst. Om attributet utelämnas anses besöket ej vara av typen gruppbokning. | 0..1 |
| timeType.cancelAppointmentAllowed | boolean | Anger huruvida invånaren tillåts att avboka bokningen via e-tjänst |  |
| timeType.updateAppointmentAllowed | boolean | Anger huruvida invånaren tillåts att omboka bokningen via e-tjänst |  |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### GetAvailableDates
Tjänstekontraktet hämtar datum med lediga tider för angivet datumintervall. Vid anrop för att hämta datum med lediga tider gällande en ombokning skickar konsument den ursprungliga tidbokningens unika bokningsId. På så sätt kan en producent ta hänsyn till vilken vårdpersonal eller vilken/vilka resurs(er) som var allokerade för ursprungsbokningen och därmed endast returnera sådana datum som matchar de kriterier som vårdenhet bestämt. Observera att passerade tider inte ska returneras av producenten.
Tjänstekontraktet returnerar datum med lediga tider som är bokningsbara online för angiven invånare. För varje datum som returneras kan producenten dessutom ange hur många lediga tider det finns för datumet. Om konsument inte angivit tidstypskod, HSAId för vårdpersonal eller vårdtjänstkod i begäran och de lediga tiderna är relaterade till olika tidstyper, vårdpersonal eller vårdtjänster ska producent returnera samma datum flera gånger, en gång per kombination av dessa.

#### Frivillighet
Tjänstekontraktet är obligatorisk om vårdenhet (producenten) erbjuder flöde för nybokning eller ombokning. För övriga flöden är tjänsten frivillig.

#### Version
Tjänstekontraktet finns sedan version 1.0. Aktuell version är 2.0. Tjänstekontraktets meddelandeinformationsmodell har förändrats sedan föregående version med följd att kompatibiliteten har brutits.

#### Meddelandeinformationsmodell (MIM)

![img_007.png](images/img_007.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga datum ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”). | 0..1 |
| originalAppointementId | uuidType | Unikt id för ursprungsbokningen Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven ursprungsbokning. Ska uttryckas som uuid (universally unique identifier). | 0..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 0..1 |
| startDateInclusive | DT (string) | Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| endDateInclusive | DT (string) | Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| priority | integer | Konsumentens prioritering av behovet för bokning/besök. Prioritet bestäms av ett steg som föregås av tidbokningen. Exempel på sådant försteg kan vara en tjänst som triagerar invånaren/patienten. Prioritet bör inte gå att väljas av invånaren själv. | 0..1 |
| practitionerId | HsaIdType (string) | HSA-id för HoS-personal att filtrera lediga tider på. | 0..1 |
| timeTypeCode | string | Tidstyp att söka lediga datum för. / En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. | 0..1 |
| healthcareServiceCode | string | Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Koden som anges ska motsvara en SnomedCT-kod | 0..1 |
| careContactCode | CVType | Kontaktsätt att söka lediga datum för. | 0..1 |
| careContactCode.code | string | Kod för det kontaktsätt som konsument söker efter lediga datum | 1..1 |
| careContactCode.codeSystem | string | Konsument rekommenderas att även ange vilket kodsystem som kod för kontaktsätt innefattas i. | 0..1 |
| Svar |  |  |  |
| availableDate | AvailableDateType | Lista med datum där det finns lediga tider | 0..* |
| availableDate .date | DT | Ledigt datum. | 1..1 |
| availableDate.noOfTimeslots | integer | Antal lediga tider som finns på datumet | 1..1 |
| availableDate.timeType | TimeTypeType | Tidstyp som de lediga tiderna gäller | 1..1 |
| availableDate.practitioner | PractionerType | Personal som är relaterad till de lediga tiderna | 0..1 |
| availableDate.resource | ResourceType | Resurs som är relaterad till de lediga tiderna | 0..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

### GetAvailableTimeslots
Tjänstekontraktet hämtar lediga tider för angivet datumintervall. Vid anrop för ombokning skickar konsument den ursprungliga tidbokningens unika bokningsId. På så sätt kan en producent ta hänsyn till vilken vårdpersonal eller vilken/vilka resurs(er) som var allokerade för ursprungsbokningen och därmed endast returnera sådana datum som matchar de kriter som vårdenhet bestämt. Observera att passerade tider inte ska returneras av tjänstekontraktet.
Tjänstekontraktet returnerar lediga tider som är bokningsbara online för angiven invånare.
Vid anrop för ombokning styr tidstyp och resurs från ursprungsbokningen vilka datum som returneras. Om det är nybokning hämtas tillgängliga datum utifrån tidstyp. Observera att passerade tider inte ska returneras av tjänsten (tider som är historiskt bokbara).

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har inte förändrats sedan version 1.1. Aktuell version är 2.0.

#### Meddelandeinformationsmodell (MIM)

![img_020.png](images/img_020.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga tider ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”). | 0..1 |
| originalAppointementId | uuidType | Unikt id för ursprungsbokningen Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven ursprungsbokning. Ska uttryckas som uuid (universally unique identifier). | 0..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 0..1 |
| startDateInclusive | DT (string) | Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| endDateInclusive | DT (string) | Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| priority | Integer | Konsumentens prioritering av behovet för bokning/besök. Prioritet bestäms av ett steg som föregås av tidbokningen. Exempel på sådant försteg kan vara en tjänst som triagerar invånaren/patienten. Prioritet bör inte gå att väljas av invånaren själv. | 0..1 |
| practitionerId | HsaIdType (string) | HSA-id för HoS-personal. | 0..1 |
| timeTypeCode | string | Tidstyp att söka lediga datum för. / En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. | 0..1 |
| healthcareServiceCode | string | Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Kod för vårdtjänst ska uttryckas som en Snomed-CT kod (svensk utgåva). | 0..1 |
| careContactCode | CVType | Kontaktsätt att söka lediga datum för. | 0..1 |
| Svar |  |  |  |
| timeslot | TimeslotType | List med lediga tider | 0..* |
| timeslot.timeslotId | uuidType | Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| timeslot.timeType | TimeTypeType | Typ av tid som uttrycker var bokningen/besöket avser. Se datatypen TimeTypeType för vidare information. | 1..1 |
| timeslot.startTime | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| timeslot.endTime | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| timeslot.timeLength | double | Längd på besöket i minuter | 0..1 |
| timeslot.healthcareFacilityHSAId | HSAIdType | HSAId för vårdenheten som bokningen gäller hos. | 1..1 |
| timeslot.practitioner | PractitionerType | HoS-person som besöket är bokat hos. Se datatypen PractitionerType för vidare information. | 0..* |
| timeslot.resource | ResourceType | En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst. / Se datatypen ResourceType för vidare information. | 0..1 |
| timeslot.withinCareGuarantee | boolean | Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. Om attributet utesluts kan en konsument inte dra slutsatser huruvida den erbjudna lediga tiden ligger inom eller utom vårdgarantin. | 0..1 |
| timeslot.alternativeAddress | string | En alternativ adress som kan anges av verksamheten, kopplat till den specifika tidsluckan. Om vårdcentralen vill förmedla en alternativ adress mer generellt rekommenderas motsvarande attribut i OrgUnitType | 0..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

### GetHealthcareFacilities
Tjänstekontrakt för att hämta alla vårdenheter som erbjuds för nybokning eller ombokning för aktuell invånare (vårdenhet i begäran representerar då den kallande organisationen). Detta tjänstekontrakt följer inte riktigt samma mönster som övriga tjänstekontrakt, genom att vårdenheten som får begäran i någon mening agerar ställföreträdare för en sortiments- och utbudskatalog och därigenom svarar för andra vårdenheters räkning. Det är dock underförstått att de vårdenheter som listas i svaret utför samma typ av behandling som den vårdenhet som fick begäran och följer samma kodverk för AppointmentType (tidstyp), HealthcareService(s) (vårdtjänster) etc. Det är den svarande vårdenhetens ansvar att de vårdenheter som listas i svaret är bokningsbara, rent avtalsmässigt och att de har stöd för online-bokning enligt dessa tjänstekontrakt.
Tjänstekontraktet returnerar en lista av vårdenheter som kan bokas online av angiven invånare. Om originalAppointmentId är med i begäran, returneras endast vårdenheter som är valbara vid ombokning av just angiven bokning.
Förtydligande:
I listan med vårdenheter i svaret ska även den vårdenhet som svarar på frågan finnas med om denna erbjuder tider för aktuell behandling. D.v.s. det ska inte vara underförstått för konsumenten att den svarande vårdenheten alltid kan utföra det som efterfrågas. Exempel på situationer när den svarande vårdenheten inte ska finnas med i listan är om denna är en så kallad virtuell vårdcentral/vårdenhet som exempelvis används som avsändare vid kallelser för screening men som inte utför vårdtjänsten.

#### Frivillighet
Tjänstekontraktet är frivilligt att implementera för producent.

#### Version
Tjänstekontraktet finns sedan 1.1 och finns kvar för att bibehålla funktionalitet tillgänglig i 1.1. Nuvarande version är 2.0

#### Meddelandeinformationsmodell (MIM)

![img_004.png](images/img_004.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| originalAppointementId | uuidType | Unikt id för ursprungsbokningen Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven ursprungsbokning. Ska uttryckas som uuid (universally unique identifier). | 0..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 0..1 |
| timeTypeCode | string | Tidstyp att söka lediga datum för. / En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. | 0..1 |
| healthcareServiceCode | string | Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. | 0..1 |
| Svar |  |  |  |
| healthcareFacility | OrgUnitType | Lista med tillgängliga vårdcentraler/vårdenheter. | 0..* |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

### GetHealthcareFacility
Tjänstekontrakt för att hämta detaljerad information om en vårdenhet. Den detaljerade informationen kan innefatta en alternativ adress, om vårdenheten väljer att uttrycka en sådan. Den detaljerade informationen kan också innefatta information eller villkorstext som vårdenheten vill förmedla till invånaren/patienten i samband med bokningen.
Begäran för detta tjänstekontrakt är tomt. Tjänstekontraktet adresseras, liksom tjänstedomänens samtliga tjänstekontrakt, gentemot vårdenheten enligt logicalAddress.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att implementera för producent om producent stödjer nybokning, ombokning eller avbokning. I annat fall är tjänstekontraktet frivilligt att implementera för producent.

#### Version
Tjänstekontraktet är nytt fr o m 2.0. Nuvarande version är 2.0

#### Meddelandeinformationsmodell (MIM)

![img_017.jpeg](images/img_017.jpeg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Inga attribut i begäran |  |  |  |
| Svar |  |  |  |
| healthcareFacility | OrgUnitType | Detaljer om vårdenheten. | 1..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

### GetPractitioners
Tjänstekontrakt för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet för aktuell invånare. Tjänsteproducenten ansvarar för att tillämpa verksamhetens regelverk för att filtrera svaret (t.ex. en vårdenhet som bara tillåter invånare att boka tid enligt listad doktor).
Tjänstekontrakt returnerar en lista med information om utförare (en medarbetare). För varje personal ska HSA-id vara med.

#### Frivillighet
Tjänstekontrakt är frivilligt att implementera.

#### Version
Tjänstekontrakt finns sedan 1.1 men har döpts om från GetAllPerformers till GetPractitioners.  Aktuell version är 2.0.

#### Meddelandeinformationsmodell (MIM)

![img_011.png](images/img_011.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga tider ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”). | 0..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. . Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 0..1 |
| originalAppointementId | uuidType | Unikt id för ursprungsbokningen Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven ursprungsbokning. Ska uttryckas som uuid (universally unique identifier). | 0..1 |
| timeTypeCode | string | Tidstyp att söka personal för. / En konsument kan välja att söka personal baserat på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. | 0..1 |
| healthcareServiceCode | string | Vårdtjänst att söka personal för. En konsument kan välja att söka personal baserat på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Kod för vårdtjänster uttrycks som SNOMED-CT koder (svensk upplaga). | 0..1 |
| Svar |  |  |  |
| practitioner | PractitionerType | Information om bokningsbar vårdpersonal. | 0..* |
| practitioner.HSAId | HSAIdType | Bokningsbar vårdpersonals HsaId |  |
| practitioner.firstName | string | Vårdpersonals förnamn. | 1..1 |
| practitioner.lastName | string | Vårdpersonals efternamn. | 1..1 |
| practitioner.title | string | Vårdpersonals titel. | 0..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

### MakeAppointment
Tjänstekontrakt för nybokning vid en vårdenhet. Tjänsten returnerar det unika boknings-id för bokningen vid lyckad genomförd nybokning.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för vårdenheter som erbjuder nybokning.

#### Version
Tjänstekontrakt finns sedan 1.1 men har döpts om från MakeBooking till MakeAppointment.
Aktuell version är 2.0.

#### Meddelandeinformationsmodell (MIM)

![img_008.png](images/img_008.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| timeslotId | uuidType | Unik identifierare för tidsluckan som ska bokas. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| reasonText | string | Patientens anledning till bokningen, uttryckt som fritext | 0..1 |
| reasonCode | CVType | Patientens anledning till bokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själva koder och kodsystem att använda | 0..1 |
| reasonCode.code | string | Kod för anledningen till bokningen | 1..1 |
| reasonCode.codeSystem | string | Definierar vilket kodsystem som fältet code tillhör. | 1..1 |
| reasonCode.displayName | string | Den text som beskriver koden och ska visas till invånaren | 1..1 |
| Svar |  |  |  |
| appointmentId | uuidType | Unikt id för nya bokningen. Ska uttryckas som uuid (universally unique identifier). | 0..1 |
| resultCode | ResultCodeEnum (string) | Status för den gjorda bokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### UpdateAppointment
Tjänstekontrakt för att uppdatera en befintlig bokning med nytt datum och tid, alltså en ombokning.
Tjänstekontraktet returnerar en status för genomförd ombokning.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder ombokning och således kan svara ”sant” i fältet ”timeslot.timeType.updateAppointmentAllowed” för någon av följande tjänster:
GetAppoitment
GetAppointments
GetAvailableTimeslots
I övriga fall är tjänsten frivillig.

#### Version
Tjänstekontrakt finns sedan 1.1 men har döpts om från UpdateBooking till UpdateAppointment. Aktuell version är 2.0.

#### Meddelandeinformationsmodell (MIM)

![img_021.png](images/img_021.png)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| personId | PersonIdType (IIType) | Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. | 1..1 |
| originalAppointementId | uuidType | Unikt id för ursprungsbokningen Används för att indikera. Ska uttryckas som uuid (universally unique identifier).ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven ursprungsbokning. | 0..1 |
| timeslotId | uuidType | Unik identifierare för tidsluckan som ska bokas. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| reasonText | string | Patientens anledning till ombokningen, uttryckt som fritext | 0..1 |
| reasonCode | CVType | Patientens anledning till ombokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själv koder och kodsystem att använda | 0..1 |
| reasonCode.code | string | Kod för anledningen till ombokningen | 1..1 |
| reasonCode.codeSystem | string | Definierar vilket kodsystem som fältet code tillhör. | 1..1 |
| reasonCode.displayName | string | Den text som beskriver koden och ska visas till invånaren | 1..1 |
| Svar |  |  |  |
| appointmentId | uuidType | Unikt id för nya bokningen. Tidbokningssystemet kan välja att skapa ett nytt unikt id för nya bokningen eller återanvända id för ursprungsbokningen. Ska uttryckas som uuid (universally unique identifier). | 0..1 |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

## Definition av komplexa typer
För kardinalitet, se beskrivning för respektive tjänsteinteraktion, då den kan skilja sig när datatypen används i olika tjänstekontrakt.

### ActorType
Flera tjänsteinteraktioner i domänen har ett obligatoriskt attribut för att från tjänstekonsumenten ange typ av aktör som utför operationen (attributet actor). En aktör kan vara invånaren själv, vårdnadshavare eller en medarbetare i professionen som handräcker invånaren med genomförandet av bokningen. Det kan t.ex. vara en sköterska på 1177 Sjukvårdsrådgivningen som på invånarens begäran genomför en bokning via 1177 Vårdguidens e-tjänster eller via 1177 Rådgivningsstödet.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| actor.actorId | IIType | Identifierare för aktören. Kan vara ett personnummer, samordningsnummer eller HSAId beroende på typ av aktör | 1..1 |
| actor.actorId.root | string | OID som definierar typ av identifierare. / 1) För PNR ska Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas. / 2) För SNR ska Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas. / 3) För HSAId ska oid för HSAId (1.2.752.129.2.1.4.1) användas. | 1..1 |
| actor.actorType | SnomedCtType
(CVType) | Kod som definierar typ av aktör | 1..1 |
| actor.actorType.code | string | Följande aktörstyper kan uttryckas enligt följande koder (Se Snomed-CT, Svenska upplagan): / Invånare är själv aktören = 116154003 / Vårdnadshavare = 60101000052104 / God man = 60081000052107 / Förmyndare = 60121000052105 / Hälso- och sjukvårdspersonal = 223366009 | 1..1 |
| actor.actorType.codeSystem | string | Aktörstypen uttrycks som en Snomed-CT kod. Attributet codeSystem sätts till ”1.2.752.116.2.1.1” | 1..1 |
Följande exempel på xml-struktur anger att aktören är en patient/invånare. ActorId ska då vara personnummer/samordningsnummer:

| <ah:Actor xmlns:ah=”urn:riv:interoperability:headers:1” > / <ah:actorId> / <ah:root>1.2.752.129.2.1.3.1</ah:root> / <ah:extension>191212121212</ah:extension> / </ah:actorId> / <ah:actorType> / <ah:code>116154003</ah:code> / <ah:codeSystem>1.2.752.116.2.1.1</ah:codeSystem> / </ah:actorType> / </ah:Actor> |
| :--- |
Följande exempel på xml-struktur anger att aktören är en medarbetare i professionen (hälso- och sjukvårdspersonal).  actorId ska då vara medarbetarens HSA-id:

| <ah:Actor xmlns:ah=”urn:riv:interoperability:headers:1” > / <ah:actorId> / <ah:root>1.2.752.129.2.1.4.1</ah:root> / <ah:extension>SE123456-ETT-HSAID</ah:extension> / </ah:actorId> / <ah:actorType> / <ah:code>223366009</ah:code> / <ah:codeSystem>1.2.752.116.2.1.1</ah:codeSystem> / </ah:actorType> / </ah:Actor> |
| :--- |
För aktören medarbetare i professionen får endast Flöden 1-3 - Boka tid tillgängliggöras i tjänstekonsument. Detta för att inte tjänstekonsument ska hamna inom lagrum direktåtkomst/sammanhållen journalföring.

### AvailableDateType
Datatypen används för att förmedla ett datum där verksamheten erbjuder minst en ledig tid.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| date | DT | Datumet där verksamheten erbjuder minst en ledig tid | 1..1 |
| noOfTimeslots | integer | Antal lediga tider (tidsluckor) som erbjuds för det aktuella datumet | 1..1 |
| timeType | TimeTypeType | Tidstypen som erbjuds för aktuellt datum | 1..1 |
| practitioner | PractitionerType | Personal som är relaterad till de lediga tiderna | 0..1 |
| resource | ResourceType | Resurs som är relaterad till de lediga tiderna | 0..1 |

### InformationType
Datatypen används för att från verksamheten förmedla informations- och villkorstexter. Informations- och villkorstexter är relaterade till olika objekt i tjänstedomänen. Informationstexter är information som verksamheten vill förmedla till invånare men inte kräver att invånare aktivt bekräftar att invånare tagit del av informationen. Villkorstexter ska däremot aktivt bekräftas av invånare för att invånare ska tillåtas fortsätta i flödet.
Det är möjligt att uttrycka informations- och villkorstexter för följande objekt:
Bokning (AppointmentType) *
Tidstyp (TimeTypeType genom TimeTypeRulesType)
Vårdtjänst (HealthcareServiceType)
Vårdenheten (OrgUnitType)
(*) För bokningen (AppointmentType) kan verksamheten bara uttrycka informationstexter, ej villkorstexter. Detta för att det inte är applicerbart att efterkräva att invånare ska godkänna villkor efter att bokningen är bokad.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| header | string | Rubrik för informations- eller villkorstexten. | 1..1 |
| description | string | Informationstexten eller villkorstexten som ska förmedlas till invånare | 0..1 |
| link | anyURI | Länk till relaterad information där invånare kan läsa mer om informationstexten eller villkorstexten | 0..1 |

### PersonIdType
PersonIdType förmedlar ett person-id för individ (motsvarande det aktuella subjektet i tjänstekontraktsanropet). Begreppsmässigt används både begreppet invånare och patient blandat i denna domän. Se domänens begreppsmodell i informationsspecifikationen för vidare förklaring.
Datatypen PersonIdType ärver från datatypen IIType och har i sin utökning en syntaktisk begränsning i vad attributet root får anta. Datatypen PersonIdType kan således endast förmedla personnummer eller samordningsnummer.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| root | string | OID som definierar typ av identifierare. / 1) För PNR ska Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas. / 2) För SNR ska Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas. | 1..1 |
| extension | string | Personnummer eller samordningsnummer | 1..1 |

### ReferenceType
Datatypen förmedlar en referens som kan vara en rubrik tillsammans med en beskrivning och/eller en hyperlänk.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| name | string | Namn på referensen | 1..1 |
| description | string | Beskrivning av referensen | 0..1 |
| link | anyURI | Länk till referensen | 0..1 |

### ResourceType
Datatypen förmedlar en resurs som är relaterad till besöket eller den lediga tiden. En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| description | string | Beskrivning av resurs | 0..1 |
| typeOfResource | CVType | Typ av resurs. Kan exempelvis uttryckas som en Snomed-CT kod / Exempel: / 272181003 / 1.2.752.116.2.1.1 = ”klinisk utrustning och/eller kliniska” hjälpmedel / 466808009 / 1.2.752.116.2.1.1 = ”videoprocessor” m fl | 0..1 |
| resourceAttribute | CVType | Detaljerade egenskaper för resursen | 0..1 |

### TimeslotType
TimeslotType återkommer i flera interaktioner och innehåller detaljer om en tid oavsett om denna är bokad eller ledig.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| timeslotId | uuidType | Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| timeType | TimeTypeType | Typ av tid som uttrycker var bokningen/besöket avser. Se datatypen TimeTypeType för vidare information | 1..1 |
| startTime | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTime | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| timeLength | double | Längd på besöket i minuter | 0..1 |
| healthcareFacilityHSAId | HSAIdType (string) | Vårdenheten som bokningen gäller hos | 1..1 |
| practitioner | PractitionerType | HoS-person som besöket är bokat hos. | 0..* |
| resource | ResourceType | En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst. | 0..* |
| withinCareGuarantee | boolean | Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. | 0..1 |
| alternativeAddress | string | En alternativ adress som kan anges av verksamheten, kopplat till den specifika tidsluckan. Om vårdcentralen vill förmedla en alternativ adress mer generellt rekommenderas motsvarande attribut i OrgUnitType | 0..1 |

### PractitionerType

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| id | HsaIdType (string) | HSA-id för bokningsbar vårdpersonal. | 1..1 |
| firstName | string | Vårdpersonals förnamn. | 1..1 |
| lastName | string | Vårdpersonals efternamn. | 1..1 |
| title | string | Vårdpersonals titel. | 0..1 |

### TimeTypeRulesType
Generell typ för att uttrycka regler kopplade till tidstypen, i kombination med det flöde som reglerna ska gälla. De olika flödena är nybokningsflöde, ombokningsflöde eller avbokningsflöde.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| type | ProcessEnum | Definierar vilken process/vilket tidbokningsflöde som reglerna gäller. Möjliga värden är:
NYBOKNING = nybokningsflöde
AVBOKNING = avbokningsflöde
OMBOKNING = ombokningsflöde | 1..1 |
| reasonTextRequired | ReasonRequiredEnum | Definierar huruvida invånaren ska ange en anledning till ny-, om eller avbokningen. Vilket av flödena det gäller definieras av föregående attribut (type). / Att ange anledning i form av fritext kan kombineras med anledning i form ett fördefinierat val (reasonCodeRequired). / Möjliga värden är: / Mandatory = Invånaren måste ange en anledning
Optional = Invånaren kan ange en anledning (frivilligt)
ReasonNotSupported = Invånaren kan inte ange en anledning | 1..1 |
| reasonCodeRequired | ReasonRequiredEnum | Definierar huruvida invånaren ska ange en anledning till ny-, om eller avbokningen, uttryckt som ett av flera fördefinierade anledningar som verksamheten i förväg har definierat. Vilket av flödena det gäller definieras av föregående attribut (type). / Att ange anledning i form av ett förval kan kombineras med anledning i form av fritext (reasonTextRequired). / Möjliga värden är: / Mandatory = Invånaren måste ange en anledning
Optional = Invånaren kan ange en anledning (frivilligt)
ReasonNotSupported = Invånaren kan inte ange en anledning | 1..1 |
| reasonCodes | CVType | Lista med förval som invånaren ska välja bland, så som anledning till ny-, om- eller avbokningen. | 0..* |
| information | InformationType | Informationstext att presentera till invånaren, kopplat till tidstypen samt till aktuellt flöde | 0..* |
| conditionToConfirm | InformationType | Villkorstext att presentera till invånaren, kopplat till tidstypen samt till aktuellt flöde | 0..* |
Exempel 1:
Verksamheten önskar att invånaren måste fylla i anledning till nybokningen i form av fritext:

| <appointmentRules xmlns="urn:riv:supportprocess:logistics:scheduling:2"> / <type>NYBOKNING</type> / <reasonTextRequired>Mandatory</reasonTextRequired> / <reasonCodeRequired>ReasonNotSupported</reasonCodeRequired>
</appointmentRules> |
| :--- |
Exempel 2:
Verksamheten önskar att invånaren måste fylla i anledning till ombokningen i form av ett av tre förval som verksamheten bestämt. De tre förvalen i exemplet är ”Tiden passar inte”, ”Har inget vårdbehov längre”, ”Bokad på annan mottagning”:
(code1, code2, code3 är koderna som motsvarar valen. Koderna kan exempelvis vara hämtade från nationellt kodverk, exempelvis  SNOMED-CT eller från ett regionalt förvaltat kodverk. OID:codesystem1 ska då peka ut det kodverk varifrån koden är hämtad.)

| <appointmentRules xmlns="urn:riv:supportprocess:logistics:scheduling:2"> / <type>OMBOKNING</type> / <reasonTextRequired> ReasonNotSupported</reasonTextRequired> / <reasonCodeRequired>Mandatory</reasonCodeRequired>
      <reasonCodes> / <code>code1</code> / <codeSystem>OID:codeSystem1</codeSystem> / <displayName>Tiden passar inte</displayName> / </reasonCodes> / <reasonCodes> / <code>code2</code> / <codeSystem>OID:codeSystem1</codeSystem> / <displayName>Har inget vårdbehov längre</displayName> / </reasonCodes> / <reasonCodes> / <code>code3</code> / <codeSystem>OID:codeSystem1</codeSystem> / <displayName>Bokad på annan mottagning</displayName> / </reasonCodes>
</appointmentRules> |
| :--- |
Exempel 3:
Verksamhetens tidbokssystem kan inte inhämta och hantera invånares anledning till besöket i samband med en nybokning. Verksamheten vill därmed inte att invånare ska fylla i något.

| <appointmentRules xmlns="urn:riv:supportprocess:logistics:scheduling:2"> / <type>NYBOKNING</type> / <reasonTextRequired>ReasonNotSupported</reasonTextRequired> / <reasonCodeRequired>ReasonNotSupported </reasonCodeRequired> / </appointmentRules> |
| :--- |
