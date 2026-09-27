
|  | Personuppgifter / Tjänstekontraktsbeskrivning / Version 2.0 / ARK_0015 / 2016-02-24 |
| :--- | :--- |
Innehåll
1	Inledning	8
1.1	Svenskt namn	8
1.2	WEB beskrivning	8
2	Versionsinformation	9
2.1	Version 2.0	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Förändrade tjänstekontrakt	9
2.1.4	Utgångna tjänstekontrakt	9
3	Tjänstedomänens arkitektur	10
3.1	Flöden	10
3.1.1	Flöde 1: Hämta personuppgifter på personnummer	10
3.1.2	Obligatoriska kontrakt	11
3.2	Adressering	11
4	Tjänstedomänens krav och regler	12
4.1	Informationssäkerhet och juridik	12
4.1.1	Allmänt om informationen inom domänen	12
4.1.2	Grundläggande lagstöd och personuppgiftsansvar	12
4.1.3	Sekretessmarkerade personuppgifter	12
4.1.4	Krav på tjänstekonsumenten	13
4.1.5	Krav på tjänsteproducenten	13
4.1.6	Avtal	13
4.1.7	Konfidentialitet	13
4.2	Icke funktionella krav	14
4.2.1	SLA krav	14
4.3	Felhantering	14
4.3.1	Krav på en tjänsteproducent	14
4.3.2	Krav på en tjänstekonsument	14
5	Tjänstedomänens meddelandemodeller	15
5.1	V-MIM	15
5.2	Formatregler	16
5.2.1	Personidentitet	16
5.2.2	Datum	16
5.2.3	Datum och Tid	16
5.3	Profiler	16
6	Tjänstekontrakt	17
6.1	LookupResidentsForProfile	17
6.1.1	Version	17
6.1.2	Fältregler	17
6.1.3	Övriga regler	17
6.1.4	Exempel	17
7	Datatyper	18
7.1	Datatyper från namnrymd urn:riv:masterdata.citizen.citizen:2	18
7.1.1	AddressInformation	18
7.1.2	AddressAbroad	18
7.1.3	AddressPlaceId	18
7.1.4	ApartmentId	19
7.1.5	Birth	19
7.1.6	BirthAbroad	19
7.1.7	Citizenship	19
7.1.8	CitizenshipCountryCode	19
7.1.9	CitizenshipStatus	20
7.1.10	CountryCode	20
7.1.11	DateTypeFormat	20
7.1.12	Deregistration	20
7.1.13	DeregistrationReasonCode	20
7.1.14	District	21
7.1.15	DistrictCode	21
7.1.16	FictitiousPropertyNumber	21
7.1.17	GivenNameIndicator	21
7.1.18	HistoricalAddress	21
7.1.19	HistoricalRecords	21
7.1.20	Immigration	22
7.1.21	ImmigrationIdentity	22
7.1.22	LookupProfile	22
7.1.23	LookupResidentsResponse	23
7.1.24	MaritalStatus	23
7.1.25	MaritalStatusCode	23
7.1.26	Name	24
7.1.27	NamePart	24
7.1.28	NationalKeys	24
7.1.29	NotificationCase	24
7.1.30	PartialDate	25
7.1.31	PartialDateValue	25
7.1.32	PersonalIdentity	26
7.1.33	PersonalIdentityNumber	26
7.1.34	PersonalRecord	27
7.1.35	PlaceOfBirthAbroad	27
7.1.36	PlaceOfBirthSweden	27
7.1.37	PopulationRegistrationLocality	28
7.1.38	PopulationRegistrationRecord	28
7.1.39	PopulationRegistrationType	29
7.1.40	PostalCode	29
7.1.41	PropertyId	29
7.1.42	RecordId	29
7.1.43	Relationship	29
7.1.44	RelationshipId	29
7.1.45	RelationshipStatus	30
7.1.46	RelationshipType	30
7.1.47	ResidentialAddress	30
7.1.48	String2	30
7.1.49	String40	31
7.1.50	String80	31
8	Aktuella profiler	32
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2.0 | 0.1 | 2016-01-25 | Första utkast | Daniel Fjällström, CGI |  |
| 2.0 | 0.2 | 2016-01-28 | Uppdateringar | Daniel Fjällström, CGI |  |
| 2.0 | 0.3 | 2016-02-01 | Uppdateringar | Daniel Fjällström, CGI |  |
| 2.0 | RC1 | 2016-02-11 | Uppdateringar efter granskning från Khaled | Daniel Fjällström, CGI |  |
| 2.0 | RC2 | 2016-02-29 | Uppdateringar efter granskning Inera A&R:
Kap 4.3 Felhantering / Ändrat till enbart tekniska fel via SOAP faults för läsande tjänst. / Övriga uppdateringar: / 7.1.21 ImmigrationIdentity
förbättrad struktur, landskodning. / 7.1.3 Address namnbyte till AddressInformation / Gender borttagen (används ej) | Per Mützell |  |
| 2.0 | RC3 | 2016-04-22 | protectedPersonIndicator: obligatorisk (tidigare optionell). / testIndicator: obligatorisk (tidigare optionell).
referredPersonalIdentityNumber  byter  namn till: referredPersonalIdentity. / searchDate byter  namn till notificationDate. / Dokumentationsändringar: / 2.1.3 	Förtydligande vilket äldre kontrakt som ersätts. / 3.1.1.2. 	Justering sekvensdiagram (enligt granskningsprotokoll). / 4.1 Informationssäkerhet och juridik, justerad. / 4.2.1 Justerat krav för last. / 5.1 Uppdaterad V-MIM enligt ovan.
8. 	Förtydligande  vilka attribut som levereras vid sekretessmarkering / 7.1.29 searchDate, uppdaterad beskrivning
7.1.29 modificationTime, uppdaterad beskrivning / 7.1.34 maritalStatus, rättad felstavning | Per Mützell |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Personuppgifter | Obligatoriskt | Bilaga AB_masterdata_citizen_citizen.docx |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation -
Personuppgifter |  | Bilaga IS_masterdata_citizen_citizen.docx |
| R4 | ISO8601 | ISO8601-standarden för datum- och tidsformat | https://sv.wikipedia.org/wiki/ISO_8601 |
| R5 | RFC3339 | Standard för datum- och tidsformat för internetbaserade protokoll baserat på ISO8601 | https://www.ietf.org/rfc/rfc3339.txt |
| R6 | ISO 3166-1 alpha-2 | Standard för landskod | https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| NAVET | Tjänst för att tillgängliggöra folkbokföringsuppgifter till myndigheter |  |
| PU-tjänst | Personuppgiftstjänst |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
masterdata: citizen: citizen
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Underlagförprocesstöd: invånare: personuppgifter
Personuppgiftshantering

