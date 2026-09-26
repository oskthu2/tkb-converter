# 5 Tjänstedomänens meddelandemodeller

Källa: *Tjänstekontraktsbeskrivning Vård- och omsorgsutbud*, version 3.0 (2023-04-25), [TKB_supportprocess_serviceprovisioning_healthcareoffering.docx](TKB_supportprocess_serviceprovisioning_healthcareoffering.docx).

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.

För mappning mot RIM (bland annat NI 2021:2) se informationsspecifikationen [R9].

### 5.1 V-MIM

#### 5.1.1 GetOfferingCatalogues

Begäran visas nedan med rosa bakgrund och svaret med vit bakgrund.

![GetOfferingCatalogues](img_005.png)

##### 5.1.1.1 Begäran

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetOfferingCatalogues | GetOfferingCatalogues |
| Katalogansvarig Organisation | providingOrganization |
| id | providingOrganizationId |
| ägarform | management |
| offentlig huvudman | publicProvider |

##### 5.1.1.2 Svar

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetOfferingCataloguesResponse | GetOfferingCataloguesResponse |
| Utbudskatalog | offeringCatalogue |
| Katalogansvarig organisation | providingOrganization |
| Katalogsansvarig organisation.id | id |
| Katalogansvarig organisation.namn | name |
| Katalogansvarig organisation.ägarform | management |
| Katalogansvarig organisation.offentlig huvudman | publicProvider |
| Beskrivning | description |
| Beskrivning.text | text |
| Beskrivning.språk | language |
| Beskrivning.roll | role |
| Interaktion | interaction |
| Interaktion.logisk adress | logicalAddress |
| Interaktion.namn | name |
| Interaktion.huvudversion | majorVersion |
| Interaktion.delversion | minorVersion |
| Interaktion.rivtaversion | rivtaVersion |

#### 5.1.2 GetCareServiceOfferings

Begäran visas nedan med rosa bakgrund och svaret med vit bakgrund.

![GetCareServiceOfferings](img_003.png)

##### 5.1.2.1 Begäran

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetCareServiceOfferings | GetCareServiceOfferings |
| GetCareServiceOfferings.id | careServiceId |
| GetCareServiceOfferings.typ av vård- och omsorgstjänst | typeOfCareService |
| GetCareServiceOfferings.typ av plats | typeOfPlace |
| GetCareServiceOfferings.typ av verksamhet | typeOfBusiness |
| GetCareServiceOfferings.språk | actorLanguage |
| GetCareServiceOfferings.roll | actorRole |
| GetCareServiceOfferings.enhets id | performingOrganizationId |
| GetCareServiceOfferings.ålder | targetGroupAge |
| GetCareServiceOfferings.kön | targetGroupGender |
| GetCareServiceOfferings.fritextsökning | searchTerm |
| Katalogansvarig organisation | providingOrganization |
| Katalogansvarig organisation.id för katalogansvarig organisation | providingOrganizationId |
| Katalogansvarig organisation.ägarform | management |
| Katalogansvarig organisation.offentlig huvudman | publicProvider |
| Sökområde (begäran) | location |
| Geografiskt område (begäran) |  |
| Geografiskt område.geografiska koordinater | geographicalCoordinates |
| Geografiskt område.radie | radius |
| Län (begäran) |  |
| Län.länskod | county |
| Kommun (begäran) |  |
| Kommun.kommunkod | municipality |
| Egenskap (begäran) |  |
| Egenskap.typ av egenskap | typeOfPersonalAttribute |
| Egenskap.värde | attributeValue |

