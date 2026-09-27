
|  | infrastrukturtjänster:katalogtjänster:synkronisering / Tjänstekontraktsbeskrivning för katalogtjänstsynkronisering / Version 1.0_RC3 / 2018-09-21 |
| :--- | :--- |
Innehåll
1	Inledning	4
1.1	Svenskt namn	5
2	Versionsinformation	5
2.1	Version 1.0	5
2.1.1	Oförändrade tjänstekontrakt	5
2.1.2	Nya tjänstekontrakt	5
2.1.3	Förändrade tjänstekontrakt	5
2.1.4	Utgångna tjänstekontrakt	6
2.2	Version tidigare	6
3	Tjänstedomänens arkitektur	7
3.1	Flöden	7
3.1.1	Hämta information om förändrat katalogdata	7
3.2	Adressering	8
3.2.1	Sammanfattning adressering	9
3.3	Aggregering och engagemangsindex	9
4	Tjänstedomänens krav och regler	9
4.1	Informationssäkerhet och juridik	9
4.2	Icke funktionella krav	9
4.2.1	SLA krav	9
4.2.2	Övriga krav	10
4.3	Felhantering	10
4.3.1	Krav på en tjänsteproducent	10
4.3.2	Krav på en tjänstekonsument	10
5	Tjänstedomänens meddelandemodeller	10
5.1	V-MIM	10
5.1.1	GetMasterDataChangeSet	10
5.2	Formatregler	12
5.2.1	Format för datum och tidpunkter	12
5.2.2	URI	13
6	Tjänstekontrakt	14
6.1	GetMasterDataChangeSet	14
6.1.1	Version	14
6.1.2	Fältregler	14
6.1.3	Övriga regler	16
6.1.4	Annan information om kontraktet	17
Revisionshistorik

| Version | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 | 2017-12-07 | Första versionen | Göran Oettinger |  |
| 1.0_RC2 | 2018-04-11 | Uppdaterad efter T-granskning | Göran Oettinger |  |
| 1.0_RC3 | 2018-09-21 | Uppdaterad efter T-granskning | Göran Oettinger |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – operativt processtöd:tillgängliggöra tjänst: vårdochomsorgsutbud | Dokument som tillhör domänen och där signifikanta arkitetkurella beslut som påverkar innehållet i tjänstekontraktsbeskrivningen finns angivna. |  |
| R2 | RIVTA flera dokument | Mall och bakgrundsdokument som tjänstekontraktsbeskrivningen baseras på och förhåller sig till. | http://rivta.se/ |
| R3 | RIV Tekniska Anvisningar Översikt, avsnitt 8.3 | Beskrivning av adresseringsmodeller | http://rivta.se/documents/ARK_0001/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| NTjP | Nationella tjänsteplattformen |  |
| TP | Tjänsteproducent |  |
| TK | Tjänstekonsument |  |
| RIV TA | Regler för interoperabilitet i vården tekniska anvisningar. |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure: directory:synchronization

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Denna tjänstedomän specificerar generella tjänstekontrakt för aktualisering av lokala kopior av masterdata. Tjänstekontrakten är generella i förhållande till respektive masterdatakällas semantik. Syftet är att alla masterdatakällor ska vara tjänsteproducenter av dessa kontrakt. Med hjälp av Tjänstekontrakten kan en kopiehållande tjänstekonsument periodiskt efterfråga ändringshistorik från en kompatibel masterdatakälla. Ändringshistoriken innehåller bara metadata om ändringarna – inte det specifika masterdatainnehållet. Därför behöver en kopiehållande tjänstekonsument använda dessa kontrakt i kombination med masterdatakällans primära tjänstekontrakt (ex. tjänstekontrakt för organisationsuppgifter) för att nå målet med synkroniseringen.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter (TP) och tjänstekonsumenter (TK) ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastrukturtjänster:katalogtjänster:synkronisering
katalogsynkronisering

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen:
infrastructure: directory:synchronization
Observera att version för detta dokument och tjänstedomänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt ingår i denna version.

#### Nya tjänstekontrakt
GetMasterDataChangeSet, version 1.0

#### Förändrade tjänstekontrakt
Inga.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |

#### Utgångna tjänstekontrakt
Inga.

### Version tidigare
Inga.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Hämta information om förändrat katalogdata
Detta flöde beskriver behovet hos ett konsumerande system att hämta information om förändrade poster i en masterdatakälla. Med hjälp av informationen om förändrade poster är det sedan möjligt för konsumerande system att hämta enskilda poster för att aktualisera en lokal kopia av hela eller delar av masterdatakällan. Hämtningen av masterdata görs med andra tjänstekontrakt i andra domäner och exemplifieras nedan med hämtning av utbud.