### WEB beskrivning
Syftet med denna domän är primärt att tillgängliggöra personuppgifter registrerade i Skatteverkets folkbokföringsregister för invånare bosatta i Sverige. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter mm.
Konsumenter på domänens information kan vara de flesta vård- och omsorgssystem som hanterar patienter/invånare, men kan även behövas i system som hanterar medarbetare, katalogsystem, identitetshanteringssystem etc.
Uppgifterna i tjänsteproducent hålls ajour med uppgifterna i bakomliggande register primärt genom regelbundna aviseringar (alla förändringar sedan sist), kompletterat med online-slagning om uppgift saknas i tjänsteproducent.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen masterdata: citizen: citizen.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0
Denna version har bytt domän från riv.population.residentmaster

#### Oförändrade tjänstekontrakt

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt.

#### Förändrade tjänstekontrakt
Följande tjänstekontrakt har förändrats i denna version:
LookupResidentsForProfile, version 2.0 (ersätter LookupResidentForFullProfile i riv:population:residentmaster)

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.
Tjänstedomänen hanterar uppgifter om person registrerade i folkbokföringsregistret hos Skatteverket.

### Flöden

#### Flöde 1: Hämta personuppgifter på personnummer
Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån deras personnummer eller samordningsnummer.

##### Arbetsflöde