##### 5.1.2.2 Svar

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetCareServiceOfferingsResponse | GetCareServiceOfferingsResponse |
| Vård- och omsorgstjänst | careService |
| Vård- och omsorgstjänst.Id | careServiceId |
| Vård- och omsorgstjänst.typ av vård- och omsorgstjänst | typeOfCareService |
| Vård- och omsorgstjänst.giltighet | validity |
| Vård- och omsorgstjänst.status | offeringStatus |
| Vård- och omsorgstjänst.vårdval | careOption |
| Vård- och omsorgstjänst.remisskrav | referralRequired |
| Patientavgift |  |
| Patientavgift.avgift | patientFee |
| Indikator | indicator |
| Indikator.id | indicatorId |
| Indikator.logisk adress | logicalAddress |
| Målgrupp | targetGroup |
| Målgrupp.ålder | age |
| Målgrupp.kön | gender |
| Egenskap | targetGroupAttribute |
| Egenskap.typ av egenskap | typeOfPersonalAttribute |
| Egenskap.värde | attributeValue |
| Remissanvisning | requestTemplate |
| adress | address |
| obligatorisk | mandatory |
| Beskrivning | description |
| Beskrivning.text | text |
| Beskrivning.språk | language |
| Beskrivning.roll | role |
| Plats | location |
| Geografiskt område | geographicalLocation |
| Län |  |
| Län.länskod | county |
| Kommun |  |
| Kommun.kommunkod | municipality |
| Övrigt område | otherLocation |
| Övrigt område.polygon | polygon |
| Övrigt område.benämning | name |
| Fysisk plats | physicalLocation |
| Fysisk plats.belägenhetsadress | locationAddress |
| Fysisk plats.geografiska koordinater | geographicalCoordinates |
| Virtuell plats | virtualLocation |
| Virtuell plats.id | id |
| Kontaktuppgift | contactInformation |
| Kontaktuppgift.rangordning | ranking |
| Kontaktuppgift.för roll | forRole |
| Kontaktuppgift.syfte | purpose |
| Adress för telekommunikation | telecom |
| Telekom.typ av medium | typeOfTelecom |
| Telekom.adress | contactPoint |
| Postadress |  |
| Adress.adress | address |
| Samverkan | cooperation |
| Samverkan.typ av samverkan | typeOfCooperation |
| Samverkan.Giltighet | validity |
| Referens till vård- och omsorgstjänst |  |
| Referens till vård- och omsorgstjänst.id | referenceToCareServiceId |
| Resurs | resource |
| Resurs.typ av resurs | typeOfResource |
| Resurs.egenskap | resourceAttribute |
| Kalendertid |  |
| Kalendertid.tid | availableTime |
| Störningsinformation | interferenceInformation |
| Störningsinformation.datumperiod | datePeriod |
| Störningsinformation.typ av störning | typeOfInterference |
| Utbud |  |
| Katalogansvarig organisation | providingOrganization |
| Katalogansvarig organisation.id | id |
| Katalogansvarig organisation.namn | name |
| Katalogansvarig organisation.ägarform | management |
| Katalogansvarig organisation.offentlig huvudman | publicProvider |
| Organisatorisk enhet | performingOrganization |
| Organisatorisk enhet.enhets id | id |
| Organisatorisk enhet.enhetsnamn | name |
| Organisation | responsibleOrganisation |
| Organisation.id | id |
| Organisation.namn | name |
| Verksamhet |  |
| Verksamhet.typ av verksamhet | typeOfBusiness |

### 5.2 Formatregler

#### 5.2.1 Format för datum och tidpunkter

Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R6]).

Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss” (se referens [R6]).

##### 5.2.1.1 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### 5.2.2 Format för kalenderangivelser - öppettider

Kalenderangivelser enligt iCalendar används för att ange starttid, sluttid, intervall samt frekvens av aktivitet som beställs.

Format och regler för iCalendar är reglerat i RFC 5545 [R4], man bör även läsa errata [R5] för RFC 5545.

UTF-8 bör användas, varje rad ska termineras med CR+LF (hexadecimalt 0D0A), varje rad bör inte vara längre än 75 oktetter, nästföljande rad ska börja med ett space-tecken(hex: 20) eller tab(hex: 09).

Nedan listas exempel på kalenderangivelser, observera att iCalendar inte är begränsad till dessa exempel och en producent eller konsument av iCalendar måste kunna tyda enligt RFC 5545 [R4].

Exempel 1: En kalenderangivelse med endast en starttid.

| BEGIN:VCALENDAR | Start på kalenderangivelse |
| :--- | :--- |
| VERSION:2.0 | Alltid version 2.0 |
| PRODID:-//xyz Corp//NONSGML PDA Calendar Version 1.0//EN | Identifierare av det system som skapade kalenderangivelsen. |
| BEGIN:VEVENT |  |
| DTSTART;TZID=W. Europe Standard Time:20150121T100000 | Starttid med tidszonsangivelse. |
| SEQUENCE:0 | Börjar alltid på 0, räknas upp vid varje uppdatering |
| UID:uid@example.com | Unikt id för kalenderangivelse, återanvänds vid uppdatering. |
| END:VEVENT |  |
| END:VCALENDAR |  |

Exempel 2: En kalenderangivelse med start- och sluttid.

