# 1 Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
processmanagement: decisionsupport: insurancemedicinedecisionsupport

Tjänstekontrakten är baserade på RIVTA 2.1 och reglerade genom arkitekturella beslut.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

Vid produktonssättning av tjänsten kommer initialt endast Ineras tjänst Webcert få anslutas som tjänstekonsument, tills utfallet av samordning med projektet behandlingsinstruktioner är analyserat. Detta kan innebära att tjänstekontraktet kan komma att uppdateras eller uppgå i en annan tjänstedomän. Beslut om detta kommer att tas före 2015-12-22.

Gränssnitt som integreras i journalsystemen, behöver i största möjliga mån samordna oss så att det blir så få gränssnitt som möjligt. Framför allt skulle en samordning kring medicinska beslutsstöd gynna utrullningstakten då flera pågående initiativ då inte behöver konkurrera om prioritering i journalleverantörernas och Ineras kundgruppers införandeplaner. Om detta även ger färre tjänstedomäner är förvaltningen enklare. Dock kan en framtida utredning visa att detta ej är aktuellt.

Ett mål för samordningen är att hitta ett gemensamt och vedertaget sätt att uttrycka beslutsregler med en dynamisk bindning till fackspråk istället för domänspecifika lösningar.

## Svenskt namn

operativprocesstyrning:beslutsstöd:försäkringsmedicinsktbeslutsstöd
försäkringsmedicinsktbeslutsstöd

## WEB beskrivning

1. För att effektivisera processen kring sjukskrivningsbedömningar tillgängliggör denna domän den information som ligger till grund för sådana bedömningar i strukturerad form för att kunna integreras i informationssystem. Genom att tillhandahålla information på ett strukturerat sätt ökar användbarheten av den information som Socialstyrelsen idag tillhandahåller i fritext via sin webbplats för försäkringsmedicinskt beslutsstöd (FMB).

2. Syftet med försäkringsmedicinskt beslutsstöd är att:
   - Ge vägledning om vilka informationsmängder som är av vikt vid sjukskrivningsbedömning givet en viss diagnos.
   - Ge ett beslutsunderlag för sjukskrivningsbedömning baserat på de värden som anges för dessa informationsmängder.
   - Ge övrig information om diagnos som inte är kopplat till sjukskrivningsbedömningen men som kan vara till stöd i sjukskrivningsprocessen.

## Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0 |  | Samma mapp som detta dokument |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation_processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0 |  | Samma mapp som detta dokument |

## Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| FMB | Försäkringsmedicinskt beslutsstöd | Socialstyrelsens beslutsstöd för sjukskrivningsbedömning |
| TKB | Tjänstekontraktsbeskrivning | Kravspecifikation för tjänstekontrakt |
| RIV-TA | Regelverk för interoperabilitet vid vård- och omsorgstjänster | Tekniskt regelverk |
