# 1 Inledning - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Tjänstekontraktsbeskrivning Vård- och omsorgsutbud**, version 3.0 (2023-04-25), [TKB_supportprocess_serviceprovisioning_healthcareoffering.docx](TKB_supportprocess_serviceprovisioning_healthcareoffering.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | operativt processtöd: tillgängliggöra tjänst: vårdochomsorgsutbud |
| Version | 3.0 |
| Datum | 2023-04-25 |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 2.0_utkast | 2016-11-10 | Första versionen | Björn Skeppner |
| 2.0_utkast | 2016-11-21 | Uppdaterat kapitel 1 och 2 | Nadeem Hossain |
| 2.0_utkast | 2016-11-24 | Lagt till arbetsflöden och sekvensdiagram | Nadeem Hossain / David Komar |
| 2.0_utkast | 2016-11-25 | Lagt till beskrivningar till vissa flöden | Nadeem Hossain |
| 2.0_utkast | 2016-11-26 | Arbetat med fältregeltabellen skapad | Nadeem Hossain |
| 2.0_utkast | 2016-11-27 | Se ovan | Nadeem Hossain |
| 2.0_utkast | 2016-11-28 | Fältregeltabellen och uppdatering av arbetsflödesdiagrammen | Nadeem Hossain |
| 2.0_utkast | 2016-11-29 | Uppdaterat resten av dokumentet | Nadeem Hossain |
| 2.0_utkast | 2016-12-07 | Interna granskningar |   |
| 2.0_utkast | 2016-12-10 | Uppdatering efter granskning | Nadeem Hossain |
| 2.0_RC1 | 2016-12-12 | För granskning A&R Inera | Nadeem Hossain |
| 2.0_RC2 | 2016-12-21 | Tagit bort ResultType från GetOfferings och GetServiceProviders. | Björn Skeppner, Nadeem Hossain |
| 2.0_RC3 | 2017-02-15 | Lagt till fritextsökning i GetOfferings | Malin Ljunggren |
| 2.0_RC3 | 2017-04-07 | Tagit bort en targetGroupAge från GetOfferings. Korrigerat namn på fält i GetOfferings och UpdateOfferings. | Emma Molin |
| 2.0_RC3 | 2017-06-21 | Tagit bort partOfUnitName som ersatts av fritextsökning. Uppdaterat beskrivning och kardinalitet för fritextsökning. Ändrat kardinalitet på typeOfBusiness till 0..*. / Tillägg av regel för att beskriva hur CVType hanteras i begäran. / Förtydligat avsnitt 3.3 Aggregering / och engagemangsindex. / Bytt ut ADType till string. | Thomas Siltberg |
| 2.0_RC3 | 2017-07-06 | Uppdaterat MIM för GetServiceProviders, getOfferings, UpdateOfferings. / NI 2016:1 NI 2017. / Uppdaterat beskrivningarna för parametrarna i begäran (samtliga). / Ändrat fritextsökning till 0..* i getOfferings. / Uppdaterat flödet för utbudsansvariga organisationer. / Uppdaterat sökområde i begäran för getOfferings. / Fälten beskrivning (description): lagt till att beskrivning ska anges på minst svenska och för invånare + förtydligat beskrivning av filterparametrarna roll och språk. / Lagt till urval av snomed-koder för roll. / Bytt fältnamn för vård- och omsorgstjänst till careService. / Lagt till remissmall i getOfferings och updateOfferings. / Korrigerat beskrivningen för typ av vård- och omsorgstjänst. / Lagt till id för utbudsansvarig organisation i begäran för GetOfferings. / Lagt in en nivå överst i getOfferings och updateOfferings som är Vård- och omsorgstjänst (careService). / Uppdaterat oid för organisationsnummer. / Lagt till beskrivning för vård- och omsorgstjänst som saknades i getOfferings och updateOfferings fältregler. / Korrigerat attributnamn roll till riktadTillRoll (i beskrivning). | Malin Ljunggren |
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
| 2.0_RC5 | 2018-03-16 | Uppdaterat beskrivningar för flödet Hämta utbudsinformation och tjänstekontrakt GetOfferingCatalogues. / Lagt till oid för HSA verksamhetskod. | Malin Ljunggren |
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
| 2.0_RC7 | 2021-09-02 | Rättat språk / Ändrat remissmall till remissanvisning / Uppdaterade modeller / Rättat länkar i referensförteckningen, och tagit bort referenser som inte användes i dokumentet. / Rättat regel för GetOfferingCatalogues och GetCareServiceOfferings som angav att ägarform ”Övrigt” kunde vara offentlig eller privat huvudman. Ägarform ”Övrigt” används enbart för privat huvudman. / Tagit bort attributet original enhets id från utförande organisation. Enhetens id förväntas alltid kunna användas som nyckel vid anrop till GetSupportedServiceContracts. / Ändrat Utbudsansvarig organisation till Katalogansvarig organisation. | Torbjörn Dahlin / Robert Meriruoho / Stefano Testi / Johan Zetterström |
| 2.0 | 2021-09-27 | Uppdaterat versionsnummer och publiceringsdatum inför release | Johan Zetterström |
| 2.1_RC1 | 2022-09-13 | Kardinaliteten för elementet ../careServiceId för svarsdelen i GetCareServiceOfferings ändrat från 1..1 till 0..1 | Dan Svedén / Tobias Blomberg |
| 2.1 | 2022-12-01 | Version fastställd | Dan Svedén / Tobias Blomberg |
| 3.0 | 2023-04-25 | Justerat beskrivningen av Ägarform i båda tjänstekontrakten så att fältet hänvisar till ett kodverk istället för enskilda koder. / Justerat beskrivningen för organisations-id så att den blir tydligare. / Lagt till information om att koden ”övrigt” för kön inte är tillämplig i GCSO / Lagt till information om varifrån kod ska hämtas för Typ av egenskap i GCSO / Ändrat datatypen för ../../purpose i GCSO från CVType till String / Justerat beskrivningen av Typ av medium i GCSO så att den hänvisar till ett kodverk istället för enskilda koder. / Ändrat datatypen för ../../typeOfCooperation i GCSO från CVType till String / Lagt till information om varifrån kod ska hämtas för Typ av resurs i GCSO / Ändrat datatypen för ../../resourceAttribute i GCSO från CVType till String / Lagt till information om varifrån kod ska hämtas för Typ av Störning i GCSO / Uppdaterat versionsavsnittet | Dan Svedén / Tobias Blomberg |

