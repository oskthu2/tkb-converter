
|  | Dokumentnamn(Title) / Underrubrik på titelsida / Version 1.4 / ARK_0015 / 2014-09-08 |
| :--- | :--- |
Innehåll
1	Inledning	7
1.1	Svenskt namn	7
1.2	WEB beskrivning	7
2	Versionsinformation	8
2.1	Version 1.3.8	8
2.1.1	Oförändrade tjänstekontrakt	8
2.1.2	Nya tjänstekontrakt	8
2.1.3	Förändrade tjänstekontrakt	8
2.1.4	Utgångna tjänstekontrakt	8
2.2	Version tidigare	8
3	Tjänstedomänens arkitektur	9
3.1	Flöden	9
3.1.1	Flöde 1	9
3.1.2	Flöde X	9
3.1.3	Obligatoriska kontrakt	9
3.2	Adressering	9
3.3	Aggregering och engagemangsindex	9
3.4	Annat…	10
4	Tjänstedomänens krav och regler	10
4.1	Informationssäkerhet och juridik	10
4.2	Icke funktionella krav	10
4.2.1	SLA krav	10
4.2.2	Övriga krav	11
4.3	Felhantering	11
4.3.1	Krav på en tjänsteproducent	11
4.3.2	Krav på en tjänstekonsument	11
5	Tjänstedomänens meddelandemodeller	11
5.1	V-MIM	11
5.2	Formatregler	12
5.2.1	Regel 1	12
6	Tjänstekontrakt	13
6.1	NamnPåTjänstekontrakt1	13
6.1.1	Version	13
6.1.2	Fältregler	13
6.1.3	Övriga regler	13
6.1.4	Annan information om kontraktet	13
6.2	NamnPåTjänstekontraktX	14
Regler för ifyllande
All grön text motsvaras av variabler. I MS Word, gå in under Arkiv-Egenskaper och välj fliken Eget och fyll i rätt värden för variablerna.
Gulmarkerat är text som skall fyllas i och bytas ut.
Blå text är anvisningar för hur denna mall skall fyllas i. Den SKALL tas bort i det färdiga dokumentet.
Svart italic text är text som kan behållas från mallen.
Tjänstekontraktbeskrivning är ett dokument som beskriver en viss revision av tjänstekontrakten i en tjänstedomän. Tjänstekontraktsbeskrivningen är en beskrivning som kompletterar den maskinläsabara beskrivningen. Den maskinläsbara beskrivningen följer RIV Tekniska Anvisningar. En tjänstekontraktsbeskrivning kompletterar den maskinläsbara anvisningen och är en teknisk anvisning som är baserad på resultat från tidigare faser i RIV-metoden. Dokumentet ska kunna läsas fristående.
En Tjänstekontraktbeskrivning versionshanteras (förvaltas i original) och publiceras enligt riktlinjer för tjänstekontraktsförvaltningen .
Målgruppen för Tjänstekontraktbeskrivningen är integratörer inom vårdgivare och hos leverantörer av IT-lösningar för vård och omsorg, med grundläggande kunskap om RIV Tekniska Anvisningar och den nationella, tekniska arkitekturen (T-boken).
En tjänstekontraktsbeskrivning skall vara oberoende av specifika system. Den skall kunna användas som upphandlingsunderlag för utveckling av tjänstekonsumenter och tjänsteproducenter.
När en revision av en tjänstedomän innehåller samma version av ett tjänstekontrakt som en tidigare version, måste beskrivningen i den senare revisionen vara identisk med motsvarande beskrivning i den tidigare revisionen. Förtydliganden och rättning av skrivfel kan förekomma, men inget som riskerar försämringar i interoperabilitet mellan konsumenter och producenter baserade på samma tjänstekontrakt ur de båda revisionerna.
Dokumentet Arkitekturella beslut skall alltid åtfölja tjänstekontraktsbeskrivningen (även om det inte finns några dokumenterade beslut).
Resterande del av anvisningen följer uppställningen i en Tjänstekontraktsbeskrivning. Se även Tjänstekontraktsbeskrivning – exempel.
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2017-01-26 | Första version | Khaled Daham, Carity AB |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Dokumentnamn(Title) | Obligatoriskt | Plats där dokumentet finns |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
masterdata: citizen: patient
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
OBS obligatorisk även om tom.
Övergripande beskrivning av de processer som stöds av denna domän.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
underlagförprocesstöd:invånare:patientuppgifter
patientuppgifter

