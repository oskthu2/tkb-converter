
|  | operativt processtöd:tillgängliggöra tjänst: vårdochomsorgsutbud / Tjänstekontraktsbeskrivning Vård- och omsorgsutbud / Version 3.0 / 2023-04-25 |
| :--- | :--- |
Innehåll
1	Inledning	13
1.1	Svenskt namn	13
2	Versionsinformation	14
2.1	Version 2.1	14
2.1.1	Oförändrade tjänstekontrakt	14
2.1.2	Nya tjänstekontrakt	14
2.1.3	Förändrade tjänstekontrakt	14
2.1.4	Utgångna tjänstekontrakt	14
3	Tjänstedomänens arkitektur	15
3.1	Flöden	15
3.1.1	Hämta utbudsinformation	15
3.1.2	Sök vård- och omsorgstjänster	16
3.2	Adressering	19
3.2.1	Sammanfattning adressering	20
3.3	Aggregering och engagemangsindex	20
4	Tjänstedomänens krav och regler	21
4.1	Informationssäkerhet och juridik	21
4.2	Icke-funktionella krav	21
4.2.1	SLA-krav	21
4.2.2	Övriga krav	22
4.3	Felhantering	22
4.3.1	Krav på en tjänsteproducent	22
4.3.2	Krav på en tjänstekonsument	22
5	Tjänstedomänens meddelandemodeller	23
5.1	V-MIM	23
5.1.1	GetOfferingCatalogues	23
5.1.2	GetCareServiceOfferings	25
5.2	Formatregler	30
5.2.1	Format för datum och tidpunkter	30
5.2.2	Format för kalenderangivelser - öppettider	30
5.2.3	RDF	32
5.2.4	URI	32
5.2.5	ITU	32
5.2.6	RFC2822	32
5.2.7	SWEREF 99 TM	33
6	Tjänstekontrakt	34
6.1	GetOfferingCatalogues	34
6.1.1	Version	34
6.1.2	Fältregler	34
6.1.3	Övriga regler	37
6.1.4	Annan information om kontraktet	37
6.2	GetCareServiceOfferings	38
6.2.1	Version	38
6.2.2	Fältregler	38
6.2.3	Övriga regler	71
6.2.4	Annan information om kontraktet	72
Revisionshistorik

