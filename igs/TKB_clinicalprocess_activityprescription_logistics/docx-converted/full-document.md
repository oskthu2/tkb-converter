

Nationella Tjänstekontrakt inom Hantera aktiviteter, ordinationslogistik

Tjänstekontraktsbeskrivning

Version 1.0.2

2014-11-14

Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
|---|---|---|---|---|
| 0.1 | 2013-05-03 | Separerat subdomän från clinicalprocess:activityprescription grunddokument. | Daniel Sundberg |  |
| 0.2 | 2013-05-16 | Uppgraderat simpletypes med restrictions. | Daniel Sundberg |  |
| 0.3 | 2013-05-17 | Uppdaterat tjänsterna. | Daniel Sundberg |  |
| 0.4 | 2013-05-20 | Ny struktur på beskrivning | Per Mützell |  |
| 0.5 | 2013-05-27 | Överfört beskrivningar från gamla mallen till denna mall. Uppdaterad efter granskning från Inera. | Jonas Sedin |  |
| 0.6 | 2013-05-28 | Lagt till kapitel 4 från Per M | Jonas Sedin |  |
| 0.7 | 2013-05-28 | Uppdaterat kap 4 med flöde och bilder | Per Mützell |  |
| 0.8 | 2013-05-30 | Uppdateringar i samtliga kapitel. Kommentarer gjorda på arbetsflödet. | Maria Wettermark <br> Jonas Sedin |  |
| 0.9 | 2013-05-30 | Justerat flödesbeskrivningar | Per Mützell |  |
| 0.10 | 2013-05-30 | Ändringar i kapitel 5 och i objektet ordinationsmappning | Maria Wettermark <br> Jonas Sedin |  |
| 0.11 | 2013-05-31 | Justeringar och kommentarer | Per Mützell |  |
| 0.12 | 2013-05-31 | Justeringar | Jonas Sedin |  |
| 0.13 | 2013-06-04 | Ersatt kap 4.1 med nya beskrivningar. Redaktionella ändringar efter granskningsmöte. | Per Mützell |  |
| PA1 | 2013-06-13 | Justering efter granskning. | Per Mützell <br> Daniel Sundberg |  |
| PA2 | 2013-06-14 | Uppdatering datatyper. | Daniel Sundberg | Godkänd av CeHis Arkitektur och Regelverk enligt VITS |
| 1.0.0 | 2013-06-28 | Justering för att följa konvention för namnrymdsalias (påverkar ej datatyperna i sig). | Per Mützell <br> Daniel Sundberg |  |
| 1.0.1 | 2014-05-16 | Ändring av utlämnande av dokumentation i kap 3 referenser. Uppdatering av kap 7 Tjänstekontrakt. Byte av namn från Apotekens Service till eHälsomyndigheten. |  |  |
| 1.0.2 | 2014-10-07 | Uppdatering av APIer i kapitel 7 Tjänstekontrakt. | Malin Nord |  |

Innehållsförteckning

# 1 Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess:activityprescription:logistics. Den svenska benämningen är ”Nationella Tjänstekontrakt för Hantera aktiviteter, ordinationslogistik”.

Tjänstedomänens omfattning är funktioner av logistisk art som stödjer ordinationsprocessen i vården, primärt de processer som hanterar ordination av läkemedel och handelsvaror, samt eventuellt tillhörande förskrivningar, men i förlängningen även andra typer av ordinationer.

Tjänstekontraktsbeskrivningen är ett teknikoberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt . Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks skriftligt i detta dokument.

<!-- SAKNAS I KÄLLDOKUMENT — två figurer i avsnitt 1 kunde inte extraheras ur .doc-filen (se ASSUME-APL-001) -->

Dessa tjänstekontrakt och beskrivningar är under arbete och kommer att kompletteras.

# 2 Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen avser version 1.0.1. Detta är den senast publicerade versionen på RIV TA:s hemsida.

## 2.1 Version 1.0.1

### Oförändrade tjänstekontrakt

- GetDispensedDrugs, version 1.0
- PrintListOfDispensedDrugs, version 1.0

### Nya tjänstekontrakt

Inga.

### Förändrade tjänstekontrakt

Inga.

### Utgångna tjänstekontrakt