![img_001.png](images/img_001.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Användare | Kan vara medarbetare (vård/omsorg/administration) eller invånare |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt.
Kan vara ett vårdsystem, administrativt system etc. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Tjänsteproducent - Personuppgiftstjänst | Tillhandahåller mellanlager med personuppgifter till visst SLA enligt domänens regler, även kallad PU-tjänst. |
| Skatteverket/Navet | Bakomliggande register/tjänst - master för folkbokföringsuppgifter |

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Obligatoriska kontrakt
N/A

### Adressering
Den logiska adressen för Ineras nationella PU-tjänst är Ineras nationella HSA-id SE165565594230-1000.
Logisk adress till de lokala eller regionala PU-tjänsterna är producentens HSA-id.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
I informationsspecifikationen [R3] beskrivs de lagar och regler som är tillämpliga för informationen i domänen.
I detta dokument ges här endast en kort sammanfattning.

#### Allmänt om informationen inom domänen
Tjänsterna i domänen tillhandahåller information från bakomliggande datakälla (Folkbokföringsregistret), vilken Skatteverket ansvarar för. Domänen omfattar personuppgifter såsom persons personnummer, samordningsnummer, namn, adress och familjerättsliga förhållanden.
Informationen i domänen används bland annat för att säkerställa att rätt person har valts i IT-system, komplettera med folkbokfört namn, folkbokförd adress osv.
Uppgifterna är i regel offentliga, men sekretess kan gälla i särskilda fall, se sekretessmarkerade personuppgifter nedan.

#### Grundläggande lagstöd och personuppgiftsansvar
Patientdatalagen styr den grundläggande regleringen av personuppgiftsbehandlingen i Personuppgiftstjänsten. Personuppgiftstjänsten ska i huvudsak användas av landstinget/regionen och andra vårdgivare för administration som rör patienter i samband med hälso- och sjukvård vilka bor i länet eller söker vård från ett annat län.
För uppgifter som lagras i Personuppgiftstjänsten (tjänsteproducenten) och inhämtats från Navet (Skatteverket) gäller att det landsting/region (huvudman) som beställt uppgifterna (och har avtalet med Skatteverket) är personuppgiftsansvarig. Landstinget/regionen är normalt personuppgiftsansvarig för ”sin” del av befolkningen. I en lösning där flera huvudmän lagrar sin information i gemensam Personuppgiftstjänst som hanteras av personuppgiftsbiträde, åligger det personuppgiftsbiträdet att logiskt separera respektive huvudmans personuppgifter.
Åtkomst till uppgifter via tjänstekontrakt sker primärt med stöd av ett elektroniskt utlämnande från Personuppgiftstjänst i form av ett s.k. automatiserat ADB-utlämnande. Utlämnandet bygger på att personuppgiftsansvarig har gjort en prövning av varje enskilt fall baserat på ett i förväg fattat schablonmässigt menprövningsbeslut. Menprövningsbeslutet ska inkludera vad som kan lämnas ut för uppgift som är skyddad (sekretessmarkerad).

#### Sekretessmarkerade personuppgifter
Personuppgifter kan bli sekretessmarkerade enligt ett regelverk som Skatteverket ansvarar för, vilket då alltid framgår när uppgiften hämtas via tjänster i denna domän, s.k. sekretessmarkering.
Grundregeln är att i de fall personposten är sekretessmarkerad, utelämnas (”blankas”) alla uppgifter i svaret utom personidentiteten i sig samt personens namn. Det framgår även att posten är sekretessmarkerad.
Notera dock att personuppgifter kan ha inhämtats tidigare för person som får sekretessmarkering. Den organisation som tagit emot uppgifterna måste då ansvara för att skyddet för en persons uppgifter hanteras korrekt.

#### Krav på tjänstekonsumenten
Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas.

#### Krav på tjänsteproducenten
Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [3].

#### Avtal
För inhämtande av uppgifter från Skatteverket (Navet) för lagring i tjänsteproducent, krävs avtal mellan Skatteverket och respektive landsting/region (huvudman). Dessa avtal reglerar grunduttag, ändringsaviseringar samt direktuppslag i Navet.
För Personuppgiftstjänst där personuppgiftsansvariga överlåter till annan part att tillhandahålla tjänsten, ska det finnas personuppgiftsbiträdesavtal.
För att en tjänstekonsument ska få ansluta till Personuppgiftstjänst krävs att avtal upprättas med ansvarig för respektive tjänsteproducent.

#### Konfidentialitet
All kommunikation med tjänsterna sker via TLS-krypterad förbindelse.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 20 ms per post som ingår i svaret + en grundsvarstid på max 100 ms. | Detta gäller vid anrop på personposter som finns i mellanlager. |
| Tillgänglighet | 24x7, 99,9% |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Ingen information får vara äldre än 80 timmar | Högsta möjliga uppdateringsfrekvens från skatteverkets Navet, 5 gånger i veckan. |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiska fel
Logiska fel returneras inte av läsande tjänster i denna domän.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel
N/A

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

## Tjänstedomänens meddelandemodeller

### V-MIM

![img_003.png](images/img_003.png)
Meddelandeinformationsmodellen följer Skatteverkets Navets informationsstruktur. Mappning till Skatteverkets attribut/termer återfinns i Informationsspecifikationen.

### Formatregler

#### Personidentitet
Personidentitet anges på formatet ÅÅÅÅMMDDXXXX. Samma format gäller för olika typer av personidentiteter(Personnummer och samordningsnummer), dvs 12 tecken.

#### Datum
Kontraktet använder sig av en datumtyp som är ett ofullständigt datum (PartialDate) där man inte alltid vet det exakta datumet utan bara vet månaden eller året för händelsen. Tillåtna format är "YYYY-MM-DD", "YYYY-MM" och "YYYY".

#### Datum och Tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss” enligt RFC 3339 [R5]. Exempel: 2010-11-26T09:12:33. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

##### Tidszon
Om inte tidszon anges i kommunikation med tjänsterna ska man förutsätta att det är tidszon i Sverige vid den tidpunkt som respektive datum eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid) om inte tidszon anges, se W3C-dataypen dateTime.