#### Referenser

| | | | |
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

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut – Vård- och omsorgsutbud (referens R1) | [AB_supportprocess_serviceprovisioning_healthcareoffering.docx](AB_supportprocess_serviceprovisioning_healthcareoffering.docx) |
| Informationsspecifikation – Vård- och omsorgsutbud (referens R9) | [IS_supportprocess_serviceprovisioning_healthcareoffering.docx](IS_supportprocess_serviceprovisioning_healthcareoffering.docx) |
| Kravspecifikation – Vård- och omsorgsutbud | [KRAV_supportprocess_serviceprovisioning_healthcareoffering.docx](KRAV_supportprocess_serviceprovisioning_healthcareoffering.docx) |
| Kravkatalog utbud 2.0 (referens R10) | [Kravkatalog_utbud2.0.xlsm](Kravkatalog_utbud2.0.xlsm) |

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

supportprocess: serviceprovisioning:healthcareoffering

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Denna informationsdomän hanterar det detaljerade utbudet beskrivet som vård- och omsorgstjänster. En vård- och omsorgstjänst motsvarar något specifikt som en verksamhet kan erbjuda att utföra under vården av en patient. Detta skulle exempelvis kunna vara en viss operation eller undersökning.

Informationen inom domänen ska vara tillräcklig för att patient och remittent, eller invånaren på egen hand ska kunna hitta rätt vård- och omsorgstjänst hos rätt utförare baserat på kriterier såsom typ av tjänst, öppettider, väntetider, plats och geografiska avstånd, målgrupp som tjänsten vänder sig till, eller eventuella önskade tilläggstjänster såsom tillgång till diabetessköterska eller sjukgymnast.

Tjänstekontrakten inom denna domän gör det möjligt att söka efter vem som kan erbjuda en viss typ av vård- och omsorgstjänst, var tjänsten utförs, samt hur exempelvis remiss kan skickas till den enhet som erbjuder tjänsten.

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den ska fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter (TP) och tjänstekonsumenter (TK) ska med andra ord följa såväl de maskintolkbara reglerna i de tekniska kontrakten, som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

operativt processtöd:tillgängliggöra tjänst:vårdochomsorgsutbud

vårdochomsorgsutbud