##### Arbetsflöde

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| 1. Behov av att få information om förändrade  utbud | Ett system som har lokala kopior av masterdata, här exemplifierat med utbud, behöver synkronisera sina poster för att spegla förändringar som skett i masterdatakällan där poster kan skapas, uppdateras och tas bort. |
| 2. Hämta information om förändrade utbudsposter | Systemet med lokala kopior av katalogdata gör en förfrågan till källsystemet med orginalposter, för att få en lista med idn över vilka poster som förändrats. |
| 3. Hämta förändrade utbudsposter | Utifrån svaret i steg 2 kan anropande system välja att hämta de uppdaterade utbudsposterna genom att anropa utbudskontrakt i annan domän och ange relevanta idn i förfrågan. |

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument - system med lokal kopia av masterdata | Ett system som har lokala kopior av masterdata och som synkroniserar mot masterdatakällan med schemalagd anropsfrekvens. |
| Masterdatakälla | System som erbjuder standardiserad tillgång till ändringshistorik genom tjänstekontrakt i denna domän. |

##### Sekvensdiagram

| Tjänstekontrakt | Hämta information om förändrat masterdata |
| :--- | :--- |
| GetMasterDataChangeSet | x |

### Adressering
Domänen äger inte sin egen adresseringsmodell, utan har samma adresseringsmodell som masterdatakällans primära tjänstekontrakt.

#### Sammanfattning adressering

| Åtkomst till utbud av vårdtjänster | Logisk adress |
| :--- | :--- |
| GetMasterDataChangeSet | Se avsnitt 3.2. |

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Domänen hanterar inga personuppgifter.

### Icke funktionella krav

#### SLA krav
Följande SLA-krav gäller för producenter av tjänstekontraktet GetMasterDataChangeSet.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1s per 1 000 returnerade poster. | Mindre än 1s för upp till 1 000 returnerade poster och mindre än 2s för upp till 2 000 returnerade poster etc. |
| Tillgänglighet | Samma som för masterdatakällans primära tjänstekontrakt. |  |
| Last | Ett anrop per timme och tjänstekonsument. |  |
| Aktualitet | Svaret på en begäran ska i varje ögonblick spegla masterdatakällan, d.v.s. det ska inte finnas någon fördröjning från att masterdatakällan förändras till att posten ingår i svaret i GetMasterDataChangeSet. |  |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiska fel
Ej tillämpbart.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel
Ej tillämpbart.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.

### V-MIM

#### GetMasterDataChangeSet
Begäran visas nedan med lila bakgrund och svaret med vit bakgrund.

![img_005.jpg](images/img_005.jpg)

##### Begäran

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetMasterDataChangeSet | GetMasterDataChangeSet |
| Interaktion | Interaction |
| masterDataEntitet | masterDataEntity |
| kategori | category |
| starttid | /timePeriod/start |
| sluttid | /timePeriod/end |

##### Svar

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetMasterDataChangeSetResponse | GetMasterDataChangeSetResponse |
| Katalogdatapost | MasterDataChangeSet |
| id | Id |
| kategori | Category |
| förändringstidpunkt | ChangeTime |
| attribut | Attributes/attribute |

### Formatregler

#### Format för datum och tidpunkter
Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R6]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss” (se referens [R6]).

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### URI
URI står för Uniform Resource Identifier som består av en sträng av tecken som används för att identifiera eller namnge en resurs. Används främst för att referera till en resurs över ett nätverk. En Uniform Resource Locator, URL, är en URI, som förutom att identifiera en resurs även ger information hur man når resursen och var den finns.
Exempel: URL:en http://example.com/ är en URI som identifierar en resurs och som visar att en representation av den resursen (ingångssidans HTML-kod) kan hämtas med HTTP från en värddator med namnet example.com.

## Tjänstekontrakt