Inga

# 3 Referenser

| Namn | Beskrivning |
|---|---|
| Handbok för vårdaktörer Human | Dokumentet är en Handbok för Vårdaktörer som vill ansluta sig till eHälsomyndighetens tjänster |
| Läkemedelsförteckningen för vårdaktörer | Dokumentet är en bilaga till handboken för Vårdaktörer från eHälsomyndigheten |
| Säkerhetskrav på extern part som ansluter till eHälsomyndighetens IT-tjänster | Dokumentet är en bilaga till handboken för Vårdaktörer från eHälsomyndigheten |

Refererade dokument i gällande version får hämtas från av eHälsomyndigheten utpekad lagringsyta efter överenskommelse..

# 4 Tjänstedomänens arkitektur

## 4.1 Översikt

Tjänstedomänen syftar till att komplettera ordinationsprocessen med logistisk information, t.ex. information om uthämtade läkemedel på apotek. Nedan visar en konceptuell bild över de övergripande syftet med tjänsterna: att bidraga till en samlad läkemedelslista för patienten. Tjänstekonsumenter behöver även hantera de säkerhetskrav som gäller för att använda tjänsterna.

![img_001.png](images/img_001.png)

Figur 1: Patientens samlade läkemedelslista

Tjänster i domänen clinicalprocess:activityprescriptions:logistics passar således in i en större helhet kring patientens samlade läkemedelslista, se figur 2 som visar samverkansarkitekturen.

Följande tjänstegrupper relaterar till och kompletterar på olika sätt domänen:

- Andra läkemedelsrelaterade tjänster, bland annat
  - Ordination och förskrivning (clinicalprocess:activityprescriptions:prescibe)
  - Logistikfunktioner för dosapotek
- Stödtjänster
  - Nationell katalog (HSA) - för att koppla medarbetare till organisation och få ut behörighetsstyrande egenskaper för medarbetaren
  - Stark autentisering - för att möta säkerhetskrav
  - Logg - för att möta säkerhetskrav
  - Personuppgift - kontroll av patientuppgifter mot Skatteverket
  - Samtycke till Läkemedelsförteckningen (LF) - för åtkomst till uppgifter i LF

![img_002.png](images/img_002.png)

Figur 2: Övergripande samverkansarkitektur; samverkande tjänstedomäner

## 4.2 Hämta information om uthämtade läkemedel

I Läkemedelsförteckningen samlas uppgifter om alla receptförskrivna läkemedel som varje individ har hämtat ut på apotek under de senaste 15 månaderna. eHälsomyndigheten ansvarar för att lagra och behandla personuppgifter i Läkemedelsförteckningen.

### Översikt

De tjänster som ligger inom denna grupp hämtar sin information från Läkemedelsförteckningen (LF).

Följande principiella bild visar slutanvändarens åtkomst ur vårdens perspektiv.

![img_003.png](images/img_003.png)

### Arbetsflöde

![img_004.png](images/img_004.png)

#### Förutsättningar

Arbetsflödet förutsätter att

- Användaren har identifierats i vårdinformationssystemet med s k stark autentisering.

#### Roller

| Namn/beteckning | Beskrivning |
|---|---|
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som tar del av tidigare gjorda ordinationer och uthämtade läkemedel för en viss patient. |

#### Arbetssteg