| Version | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av |
| :--- | :--- | :--- | :--- |
| 2.0_utkast | 2016-11-10 | Första versionen | Björn Skeppner |
| 2.0_utkast | 2016-11-21 | Uppdaterat kapitel 1 och 2 | Nadeem Hossain |
| 2.0_utkast | 2016-11-24 | Lagt till arbetsflöden och sekvensdiagram | Nadeem Hossain / David Komar |
| 2.0_utkast | 2016-11-25 | Lagt till beskrivningar till vissa flöden | Nadeem Hossain |
| 2.0_utkast | 2016-11-26 | Arbetat med fältregeltabellen skapad | Nadeem Hossain |
| 2.0_utkast | 2016-11-27 | Se ovan | Nadeem Hossain |
| 2.0_utkast | 2016-11-28 | Fältregeltabellen och uppdatering av arbetsflödesdiagrammen | Nadeem Hossain |
| 2.0_utkast | 2016-11-29 | Uppdaterat resten av dokumentet | Nadeem Hossain |
| 2.0_utkast | 2016-12-07 | Interna granskningar |  |
| 2.0_utkast | 2016-12-10 | Uppdatering efter granskning | Nadeem Hossain |
| 2.0_RC1 | 2016-12-12 | För granskning A&R Inera | Nadeem Hossain |
| 2.0_RC2 | 2016-12-21 | Tagit bort ResultType från GetOfferings och GetServiceProviders. | Björn Skeppner, Nadeem Hossain |
| 2.0_RC3 | 2017-02-15 | Lagt till fritextsökning i GetOfferings | Malin Ljunggren |
| 2.0_RC3 | 2017-04-07 | Tagit bort en targetGroupAge från GetOfferings. Korrigerat namn på fält i GetOfferings och UpdateOfferings. | Emma Molin |
| 2.0_RC3 | 2017-06-21 | Tagit bort partOfUnitName som ersatts av fritextsökning. Uppdaterat beskrivning och kardinalitet för fritextsökning. Ändrat kardinalitet på typeOfBusiness till 0..*. / Tillägg av regel för att beskriva hur CVType hanteras i begäran. / Förtydligat avsnitt 3.3 Aggregering / och engagemangsindex. / Bytt ut ADType till string. | Thomas Siltberg |
| 2.0_RC3 | 2017-07-06 | Uppdaterat MIM för GetServiceProviders, getOfferings, UpdateOfferings. / NI 2016:1  NI 2017. / Uppdaterat beskrivningarna för parametrarna i begäran (samtliga). / Ändrat fritextsökning till 0..* i getOfferings. / Uppdaterat flödet för utbudsansvariga organisationer. / Uppdaterat sökområde i begäran för getOfferings. / Fälten beskrivning (description): lagt till att beskrivning ska anges på minst svenska och för invånare + förtydligat beskrivning av filterparametrarna roll och språk. / Lagt till urval av snomed-koder för roll. / Bytt fältnamn för vård- och omsorgstjänst till careService. / Lagt till remissmall i getOfferings och updateOfferings. / Korrigerat beskrivningen för typ av vård- och omsorgstjänst. / Lagt till id för utbudsansvarig organisation i begäran för GetOfferings. / Lagt in en nivå överst i getOfferings och updateOfferings som är Vård- och omsorgstjänst (careService). / Uppdaterat oid för organisationsnummer. / Lagt till beskrivning för vård- och omsorgstjänst som saknades i getOfferings och updateOfferings fältregler. / Korrigerat attributnamn roll till riktadTillRoll (i beskrivning). | Malin Ljunggren |
| 2.0_RC3 | 2017-09-11 | Uppdaterat: / -arbetsflöde för Hitta utbud och Sök vård- och omsorgstjänster / -sekvens för Sök vård- och omsorgstjänst / -kapitlet adressering (system- och verksamhetsadresserat) / -utbudsansvarig organisation till providingOrganization / - utförande enhet till performingOrganization / organisation som utförande enhet tillhör till resposibleOrganization / -vård- och omsorgstjänstens id och referens till vård- och omsorgstjänst från UUIDv4 till II. | Malin Ljunggren |
| 2.0_RC3 | 2017-10-09 | Uppdaterat texter. / Lagt till övriga regler för getOfferings. / Lagt till oid för språk och koder för finansieringsform. / Tagit bort UUID från kapitlet formatregler. | Malin Ljunggren, Thomas Siltberg |
| 2.0_RC3 | 2017-10-12 | Lagt till rader för longitude och latitude för polygon. / Lagt till fler regler för getOfferings och updateOfferings. / Tagit bort ResultType i updateOfferings (ska ligga direkt i svaret). | Malin Ljunggren |
| 2.0_RC3 | 2017-10-18 | Ändrat namn på getOfferings till GetCareServiceOfferings och UpdateOfferings till UpdateCareServiceOfferings. | Malin Ljunggren |
| 2.0_RC3 | 2017-10-19 | Ändrat StringListType till String och 0..*. / Uppdaterat RFC822 till RFC2822. | Malin Ljunggren |
| 2.0_RC3 | 2017-10-25 | Ändrat namn på tjänstekontraktet GetServiceProviders till GetOfferingCatalogues. | Malin Ljunggren, Thomas Siltberg |
| 2.0_RC3 | 2017-10-30 | Tagit bort attributet Finansieringsform och istället lagt till ”Offentlig huvudman” i Organisation. / GetCareServiceOfferings: Lagt ”id för utbudsansvarig organisation” och ”offentlig huvudman” på översta nivån i begäran. / Uppdaterat MIM:ar. | Malin Ljunggren, Thomas Siltberg |
| 2.0_RC3 | 2017-11-09 | Uppdaterat SLA-kraven. / Ändrat text på Beskrivning (för vård- och omsorgstjänst och nationellt överenskommen beskrivning) till ”Om beskrivning anges..” istället för ”Det ska åtminstone finnas en…” / Uppdaterat text i fritextsökning (GetCareServiceOfferings). / Lagt till root och extension på careServiceId och referenceToCareServiceId / Begäran i GetCareServiceOfferings: flyttat upp providingOrganizationId och publicProvider en nivå / + ändrat providingOrganizationId till 0..* / Lagt till true och false i beskrivning av fältet obligatorisk (under remissmall). / Lagt till exempel för patientavgift (för value och currency) / Lagt till beskrivning på Virtuell plats. / Tagit bort samt errorCode = INVALID_UPDATE. | Malin Ljunggren |
| 2.0_RC4 | 2017-12-01 | Ändrat versionsnummer på GetOfferingCatalogues till 1.0. / Kompletterat samtliga fält ’beskrivning’ med att det får endast finnas en beskrivning med samma kombination av språk och roll. | Malin Ljunggren |
| 2.0_Rc5 | 2018-01-17 | Korrigerat nivå för logicalAddress i fältregeltabell (under indicator). | Malin Ljunggren |
| 2.0_RC5 | 2018-02-08 | Korrigerat kardinalitet på adress (till remissmall) från 0..1 till 1..1 (endast i fältregeltabell). / Lagt till fält ägarform. / Ändrat kardinalitet på språk från 1..1 till 0..1 / Delat på klassen organisation till organisation och utbudsansvarig organisation. / Ändrat på fältet ålder så att start och end är 0..1. / searchLocation ändrad till location. / Uppdaterat länk till SCB. / Uppdaterat fälten som beskrivs i searchTerm. / Uppdaterat värdena för careServiceStatusEnum (versaler). | Malin Ljunggren |
| 2.0_RC5 | 2018-02-19 | Uppdaterat kodverket ägarform. / Lagt till ägarform i svaret i GetCareServiceOfferings. | Malin Ljunggren |
| 2.0_RC5 | 2018-02-22 | Lagt till en regel i samtliga tjänstekontrakt (ägarform - offentlig huvudman) | Malin Ljunggren / Thomas Siltberg |
| 2.0_RC5 | 2018-03-16 | Uppdaterat beskrivningar för flödet  Hämta utbudsinformation och tjänstekontrakt GetOfferingCatalogues. / Lagt till oid för HSA verksamhetskod. | Malin Ljunggren |
| 2.0_RC5 | 2018-05-04 | Ändrat PositiveIntType till int och OrgType till ProvidingOrganizationType för utbudsansvarig organisation enligt schemat. | Malin Ljunggren |
| 2.0_RC5 | 2018-05-17 | Korrigerat några stavfel. | Malin Ljunggren |
| 2.0_RC5 | 2018-06-13 | Lagt till i fältet Geografiskt område (geographicalLocation) – tk getCareServiceOfferings: / Producenter behöver inte svara baserat på polygoner i Övrigt område (otherLocation). | Malin Ljunggren |
| 2.0_RC5 | 2018-09-12 | Korrigerat vilka id’n som kan anges för Providing organization i begäran för GetCareServiceOfferings. | Malin Ljunggren |
| 2.0_RC5 | 2018-09-13 | Uppdaterat tabellen för GetCareServiceOfferings i kapitel 5. | Malin Ljunggren |
| 2.0_Rc5 | 2018-10-31 | Lagt till remisskrav i GetCareServiceOfferings och UpdateCareServiceOfferings | Malin Ljunggren |
| 2.0_Rc5 | 2019-01-28 | Uppdaterat beskrivningar för Typ av vård- och omsorgstjänst för begäran och svar med infomration om nationella utbudkodvalet och verksamhetkod + Ändrat alla SNOMED CT till Snomed CT | Malin Lindberg |
| 2.0_RC6 | 2020-08-31 | Tagit bort användning av terminologiserver från sekvensdiagrammet för Sök vård- och omsorgstjänster, eftersom den tänkta terminologiservern inte är aktuell för realisering. / Tagit bort referens R18 (som gällde terminologiservern). / Tagit bort ”Sök i terminologitjänst” från listan på obligatoriska tjänstekontrakt. / Lagt till formatsregel som anger att geografisk position ska anges enligt referensmodellen SWEREF 99 i decimalform. / Lagt till information om att anropsbehörighet för GetCareServiceOfferings enbart ska kontrolleras på tjänstekontraktet, och inte på logisk adressat. / Korrigerat kardinalitet för ProvidingOrganization i requestet för GetOfferingCatalogues till 0..1, så det överensstämmer med schema och modell. / Ändrat tjänstekontraktet GetOfferingCatalogues så att en utbudskatalog kan relateras till flera utbudsansvariga organisationer. På så sätt får konsumenten veta vilka utbudsansvariga organisationer som kan hanteras i ett anrop till en viss utbudskatalog. | Johan Zetterström |
| 2.0_RC6 | 2020-09-08 | Ändrat format för geografisk position till SWEREF 99 TM. Bytt namn på latitude och longitude till north och east och ändrat datatyp för dessa till long | Johan Zetterström |
| 2.0_RC6 | 2020-12-09 | Tagit bort tjänstekontraktet UpdateCareServiceOfferings (UpdateHealthcareOfferings i version 1.0). Intresse för användning av kontraktet saknas. Utan uppdateringsmöjlighet förenklas användningsmönster inom domänen. / I kap 3.2, lagt till ett förtydligande om varför systembaserad adressering används. | Johan Zetterström |
| 2.0_RC6 | 2020-12-29 | Rättat typ för providingOrganization i requestet för getOfferingCatalogues, ska vara SearchProvidingOrganizationType. / Rättat inkonsistent information kring description för alla typer av organisationer. Nu finns elementet för ProvidingOrganization, PerformingOrganization och ResponsibleOrganization i MIM:ar, fältregler och xml-scheman. / Uppdaterat beskrivningarna för ProvidingOrganization/id i GetOfferingCatalogues så att de överensstämmer med GetCareServiceOfferings. / Uppdaterat enum för RIVTA-version / I fältreglerna för GetCareServiceOfferings, rättat så att alla element tillhörande careService/description ligger på rätt plats i tabellen. / Tagit bort Interaktion från Vård- och omsorgstjänst. Information om vilka tjänstekontrakt som stödjs ska i stället läsas via tjänstekontraktet GetSupportedServiceContracts, med id på utförande enhet som nyckel. / Lagt till attributet original enhets id i Utförande organisation, för att hantera att en viss enhet kan förekomma med olika identiteter i olika utbudsansvariga organisationers kataloger. Om original enhets id är populerat så är det detta id som ska användas som nyckel i anrop till GetSupportedServiceContracts. | Johan Zetterström |
| 2.0_RC7 | 2021-09-02 | Rättat språk
Ändrat remissmall till remissanvisning / Uppdaterade modeller / Rättat länkar i referensförteckningen, och tagit bort referenser som inte användes i dokumentet. / Rättat regel för GetOfferingCatalogues och GetCareServiceOfferings som angav att ägarform ”Övrigt” kunde vara offentlig eller privat huvudman. Ägarform ”Övrigt” används enbart för privat huvudman. / Tagit bort attributet original enhets id från utförande organisation. Enhetens id förväntas alltid kunna användas som nyckel vid anrop till GetSupportedServiceContracts. / Ändrat Utbudsansvarig organisation till Katalogansvarig organisation. | Torbjörn Dahlin / Robert Meriruoho / Stefano Testi / Johan Zetterström |
| 2.0 | 2021-09-27 | Uppdaterat versionsnummer och publiceringsdatum inför release | Johan Zetterström |
| 2.1_RC1 | 2022-09-13 | Kardinaliteten för elementet ../careServiceId för svarsdelen i GetCareServiceOfferings ändrat från 1..1 till 0..1 | Dan Svedén / Tobias Blomberg |
| 2.1 | 2022-12-01 | Version fastställd | Dan Svedén / Tobias Blomberg |
| 3.0 | 2023-04-25 | Justerat beskrivningen av Ägarform i båda tjänstekontrakten så att fältet hänvisar till ett kodverk istället för enskilda koder. / Justerat beskrivningen för organisations-id så att den blir tydligare. / Lagt till information om att koden ”övrigt” för kön inte är tillämplig i GCSO / Lagt till information om varifrån kod ska hämtas för Typ av egenskap i GCSO / Ändrat datatypen för ../../purpose i GCSO från CVType till String / Justerat beskrivningen av Typ av medium i GCSO så att den hänvisar till ett kodverk istället för enskilda koder. / Ändrat datatypen för ../../typeOfCooperation i GCSO från CVType till String / Lagt till information om varifrån kod ska hämtas för Typ av resurs i GCSO / Ändrat datatypen för ../../resourceAttribute i GCSO från CVType till String / Lagt till information om varifrån kod ska hämtas för Typ av Störning i GCSO / Uppdaterat versionsavsnittet | Dan Svedén / Tobias Blomberg |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – operativt processtöd:tillgängliggöra tjänst: vårdochomsorgsutbud | Obligatoriskt | http://rivta.se/domains/supportprocess_serviceprovisioning_healthcareoffering.html |
| R2 | RIVTA flera dokument | Finns på webben | http://rivta.se/ |
| R3 | RIV Tekniska Anvisningar Översikt, avsnitt 8.3 | Finns på webben | http://rivta.se/documents/ARK_0001/ |
| R4 | RFC för iCalendar | Finns på webben | http://tools.ietf.org/html/rfc5545 |
| R5 | Errata för iCalendar RFC:n | Finns på webben | http://www.rfc-editor.org/errata_search.php?rfc=5545&rec_status=15&presentation=table |
| R6 | ISO8601-standard för tidsformat | Finns på webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R7 | Riksavtal för utomlänsvård | Finns på webben | https://skr.se/tjanster/merfranskr/rapporterochskrifter/publikationer/riksavtalforutomlansvardochkommentarer.30105.html |
| R8 | Informationsspecifikation - Remisshantering | Finns på webben | https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/master/docs/IS_clinicalprocess_activity_request.docx |
| R9 | Informationsspecifikation – Vård- och omsorgsutbud | Bilaga | Bifogad fil |
| R10 | Kravkatalog utbud 2.0 | Framtagen i projektet | Bifogad fil |
| R11 | Ärendehantering | Ärendehantering för kontrakt i tjänstedomänen. | https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/ |
| R12 | Kvalitetsindikatorer | Finns på webben | https://bitbucket.org/rivta-domains/riv-skl.followup.groupoutcomes.qualityreporting/ |
| R13 | Läns- och kommunkoder | Finns på webben | http://www.scb.se/hitta-statistik/regional-statistik-och-kartor/regionala-indelningar/lan-och-kommuner/lan-och-kommuner-i-kodnummerordning |
| R14 | Lista över vanligt förekommande kodverk och identifierare | Finns på webben | https://bitbucket.org/rivta-domains/best-practice/wiki/ListOfCommonlyUsedCodeSystems |
| R15 | ISO 639-3:2007 / Codes for the representation of names of languages — Part 3: Alpha-3 code for comprehensive coverage of languages | Finns på webben | https://www.iso.org/standard/39534.html |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
supportprocess: serviceprovisioning:healthcareoffering

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Denna informationsdomän hanterar det detaljerade utbudet beskrivet som vård- och omsorgstjänster. En vård- och omsorgstjänst motsvarar något specifikt som en verksamhet kan erbjuda att utföra under vården av en patient. Detta skulle exempelvis kunna vara en viss operation eller undersökning.
Informationen inom domänen ska vara tillräcklig för att patient och remittent, eller invånaren på egen hand ska kunna hitta rätt vård- och omsorgstjänst hos rätt utförare baserat på kriterier såsom typ av tjänst, öppettider, väntetider, plats och geografiska avstånd, målgrupp som tjänsten vänder sig till, eller eventuella önskade tilläggstjänster såsom tillgång till diabetessköterska eller sjukgymnast.
Tjänstekontrakten inom denna domän gör det möjligt att söka efter vem som kan erbjuda en viss typ av vård- och omsorgstjänst, var tjänsten utförs, samt hur exempelvis remiss kan skickas till den enhet som erbjuder tjänsten.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den ska fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter (TP) och tjänstekonsumenter (TK) ska med andra ord följa såväl de maskintolkbara reglerna i de tekniska kontrakten, som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
operativt processtöd:tillgängliggöra tjänst:vårdochomsorgsutbud
vårdochomsorgsutbud

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen:
supportprocess: serviceprovisioning:healthcareoffering
Observera att version för detta dokument och tjänstedomänen måste vara lika. Detta för att spårbarheten inte ska brytas.

