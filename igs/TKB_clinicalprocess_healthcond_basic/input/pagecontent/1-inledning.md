## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: healthcond: basic
Tjänstekontraktet är baserade på RIVTA 2.1 [R1] och reglerat genom arkitekturella beslut [R2].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: basuppgifter
basuppgifter tillstånd

### Beskrivning
Denna domän hanterar information gällande observationer och mätvärden. Syftet med domänen är att tillgängliggöra journalförd strukturerad information om observationer och mätvärden från vårdverksamheter för återanvändning i olika syften. Informationen i familjen av kontrakt som detta kontrakt tillhör möjliggör ett sätt att representera komplexa kliniska sammanhang i atomära delar. De atomära delarna sammanfogas med hjälp av sambandsklasser som kan skapa relationer mellan respektive del. Ett exempel på detta kan vara att det finns ett explicit dokumenterat samband mellan en ställd diabetes typ-1 diagnos och tidigare tagna blodglukosmätningar.
Tjänstedomänen ställer krav på att informationen är strukturerad och kodad. Denna domän ska tillgodose behov av återanvändning av strukturerad observationsinformation som finns hos exempelvis kvalitetsregister, uppföljningssystem, system för den enskildes direktåtkomst, system för utlämnande, system för professionens åtkomst till sammanhållen journalföring och centrala system för rapportering till olika former av myndighetsregister.


### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | RIVTA flera dokument | Finns på Webben | [Länk](http://rivta.se/) |
| R2 | Arkitekturella beslut – | Obligatoriskt | Bilaga |
| R3 | RIV Tekniska Anvisningar Översikt 2.0.1 | Finns på Webben | [Länk](https://inera.atlassian.net/wiki/spaces/RTA/pages/3632911/RIV+Tekniska+Anvisningar+versikt) |
| R4 | The Unified Code for Units of Measure | Standardmåttenheter för att använda som enhet för mätvärden | [Länk](http://unitsofmeasure.org/) / Version 1.9 (2013-10-22) eller senare. |
| R5 | Nationell Informationsstruktur (NI) Socialstyrelsen |  | [Länk](https://informationsstruktur.socialstyrelsen.se/) |
| R6 | Ärendehantering | Ärendehantering för tjänstekontrakten i den här domänen. | [Länk](https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic) |
| R7 | Senaste version av SOSFS 2016:40 (HSLF-FS 2016:40) Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården |  | [Länk](https://www.socialstyrelsen.se/kunskapsstod-och-regler/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/) |
| R8 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården |  | [Länk](https://www.socialstyrelsen.se/globalassets/sharepoint-dokument/artikelkatalog/handbocker/2017-3-2.pdf) |
| R9 | Lista med förekommande kodverk i Nationella tjänstekontrakt |  | [Länk](https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902) |
| R10 | RIV Tekniska Anvisningar – Parallella huvudversioner av ett tjänstekontrakt | Finns på webben | [Länk](http://rivta.se/documents/ARK_0040/) |
| R11 | Information om Personuppgiftstjänsten | Flera dokument | [Länk](https://www.inera.se/tjanster/alla-tjanster-a-o/personuppgiftstjansten/) |

### Begrepp och termer

| Begrepp | Beskrivning |
| :--- | :--- |
| Personidentifierare | En identitetsbeteckning för att identifiera person, här i IT-system. Exempel: personnummer, samordningsnummer eller reservidentitet. |
| Personnummer | För varje folkbokförd person i Sverige fastställer Skatteverket ett personnummer som identitetsbeteckning. |
| Reservidentitet (även kallat reservnummer) | Tillfällig identitetsbeteckning för individ då säkerställt person- eller samordningsnummer saknas, t.ex. då individens identitet inte kan fastställas, vid vård i katastrofsituationer mm. |
| Lokal reservidentitet | Reservidentiteter som ges ut och hanteras lokalt i en organisation, t.ex. i ett landsting eller en kommun. |
| Individs huvudidentitet | Den nu gällande (aktuella) personidentifieraren för en individ. / Exempel1: En person har haft ett samordningsnummer, men får vid senare tillfälle ett personnummer. Personnumret blir personens nya huvudidentitet. / Exempel2: En patient i vården som inte är folkbokförd i Sverige får ett nationellt Reservid tilldelat hos en vårdgivare, eftersom patienten saknar personnummer/samordningsnummer. Senare konstateras hos vårdgivaren att patienten också haft en lokal reservidentitet där man dokumenterat en tidigare vårdkontakt. Vårdgivaren knyter den lokala lokal reservidentiteten till patientens nationella Reservid, vilket är patientens huvudidentitet. |
| Kopplade personidentifierare, kopplingsinformation | Flera personidentifierare för samma individ har kopplats samman i en IT-tjänst. Exempel: en patient har tidigare registrerats på ett nationellt ReservID, men identifieras senare med hens personnummer. ReservID kopplas till patientens personnummer i en stödtjänst för personuppgifter. |