##### Landskod
Kod för land anges om inget annat specificeras enligt ISO 3166-1 alpha-2.

### Profiler
Alla tillämpningar har inte samma behov av information från Skatteverket/Navet. Det är önskvärt att tillåta olika delmängder av informationen för olika ändamål, bl.a. av prestandaskäl.
Kontraktet LookupResidentsForProfile använder sig därför av profiler för att inte skicka tillbaka onödigt mycket data till tjänstekonsumenten. Tjänstekonsumenten anger önskad profil i anropet. Se vidare i kapitel 8. Aktuella profiler

## Tjänstekontrakt

### LookupResidentsForProfile
Tjänst för att hämta uppgifter för 1..* personidentiteter.
Mängden data i svaret är beroende av den profil som efterfrågas. Se kap 8 för mer information.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | PersonalIdentity | Array med personidentiteter som efterfrågas. Maxantal 500 | 1..* |
| profile | LookupProfile | Profil för returnerat data. | 1..1 |
| Svar |  |  |  |
| LookupResidentsForProfile | LookupResidentsResponse | LookupResidentsResponse innehållande folkbokföringsposter för efterfrågade och funna personidentiteter | 1..1 |

#### Övriga regler
Tjänsten skall åtkomstkontrollera om anropande system/aktör har behörighet.

#### Exempel

##### Exempel på anrop
Se LookupResidentsForProfileRequest.xml.

##### Exempel på svar
Se LookupResidentsForProfileResponse.xml

## Datatyper
Kapitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### Datatyper från namnrymd urn:riv:masterdata.citizen.citizen:2
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:masterdata.citizen.citizen:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### AddressInformation
Grupp för adressuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddress | Folkbokföringsadress | 0..1 |
| nationalKeys | NationalKeys | Riksnycklar för fastighet, adressplats och lägenhet | 0..1 |
| district | District | Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddress | Särskild postadress | 0..1 |
| addressAbroad | AddressAbroad | Utlandsadress | 0..1 |

#### AddressAbroad
Utlandsadress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalAddress3 | String40 | Utdelningsadress3 | 0..1 |
| country | String40 | Land | 0..1 |
| addressAbroadDate | PartialDate | Datum för utlandsadress | 0..1 |
| votingDate | PartialDate | Datum för rösträtt | 0..1 |

#### AddressPlaceId
Adressplats id

#### ApartmentId
Lägenhets id

#### Birth
Uppgifter om födelse

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthSweden | PlaceOfBirthSweden | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroad | Uppgifter om födelse i utlandet | 0..1 |

#### BirthAbroad
Uppgifter om födelse i utlandet

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | PlaceOfBirthAbroad | Uppgift om födelseort i utlandet | 0..1 |
| countryOfBirth | String40 | Uppgift om födelseland | 0..1 |

#### Citizenship
Grupp för medborgarskap

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CitizenshipCountryCode | MedborgarskapslandKod | 0..1 |
| citizenshipDate | PartialDate | Datum för medborgarskap | 0..1 |
| status | CitizenshipStatus | Statuskoder på medborgarskap | 0..1 |

#### CitizenshipCountryCode
Grupp för medborgarskapslandkod

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| countryCode | CountryCode | Kod för medborgarskapsland | 0..1 |
| attested | xs:boolean | Kod som visar om medborgarskapsland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### CitizenshipStatus
Statuskoder på medborgarskap

| Värde | Beskrivning |
| :--- | :--- |
| "NY" | Nyregistrerad |
| "RD" | Rättad |
| "AS" | Avslutad |
| "AN" | Annullerad |

#### CountryCode
Tvåställig landskod enligt ISO 3166-1 alpha-2 [R6]

#### DateTypeFormat
Enum som beskriver datumets noggrannhet.

| Värde | Beskrivning |
| :--- | :--- |
| "YYYY" | Noggrannhet: År |
| "YYYY-MM" | Noggrannhet: År och månad |
| "YYYY-MM-DD" | Noggrannhet: År, månad, dag |

#### Deregistration
Uppgifter om avregistrering

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | DeregistrationReasonCode | Kod för avregistreringsorsak | 0..1 |
| deregistrationDate | PartialDate | Datum för avregistrering | 0..1 |

#### DeregistrationReasonCode
Kod för avregistreringsorsak

