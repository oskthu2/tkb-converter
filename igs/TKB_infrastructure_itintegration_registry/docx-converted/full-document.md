infrastructure: itintegration:registry

![img_004.png](images/img_004.png)

![img_002.png](images/img_002.png)
Innehållsförteckning
1.1	Svenskt namn	5
1.2	Beskrivning	5
2.1	Version 2.0	6
2.1.1	Oförändrade tjänstekontrakt	6
2.1.2	Nya tjänstekontrakt	6
2.1.3	Utgångna tjänstekontrakt	6
2.2	Version tidigare	7
3.1	Flöden	7
3.1.1	EI läser in aktuella prenumeranter Arbetsflöde	7
3.1.2	En utbudstjänst vill veta vilka tjänstekontrakt en viss vårdenhet stödjer	8
3.1.3	Obligatoriska kontrakt	9
3.2	Adressering	9
3.3	Aggregering och engagemangsindex	9
3.4	Annat…	9
4.1	Informationssäkerhet och juridik	10
4.2	Icke funktionella krav	10
4.2.1	SLA krav	10
4.2.2	Övriga krav	10
4.3	Felhantering	10
4.3.1	Krav på en tjänsteproducent	10
4.3.2	Krav på en tjänstekonsument	11
5.1	MIM	11
5.2	Formatregler	14
5.2.1	Format för personidentitet	14
5.2.2	Format för Datum	14
5.2.3	Format för Datum och Tid	14
5.2.4	Tidszon för tidpunkter	14
6.1	GetLogicalAddresseesByServiceContract	14
6.1.1	Version	14
6.1.2	Fältregler	14
6.1.3	Övriga regler	15
6.1.4	Annan information om kontraktet	19
6.2	GetSupportedServiceContracts	19
6.2.1	Version	19
6.2.2	Fältregler	20
6.2.1	Övriga regler	20
6.2.2	Annan information om kontraktet	20
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| PA1 | 2010-09-20 | Mats Ekhammar, Callista Enterprise AB | Första version |
| PA2 | 2010-10-16 | Johan Eltes, Callista Enterprise AB | Broderat ut texterna. |
| PA3 | 2011-01-22 | Johan Eltes, Callista Enterprise AB | Lagt till tjänsten GetLogicalAddresseesByServiceContract |
| 1.0.0 | 2012-04-14 |  | Release. |
| PB1 | 2013-11-11 | magnus.larsson@inera.se | RIV-TA issue 200. Tjänsten GetLogicalAddresseesByServiceContract har fått utökad behörighetsinformation i form av filter information som kan begränsa när tjänstekonsumenten får anropa respektive tjänsteproducent. 

Första brukare av denna information är Engagemangsindex i syfte att bara anropa tjänsteproducenter av tjänsten ProcessNotification då notifieringen innehåller information som matchar tjänsteproducentens filter. / RIV-TA issue 129. Tjänsten GetSupportedServiceContracts är på begäran av SLL’s utbudstjänst ändrad så att man inte måste ange berörd tjänstekonsument (serviceConsumerHsaId). Detta fält ändras från att vara obligatoriskt till att vara frivilligt i begäran (request). / Då ändringarna ovan framtvingar v2.0 av tjänstekontraktet så gör vi det namnbyte på domänen som CeHis begärt skall göras i samband med en major-revision av tjänstekontraktet. Domännamn byts från itintegration:registry till infrastructure:itintegration:registry. |
| 2.0.0RC5 | 2014-05-28 | magnus.larsson@inera.se | Flytt till nya mallen |
| PB3 | 2014-09-15 | Mattias Nordvall, Inera | Lagt till styckena ”svenskt namn” och ”webb-beskrivning”. |
| 2.0_RC11 | 2024-05-08 | Dennis Djenfer | Ändrat namnrymden för Logisk adressering i WSDL-filen så att den stämmer med anvisningen ”RIV TA Basic Profile 2.1, Regel #8: Logisk adressering”, d.v.s. "Elementet {urn:riv:itintegration:registry:1}LogicalAddress skall användas för att i soap-header ange logisk adressat.". / Tagit bort v1.0 av tjänstekontrakten eftersom de inte längre har några tjänstekonsumenter. |
| 2.0_RC12 | 2024-07-10 | Dennis Djenfer | Uppdaterat attributet ”version” till 2.0 i berörda XML-scheman i enlighet med regel #7 i ARK_0005. / Uppdaterat beskrivningar i WSDL-filer och gemensamt schema. / Ändrat alias från ”itr” till ”riv” för namnrymden ”urn:riv: itintegration:registry:1” i enlighet med regel #8 i ARK_002. |
| 2.0 | 2024-08-30 | Dennis Djenfer | Uppdaterat versionstag i pom.xml |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – infrastructure: itintegration:registry | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
|  |  |  |  |
|  |  |  |  |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure: itintegration: registry
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:tjänsteförmedlingstjänster:förmedlingsinformation
tjänsteadressering