### Version 3.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt ingår i denna version.

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt ingår i denna version.

#### Förändrade tjänstekontrakt
GetOfferingCatalogues, version 2.0
GetCareServiceOfferings, version 3.0
OBS: GetCareServiceOfferings är ett nytt namn på det tidigare kontraktet GetHealthcareOfferings i version 1.0 av tjänstedomänen.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se https://inera.atlassian.net/wiki/spaces/RTA/pages/3632911/RIV+Tekniska+Anvisningar+versikt

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetOfferingCatalogues | 1.0 | 2.0 | Ej kompatibel |
| GetOfferingCatalogues | 2.0 | 1.0 | Ej kompatibel |
| GetCareServiceOfferings | 2.1 | 3.0 | Ej kompatibel |
| GetCareServiceOfferings | 3.0 | 2.1 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Inga utgångna tjänstekontrakt i denna version.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Hämta utbudsinformation
Detta flöde beskriver behovet av att hämta en lista på tillgängliga utbud som finns som en katalogansvarig organisation tillhandahåller. Med katalogansvarig organisation menas den organisation som är ansvarig för innehållet i utbudskatalogen. Detta behöver göras innan man hämtar vård- och omsorgstjänster från en viss utbudskatalog (se flöde Hämta Vård- och omsorgstjänster).

##### Arbetsflöde