### GetMasterDataChangeSet
Hämtar information om masterdata som förändrats i en masterdatakälla baserat på sökkriterier. Sökkriterierna specificerar typ av förändring, datum för förändringen samt vilken typ av masterdata som efterfrågas. Masterdatakällan svarar med en lista innehållande id på poster som förändrats enligt sökkriterierna.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Text i kolumnen ’Beskrivning’ som anges på första raden och är fetmarkerad motsvarar den benämning som används i meddelandemodellen.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| masterDataEntity | CVType | Masterdataentitet / Angivelse av vilken typ masterdata som begäran avser. | 1 |
| ../code | String | Kod som anger typ av masterdata i källan. / Definierar vilken typ av information i masterdatakällan som efterfrågas med hjälp av kod i kodsystem. | 1 |
| ../codeSystem | String | Kodsystem som anger masterdatakälla. / OID för t.ex. utbud | 1 |
| ../codeSystemVersion | String | Versionsnummer för kodsystem | 0..1 |
| ../displayName | String | Textuell beskrivning av det som koden anger. / Koden beskriven i fritext. | 0..1 |
| ../codeSystemName | String | Namn på kodsystem | 0..1 |
| ../originalText | String | Skall ej anges | 0..0 |
| timePeriod | TimePeriodType | Tidsintervall för förändringar. / Begränsning av sökning i tid. Resultatet innehåller information om poster som förändrats i masterdatakällan under angiven tidsperiod. Minst en av start- och endattributen ska anges om attributet timeInterval anges. | 0..1 |
| ../start | TimeStamp | Starttid / Starttid för när en post förändrats. Endast katalogposter som förändrats efter denna tidpunkt ska tas med i svaret. | 0..1 |
| ../end | TimeStamp | Sluttid / Slut för när en post förändrats. Endast katalogposter som förändrats före denna tidpunkt ska tas med i svaret. | 0..1 |
| category | Enum | Kategori / Kategorisering av förändring. Enum med tillåtna värden: create, update, delete. | 0..* |
| Svar |  |  |  |
| MasterDataChangeSet | MasterDataChangeSetType |  | 0..* |
| ../id | IIType | Id / Identifierare som unikt pekar ut en katalogdatapost i källsystemet. Idt kan användas för att hämta posten med tjänstekontraktet som pekas ut i förfrågan. | 1 |
| ../id/root | string | En universellt unik identifierare eller en identifierare som tillsammans med värdet för ”extension” / ger en universellt unik identifierare. | 1 |
| ../id/extension | string | En textsträng som tillsammans med värdet för "root" bildar en unik identifierare. Används om värdet på "root" inte är universellt unikt. | 0..1 |
| ../category | Enum | Kategori / Kategorisering av förändring. / Enum med tillåtna värden: create, update, delete. | 1 |
| ../changeTime | TimeStamp | Förändringstidpunkt / Tidpunkt för när förändringen genomfördes i masterdatakällan. | 1 |
| ../attributes | AttributeType | Angivelse av förändrade attribut för katalogposten. / Om category är update kan förändrade fält anges i svaret, så att konsumenten kan härleda om uppdateringen är relevant för att trigga en hämtning av hela posten. | 0..* |
| ../../attribute | String | Attribut / Det förändrade attributet pekas ut med klass och attribut separerat med punktnotation. Exempel: Organisation.namn / Vilka attribut som kan anges beror helt på masterdatakällan. | 1 |

#### Övriga regler
Regel #1: När en tjänstekonsument anger en masterDataEntity som producenten inte stödjer ska tjänsteproducenten svara med ett SoapException.
Regel #2: Tjänstekonsumenten ska begränsa sitt sökvillkor i begäran i syfte att minimera storleken på svarsmeddelandet.
Regel #3: Tjänsteproducentens hantering av flera förändringar av samma katalogdatapost under sökperioden, som anges i begäran, kan hanteras på olika sätt beroende på tjänsteproducentens förmåga och användningsområde. I exemplet i Figur 1 uppdateras samma post två gånger. En begäran med sökintervall 2018-01-01  -  2018-01-10 får hanteras på 2 olika sätt:
Figur . Katalogpost med id=abc uppdateras två gånger under tidsperioden 2018-01-01  -  2018-01-10
Tjänsteproducent som endast kan tillhandahålla senaste versionen av en katalogpost via sitt huvudkontrakt anger en post i svaret med datum för senaste uppdateringen och antingen ingen attributangivelse, eller båda attributen som förändrats under tidsintervallet.
Tjänsteproducent som kan och vill tillhandahålla historiska versioner av katalogposter via sitt huvudkontrakt anger två poster i svaret. Attributangivelse i respektive post är frivilligt.
I Figur 2 visas hur en katalogpost blir skapad, uppdaterad och borttagen under ett tidsintervall. En begäran med sökintervall 2018-01-01  -  2018-01-10 får hanteras på 2 olika sätt:
Figur . Katalogpost med id=abc skapas, uppdateras och tas bort under tidsperioden 2018-01-01  -  2018-01-10
För en tjänsteproducent som endast kan tillhandahålla senaste versionen av en katalogpost via sitt huvudkontrakt ska svaret innehålla en post med information om borttagning.
Tjänsteproducent som kan och vill tillhandahålla historiska versioner av katalogposter via sitt huvudkontrakt anger tre poster i svaret. Attributangivelse i uppdateringsposten är frivillig.

##### Icke funktionella krav

###### SLA-krav
Se generella SLA-krav för tjänstedomänen.

#### Annan information om kontraktet
Ingen.