| Namn/beteckning | Beskrivning |
|---|---|
| Välj visa patientens ordinationer | Hälso- och sjukvårdspersonalen kan välja att se uthämtade läkemedel som en del av patientens samlade läkemedelslista, eller som som en separat lista. Om det förra så startar flödet med att patientens ordinationer hämtas. |
| Välj visa uthämtade läkemedel på apotek | Hälso- och sjukvårdspersonal väljer att titta på uthämtade läkemedel på apotek., antingen i form av en separat sammanställning av alla uthämtade läkemedel, eller som uthämtade läkemedel kopplat till respektive ordination. <br> Vårdinformationssystemet kontrollerar slutanvändarens behörighet för åtgärden. |
| Ange samtycke alternativt nödåtkomst om saknas <br> (Samtycke Läkemedelsförteckningen) | Vårdinformationssystemet kontrollerar med LF Samtycketjänst om samtycke finns till att läsa läkemedelsförteckningen. Enbart Hälso- och sjukvårdspersonal med förskrivningsrätt och individuell förskrivarkod kan registrera ett tillsvidaresamtycke. Övrig behörig personal (legitimerad sjuksköterska, AT-läkare m.fl.) kan ange engångssamtycke eller nödsituation. Om samtycket har återkallats visas det särskilt för användaren. Om samtycke saknas får Hälso- och sjukvårdspersonalen ange en av <br> tillsvidaresamtycke <br> engångssamtycke <br> nödsituation <br> Samtycke av typ tillsvidare registreras i LF Samtyckestjänst. |
| Visa information om uthämtade läkemedel | Vårdinformationssystemet hämtar information om uthämtade läkemedel och presenterar för användaren, antingen kopplat till ordinationerna eller som separat lista. <br> Det kan även finnas uthämtade läkemedel som inte är kopplade till ordinationen. Denna ”restlista” ska då också visas upp för användaren. För förskrivare kontrolleras förskrivarkod i tjänsten. |
| Logga åtkomst | Åtkomsten loggas i tjänsten för uppföljning av registeransvarig. <br> Åtkomsten loggas i Vårdinformationssystemet för uppföljning i verksamheten. |

# 5 Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

## 5.1 Informationssäkerhet och juridik

### Tjänster för Läkemedelsförteckningen

Hanteringen av Läkemedelsförteckningen regleras i Lag om läkemedelsförteckning.

eHälsomyndigheten har personuppgiftsansvar för Läkemedelsförteckningen. Detta innebär att eHälsomyndigheten är ansvarig för att en tillräckligt god informations- och IT-säkerhet uppnås för att bibehålla patientens personliga integritet och patientsäkerhet. eHälsomyndigheten kommer därför att fortlöpande verifiera att tillräcklig säkerhet bibehålls enligt lagen om Läkemedelsförteckningen.

Skada och kränkning av den personliga integriteten som uppkommer till följd av till exempel bristande säkerhet kan leda till skadestånd enligt lagen om Läkemedelsförteckningen.

## 5.2 Felhantering

### Logiska fel

Kommer att resultera i resultatCode ERROR med beskrivande text i fältet comment.

### Tekniska fel

Ett fel (SoapFault) inträffade som inte har med skickad information att göra. Denna typ av fel kan fås om mottagande system ej svarar (time-out) eller liknande fel.

Tekniska fel får inte förmedla känsliga personuppgifter. Rekommenderas att returnera anropsidentitet i förekommande fall för felsökningsändamål.

En omsändning av informationen bör göras.

## 5.3 Krav på en tjänstekonsument

Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.

### Behörighetskontroll för Läkemedelsförteckningen

Behörighetskontroll ska ske i anropande system. Behöriga roller att anropa tjänsterna är:

- Förskrivare av läkemedel
- Legitimerad sjuksköterska

### Krav när Läkemedelsförteckningen visas som en separat lista

Se gällande version av eHälsomyndighetens dokument - Läkemedelsförteckningen för vårdaktörer, bilaga till handboken för Vårdaktörer.

### Säkerhetskrav för Läkemedelsförteckningen

Se gällande version av eHälsomyndighetens dokument - Säkerhetskrav på extern part som ansluter till eHälsomyndigheten IT-tjänster.

### Avtal för Läkemedelsförteckningen

Avtal behöver tecknas mellan eHälsomyndigheten och vårdaktör för att anslutning till tjänsterna skall vara möjlig att genomföra.

## 5.4 Krav på en tjänsteproducent

### Krav för Läkemedelsförteckningen

Följande krav skall beaktas då ett system (en part) agerar som en tjänsteproducent för ingående tjänster kring Läkemedelsförteckningen:

Den part som tillhandahåller tjänsterna måste uppfylla kraven enligt Lag om Läkemedelsförteckning.

### SLA krav

SLA-krav är inte specifierade på tjänstedomän-nivån. Se respektive tjänst för SLA-krav i förekommande fall.

# 6 Tjänstedomänens meddelandemodeller

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på.

## 6.1 Meddelandeinformationsmodell för Läkemedelsförteckningen

![img_005.png](images/img_005.png)