![img_004.png](images/img_004.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som begär information om katalogansvariga organisationer |
| Tjänsteproducent | System som svarar på förfrågan |

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Sök vård- och omsorgstjänster
Denna flödesbeskrivning visar processen för en användare (hälso- och sjukvårdspersonal, invånare etc.) som har behov av att hitta enheter som erbjuder en viss typ av vård- och omsorgstjänst. Exempel på vård- och omsorgstjänst kan vara ”Tonsillektomi” på Sophiahemmet eller ”Psykoterapi” på Capio Citykliniken Malmö Centrum. Innan vård- och omsorgstjänster hämtas behöver flödet för att hitta utbudsinformation tillämpas (se flöde Hitta utbudsinformation).

##### Arbetsflöde

![img_001.png](images/img_001.png)

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| 1. Behov av att hitta vård- och omsorgstjänst | Det finns behov av att hitta utförare inom hälso- och sjukvården eller inom socialtjänsten som kan erbjuda en typ av vård- och omsorgstjänst. / Det kan exempelvis vara en remittent som ska remittera en patient och som därmed har behov av att hitta en remissmottagare som erbjuder en viss typ av vård- och omsorgstjänst. / Det kan även vara en invånare som är i behov av att ta prover och behöver hitta en vårdenhet som utför denna provtagning eller att hitta närmaste akutsjukvård. / Enligt patientlagen (2014:821) ska patienten ha möjlighet att välja var i landet denne ska få vård. / 9 kap. Val av Utförare - 1 § En patient som omfattas av en regions ansvar för hälso- och sjukvård ska inom eller utom denna region få möjlighet att välja utförare av offentligt finansierad öppen vård.

Exempel på information som det kan finnas behov av att hitta för en hälso- och sjukvårdspersonal: / vilka tider en viss aktivitet utförs på / vilka specialistmottagningar i landet som erbjuder en specifik typ av vård- och omsorgstjänst / vilka väntetider som finns för en viss vård- och omsorgstjänst / vilka kompetenser som finns att tillgå där en vård-och omsorgstjänst erbjuds, exempelvis psykolog, arbetsterapeut / vilken (medicinteknisk) utrustning som en vård- och omsorgstjänst kan erbjuda, exempelvis bassäng / om det finns en vård- och omsorgstjänst som kan erbjudas digitalt / om det finns några störningar som gör att en vård- och omsorgstjänst inte är tillgänglig under en viss period / vilken postadress en remiss ska skickas till om det ej går att skicka elektroniskt / Exempel på information som det kan finnas behov av att hitta för en invånare: / när, var och hur det går att få kontakt med primärvård som erbjuder vaccination mot säsongsinfluensa / om ett barn kan tas emot av en specialistmottagning som utför hörselkontroll / vilka tider en aktivitet utförs på / om en tjänst kan erbjudas digitalt och i så fall hur den nås / vilka specialistmottagningar i landet som erbjuder en specifik typ av vård- och omsorgstjänst / vilka väntetider som finns för en viss vård- och omsorgstjänst / hur bra bedömningar en mottagning har fått av andra invånare |
| 2. Sök vård- och omsorgstjänst | Personen som är i behov av att hitta en lämplig utförare av en viss typ av vård- och omsorgstjänst, gör en sökning. Information att filtrera på: / typ av vård- och omsorgstjänst / om vård- och omsorgstjänsten erbjuds virtuellt eller fysiskt / vilken organisatorisk enhet som erbjuder vård- och omsorgstjänsten / vilken verksamhet som bedrivs / vilket kön invånaren har / vilken ålder invånaren har / om invånaren har några andra egenskaper (exempelvis i graviditetsvecka 32) / önskat län och/eller kommun / geografiska koordinater + en viss radie från koordinaterna / vilken roll personen har som gör sökningen / vilket språk personen som söker önskar få svar på / om den katalogansvariga organisationen är offentlig huvudman eller ej |
| 3. Visa sökresultat | Baserat på den gjorda sökningen, ges ett svar tillbaka som matchar sökkriterierna. / En sökning som inte motsvarar förväntningarna korrigeras och en ny sökning görs. / Mer detaljerad information läses för att vidare kunna avgöra om den valda enheten och den vård- och omsorgstjänst som erbjuds motsvarar det behov som finns. Om inte, görs en ny sökning. |
| 5.Val av utförare och typ av vård- och omsorgstjänst | Då personen som letar efter utförare av en typ av vård- och omsorgstjänst hittar någon som motsvarar det efterfrågade fortsätter den aktuella processen. 

För en remittent kan detta innebära att skicka en remiss till den som erbjuder en vårdtjänst. / För en invånare kan det innebära att besöka akutmottagningen som bäst matchar den gjorda sökningen, eller att brukaren väljer en utförare av beviljade insatser inom socialtjänsten. / Flöde för att skicka remisser finns beskrivet i informationsspecifikationen till remissdomänen [R8]: clinicalprocess:activity:request |

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Användare | Användare som önskar hitta en enhet som erbjuder efterfrågad vård- och omsorgstjänst. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekonsumenten skickar en fråga med tjänstekontraktet GetCareServiceOfferings till tjänsteproducenter av utbudsinformation. Vid behov görs ytterligare frågor med tjänstekontraktet GetCareServiceOfferings för att möjliggöra urval av vård- och omsorgstjänster med olika filtreringar. Information om väntetider och kvalitetsindikatorer [R12] kan vid behov inhämtas från tjänsteproducent av indikatorer (domän: followup:groupoutcomes:qualityreporting).

![img_006.png](images/img_006.png)

### Adressering
Domänen är systemadresserad där varje adress motsvarar ett system som tillhandahåller utbudsinformation för en eller flera katalogansvariga organisationer. Anledningen till att systemadressering används istället för verksamhetsbaserad adressering är att det medger att en katalogansvarig organisation kan ha utbud i flera system. Tjänsten GetOfferingCatalogues ger information om vilka system som hanterar utbudsinformation för vilka katalogansvariga organisationer.

#### Sammanfattning adressering

| Åtkomst till utbud av vårdtjänster | Logisk adress |
| :--- | :--- |
| GetOfferingCatalogues | Ineras HSA-id: SE165565594230-1000 |
| För en specifik katalogansvarig organisation | Den logiska adress som ges vid slagning mot GetOfferingCatalogues |

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.
I de fall tjänstekonsument söker aggregerad information av utbud som erbjuds från olika katalogansvariga organisationer, används tjänsten GetOfferingCatalogues enligt ovan. Tjänstekonsumenten använder sedan tjänsten GetCareServiceOfferings för att hämta utbudsinformation hos de katalogansvariga organisationerna och svaren aggregeras av konsumenten själv på ett för ändamålet meningsfullt sätt.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Se informationsspecifikationen [R9].

### Icke-funktionella krav

#### SLA-krav
Följande SLA-krav gäller för producenter av tjänstekontraktet GetCareServiceOfferings.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 150 ms | för anrop som returnerar <= 10 poster |
| Svarstid | < 1 s | för anrop som returnerar <= 100 poster |
| Svarstid | < 5 s | för anrop som returnerar > 100 poster <= 1000 |
| Svarstid | <15 s | För anrop som returnerar >= 1000 poster |
| Tillgänglighet | Dygnet runt alla dagar i veckan, 99,5 % |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Ingen information får vara äldre än 80 timmar |  |
Följande SLA-krav gäller för producenter av tjänstekontraktet GetOfferingCatalogues.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95 % av alla anrop |  |
| Tillgänglighet | Dygnet runt alla dagar i veckan, 99,5 % |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Ingen information får vara äldre än 80 timmar |  |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Vid ett logiskt fel ska resultCode sättas till ERROR. Om resultText innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Detta gäller dock enbart för skrivande/uppdaterande tjänster.
Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

#### Krav på en tjänstekonsument
N/A

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.
För mappning mot RIM (bland annat NI 2021:2) se informationsspecifikationen [R9].

### V-MIM

#### GetOfferingCatalogues
Begäran visas nedan med rosa bakgrund och svaret med vit bakgrund.

![img_005.png](images/img_005.png)

##### Begäran

| Klass.attribut | Mappning mot XSD |
| :--- | :--- |
| GetOfferingCatalogues | GetOfferingCatalogues |
| Katalogansvarig Organisation | providingOrganization |
| id | providingOrganizationId |
| ägarform | management |
| offentlig huvudman | publicProvider |

##### Svar

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

#### GetCareServiceOfferings
Begäran visas nedan med rosa bakgrund och svaret med vit bakgrund.

![img_003.png](images/img_003.png)

##### Begäran

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

##### Svar

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

### Formatregler

#### Format för datum och tidpunkter
Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R6]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss” (se referens [R6]).

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för kalenderangivelser - öppettider
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

#### RDF
RDF står för Resource Description Framework och är ett ramverk för att beskriva resurser såsom e-tjänster. RDF har tagits fram för att system ska kunna få nödvändig semantisk information om andra system.

#### URI
URI står för Uniform Resource Identifier som består av en sträng av tecken som används för att identifiera eller namnge en resurs. Används främst för att referera till en resurs över ett nätverk. En Uniform Resource Locator, URL, är en URI, som förutom att identifiera en resurs även ger information hur man når resursen och var den finns.
Exempel: URL:en http://example.com/ är en URI som identifierar en resurs och som visar att en representation av den resursen (ingångssidans HTML-kod) kan hämtas med HTTP från en värddator med namnet example.com.

#### ITU
Telefonnummer ska följa https://www.pts.se/contentassets/3c43df1548f447ffa18bb43a84c4dadb/swedish-numbering-plan-for-telephony-acc-itu-180313.pdf
Internationellt prefix + landsnummer + nationell destinationskod + abonnentnummer
Exempel:
Internationellt prefix: 00 eller +
Landsnummer: 46 (Sverige)
Nationell destinationskod - geografiskt riktnummerområde: 0150 (Katrineholm)
Nationell destinationskod - icke-geografiska nummer: 070, 072, 073, 076, 079 (mobiltelefoni)
Abonnentnummer: består av 5-8 siffror

#### RFC2822
E-postadress anges enligt format RFC2822.
användarnamn@example.com
example.com = domännamn
com= toppdomän som anger namn eller organisation

#### SWEREF 99 TM
Geografiska koordinater anges enligt referenssystemet SWEREF 99 TM, med angivelse i meter.
Exempel:
geoLocation.north = 6407869
geoLocation.east = 485748

## Tjänstekontrakt