| Värde | Beskrivning |
| :--- | :--- |
| "AV" | Avliden |
| "UV" | Utvandrad |
| "GN" | Gammalt personnummer |
| "AN" | Annan anledning |
| "AS" | Avslutad |
| "GS" | Gammalt samordningsnummer |
| "OB" | Försvunnen |
| "TA" | Tekniskt avregistrerad |

#### District
Grupp för Distriktskod

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode | Distriktskod | 0..1 |

#### DistrictCode
Distriktskod

#### FictitiousPropertyNumber
Fiktivt nummer för fastighet

#### GivenNameIndicator
Tilltalsnamnsmarkering

#### HistoricalAddress
Grupp för historik adress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddress | Föregående folkbokföringsadress | 0..1 |

#### HistoricalRecords
Grupp för historik

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocality | Grupp för folkbokföring | 0..* |
| historicalAddress | HistoricalAddress | Föregående adress | 0..1 |

#### Immigration
Grupp för invandringsuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDate | Invandringsdatum | 0..1 |
| rightOfResidence | xs:boolean | Anger om uppehållsrätt registrerades vid senaste invandringstillfället / true = personen har uppehållsrätt / false/null = personen saknar uppehållsrätt | 0..1 |
| immigrationIdentity | ImmigrationIdentity | Grupp för personnummer och vilket land det är knutet till. / Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

#### ImmigrationIdentity
Grupp för personnummer och vilket land det är knutet till.
Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber | Personnummer enligt format för det landet | 1 |
| country | CountryCode | Land för identiteten. Kan vara någon av följande: NO (Norge), DK (Danmark), FI (Finland), FO (Färöarna) eller IS (Island) | 1 |

#### LookupProfile
Profil för att ange vilket data som önskas i tjänstens response.

| Värde | Beskrivning |
| :--- | :--- |
| "P1" | Profil med enbart namn |
| "P2" | Profil i enlighet med kontrakt 1.1 |
| "P3" | Profil med komplett data exklusive historik |
| "P4" | Profil med komplett data inklusive historik |
| "P5" | Reserverad för framtida bruk |
| "P6" | Reserverad för framtida bruk |
| "P7" | Reserverad för framtida bruk |
| "P8" | Reserverad för framtida bruk |
| "P9" | Reserverad för framtida bruk |
| "P10" | Reserverad för framtida bruk |

#### LookupResidentsResponse
Returtyp för operationen LookupResidentsForProfile

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationRecords | PopulationRegistrationRecord | Folkbokföringsposter | 0..* |

#### MaritalStatus
Civistånd

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | MaritalStatusCode | Civilståndskod | 0..1 |
| maritalStatusDate | PartialDate | Civilståndsdatum | 0..1 |

#### MaritalStatusCode
Civilståndskod

| Värde | Beskrivning |
| :--- | :--- |
| "OG" | Ogift |
| "G" | Gift |
| "A" | Änka/änkling |
| "S" | Skild |
| "RP" | Registrerad partner |
| "SP" | Skild partner |
| "EP" | Efterlevande partner |

#### Name
Namnuppgifter för person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator | Kod för tilltalsnamnsmarkering | 0..1 |
| givenName | NamePart | Förnamn | 0..1 |
| middleName | NamePart | Mellannamn | 0..1 |
| surname | NamePart | Efternamn | 0..1 |
| notificationName | String40 | Aviseringsnamn finns endast för de personer vars förnamn, mellannamn och efternamn tillsammans överstiger 36 tecken. | 0..1 |

#### NamePart
Grupp för del av namn där delen kan vara styrkt eller ej

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | String80 | Namn | 0..1 |
| attested | xs:boolean | Anger om namnet är styrket eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### NationalKeys
Riksnycklar

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId | Riksnyckel för fastighet | 0..1 |
| addressPlaceId | AddressPlaceId | Riksnyckel för adressplats | 0..1 |
| apartmentId | ApartmentId | Riksnyckel för lägenhet | 0..1 |

#### NotificationCase
Ärendeuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| recordId | RecordId | Unikt löpnummer för varje ändring i Navet. | 0..1 |
| notificationType | String40 | Visar vilket ärende som ligger till grund för aviseringen. | 0..1 |
| modificationTime | xs:dateTime | Tidpunkt för senaste ändring av posten i Navet. Levereras endast för post som uppdaterats online mot Navet. | 0..1 |
| totalRecord | xs:boolean | Endast aktuell vid regelbunden avisering, ändrade termer. Sätts till ‘true’ när totalpost på personen aviseras. Dvs när personen anses komma som ny till mottagarens register. | 1 |
| notificationDate | PartialDate | Visar datum när personposten uppdaterades i bakomliggande register Navet. Levereras endast för post som inkommit via avisering från Navet. | 0..1 |