### Beskrivning
Tjänsteadressering är en stödtjänst som används av en tjänsteplattform. Denna tjänstedomän omfattar informationsstrukturer och tjänster för åtkomst och hantering av tjänsteadressringsinformation.
Tjänsteadressering syftar på den i T-boken beskrivna logiska komponenten tjänsteadresseringskatalog.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen infrastructure: itintegration: registry. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt ingår i denna version.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
Inga nya tjänstekontrakt har tillförts

##### Förändrade tjänstekontrakt
GetLogicalAddresseesByServiceContract, version 2.0
GetSupportedServiceContracts, version 2.0
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetLogicalAddresseesByServiceContract | 2.0 | 1.0 | Ej kompatibel |
|  | 1.0 | 2.0 | Ej kompatibel |
| GetSupportedServiceContracts | 2.0 | 1.0 | Ej kompatibel |
|  | 1.0 | 2.0 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Samtliga tjänstekontrakt av version 1.0 har utgått.
OBS: Det gemensamma XML-schemat ”itintegration_registry_1.0.xsd” från version 1.0 används fortfarande av alla tjänstedomäner eftersom dess element LogicalAddress skall användas för att i SOAP-header ange logisk adressat enligt RIV TA Basic Profile 2.1, regel #8: Logisk adressering.

### Version tidigare
Domännamnet för version 1.0 är itintegration:registry

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### EI läser in aktuella prenumeranter Arbetsflöde

##### Arbetsflöde
När EI tar emot index uppdateringar via sin Update-metod så skall registrerade prenumeranter notifieras genom att EI anropar dess ProcessNotification tjänst. Prenumeranter registreras i TAK och nås av EI genom att anropa TAK’ens Registry tjänst GetLogicalAddresseesByServiceContract. Inargumentet serviceConsumerHsaId sätter EI till sitt eget HsaId och inargumentet serviceContractNameSpace anges till namespacet för EI tjänsten ProcessNotification. Den uppläsa informationen sparas internt i en minnes-cache i EI och används då inkomna index-uppdateringar skall leda till att notifieringar skickas till berörda prenumeranter. Se beskrivning av tjänstekontraktet GetLogicalAddresseesByServiceContract nedan för beskrivning av filtreringslogik mm.

##### Roller

##### Sekvensdiagram

![img_003.png](images/img_003.png)

#### En utbudstjänst vill veta vilka tjänstekontrakt en viss vårdenhet stödjer

##### Arbetsflöde
För bakgrund se https://code.google.com/p/rivta/issues/detail?id=129
Utbudstjänster och liknande konsumenter med avancerade process-logik behöver veta vilka tjänstekontrakt en viss vårdenhet stödjer. Genom att anropa tjänstekontraktet GetSupportedServiceContracts så kan en sådan konsument få reda på det.

##### Roller

##### Sekvensdiagram

![img_006.png](images/img_006.png)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 |
| :--- | :--- | :--- |
| GetLogicalAddresseesByServiceContract | X |  |
| GetSupportedServiceContracts |  | X |

### Adressering
Tjänstedomänen tillämpar verksamhetsbaserad adressering.
Följande logiska adresser skall användas:
Regionens organisationsnummer (HSA-id) för regionspecifika registry-tjänster.
Inera AB:s organisationsnummer för nationell registry-tjänst.

### Aggregering och engagemangsindex
Varken aggregering och/eller engagemangsindex är en förutsättning för att använda tjänsterna i denna domän.

### Annat…
Inte i nuläget.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Inte tillämpligt.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Online mot underliggande lagringstjänst. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |

##### Tekniska fel
Utöver hantering av tekniska fel enligt RIV-TA är följande fel specifikt definierade:

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| IllegalArgumentException | ServiceContractNamespece must not be empty or null | Felet orsakas av att ServiceContractNamespece saknas. |
| IllegalArgumentException | ServiceConsumerHsaId must not be empty or null | Felet orsakas av att ServiceConsumerHsaId saknas. |

#### Krav på en tjänstekonsument
Vid tekniskt fel så får omsändningsförsök inte göras oftare än en gång var femte minut.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på.

### MIM
Tjänstekontrakten i denna tjänstedomän speglar T-bokens tjänsteadresseringsmodell. En tjänsteproducent ska hantera tjänsteadresseringsinformation på ett sätt som speglar följande informationsmodell:

![img_005.png](images/img_005.png)
I v2.0 av tjänstekontraktet är informationsmodellen utökad med ny behörighetsinformation kallade behörighetsfilter. Dessa kan användas för att begränsa anropsbehörighet baserat på innehållet i inkommande meddelande, dvs i begäran (request). Se beskrivning av tjänsten GetLogicalAddresseesByServiceContract för regelverk för behörighetsfilter.
Första brukare av denna information är Engagemangsindex i syfte att bara anropa tjänsteproducenter av tjänsten ProcessNotification då notifieringen innehåller information som matchar tjänsteproducentens filter.