| BEGIN:VCALENDAR | Start på kalenderangivelse |
| :--- | :--- |
| VERSION:2.0 | Alltid version 2.0 |
| PRODID:-//xyz Corp//NONSGML PDA Calendar Version 1.0//EN | Identifierare av det system som skapade kalenderangivelsen. |
| BEGIN:VEVENT |  |
| DTSTART;TZID=W. Europe Standard Time:20150121T100000 | Starttid med tidszonsangivelse. |
| DTEND;TZID=W. Europe Standard Time:20150127T120000 | Sluttid med tidszonsangivelse. |
| SEQUENCE:0 | Börjar alltid på 0, räknas upp vid varje uppdatering |
| UID:uid@example.com | Unikt id för kalenderangivelse, återanvänds vid uppdatering. |
| END:VEVENT |  |
| END:VCALENDAR |  |

Exempel 3: En kalenderangivelse med ett återkommande event som upprepas fem gånger varannan dag.

| BEGIN:VCALENDAR | Start på kalenderangivelse |
| :--- | :--- |
| METHOD:REQUEST |  |
| PRODID:-//xyz Corp//NONSGML PDA Calendar Version 1.0//EN | Identifierare av det system som skapade kalenderangivelsen. |
| VERSION:2.0 | Alltid version 2.0 |
| BEGIN:VEVENT |  |
| SUMMARY;LANGUAGE=sv-SE:Insamling av hälsodata i hemmet. | Beskrivning av kalenderangivelsen, den text som syns i kalendrar med stöd för iCalendar. |
| DTSTART;TZID=W. Europe Standard Time:20150119T100000 | Starttid med tidszonangivelse |
| DTEND;TZID=W. Europe Standard Time:20150119T120000 | Sluttid med tidszonsangivelse |
| RRULE:FREQ=DAILY;INTERVAL=2;COUNT=5 | Regel som beskriver frekvens samt antal återkommande händelser. |
| UID:uid@example.com | Unikt id för kalenderangivelse, återanvänds vid uppdatering. |
| DTSTAMP:20141209T125458Z |  |
| SEQUENCE:0 | Börjar alltid på 0, räknas upp vid varje uppdatering |
| END:VEVENT |  |
| END:VCALENDAR |  |

Exempel på bibliotek för Java är iCal4J som kan producera och konsumera iCalendar.

För presentation i en html5-kapabel enhet/applikation t.ex. en browser se http://microformats.org/wiki/hcalendar  det rådata enligt iCalendar-formatet måste först transformeras till hcalendar för direkt visning i en html5-kapabel enhet.

De flesta kalenderapplikationer kan importera iCalendar ifrån fil med ändelsen .ics

#### 5.2.3 RDF

RDF står för Resource Description Framework och är ett ramverk för att beskriva resurser såsom e-tjänster. RDF har tagits fram för att system ska kunna få nödvändig semantisk information om andra system.

#### 5.2.4 URI

URI står för Uniform Resource Identifier som består av en sträng av tecken som används för att identifiera eller namnge en resurs. Används främst för att referera till en resurs över ett nätverk. En Uniform Resource Locator, URL, är en URI, som förutom att identifiera en resurs även ger information hur man når resursen och var den finns.

Exempel: URL:en http://example.com/ är en URI som identifierar en resurs och som visar att en representation av den resursen (ingångssidans HTML-kod) kan hämtas med HTTP från en värddator med namnet example.com.

#### 5.2.5 ITU

Telefonnummer ska följa https://www.pts.se/contentassets/3c43df1548f447ffa18bb43a84c4dadb/swedish-numbering-plan-for-telephony-acc-itu-180313.pdf

Internationellt prefix + landsnummer + nationell destinationskod + abonnentnummer

Exempel:

Internationellt prefix: 00 eller +

Landsnummer: 46 (Sverige)

Nationell destinationskod - geografiskt riktnummerområde: 0150 (Katrineholm)

Nationell destinationskod - icke-geografiska nummer: 070, 072, 073, 076, 079 (mobiltelefoni)

Abonnentnummer: består av 5-8 siffror

#### 5.2.6 RFC2822

E-postadress anges enligt format RFC2822.

användarnamn@example.com

example.com = domännamn

com= toppdomän som anger namn eller organisation

#### 5.2.7 SWEREF 99 TM

Geografiska koordinater anges enligt referenssystemet SWEREF 99 TM, med angivelse i meter.

Exempel:

geoLocation.north = 6407869

geoLocation.east = 485748