### GetOfferingCatalogues
Hämtar information om utbudskataloger, vilken adress de tillhandahålls på och vilka katalogansvariga organisationer som tillhandahåller utbud i respektive katalog.
Katalogansvarig organisation är huvudansvarig organisation för de vård- och omsorgstjänster som de erbjuder. Ett utbud består av en eller flera vård- och omsorgstjänster som erbjuds av en katalogansvarig organisation och som hämtas med kontraktet GetCareServiceOfferings.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Text i kolumnen ’Beskrivning’ som anges på första raden och är fetmarkerad motsvarar den benämning som används i meddelandemodellen.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| providingOrganization | SearchProvidingOrganizationType | Katalogansvarig organisation | 0..1 |
| providingOrganizationId | IIType | Id på katalogansvarig organisation / Id på katalogansvarig organisation / Begränsar sökningen så att endast poster med angivet id för katalogansvarig organisation returneras. / För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7) / För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 0..* |
| management | CVType | Ägarform / Begränsar sökningen så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras. / Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14]. / Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..* |
| publicProvider* | Boolean | Offentlig huvudman / Om satt till ’true’ filtreras sökresultatet så att endast poster returneras där katalogansvarig organisation är en offentlig huvudman. | 0..1 |
| Svar |  |  |  |
| OfferingCatalogue | OfferingCatalogueType | Utbudskatalog | 0..* |
| ../providingOrganization | ProvidingOrganizationType | Katalogansvarig organisation | 1..* |
| ../../id | IIType | Organisation id / Id för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är. / För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7) / För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 1..1 |
| ../../name | string | Namn på katalogansvarig organisation. | 1..1 |
| ../../description | DescriptionType | Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../management | CVType | Ägarform / Anger ägarform för den katalogansvariga organisationen. / Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14]. / Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |
| ../../publicProvider* | Boolean | Offentlig huvudman / Anger om den katalogansvariga organisationen är en offentlig huvudman. / true = offentlig huvudman | 1..1 |
| ../interaction | InteractionType | Interaktion / Pekar på var utbudskatalogen finns. / En katalogansvarig organisation kan ha flera kataloger med olika systemadresser. | 1..1 |
| ../../logicalAddress | string | Logisk adress / Logisk adress som ska användas vid adressering. | 1..1 |
| ../../name | anyURI | Namn på interaktion | 1..1 |
| ../../majorVersion | int | Den majorversion som stöds | 1..1 |
| ../../minorVersion | int | Den minorversion som stöds | 0..1 |
| ../../rivtaVersion | RIVTAVersionEnum | Rivtaversion / Version av RIVTA [2.0, 2.1] | 1..1 |

#### Övriga regler
Regel 1:

| management | publicProvider |
| :--- | :--- |
| Region | true |
| Kommun | true |
| Statlig | true |
| Privat | false |
| Övrigt | false |

##### Icke funktionella krav

###### SLA-krav
Se generella SLA-krav för tjänstedomänen.

#### Annan information om kontraktet
Ingen.

### GetCareServiceOfferings
GetCareServiceOfferings hämtar de vård- och omsorgstjänster som ingår i det utbud som erbjuds av en katalogansvarig organisation och som är tillgängliga baserat på användarens filterparametrar.

#### Version
3.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Text i kolumnen ’Beskrivning’ som anges på första raden och är fetmarkerad motsvarar den benämning som används i meddelandemodellen.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careServiceId | IIType | Vård- och omsorgstjänstens id / Begränsar sökningen så att endast poster med angivet id för vård- och omsorgstjänst returneras. / Om HSA-id används: / careServiceId.root: 1.2.752.129.2.1.4.1 / careServiceId.extension: <hsa-id> / Om ej HSA-id: / careServiceId.root: <UUID> / careServiceId.extension: Anges ej | 0..* |
| typeOfCareService* | CVType | Typ av vård- och omsorgstjänst / Begränsar sökningen så att endast poster med angiven typ av vård- och omsorgstjänst returneras. / Exempel: / Allergologisk konsultation / Kognitiv beteendeterapi via internet / Då Snomed CT används: / typeOfCareService.codesystem: 1.2.752.116.2.1.1 / I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma. / Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3 / Kod väljs från HSA verksamhetskodverk. Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden. | 0..* |
| typeOfPlace | TypeOfPlaceType | Typ av plats / Filtrerar sökresultatet så att endast poster med angiven typ av plats som vård-och omsorgstjänsten erbjuds på returneras. / En av följande: / PHYSICAL – endast fysisk plats / VIRTUAL – endast virtuell plats / ALL - både fysisk och virtuell plats | 1..1 |
| typeOfBusiness* | CVType | Typ av verksamhet / Filtrerar sökresultatet så att endast poster med angiven typ av verksamhet returneras. / Om HSA verksamhetskod / typeOfBusiness.codeSystem: / 1.2.752.129.2.2.1.3 | 0..* |
| providingOrganization | searchProvidingOrganizationType | Katalogansvarig organisation | 0..1 |
| ../providingOrganizationId | IIType | Id på katalogansvarig organisation / Filtrerar sökresultatet så att endast poster med angivet id för katalogansvarig organisation returneras. / För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7) / För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 0..* |
| ../management | CVType | Ägarform / Filtrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras. / Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14]. / Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..* |
| ../publicProvider | Boolean | Offentlig huvudman / Filtrerar sökresultatet så att endast poster där vård- och omsorgstjänst som erbjuds av en offentlig huvudman returneras om fältet sätts till true. / Om fältet ej anges returneras vård- och omsorgstjänster som erbjuds av både offentlig och ej offentlig huvudman. | 0..1 |
| actorLanguage* | CVType | Språk för aktör / Filtrerar sökresultat så att poster med angivet språk returneras. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Endast texter som finns beskrivna på det angivna språket ska returneras. Om det saknas text för angivet språk, returneras texter på svenska. / Det är endast beskrivningar som ska returneras på olika språk, ej displayName för CV-typerna. / Om språk ej anges, ska samtliga texter returneras. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / actorLanguage.code: swe / actorLanguage.displayName: Swedish / actorLanguage.codeSystem: 1.0.639.3 | 0..1 |
| actorRole* | CVType | Roll för aktör / Filtrerar sökresultatet så att poster med angiven roll returneras. / Endast texter som finns beskrivna för den angivna rollen returneras. Om det saknas text för angiven roll, returneras texter anpassade för invånare (enskild person) som alltid ska finnas om beskrivningstext finns. / Om roll ej anges, ska samtliga texter returneras. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 | 0..1 |
| performingOrganization | IIType | Enhets-id / Filtrerar sökresultatet så att endast poster med angivet id på utförande enhet returneras. / Exempel för HSA-id: / performingOrganization.root =1.2.752.129.2.1.4.1 / performingOrganization.extension = SE1234-1234 (fiktivt id) | 0..* |
| targetGroupAge | int | Ålder / Filtrerar sökresultatet så att endast poster med angiven ålder returneras. / Åldern avser den person som söker hälso- och sjukvård eller socialtjänst. | 0..1 |
| targetGroupGender* | CVType | Kön / Filtrerar sökresultatet så att endast poster med angivet kön returneras. / Könet avser den person som söker hälso- och sjukvård eller socialtjänst. / Kodverk: / Kv_kon / 1=man / 2=kvinna / Koden ”Övrig” ej tillåten i detta attribut. / Exempel / targetGroupGender.code: 1 / targetGroupGender.codesystem: 1.2.752.129.2.2.1.1 | 0..1 |
| ,,/targetGroupAttribute | TargetGroupAttributeType | Egenskap / Filtrerar sökresultatet så att endast poster med angiven egenskap returneras. Egenskap avser ytterligare information om den person som söker hälso- och sjukvård eller socialtjänst. | 0..* |
| ../../ typeOfPersonalAttribute* | CVType | Typ av egenskap / Filtrerar sökresultatet så att endast poster med angiven typ av egenskap returneras. / Exempel: / Graviditetsvecka / Kod från Snomed CT hierarkin 363787002 \| observerbar företeelse \| | 1..1 |
| ../../attributeValue | string | Värde / Filtrerar sökresultatet så att endast poster med angivet värde för egenskapen returneras. / Exempel relaterat till graviditetsvecka: / 18 | 1..1 |
| location | SearchLocationType | Sökområde / Filtrerar sökresultatet så att endast poster med angivet sökområde för vård- och omsorgstjänsten returneras. / Sökområdet kan vara ett geografiskt område, län eller kommun. / I de fall flera sökområden anges ska samtliga vård- och omsorgstjänster med något av de angivna sökområdena returneras. | 0..1 |
| ../geographicalLocation | SearchGeographicalLocationType | Geografiskt område / Filtrerar sökresultatet så att endast poster med angivet geografiskt område returneras. Till geografiskt område hör geografiska koordinater och radie som bildar en area. Producenter behöver inte svara baserat på polygoner i Övrigt område (otherLocation). / Svaret ska returnera vård- och omsorgstjänster med utförandeplats inom den arean. | 0..1 |
| ../../geographicalCoordinates | GeoLocationType | Geografiska koordinater / Geografisk lokalisering, dvs den punkt på en karta sökningen ska utgå ifrån. | 1..1 |
| ../../../north | long | Exempel / geoLocation.north = 5407869 | 1..1 |
| ../../../east | long | Exempel / geoLocation.east = 485784 | 1..1 |
| ../../radius | int | Radie / Radie utifrån den geografiska lokaliseringen angiven i positivt heltal och i antal meter. / Används för att söka inom ett område från de geografiska koordinaterna. | 1..1 |
| ../county* | CVType | Länskod / Filtrerar sökresultatet så att endast poster med angivet län returneras. Länskod enligt SCB:s lista över län och ekomer, se referens R13.  Tvåställig kod. / Exempel: / county.code = 05 / county.codeSystem = 1.2.752.129.2.2.1.18 / county.displayName = Östergötlands län | 0..* |
| ../municipality* | CVType | Kommunkod / Sökning på kommun. Kommunkod enligt SCB’s lista över län och kommuner, se referens R13. Fyrställig kod. / Exempel: / municipality.code = 0126 / municipality.codeSystem = 1.2.752.129.2.2.1.17 / municipality.displayName = Huddinge | 0..* |
| searchTerm | string | Fritextsökning för att filtrera på vård- och omsorgstjänst baserat på text i nedan listade fritextfält. / För de beskrivande texter nedan som förekommer i flera språk ska sökningen ske i texten som motsvarar det språk som anges i actorLanguage. / Anges inte actorLanguage ska texter för samtliga språk användas i sökningen. / Sökningen ska innehålla minst 3 tecken. Vård- och omsorgstjänst där sökbegreppet överensstämmer med del av text i nedanstående fält ska returneras. / I det fall fler sökbegrepp skickas med i begäran ska samtliga sökbegrepp återfinnas i något av nedanstående fält för att vård- och omsorgstjänsten ska returneras. / Fritextsökning ska ske i fälten: / careService.description.text / careService.typeOfCareService.displayName / careService.providingOrganization. Name / careService.providingOrganization.description / careService.performingOrganization.name / careService.performingOrganization.description.text / careService.performingOrganization.responibleOrganization.name / careService. performingOrganization.responibleOrganization.description.text / careService.location.geographicalLocation.municipality.displayName / careService.location.geographicalLocation.county.displayName | 0..* |
| Svar |  |  |  |
| careService | CareServiceType | Vård- och omsorgstjänst / Den tjänst som erbjuds av en organisatorisk enhet för att tillgodose behov av hälso- och sjukvård eller socialtjänst hos invånare. | 0..* |
| ../careServiceId | IIType | Vård- och omsorgstjänstens id / Innehåller vård- och omsorgstjänstens unika identifierare. / Om HSA-id används: / careServiceId.root: 1.2.752.129.2.1.4.1 / careServiceId.extension: <hsa-id> / Om ej HSA-id: / careServiceId.root: <UUID> / careServiceId.extension: Anges ej | 0..1 |
| ../typeOfCareService | CVType | Typ av vård- och omsorgstjänst. / Den specifika vård- och omsorgstjänsten som erbjuds. / Exempel inom hälso- och sjukvård: / - insättning av totalprotes i höftled / - rehabiliteringsmedicinsk konsultation / Exempel inom socialtjänsten: / - hjälp med inköp / - tillredning av måltider m.m. / Då Snomed CT används: / typeOfCareService.codesystem: 1.2.752.116.2.1.1