### WEB beskrivning
Omfattning och disposition webbtext tjänstedomän + tjänstekontrakt:
1.       Cirka 1-2 meningar om syftet och nyttan med tjänstedomänen.
2.       Max 5 meningar om vad syftet med tjänstekontrakten är, som till exempel vilket/vilka typer av informationsflöden de stödjer. Inga tekniska detaljer, utan en övergripande summerande beskrivning.
OBS! Texten ska vara skriven på ett övergripande sätt så att även andra än tekniker kan förstå.
OBS! Texten är obligatorisk eftersom den kommer att visas ut på Ineras externa webbplats. Om detta kapitel är tomt, kommer det inte att visas någon beskrivning om domänen på inera.se.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen masterdata: citizen: patient. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0

#### Oförändrade tjänstekontrakt
GetPatientContactInformation, version 1.0
UpdatePatientContactInformation, version 1.0

#### Nya tjänstekontrakt
Inga nya kontrakt

#### Förändrade tjänstekontrakt
Inga förändrade kontrakt.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Flöde 1
Beskriv, gärna med diagram, hur aktuellt flöde ser ut. Se Tjänstekontraktsbeskrivning – exempel.

##### Arbetsflöde
Se Tjänstekontraktsbeskrivning – exempel.

###### Roller
Beskriv ingående roller

##### Sekvensdiagram
Se Tjänstekontraktsbeskrivning – exempel.

#### Flöde X
Beskriv samtliga flöden enligt ovan.

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde n |
| :--- | :--- | :--- | :--- |
| Kontrakt1 | X | X |  |
| Kontrakt2 |  | X | X |
| Kontrakt3 | X |  | X |

### Adressering
Beskriv specifika hänsyn vid adressering av producenter för denna domän.

### Aggregering och engagemangsindex
All användning av aggregering och engagemangsindex skall utförligt behandlas och beskrivas i detta avsnitt. Detta gäller t.ex. hur vet man hur en indexpost relaterar till kontrakt för hämtning. Detta syns t.ex. i fältet Categorization.
Beskriv om aggregering och/eller engagemangsindex är en förutsättningen för att använda tjänsterna i domänen.

### Annat…

## Tjänstedomänens krav och regler
Beskriv behandlingsregler som är gemensamma för tjänstekontrakten i domänen. Exempel nedan.
Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.
Detta kan t ex inbegripa:
Villkor för att få använda informationen…
Omsändning, inte för ofta…
Autentisering av användare
Informationssäkerhet specifikt för konsumentapplikationer
…
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Se Tjänstekontraktsbeskrivning – exempel.

### Icke funktionella krav
Här skall de icke funktionella krav som verksamheten har och som gäller för aktuell domän och/eller tjänstekontrakt beskrivas.
Kan lämpligen hämtas från tidigare dokumentation i mallen ”Icke funktionella krav”  http://rivta.se/documents/ARK_0023

#### SLA krav
SLA-krav är obligatoriskt att beskriva.
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Ingen information får vara äldre än… |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| … |  |  |

#### Övriga krav

### Felhantering
Se Tjänstekontraktsbeskrivning – exempel.

#### Krav på en tjänsteproducent

##### Logiska fel
Beskriv vilka felkoder som används samt hur de skall tolkas. Tänk speciellt på eventuella krav som ställs på konsumenters hantering. Om inte krav finns är tabellen nedan tom.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Fel X | 1 | Bla bla |
| … |  |  |

#### Krav på en tjänstekonsument

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM
En eller flera meddelandeinformationsmodeller som beskriver informationen som används av tjänsterna i domänen.  Detta bör ske både i form av diagram och tabell som beskriver mappningen.
PLATS FÖR BILD MED DIAGRAM
De gröna kolumnerna från ifylld mall informationsspecifikation skall flyttas över till detta dokument.  http://rivta.se/documents/ARK_0026

| Klass.attribut | Mappning mot V-TIM 2.2 |
| :--- | :--- |
| Aktivitet | Aktivitet |
| … | … |

### Formatregler

#### Regel 1
Beskriv denna regel som gäller för alla tjänster. (Tjänstespecifika regler beskrivs i anslutning till respektive tjänst.)

## Tjänstekontrakt

### GetPatientContactInformation
Kontraktet används för att hämta kontaktuppgifter för en patient.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | IIType | Beskrivning | 1..1 |
| ../root | string |  |  |
| ../extension | string |  |  |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| Svarselemet  *) | Typ | Beskrivning | 1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - Svarselement
Beskrivning av regel för detta element.

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekonterakt beskrivas.

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Ange krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Abcde….

### UpdatePatientContactInformation
Kontraktet används för att hämta kontaktuppgifter för en patient.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Element | Typ | Beskrivning | 1..1 |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| Svarselemet  *) | Typ | Beskrivning | 1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - Svarselement
Beskrivning av regel för detta element.

##### Icke funktionella krav
Inga funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav gentemot kapitel 4.2

#### Annan information om kontraktet