Det finns en direkt mappning mellan klasser och attribut i ovanstående modell och XSD för tjänstekontraktet.

# 7 Tjänstekontrakt

## 7.1 GetDispensedDrugs

Tjänsten returnerar en patients Läkemedelsförteckning med viss ordinationsinformation för att kunna koppla ihop utlämnat läkemedel med ordinerat.

### Version

1.0

### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterliggare regler för detta element och beskrivs mer i detalj i stycket Regler.

#### GetDispensedDrugsType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patient | Patient | 1..1 | Patient vars läkemedelsförteckning skall hämtas. |  |
| anropandeVardpersonal | Vardpersonal | 1..1 | Anropande vårdpersonal. |  |
| forskrivarkod | string | 0..1 | Förskrivarens individuella förskrivarkod. Gruppförskrivarkoder får ej användas. Valideras mot FORS. Obligatorisk om atkomsttyp = SAM | 7..7 |
| identifieradArbetsplats | ArbetsplatsIdentifikation | 1..1 | Identifierad arbetsplats. |  |
| atkomsttyp | atkomsttyp | 1..1 | Treställig kod för typ av åtkomst. |  |

#### GetDispensedDrugsResponseType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| lakemedelsforteckning | Receptexpeditionsrad | 0..* | Patientens läkemedelsförteckning kompletterad med ordinationsmappningsinformation. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista. |  |
| patientinformation | Patientinformation | 0..1 | Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som 'Avliden' så returneras inga rader ur läkemedelsförteckningen. |  |
| varningsnivaUppnadd | boolean | 1..1 | Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt. |  |
| resultCode | resultCodeEnum | 1..1 | Resultatkod för anropet. |  |
| comment | string | 0..1 | Kommentar till eventuella fel eller varningar. | 1..1024 |

### Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan:

- Visning av mängdinformation kan ske på flera sätt men bör implementeras enligt följande prioritet:
1. Använd fältet mangd för dispenserat och icke-dispenserat läkemedel alternativt
1. Använd fältet antalPillerKlartext för dispenserat läkemedel Använd fälten antalForpackningar + forpackningsstorlek alternativt antalForpackningar + antalYtterstaForpackning + antalYttreForpackning + antalIForpackning + antalEnhet för icke-dispenserat läkemedel
- Visning av information om styrka kan ske på flera sätt men bör implementeras enligt följande prioritet:
1. Använd fältet styrkaKlartext som även visar styrka för kombinationspreparat alternativt
1. Använd fälten styrka + styrkaEnhet
- Om en läkemedelspost har en markering att denna är borttagen ("borttagen"=sann) så skall posten visas i vårdsystemet överstruken och med "borttagsdatum" och "borttagsorsak".
- Mappningsinformation för att koppla till ordination saknas i vissa fall, t.ex:

• Samma läkemedel (nplpackid) förekommer flera gånger i samma expedition

• Pappers- och telefonrecept

• Uttag från äldre receptexpeditionssystem (expeditionsid saknas)

- Inga SLA-krav finns för denna tjänst

## 7.2 PrintListOfDispensedDrugs

Tjänsten returnerar en PDF-rapport innehållande en patients Läkemedelsförteckning.

### Version

1.0

### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterliggare regler för detta element och beskrivs mer i detalj i stycket Regler.

#### PrintListOfDispensedDrugsType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patient | Patient | 1..1 | Patient vars läkemedelsförteckning skall hämtas. |  |
| anropandeVardpersonal | Vardpersonal | 1..1 | Anropande vårdpersonal. |  |
| forskrivarkod | string | 0..1 | Förskrivarens individuella förskrivarkod. Gruppförskrivarkoder får ej användas. Valideras mot FORS. | 7..7 |
| identifieradArbetsplats | ArbetsplatsIdentifikation | 1..1 | Identifierad arbetsplats. |  |

#### PrintListOfDispensedDrugsResponseType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patientinformation | Patientinformation | 0..1 | Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej pdf. |  |
| pdf | base64Binary | 0..1 | Utdrag från läkemedelsförteckningen som PDF. |  |
| resultCode | resultCodeEnum | 1..1 | Resultatkod för anropet. |  |
| comment | string | 0..1 | Kommentar till eventuella fel eller varningar. | 1..1024 |

### Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan:

- Krav ställs på anropande system att tjänsten GetDispensedDrugs har anropats innan anrop görs till denna tjänst.
- Inga SLA-krav finns för denna tjänst

## 7.3 Beskrivning av fält

### Receptexpeditionsrad

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| aktorsExpeditionsId | string | 1..1 | Aktörens expeditionsId. | 1..35 |
| antalForpackningar | int | 0..1 | Antal förpackningar av utlämnad vara. Returneras om posten ej är en dosdispenserad artikel. |  |
| antalPillerKlartext | string | 0..1 | Antal avdelade doser inklusive enhet. Returneras om posten är en dosdispenserad artikel. Exempel: "28 st". | 1..10 |
| artikelinformation | Artikelinformation | 1..1 | Information om utlämnad artikel. |  |
| borttagen | boolean | 1..1 | Markering om posten är borttagen. Sant om posten är borttagen, annars falskt. |  |
| borttagsdatum | dateTime | 0..1 | Tidpunkt då posten blev markerad som borttagen. Returneras endast om borttagen är sant. |  |
| borttagsorsak | string | 0..1 | Kommentar för borttagen post. Returneras endast om borttagen är sant. | 1..50 |
| doseringstext | string | 1..1 | Doseringsanvisning: doseringstext inklusive ändamål. | 1..1016 |
| expeditionsId | string | 0..1 | Expeditionsid hämtat från eHälsomyndigheten. | 1..31 |
| expeditionsdatum | dateTime | 1..1 | Datum för utlämning från apotek. |  |
| forskrivarensArbetsplatsnamn | string | 0..1 | Förskrivarens arbetsplats namn. | 1..35 |
| forskrivarensArbetsplatsOrt | string | 0..1 | Förskrivarens arbetsplats ort. | 1..28 |
| forskrivarnamn | string | 0..1 | Förskrivarens namn. | 1..71 |
| forskrivarpostadress | string | 0..1 | Förskrivarens postadress. | 1..35 |
| forskrivarpostnummer | string | 0..1 | Förskrivarens postnummer. | 5..6 |
| forskrivarspecialiteter | string | 0..* | Förskrivarens specialitet i klartext. | 1..256 |
| forskrivaryrke | string | 0..1 | Förskrivarens yrke i klartext. | 1..100 |
| mangd | string | 1..1 | Totalt expedierad mängd. Kan returneras som: antalPillerKlartext eller antalForpackningar + forpackningsstorlek. Exempel: "28 st" eller "2x100 tabletter". | 1..100 |
| ordinationsmappning | Ordinationsmappning | 0..1 | Information som behövs för att mappa en post i läkemedelsförteckningen till en ordination. |  |
| radid | long | 1..1 | Unikt id för posten i läkemedelsförteckningen. |  |
| radnummer | int | 0..1 | Radnummer för utlämnad vara i aktuell expedition. |  |

### Artikelinformation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| antalEnhet | string | 0..1 | Enhet för antalForpackning. Exempelvis "styck" eller "milliliter". Exempel där antalEnhet ingår: "6 x 5 x 0.72 milliliter". | 1..80 |
| antalIForpackning | decimal | 0..1 | Antal i förpackning. Numerisk angivelse, exempelvis 0,72. Exempel där antalForpackning ingår: "6 x 5 x 0.72 milliliter". |  |
| antalYtterstaForpackning | int | 0..1 | Antal multipel 2. Antal yttersta förpackningar för artikeln, exempelvis 6. Exempel där antalForpackning ingår: "6 x 5 x 0.72 milliliter". |  |
| antalYttreForpackning | int | 0..1 | Antal multipel 1. Antal yttre förpackningar som varan har, exempelvis 5. Exempel där antalYttreForpackning ingår: "6 x 5 x 0.72 milliliter". |  |
| atckod | string | 0..1 | ATC-kod. Exempel: "C07AB03”. | 1..8 |
| atckodKlartext | string | 0..1 | Verksamt ämne enligt ATC-kod. Exempel: "Atenolol". | 1..240 |
| forpackningsstorlek | string | 0..1 | Förpackningsstorlek. Exempel: "6 x 5 x 0.72 milliliter". | 1..50 |
| forpackningstyp | string | 0..1 | Beskrivning av artikelns förpackningstyp. Exempel: "Blister". | 1..40 |
| intressent | string | 0..1 | Ansvarigt företag för artikeln. Typ av företag kan variera, t.ex kan företaget vara innehavare av godkännande/registrering av försäljning eller parallellimportör. Exempel: "AstraZeneca AB". | 1..160 |
| lakemedelsform | string | 0..1 | Läkemedelsform. Exempel: "Filmdragerad tablett". | 1..160 |
| lakemedelsformKod | string | 0..1 | Kod för läkemedelsform (beredningsformkod). Exempel: "FICOTA". | 1..6 |
| nplPackid | string | 1..1 | Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id. | 14..14 |
| produktnamn | string | 0..1 | Läkemedelsnamn. | 1..100 |
| styrka | decimal | 0..1 | Numerisk styrka. Exempel "20.0". |  |
| styrkaEnhet | string | 0..1 | Styrkans enhet. Exempel: "mg". | 1..60 |
| styrkaKlartext | string | 0..1 | Styrka i klartext. Exempel: "20.0 mg". | 1..80 |