#### PartialDate
Kan beskriva ett datum med variabel noggrannhet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormat | Enum som beskriver datumets noggrannhet. Tillåtna värden är "YYYY-MM-DD", "YYYY-MM" och "YYYY". | 1 |
| value | PartialDateValue | Sträng som håller själva datumet, och uttrycks på det format som anges i format. | 1 |

#### PartialDateValue
En del av ett datum med minst året angivet

#### PersonalIdentity
Personidentitet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | PersonalIdentityNumber | Svenskt perssonnummer på format: / ÅÅÅÅMMDDNNNK / Eller samordningsnummer: / ÅÅÅÅMMDDNNNK där / MM = 00 - 12 / DD = 60 – 91 | 1 |
| type | xs:string | OID i enlighet med: <a href="https://bitbucket.org/rivta-domains/best-practice/wiki/De%20facto-konventioner%20f%C3%B6r%20datatyper.md">RIV-TA Best Practice</a> / Anger som vilken typ som id syftar på. / Svenskt personnummer = '1.2.752.129.2.1.3.1' / Samordningsnummer = '1.2.752.129.2.1.3.3' | 1 |

#### PersonalIdentityNumber
Personnummer angivet med 12-tecken. Format beroende på typ av personnummer. Svenskt, Samordningsnummer, Norskt osv.
Förberett för personnummer med mer än 12-tecken.

#### PersonalRecord
Grupp för personpost

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentity | Personidentitet på huvudperson. Denna levereras även om personen är sekretessmarkerad. | 0..1 |
| referredPersonalIdentity | PersonalIdentity | Lista med hänvisningspersonnummer | 0..* |
| deregistration | Deregistration | Uppgifter om avregistrering | 0..1 |
| name | Name | Namn. Denna levereras även om personen är sekretessmarkerad. | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocality | Uppgifter om folkbokföring | 0..1 |
| addressInformation | AddressInformation | Uppgifter om adress | 0..1 |
| maritalStatus | MaritalStatus | Civilstånd | 0..1 |
| birth | Birth | Uppgifter om födelse | 0..1 |
| immigration | Immigration | Uppgifter om invandring | 0..1 |
| relationships | Relationship | Uppgifter om relationer | 0..* |
| citizenship | Citizenship | Uppgifter om medborgarskap | 0..* |

#### PlaceOfBirthAbroad
Födelseort utland

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 | Uppgift om födelseort i utlandet | 0..1 |
| attested | xs:boolean | Kod som visar om födelseort utland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### PlaceOfBirthSweden
Uppgifter om hemort i Sverige

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 | Födelselänskod | 0..1 |
| birthParish | String40 | Födelseförsamling | 0..1 |

#### PopulationRegistrationLocality
Uppgifter om folkbokföring

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDate | Folkbokföringsdatum | 0..1 |
| countyCode | String2 | Länskod | 0..1 |
| municipalityCode | String2 | Kommunkod | 0..1 |
| parishCode | String2 | Församlingskod | 0..1 |
| propertyDesignation | String40 | Fastighetsbeteckning | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber | Fiktivt nummer för fastighet | 0..1 |
| populationRegistrationType | PopulationRegistrationType | Kod för folkbokföringskategori | 0..1 |

#### PopulationRegistrationRecord
Folkbokföringspost

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| protectedPersonIndicator | xs:boolean | Uppgift om sekretessmarkering. Om denna är ”true” kommer enbart personnummer/samordningsnummer och namn att levereras för personen, resten kommer att döljas. | 1 |
| testIndicator | xs:boolean | Uppgift om personen är en testperson | 1 |
| syncronizationTime | xs:dateTime | Tidsangivelse när posten senast kontrollerades i navet, kan vara onlineslagning på personen eller när aviseringsfil hämtades senast. | 0..1 |
| notificationCase | NotificationCase | Ärendeuppgifter | 0..1 |
| personalRecord | PersonalRecord | Personpost | 1 |
| historicalRecords | HistoricalRecords | Historik | 0..1 |

#### PopulationRegistrationType
Kod för folkbokföringskategori

| Värde | Beskrivning |
| :--- | :--- |
| "FB" | Folkbokförd |
| "UV" | Utvandrad |
| "OB" | Avregistrerad som försvunnen |

#### PostalCode
Svenskt postnummer

#### PropertyId
Fastighetsid

#### RecordId
ÅÅÅÅ.NNN.NNN.NNN
Fyrsiffrigt årtal + 9 siffror i sekvens grupperade om tre