I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma. 

Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3 / Kod väljs från HSA verksamhetskodverk. / Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden. / typeOfCareService.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. / Framtagande av nationellt kodverk pågår. | 1..1 |
| ../typeOfCareServicedescription* | DescriptionType | Nationellt överenskommen beskrivning av vård- och omsorgstjänsten. / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. / Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal. / Om roll inte anges, riktas beskrivningen till samtliga roller. / Urval ur Snomed CT: / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../validity* | DatePeriodType | Giltighet / Giltighetstiden för vård- och omsorgstjänsten. / Exempelvis höftledsoperation som utförs av den organisatoriska enheten x på platsen y erbjuds under perioden 20160101-20171231. / Minst ett av periodens start och end i DatePeriodType ska anges. | 1..1 |
| ../careServiceStatus | CareServiceStatusEnum | Status / Status för vård- och omsorgstjänsten. / En av följande: / INACTIVE = innan vård- och omsorgstjänsten är färdig att erbjudas. / ACTIVE = vård- och omsorgstjänsten är färdigbeskriven och kan erbjudas. / DEPRECATED = vård- och omsorgstjänsten ska ej längre erbjudas | 1..1 |
| ../careOption | boolean | Vårdval / Sätts till true om vård- och omsorgstjänsten ingår i valfrihetssystem. | 1..1 |
| ../referralRequired | boolean | Remisskrav / Anger om det finns krav på remiss för att uppsöka/ta del av vård- och omsorgstjänsten. / För hälso- och sjukvården: Observera att den information som anges här är det eventuella krav på remiss från den organisation/region som ansvarar för att tillhandahålla vård- och omsorgstjänsten. Om remisskrav INTE finns för vård- och omsorgstjänsten, kan det ändå finnas krav från patientens hemregion för denna typ av vård- och omsorgstjänst. Om så är fallet behöver patienten en remiss från hemregionen för att utförare av den erbjudna vård- och omsorgstjänsten ska få ersättning från hemregionen. / Reglerna för detta beskrivs i "Riksavtalet för utomlänsvård från och med 1 januari 2015" [R7] sidan 17 under rubriken "Hemlandstingets remissregler tillämpas också i andra landsting" och "Vårdlandstingets remissregler tillämpas också för utomlänspatienter". | 1..1 |
| ../description* | DescriptionType | Beskrivning av vård- och omsorgstjänsten som är ett lokalt tillägg till den nationellt överenskomna. Detta kan exempelvis i text detaljera hur en viss aktivitet utförs eller om det finns några tillägg till det nationellt överenskomna innehållet i en vård- och omsorgstjänst. / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. / Om fältet inte används antas beskrivningen avse svenska. / Används för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal. / Om roll inte anges, riktas beskrivningen till samtliga roller. / Urval ur Snomed CT: / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../indicator | IndicatorType | Indikator / Indikator håller referenser till mätningar från SKRs (Sveriges kommuner och regioner) öppna jämförelser som kan kopplas till en viss vård- och omsorgstjänst. Kan exempelvis vara väntetid eller kvalitetsindikator kopplat till den specifika vård- och omsorgstjänsten. | 0..* |
| ../../indicatorId | IIType | Indikator id / Identitetsbeteckning för indikator från SKRs öppna jämförelser som är kopplad till en vård- och omsorgstjänst. / indicator.root = 1.2.826.0.1.3680043.9.4672.7 | 1..1 |
| ../../logicalAddress | String | Logisk adress / Logisk adress som ska användas för att nå den datakälla där indikatorn finns lagrad. | 1..1 |
| ../requestTemplate | RequestTemplateType | Remissanvisning / Om vårdtjänsten har en fastställd remissanvisning som kan användas vid remittering, anges den adress som remissanvisningen kan hämtas ifrån. Remissanvisningen är ett stöd för att säkerställa att nödvändig information bifogas en remiss. | 0..1 |
| ../../address | anyURI | Adress till remissanvisning / Adress som anger var en remissanvisning finns. Kan vara en URL. | 1..1 |
| ../../mandatory | boolean | Obligatorisk / Anger om det är obligatoriskt för en remittent att förstå och tillämpa remissanvisningen för att kunna nyttja vårdtjänsten. / True = obligatoriskt att tillämpa remissanvisning vid remittering / False = ej obligatoriskt att tillämpa remissmall vid remittering | 1..1 |
| ../providingOrganization | ProvidingOrganizationType | Katalogansvarig organisation / Den organisation som är huvudansvarig och innehållsansvarig för det utbud som svaret visar. | 1..1 |
| ../../id | IIType | Organisation id / Id för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är / För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7) / För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 1..1 |
| ../../name | String | Namn på den katalogansvariga organisationen. | 1..1 |
| ../../management | CVType | Ägarform / Filtrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras. / Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14]. / management.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. / Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |
| ../../publicProvider | Boolean | Offentlig huvudman / Anger om den katalogansvariga organisationen är offentlig huvudman. / True=offentlig huvudman | 1..1 |
| ../../description* | DescriptionType | Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. / Om fältet inte används antas beskrivningen avse svenska. / Används för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal. / Om roll inte anges, riktas beskrivningen till samtliga roller. / Om beskrivning anges, ska minst en beskrivning för invånare anges. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../performingOrganization | PerformingOrganizationType | Utförande organisatorisk enhet / Klassen motsvarar den organisatoriska enheten som utför en aktivitet som erbjudit i form av vård- och omsorgstjänst. | 1..1 |
| ../../id | IIType | Enhets-id / Ett enhets-id på den utförande enheten ska returneras. / Id på organisatoriska enheten kan vara HSA-id. / Exempelvis HSA-id, organisationsnummer / eller lokala id:n. / Om HSA-id (exempel): / id.root =1.2.752.129.2.1.4.1 / id.extension = SE2321000115-094882 | 1..* |
| ../../name | String | Enhetsnamn / Lista med namn på den organisatoriska enhet som erbjuder en vård- och omsorgstjänst / Listan ska vara ordnad efter fallande prioritetsordning där det föredragna namnet kommer först. / Namn måste innehålla minst 3 tecken. | 0..* |
| ../../responsibleOrganization | OrganizationType | Organisation / Den organisation som den utförande organisatoriska enheten är en del av. | 1..1 |
| ../../../id | IIType | Id på organisationen. / Om HSA-id (exempel): / id.root =1.2.752.129.2.1.4.1 / id.extension = SE2321000115-094882 | 1..1 |
| ../../../name | string | Namn på organisationen. | 1..1 |
| ../../../description* | DescriptionType | Beskrivning av organisationen. / Beskrivning av den organisation som ansvarar för den utförande enheten. / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../availableTime | CalendarType | Kalendertid / Den tid som den utförande enheten är tillgänglig. / Se avsnitt 5.2.2 för beskrivning av format. | 0..* |
| ../../typeOfBusiness | CVType | Typ av verksamhet / Kod för den typ av verksamhet som bedrivs. / Om HSA verksamhetskod / typeOfBusiness.codeSystem: / 1.2.752.129.2.2.1.3 / typeOfBusiness.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../../description* | DescriptionType | Beskrivning / Beskrivning av den enhet som erbjuder vård- och omsorgstjänsten. / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal. / Om roll inte anges, riktas beskrivningen till samtliga roller. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../patientFee | MOType | Patientavgift / Den avgift som ska betalas av patienten. / Valutan anges i SEK enligt ISO 4217. / Exempel: / patientFee.value: 125 / patientFee.currency: SEK | 0..1 |
| ../targetGroup | TargetGroupType | Målgrupp för vård- och omsorgstjänsten | 0..* |
| ../../age | PositiveIntPeriodType | Intervall för den åldersgrupp som vård- och omsorgstjänsten riktas till. / Exempelvis: Vård- och omsorgstjänsten erbjuds endast till barn upp till 5 år. / Intervallet blir då ”0‒5” år. / Om vård- och omsorgstjänsten gäller alla åldersgrupper, används ej detta attribut. | 0..1 |
| ../../gender | CVType | Kön / Det kön som vård- och omsorgstjänsten riktas till. / Kodverk: / Kv_kon / 1=man / 2=kvinna / Koden ”övrigt” tillåts ej i detta attribut. / Exempel code: 1 / targetGroupGender.codeSystem: 1.2.752.129.2.2.1.1 / gender.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../targetGroupAttribute | TargetGroupAttributeType | Egenskaper / Egenskaper för målgruppen. | 0..* |
| ../../../ typeOfPersonalAttribute | CVType | Typ av egenskap / Innehåller någon specifik egenskap som identifierar den målgrupp som tjänsten riktas till. / Exempel: / Gravida i veckointervall X-Y / Kod från Snomed CT hierarkin 363787002 \| observerbar företeelse \| / typeOfPersonalAttribute.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 1..1 |
| ../../../attributeValue | string | Värde / Innehåller detaljer om den specifika egenskapen. / Exempel: / 0-20 | 1..1 |
| ../location* | LocationType | Plats / Plats där vård- och omsorgstjänsten erbjuds. / Anges med geografiskt område, fysisk plats eller virtuell plats. | 1..* |
| ../../geographicalLocation* | GeographicalLocationType | Geografiskt område / Anger det geografiska område där vård- och omsorgstjänsten erbjuds. / Anges med län, kommun eller övrigt område. | 0..1 |
| ../../../county | CVType | Länskod enligt SCB:s lista över län och kommuner, se referens R13. Tvåställig kod. / Exempel: / county.code = 05 / county.codeSystem = 1.2.752.129.2.2.1.18 / county.displayName = Östergötlands län / county.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../../municipality | CVType | Kommunkod enligt SCB:s lista över län och kommuner, se referens R13. Fyrställig kod. / Exempel: / municipality.code =  0126 / municipality.codeSystem =1.2.752.129.2.2.1.17 / municipality.displayName = Huddinge / municipality.displayName returnerar endast svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../../otherLocation | OtherLocationType | Övrigt område är ett begränsat område som vård- och omsorgstjänsten erbjuds inom. | 0..1 |
| ../../../../polygon | GeoLocationType | Polygon / Det område som avgränsas med minst 3 punkter med sina respektive koordinater. | 3..* |
| ../../../../../north | long | Exempel / geoLocation.north = 6407869 | 1..1 |
| ../../../../../east | long | Exempel / geoLocation.east = 485748 | 1..1 |
| ../../../../name | string | Benämning på övrigt område. / Exempelvis kommundel. | 0..1 |
| ../../physicalLocation | PhysicalLocationType | Fysisk plats / Den fysiska plats där vård- och omsorgstjänsten erbjuds. Anges med besöksadress och/eller geografiska koordinater. | 0..1 |
| ../../../locationAddress | string | Belägenhetsadress. / Adress för fysisk plats där vård- och omsorgstjänsten erbjuds. / Minst ett av attributen locationAddress eller geographicalCoordinates ska anges. | 0..1 |
| ../../../ geographicalCoordinates | GeoLocationType | Geografiska koordinater som avgränsar Fysisk plats. / Minst ett av attributen locationAddress eller geographicalCoordinates ska anges. | 0..1 |
| ../../virtualLocation | VirtualLocationType | Virtuell plats / Adress till en viss vård- och omsorgstjänst om den bedrivs virtuellt. Kan exempelvis vara webbadress eller adress där det går att ladda ner en applikation. | 0..1 |
| ../../.. /id | anyURI | Id på virtuell plats. / Identifierare för den plats där vård- och omsorgstjänsten bedrivs virtuellt. | 1..1 |
| ../../description* | DescriptionType | Beskrivning av platsen (län, kommun, fysisk eller virtuell plats). / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare (enskild person) eller hälso- och sjukvårdspersonal. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../contactInformation | ContactInformationType | Kontaktuppgift till den organisatoriska enhet som erbjuder en viss vård- och omsorgstjänst. | 0..* |
| ../../ranking | integer | Rangordning för kontaktuppgifterna. Om det finns flera kontaktuppgifter används rangordning för att visa vilken som föredras framför en annan. / Anges med siffror där 1 innebär högst rangordning osv. / Exempelvis om en e-postadress ska användas i första hand och ett telefonnummer ska användas i andra hand, används rangordning 1 för e-postadressen och rangordning 2 för telefonnumret. | 0..1 |
| ../../forRole | CVType | För roll / Attributet anger om kontaktuppgiften avser en viss roll. / En roll kan vara en invånare (enskild person), personal inom socialtjänst eller hälso- och sjukvårdspersonal. / Ett telefonnummer som finns registrerat för en vård- och omsorgstjänst ska i vissa fall endast användas för invånare och ett annat telefonnummer, avseende samma vård- och omsorgstjänst, ska användas av hälso- och sjukvårdspersonal. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../../purpose | String | Syfte / Angivelse av syftet med kontaktuppgiften. / Exempelvis avbokning, ombokning, receptförnyelse. | 0..1 |
| ../../address | Address | Postadress / Den adress som kan användas för att kontakta en organisatorisk enhet gällande en vård- och omsorgstjänst. Kan exempelvis vara adress dit en pappersremiss ska skickas. / Observera att detta ej är besöksadress (återfinns i Fysisk plats). / Adress är obligatoriskt om det är möjligt att remittera till vård- och omsorgstjänsten. | 0..1 |
| ../../availableTime | CalendarType | Kalendertid / Den tid som kontaktuppgiften är tillgänglig. / Det kan vara möjligt att ringa mån – fre 08.00-17.00 på ett telefonnummer. / Se avsnitt 5.2.2 för beskrivning av format. | 0..* |
| ../../telecom | TelecomType | Adress för telekommunikation / Innehåller den elektroniska adressinformation som ska användas för att kontakta en organisatorisk enhet gällande en viss vård- och omsorgstjänst. | 0..1 |
| ../../../typeOfTelecom | CVType | Typ av medium / Vilken typ av medium för telekommunikation som avses. / Anges med kod från kodverket Kv tele ekom typ (OID: 1.2.752.129.2.2.1.30) [R14]. / Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. / typeOfTelecom.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 1..1 |
| ../../../contactPoint* | string | Värde / Angivelse av värde i klartext för typen av medium. / Exempelvis 070-707070 som telefonnummer, epost@epost.se som e-postadress etc. | 1..1 |
| ../../description* | DescriptionType | Beskrivning / Ytterligare information om kontaktuppgiften. / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänst  eller hälso- och sjukvårdspersonal. / Om beskrivning anges, ska minst en beskrivning för invånare anges. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../cooperation | CooperationType | Samverkan / Håller information om vilken organisatorisk enhet som samverkar med annan organisatorisk enhet kring en vård- och omsorgstjänst och vad samverkan avser. / Ett exempel på samverkan är när två organisatoriska enheter samverkar kring öppettider avseende en viss typ av vård- ocn omsorgstjänst så att en patient kan hänvisas rätt utanför normala öppettider, exempelvis från vårdcentral till närakut. | 0..* |
| ../../typeOfCooperation | String | Typ av samverkan / Vilken typ av samverkan organisationerna har mellan varandra. | 1..1 |
| ../../validity* | DatePeriodType | Giltighet / Giltighetsperioden för samverkan mellan organisationerna. / Om samverkan exempelvis gäller vid semesterstängt, kan giltigheten exempelvis vara 20160601‒20160831. | 0..1 |
| ../../referenceToCareServiceId | IIType | Referens till vård- och omsorgstjänst / Unikt id som identifierar den vård och- omsorgstjänst som två organisationer samverkar kring. / Om HSA-id används: / careServiceId.root: 1.2.752.129.2.1.4.1 / careServiceId.extension: <hsa-id> / Om ej HSA-id: / careServiceId.root: <UUID> / careServiceId.extension: Anges ej | 1..1 |
| ../../description* | DescriptionType | Beskrivning / Ytterligare information om samverkan. / Om beskrivning anges ska det åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal. / Om roll inte anges, riktas beskrivningen till samtliga roller. / Om beskrivning anges, ska minst en beskrivning för invånare anges. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../resource | ResourceType | Resurs / Vilken resurs som kan erbjudas med en vård- och omsorgstjänst. | 0..* |
| ../../typeOfResource | CVType | Typ av resurs / Exempelvis bassäng eller vård- och omsorgspersonal med särskild kompetens. / Kod från Snomed CT hierarkin 308916002 \| område eller geografisk plats \|, 260787004 \| fysiskt objekt \| eller 106288005 \| läkare, tandläkare, veterinär eller motsvarande yrke \| / typeOfResource.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 1..1 |
| ../../resourceAttribute | String | Egenskap / Värdet på resursen. Exempelvis om tolk så anges vilket språk. | 0..1 |
| ../../availableTime | CalendarType | Kalendertid / Vilken tid resursen är tillgänglig. / Se avsnitt 5.2.2 för beskrivning av format. | 0..* |
| ../../description* | DescriptionType | Beskrivning / Ytterligare information om resursen. / Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal. / Om beskrivning anges, ska minst en beskrivning för invånare anges. / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../interferenceInformation | InterferenceInformationType | Störningsinformation. 
Information om omständigheter som innebär en avvikelse i tillgängligheten för en viss vård- och omsorgstjänst. | 0..* |
| ../../datePeriod* | DatePeriodType | Datumperiod / Start- och sluttid för det inträffade, där starttid är obligatorisk och sluttid valfri. | 1..1 |
| ../../typeOfInterference | CVType | Typ av störning / Vilken typ av avvikelse. Exempelvis ombyggnation, semester. / Kod från Snomed CT hierarkin 272379006 \| händelse \| / typeOfInterference.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../description* | DescriptionType | Beskrivning / Ytterligare information om avvikelser. / Det ska åtminstone finnas beskrivning på svenska och vara anpassad för invånare. / Det får endast finnas en beskrivning med samma kombination av språk och roll. | 1..* |
| ../../../text | string | Text / Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk / Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska. / Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for / comprehensive coverage of languages”. / Exempel på code: / swe (svenska) / eng (engelska) / deu (tyska) / language.code: swe / language.displayname: Swedish / language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll / Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal. / Om beskrivning anges, ska minst en beskrivning för invånare anges. / Urval ur Snomed CT: / role.code: 223366009 / role.displayname: hälso- och sjukvårdspersonal / role.codesystem:  1.2.752.116.2.1.1 / role.code: 257513009 / role.displayname: enskild person / role.codesystem:  1.2.752.116.2.1.1 / role.code: 224611006 
role.displayname: personal inom socialtjänsten / role.codesystem:  1.2.752.116.2.1.1 / role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |

#### Övriga regler
Begäran
Regel 1: Där CVType används ska urvalet endast baseras på code och codeSystem.
Svar
Regel 1: Med location så är det en av följande fält som ska anges:
geographicalLocation
physicalLocation
virtualLocation
Regel 2: Med fältet geographicalLocation så är det en av följande som ska anges:
county
municipality
otherLocation
Regel 3:  contactPoint
Om värdet är 6 på typeOfTelecom.code ska formatet följa uri
Om värdet är 1-3 på typeOfTelecom.code ska formatet följa ITU
Om värde är 5 på typeOfTelecom.code ska formatet följa RFC2822
Regel 4: validity.start måste vara tidigare än eller lika med validity.end
Regel 5: datePeriod.start måste vara tidigare än eller lika med datePeriod.end
Regel 6: Där fältet description används, ska fältet language.code vara satt till ”swe” och fältet role.code vara satt till ”257513009” för åtminstone en av beskrivningarna.
Regel 7: Endast beskrivningar där language.code är samma i svaret som actorLanguage.code i begäran ska returneras.
Regel 8: Endast beskrivningar där role.code är samma i svaret som role.code i begäran ska returneras. Om svaret saknar den role.code som är angiven i begäran, ska svaret returnera role.code som är satt till ”257513009”.
Regel 9: Om language ej anges i begäran, ska samtliga texter där language.code är satt till något värde + där language saknas returneras.
Regel 10: Om role ej anges i begäran, ska samtliga texter returneras.
Regel 11:

| management | publicProvider |
| :--- | :--- |
| Region | true |
| Kommun | true |
| Statlig | true |
| Privat | false |
| Övrigt | false |

##### Icke-funktionella krav

###### SLA-krav
Se generella SLA-krav för tjänstedomänen.

#### Annan information om kontraktet
För att möjliggöra för konsumenter att anropa alla logiska adressater som hittas via GetOfferingCatalogues, utan att ha tidigare vetskap om dessa, ska anropsbehörighet enbart kontrolleras på tjänstekontraktet, och ej på logisk adressat.