### Ordinationsmappning

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| ordinationsId | string | 1..1 | Förskrivningens ordinationsid. |  |
| produktradnummer | int | 0..1 | Tillhörande recepts eventuella prdradnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån. |  |
| radnummer | int | 0..1 | Tillhörande recepts eventuella radnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån. |  |

### Patientinformation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patientidentifikation | Patientidentifikation | 0..1 | Patientidentifikationen kan enbart innehålla följande typ: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret. |  |
| fornamn | string | 0..1 | Patientens förnamn. För patient med skyddad identitet visas inte förnamn. | 1..80 |
| efternamn | string | 0..1 | Patientens efternamn. För patient med skyddad identitet visas inte efternamn. | 1..60 |
| redigeratNamn | string | 1..1 | Redigerat namn i formatet "mellannamn efternamn, förnamn". Förkortat till 36 tecken. | 1..36 |
| harRedigeratNamnForkortats | boolean | 1..1 | Anger om redigeratNamn har förkortats. |  |
| avliden | boolean | 1..1 | Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt. |  |

### ArbetsplatsIdentifikation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| Skicka in ett av följande element: |  |  |  |  |
| arbetsplatskod | string | 1..1 | Del av val. Förskrivarens arbetsplatskod. Valideras. Obligatorisk om arbetsplats inte anges. | 1..20 |
| arbetsplats | Arbetsplats | 1..1 | Del av val. Förskrivarens arbetsplats. Obligatorisk om arbetsplatskod inte anges. |  |

### Patient

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patientidentifikation | Patientidentifikation | 1..1 | Patientidentifikationen kan innehålla följande typer: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret. |  |

### Arbetsplats

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| arbetsplatsnamn | string | 1..1 | Namnet på användarens arbetsplats. | 1..64 |
| arbetsplatsort | string | 1..1 | Orten för användarens arbetsplats. | 1..28 |

### Patientidentifikation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| kod | string | 1..1 | Patientens personnummer. | 1..12 |
| kodverk | OID | 1..1 | Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2. |  |

### Vardpersonal

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| efternamn | string | 1..1 | Användarnamn. Används i kombination med personHsaId för att identifiera användare. | 1..35 |
| fornamn | string | 1..1 | Användarnamn. Används i kombination med personHsaId för att identifiera användare. | 1..35 |
| personHsaId | string | 1..1 | HSA-id för läsande person. | 1..64 |
| vardenhetHsaId | string | 1..1 | HSA-id för läsande vårdenhet. Används för spårbarhet. | 1..64 |
| vardgivareHsaId | string | 1..1 | HSA-id för läsande vårdgivare. Används för spårbarhet. | 1..64 |

### decimaltal

| Typ | Validering |
|---|---|
| decimal | 3 |

### resultCodeEnum

| Typ | Validering |
|---|---|
| string | OK ERROR INFO |

### atkomsttyp

| Typ | Validering |
|---|---|
| string | ENG SAM NOD |

### OID

| Typ | Validering |
|---|---|
| string | [0-9][0-9.]* |