#### Relationship
Grupp för relation

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipId | Personidentitet på relationsperson | 1 |
| relationshipType | RelationshipType | Relationstyp | 1 |
| relationshipFromDate | PartialDate | From datum för relation | 0..1 |
| relationshipToDate | PartialDate | Datum för avslutad vårdnad | 0..1 |
| name | Name | Namn | 0..1 |
| deregistration | Deregistration | Uppgifter om avregistrering | 0..1 |
| status | RelationshipStatus | Statuskoder på relation | 0..1 |

#### RelationshipId
Grupp för relationspersons identitet
Antingen får man personnummer eller datum då personen föddes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentity | Personnummer folkbokförd relation | 0..1 |
| dateOfBirth | PartialDate | Aldrig folkbokförd relation eller korrekt personnummer enligt FB-relation. | 0..1 |

#### RelationshipStatus
Statuskoder på relation

| Värde | Beskrivning |
| :--- | :--- |
| "NY" | Nyregistrerad |
| "PB" | Nyregistrerad pga personnummerbyte |
| "RD" | Rättad |
| "AS" | Avslutad |
| "AV" | Avslutad pga avliden |
| "IV" | Avslutad pga invandring |
| "AN" | Annullerad |

#### RelationshipType
Relationstyp

| Värde | Beskrivning |
| :--- | :--- |
| "B" | Barn |
| "MO" | Moder |
| "FA" | Fader |
| "F" | Förälder |
| "V" | Vårdnadshavare |
| "VF" | Vårdnadshavare för |
| "M" | Make/maka |
| "P" | Partner |

#### ResidentialAddress
Svensk adress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 | Care of adress | 0..1 |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalCode | PostalCode | Postnummer | 0..1 |
| city | String40 | Postort | 0..1 |

#### String2
Strängvärde med maxlängd

#### String40
Strängvärde med maxlängd

#### String80
Strängvärde med maxlängd

## Aktuella profiler
Det finns 4s t aktuella profiler, det är dock förberett för fler profiler. Vilken av dem man vill ha tillbaka i svar anger man i anropet. Man ska inte hämta mer data än man behöver.
Profil 1: Om man enbart behöver namn på personerna.
Profil 2: Om man behöver allt data utom historik, medborgarskap och invandring.
Profil 3: Om man behöver allt data utom historik.
Profil 4: Om man behöver allt data, inklusive historik.
Detaljerad information om vad profilerna innehåller framgår av tabellen nedan. 
Notera att vid sekretessmarkerad personpost (protectedPersonIndicator är satt), levereras endast uppgifter markerade med grön bakgrundsfärg (administrativa uppgifter, personidentiteten och namn).