| Klass | Beskrivning | Kodverk |
| :--- | :--- | :--- |
| RIVTAProfil | RIVTA-Profil. Namnges med aktuell profils kortnamn (se kodverk). | Definieras av RIVTA-förvaltningen. Dokumenteras på av förvaltningen anvisad plats. När denna text skrevs förvaltas RIVTA av Cehis tekniska expertgrupp på projektplatsen http://code.google.com/p/rivta/ |
| Tjänstekontrakt | Tjänstekontraktets namnrymd enligt tjänsteschema. Namnrymden omfattar både tjänstedomän och tjänstens namn. | Uppbyggnaden av namnrymd definieras av anvisning för Tjänsteschema (del av RIV TA). / Tjänstedomänen fastställs av RIVTA-förvaltningen. |
| Logisk adressat |  | Konceptet definieras av T-boken. Identifierare och innebörd beslutas per tjänstedomän och dokumenteras i respektive tjänstedomäns tjänstekontraktsbeskrivning. |
| Tjänste-komponent | Ett begrepp för en mjukvarukomponent som driftsätts i syfte att publicera en tjänstekomponent eller att konsumera en tjänst. Multiplicitet och regler för attributen beror av roll (konsument/producent). | Kodverk saknas på nationell nivå. Landsting och leverantörer har olika angreppssätt för namnsättning och katalogisering av komponenter i sitt systemlandskap. |
| Anrops-behörighet | En relationsklass som bygger upp en behörighet för en tjänstekonsument (Tjänstekomponent i rollen konsument) att anropa en tjänsteproducent genom att den associeras till en Logisk Adressat (t.ex. en vårdenhet) och ett Tjänstekontrakt (t.ex. ”urn:riv:crm:scheduling:MakeBookingResponder:1”. Behörigheten är löst kopplad till tjänsteproducenten. En vårdenhet som erbjuder direktbokning via Mina Vårdkontakter kan därmed byta tjänsteproducent (bokningssystem) utan att anropsbehörigheten påverkas. |  |
| Logisk adress | En relationsklass som beskriver en addresserbar tjänst. En adresserbar tjänst har ett Tjänstekontrakt som tillgängliggörs av en Logisk Adressat (en verksamhet) genom dess tjänsteproducent (Tjänstekomponent i rollen tjänsteproducent) enligt en viss RIVTA-profil. |  |

### Formatregler

#### Format för personidentitet
Personidentitet anges på formatet ÅÅÅÅMMDD-XXXX. Samma format gäller för olika typer av personidentiteter (reservnummer mm), dvs 8 siffror, bindestreck samt 4 siffror.

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

#### Format för Datum och Tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänstekontrakt

### GetLogicalAddresseesByServiceContract
Tjänsten returnerar en lista över logiska adressater som har en tjänsteproducent för angivet tjänstekontrakt (namnrymd) och som har anropsbehörighet för angiven tjänstekonsument (hsa-id).
Ett tänkt syfte med denna tjänst är att konsumenter med behov av att vidarebefordra anrop till alla producenter av ett specifikt tjänstekontrakt ska kunna använda tjänsten för att fastställa vilka logiska adressater som erbjuder angiven tjänst.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| serviceConsumerHsaId | hsaId | Tjänstekonsument mot vars anropsbehörighet svaret filtreras. | 1..1 |
| serviceContractNameSpace | urn | Det tjänstekontrakt som frågan gäller | 1..1 |
| Svar |  |  |  |
| logicalAddressRecord | LogicalAddresseeRecordType |  | 0..* |
| logicalAddressRecord. logicalAddress | Text | Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract. | 1..1 |
| logicalAddressRecord.filter | FilterType |  | 0..* |
| logicalAddressRecord.filter.
serviceDomain | URN på formatet <regelverk>:<huvuddomän>:<underdomän>. | Namnrymd för Tjänstedomän enligt RIVTA-förvaltningens förvaltade tjänstedomäner. Anges utan versionsnummer. Ex: ”urn:riv:crm:scheduling” | 1..1 |
| logicalAddressRecord.filter.
categorization | Text | Kodverk enligt tjänstedomänens dokumentation. | 0..* |
Not: Utformandet av behörighetsfiltret, FilterType, avspeglar den första intressentens (EngagemangsIndex) direkta behov av filter-information. Om man i framtiden kan identifiera fler intressenter av behörighetsfilter kan datamodellen generaliseras baserat på de behov som då identifierats och införas i en major-version av tjänstekontraktet.

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
R1: Producenten ska filtrera svaret så att det endast innehåller de logiska adresser som angiven konsument har rättighet att adressera för angivet tjänstekontrakt (vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract).
R2: Behörighetsfilter-informationen i svaret skall hanteras enligt följande vid behörighetskontroll:
Om posten logicalAddressRecord för avsedd logicalAddress i svaret från GetLogicalAddresseesByServiceContract inte innehåller några filter-poster så skall anropet tillåtas.
Om det finns en eller flera fitler-poster i logicalAddressRecord så måste meddelandet som skall skickas till logicalAddress innehålla en serviceDomain som ingår i en av filter-posterna, annars skall anropet inte tillåtas.
Om den matchande filter-posten (map serviceDomain) inte anger någon categorization så skall anropet tillåtas.
Om det finns en eller flera categorization angivna i den matchande fitler-posten så måste meddelandet som skall skickas till logicalAddress innehålla en cateorization som ingår i filter-posten, annars skall anropet inte tillåtas.
Om meddelandet innehåller en matchande categorization så skall anropet tillåtas.
Exempel på R2
Varje exempel nedan avspeglar respektive del-regel i R2 ovan.
Följande exempel-meddelande skall skickas till logicalAddress ”logisk-adress”:
<tns:Update
xmlns:tns="urn:riv:itintegration:engagementindex:UpdateResponder:1"
xmlns:tns1="urn:riv:itintegration:engagementindex:1">
<tns:engagementTransaction>
<tns1:serviceDomain>crm:scheduling</tns1:serviceDomain>
<tns1:categorization>Booking</tns1:categorization>
</tns:engagementTransaction>
</tns:Update>
Filter exempel #1 ger behörighet då filter-information saknas:
<GetLogicalAddresseesByServiceContractResponse
xmlns:ns2="urn:riv:infrastructure:itintegration:registry:2"
xmlns="urn:riv:infrastructure:itintegration:registry:
GetLogicalAddresseesByServiceContractResponder:2">
<logicalAddressRecord>
<logicalAddress>logisk-adress</logicalAddress>
</logicalAddressRecord>
</GetLogicalAddresseesByServiceContractResponse>
Filter exempel #2 ger inte behörighet då filter-informationen inte matchar serviceDomain i meddelandet:
<GetLogicalAddresseesByServiceContractResponse
xmlns:ns2="urn:riv:infrastructure:itintegration:registry:2"
xmlns="urn:riv:infrastructure:itintegration:registry:
GetLogicalAddresseesByServiceContractResponder:2">
<logicalAddressRecord>
<logicalAddress>logisk-adress</logicalAddress>
<filter>
<serviceDomain>riv:crm:other</serviceDomain>
</filter>
</logicalAddressRecord>
</GetLogicalAddresseesByServiceContractResponse>
Filter exempel #3 ger behörighet då filter-informationen matchar serviceDomain i meddelandet samt inte innehåller någon categorization:
<GetLogicalAddresseesByServiceContractResponse
xmlns:ns2="urn:riv:infrastructure:itintegration:registry:2"
xmlns="urn:riv:infrastructure:itintegration:registry:
GetLogicalAddresseesByServiceContractResponder:2">
<logicalAddressRecord>
<logicalAddress>logisk-adress</logicalAddress>
<filter>
<serviceDomain>riv:crm:scheduling</serviceDomain>
</filter>
</logicalAddressRecord>
</GetLogicalAddresseesByServiceContractResponse>
Filter exempel #4 ger inte behörighet då filter-informationen matchar serviceDomain men inte categorization i meddelandet:
<GetLogicalAddresseesByServiceContractResponse
xmlns:ns2="urn:riv:infrastructure:itintegration:registry:2"
xmlns="urn:riv:infrastructure:itintegration:registry:
GetLogicalAddresseesByServiceContractResponder:2">
<logicalAddressRecord>
<logicalAddress>logisk-adress</logicalAddress>
<filter>
<serviceDomain>riv:crm:scheduling</serviceDomain>
<categorization>Other1</categorization>
<categorization>Other2</categorization>
</filter>
<filter>
<serviceDomain>riv:crm:other</serviceDomain>
<categorization>Booking</categorization>
</filter>
</logicalAddressRecord>
</GetLogicalAddresseesByServiceContractResponse>
Filter exempel #5 ger behörighet då filter-informationen matchar såväl serviceDomain som categorization i meddelandet:
<GetLogicalAddresseesByServiceContractResponse
xmlns:ns2="urn:riv:infrastructure:itintegration:registry:2"
xmlns="urn:riv:infrastructure:itintegration:registry:
GetLogicalAddresseesByServiceContractResponder:2">
<logicalAddressRecord>
<logicalAddress>logisk-adress</logicalAddress>
<filter>
<serviceDomain>riv:crm:scheduling</serviceDomain>
<categorization>Booking</categorization>
</filter>
<filter>
<serviceDomain>riv:crm:other</serviceDomain>
<categorization>Other1</categorization>
<categorization>Other2</categorization>
</filter>
</logicalAddressRecord>
</GetLogicalAddresseesByServiceContractResponse>
R3: All matchning av strängar för att avgöra om serviceDomain och categorization överensstämmer mellan meddelande och behörighetsfilter skall göras utan att ta hänsyn till versaler och gemener, dvs med ”IgnoreCase” semantik. Detta för att undika problem som uppkommer om olika intressenter använder versaler och gemener på olika sätt.

##### Icke funktionella krav
Inga specifika för denna tjänst.

###### SLA-krav
Inga avvikande krav som avviker från de generella kraven.

#### Annan information om kontraktet
Ingen övrig information om kontraktet.

### GetSupportedServiceContracts
Tjänsten returnerar en lista över tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat. Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd).
Ett tänkt syfte med denna tjänst är att konsumenter med avancerad process-logik ska kunna använda tjänsten för att fastställa vilka tjänstkontrakt (eller huvudversioner av tjänster) som stöds av t.ex. en viss vårdenhet. Det är framför allt intressant för konsumenter av tjänstedomäner där vissa tjänstekontrakt är frivilliga att realisera. Om en logisk adressat (verksamhet så som vårdenhet) saknar stöd för ett av domänens frivilla tjänstekontrakt blir det underlag för hur den konsumerande e-tjänsten ska styra sitt flöde.
Sedan v2.0 av tjänsten är fältet serviceConsumerHsaId frivilligt, det var obligatoriskt i v1.0.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| serviceConsumerHsaId | hsaId | Tjänstekonsument. Svaret innehåller bara  de tjänstekontrakt som denna konsument har rättighet att använda mot angiven logisk adress. | 0..1 |
| logicalAdress | Text | Typ och betydelse definieras per tjänstedomän. | 1..1 |
| Svar |  |  |  |
| serviceContractNamespace | urn | Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för anropet av GetSupportedServiceContracts. | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
R1: Om tjänstekonsument är angiven så skall producenten ska filtrera svaret så att det endast innehåller de tjänstekontrakt som angiven konsument har rättighet att använda för angiven logisk adressat.

##### Icke funktionella krav
Inga specifika för denna tjänst.

###### SLA-krav
Inga avvikande krav som avviker från de generella kraven.

#### Annan information om kontraktet
Ingen övrig information om kontraktet.