| Fältnamn | Profil 1 | Profil 2 | Profil 3 | Profil 4 |
| :--- | :--- | :--- | :--- | :--- |
| PopulationRegistrationRecord | X | X | X | X |
| ../SyncronizationTime | X | X | X | X |
| ../TestIndicator | X | X | X | X |
| ../ProtectedPersonIndicator | X | X | X | X |
| ../NotificationCase |  | X | X | X |
| ../../TotalRecord |  | X | X | X |
| ../../ NotificationDate (Date+Format) |  | X | X | X |
| ../../ModificationTime |  | X | X | X |
| ../../RecordId |  | X | X | X |
| ../../NotificationType |  | X | X | X |
| ../PersonalRecord | X | X | X | X |
| ../../PersonalIdentity | X | X | X | X |
| ../../../PersonalIdentityNumber | X | X | X | X |
| ../../../PersonalIdentityType | X | X | X | X |
| ../../ReferredPersonalIdentity | X | X | X | X |
| ../../../PersonalIdentityNumber | X | X | X | X |
| ../../../PersonalIdentityType | X | X | X | X |
| ../../Deregistration | X | X | X | X |
| ../../../DeregistrationReasonCode | X | X | X | X |
| ../../../DeregistrationDate (Date+Format) | X | X | X | X |
| ../../Name | X | X | X | X |
| ../../../GivenNameIndicator | X | X | X | X |
| ../../../GivenName (Name+Attested) | X | X | X | X |
| ../../../MiddleName (Name+Attested) | X | X | X | X |
| ../../../Surname  (Name+Attested) | X | X | X | X |
| ../../../NotificationName | X | X | X | X |
| ../../PopulationRegistrationLocality |  | X | X | X |
| ../../../PopulationRegistrationDate (Date+Format) |  | X | X | X |
| ../../../CountyCode |  | X | X | X |
| ../../../MunicipalityCode |  | X | X | X |
| ../../../ParishCode |  | X | X | X |
| ../../../FictitiousPropertyNumber |  | X | X | X |
| ../../../PropertyDesignation |  | X | X | X |
| ../../../PopulationRegistrationType |  | X | X | X |
| ../../AddressInformation |  | X | X | X |
| ../../../ResidentialAddress |  | X | X | X |
| ../../../../CareOf |  | X | X | X |
| ../../../../PostalAddress1 |  | X | X | X |
| ../../../../PostalAddress2 |  | X | X | X |
| ../../../../PostalCode |  | X | X | X |
| ../../../../City |  | X | X | X |
| ../../../NationalKeys |  | X | X | X |
| ../../../../PropertyId |  | X | X | X |
| ../../../../AddressPlaceId |  | X | X | X |
| ../../../../ApartmentId |  | X | X | X |
| ../../../District |  | X | X | X |
| ../../../../DistrictCode |  | X | X | X |
| ../../../SpecialPostalAddress |  | X | X | X |
| ../../../../CareOf |  | X | X | X |
| ../../../../PostalAddress1 |  | X | X | X |
| ../../../../PostalAddress2 |  | X | X | X |
| ../../../../PostalCode |  | X | X | X |
| ../../../../City |  | X | X | X |
| ../../../AddressAbroad |  | X | X | X |
| ../../../../PostalAddress1 |  | X | X | X |
| ../../../../PostalAddress2 |  | X | X | X |
| ../../../../PostalAddress3 |  | X | X | X |
| ../../../../Country |  | X | X | X |
| ../../../../AddressAbroadDate (Date+Format) |  | X | X | X |
| ../../../../VotingDate |  | X | X | X |
| ../../MaritalStatus |  | X | X | X |
| ../../../MaritalStatusCode |  | X | X | X |
| ../../../MaritalStatusDate (Date+Format) |  | X | X | X |
| ../../Birth |  | X | X | X |
| ../../../PlaceOfBirthSweden |  | X | X | X |
| ../../../../BirthCountyCode |  | X | X | X |
| ../../../../BirthParish |  | X | X | X |
| ../../../BirthAbroad |  | X | X | X |
| ../../../../CountryOfBirth |  | X | X | X |
| ../../../../PlaceOfBirthAbroad |  | X | X | X |
| ../../../../Attested |  | X | X | X |
| ../../Immigration |  |  | X | X |
| ../../../ImmigrationDate (Date+Format) |  |  | X | X |
| ../../../RightOfResidence |  |  | X | X |
| ../../../ImmigrationIdentity |  |  | X | X |
| ../../../../Country |  |  | X | X |
| ../../../../PersonalIdentityNumber |  |  | X | X |
| ../../Relationship |  | X | X | X |
| ../../../Status |  | X | X | X |
| ../../../RelationshipId |  | X | X | X |
| ../../../../PersonalIdentity |  | X | X | X |
| ../../../../DateOfBirth |  | X | X | X |
| ../../../RelationshipType |  | X | X | X |
| ../../../RelationshipFromDate (Date+Format) |  | X | X | X |
| ../../../RelationshipToDate (Date+Format) |  | X | X | X |
| ../../../Name |  | X | X | X |
| ../../../../GivenName (Name+Attested) |  | X | X | X |
| ../../../../MiddleName (Name+Attested) |  | X | X | X |
| ../../../../Surname (Name+Attested) |  | X | X | X |
| ../../../Deregistration |  | X | X | X |
| ../../../../DeregistrationReasonCode |  | X | X | X |
| ../../../../DeregistrationDate (Date+Format) |  | X | X | X |
| ../../Citizenship |  |  | X | X |
| ../../../Status |  |  | X | X |
| ../../../CitizenshipCountryCode |  |  | X | X |
| ../../../../CountryCode |  |  | X | X |
| ../../../../Attested |  |  | X | X |
| ../../../CitizenshipDate (Date+Format) |  |  | X | X |
| ../HistoricalRecords |  |  |  | X |
| ../../PopulationRegistrationLocality |  |  |  | X |
| ../../../PopulationRegistrationDate (Date+Format) |  |  |  | X |
| ../../../CountyCode |  |  |  | X |
| ../../../MunicipalityCode |  |  |  | X |
| ../../../ParishCode |  |  |  | X |
| ../../../FictitiousPropertyNumber |  |  |  | X |
| ../../../PropertyDesignation |  |  |  | X |
| ../../../PopulationRegistrationType |  |  |  | X |
| ../../HistoricalAddress |  |  |  | X |
| ../../../ResidentialAddress |  |  |  | X |
| ../../../../CareOf |  |  |  | X |
| ../../../../PostalAddress1 |  |  |  | X |
| ../../../../PostalAddress2 |  |  |  | X |
| ../../../../PostalCode |  |  |  | X |
| ../../../../City |  |  |  | X |
