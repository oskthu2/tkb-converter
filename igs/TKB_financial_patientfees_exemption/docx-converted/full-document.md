
|  | Högkostnadsskydd / Tjänstekontraktbeskrivning / Version 1.0 / 2024-03-25 |
| :--- | :--- |
Innehåll
1	Inledning	8
1.1	Svenskt namn	8
2	Versionsinformation	9
2.1	Version 1.0_RC3	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Förändrade tjänstekontrakt	9
2.1.4	Utgångna tjänstekontrakt	9
2.2	Version tidigare	9
3	Tjänstedomänens arkitektur	9
3.1	Flöden	10
3.1.1	Hämtning av högkostnadsskydd samt alla transaktioner.	10
3.1.2	Obligatoriska kontrakt	12
3.2	Adressering	12
3.2.1	Sammanfattning av adresseringsmodell för tjänstekontraktet RequestExemptionStatuses	12
3.2.2	Sammanfattning av adresseringsmodell för tjänstekontraktet ProcessExemptionStatuses	13
3.3	Aggregering och engagemangsindex	13
4	Tjänstedomänens krav och regler	14
4.1	Generellt	14
4.2	Uppdatering av engagemangsindex	14
4.2.1	Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän.	18
4.3	Informationssäkerhet och juridik	18
4.4	Icke funktionella krav	18
4.4.1	SLA krav	18
4.4.2	Övriga krav	19
4.5	Felhantering	19
4.5.1	Krav på en tjänsteproducent	19
4.5.2	Tekniska fel	19
4.5.3	Krav på en tjänstekonsument	19
5	Tjänstedomänens meddelandemodeller	20
5.1	V-MIM	20
5.2	Formatregler	20
5.2.2	Format för patient id	21
5.2.3	Format för belopp	22
6	Tjänstekontrakt	23
6.1	RequestExemptionStatuses	23
6.1.1	Version	23
6.1.2	Fältregler	23
6.1.3	Övriga regler	25
6.2	ProcessExemptionStatuses	25
6.2.1	Version	26
6.2.2	Fältregler	26
6.2.3	Övriga regler	28
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2017-04-16 | utkast | Ranjdar Fallyih |  |
| 1.0_RC1 |  | 2017-08-15 | Uppdaterat fältregeltabell | Khaled Daham |  |
| 1.0_RC1 |  | 2017-09-07 | Uppdaterat fältregeltabell | Khaled Daham |  |
| 1.0_RC1 |  | 2017-10-30 | Lagt till giltighetstid för ett frikort / Uppdaterat adressering samt beskrivning av reservidentitet för engagemangindex / Uppdaterat MIM / Uppdaterat beskrivning för alla datumfält / Lagt till exempel under test-suite/ GetExemptionStatus/test/positive | Khaled Daham |  |
| 1.0_RC1 |  | 2017-12-14 | Uppdaterat beskrivning och bild under övriga regler | Khaled Daham |  |
| 1.0_RC1 |  | 2018-01-16 | Uppdaterat schematron-regler i constraints.xml samt lagt till fler exempelfiler under test-suite/ | Khaled Daham |  |
| 1..0_RC1 |  | 2018-02-14 | Uppdaterat MIM / Lagt till support-lib för SOAPui / Uppdaterat beskrivningar. | Khaled Daham |  |
| 1.0_RC1 |  | 2018-03-09 | Tagit bort registeredBy / Ändrat dateOfRegistration till TimeStampType | Khaled Daham |  |
| 1.0_RC1 |  | 2018-05-14 | Ändrar beskrivning för careGiver och careUnit från registrerad enhet till besökt enhet. / Lagt till akutalitetskrav samt samtidighetskrav. / Uppdaterat kravet på last. / Förtydligat kravet på adressering. / Förtydligat vilka belopp som får skickas (inga makulerade t.ex). / Lagt till en schematron-regel som kontrollerar belopp. / Lagt till validering av constraints.xml / Lagt till riktlinjer för hur nationellt reservId skall hanteras | Khaled Daham |  |
| 1.0_RC1 |  | 2018-06-01 | Korrigerat exempelfiler, testfall samt test-svit | Khaled Daham |  |
| 1.0_RC1 |  | 2019-04-16 | Förtydligande kring adressering. | Khaled Daham |  |
| 1.0_RC2 |  | 2020-04-26 | Kommunikationsmönstret ändrat från direktåtkomst (sammanhållen journalföring) till utlämnande. Tjänstekontraktet GetExemptionStatuses är därmed ändrat från synkront till asynkront där dess begäran och svar delats upp i två separata tjänstekontrakt – RequestExemptionStatuses och ProcessExemptionStatuses. | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2020-09-15 | Krav på kontroll av spärr borttaget, p g a byte av kommunikationsmönster | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2021-02-08 | Komplettering om header, skickad av aggregerade tjänster (ProcessingStatus) | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2021-05-20 | Tillägg till adresseringsmönster för att stödja agenter | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2023-05-02 | Korrigerat kardinalitet för transaktionernas tidsstämplar i MIM | Thomas Fafoutis |  |
| 1.0_RC4 |  | 2023-10-10 | Förtydliganden kring hur attributet requestId ska förmedlas. 
Ändrat kardinalitet för IIType.extension [1..1]->[1..0].
Frikortsnummer tillagt. | Thomas Fafoutis |  |
| 1.0 |  | 2024-03-27 | Korrigerat fel i fältet serviceDomain i kap 4.2. Namnrymden ska ha ”:” mellan samtliga delar | Thomas Fafoutis |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_financial_patientfees_exemption.docx | Obligatoriskt | Bifogad fil |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | IS_strategicresourcemanagement.persons.person.docx | Informationsspecifikation Personuppgifter | Tjänstedomän personuppgifter |
| R4 | Ärendehantering | För att rapportera fel eller otydligheter kan man skapa ärenden för domänen på följande bitbucket-länk. | Ärendehantering för högkostnadsskydd |
| R5 | IS_financial_patientfees_exemption.docx | Informationsspecifikation | Bifogad fil |
| R6 | TKB_itintegration_engagementindex.docx | Tjänstekontraktsbeskrivning för EngagemangsIndex | Tjänstedomän engagemangsindex |
| R7 | Flera dokument | Information om Personuppgiftstjänsten. | Personuppgiftstjänst |
| R8 | RIVTA Anvisningar Basic Profile Valfria tillägg 2.1 | I Kapitel 3 finns vidare information om den header (ProcessingStatus) som returneras av aggregerade tjänster | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632899/RIV+Tekniska+Anvisningar+Basic+Profile+Valfria+till+gg+2.1 |
Begrepp och termer

| Begrepp | Beskrivning |
| :--- | :--- |
| Personidentifierare | En identitetsbeteckning för att identifiera person, här i IT-system. Exempel: personnummer, samordningsnummer eller reservidentitet. |
| Personnummer | För varje folkbokförd person i Sverige fastställer Skatteverket ett personnummer som identitetsbeteckning. |
| Reservidentitet (även kallat reservnummer) | Tillfällig identitetsbeteckning för individ då säkerställt person- eller samordningsnummer saknas, t.ex. då individens identitet inte kan fastställas, vid vård i katastrofsituationer mm. |
| Lokal reservidentitet | Reservidentiteter som ges ut och hanteras lokalt i en organisation, t.ex. i ett landsting eller en kommun. |
| Individs huvudidentitet | Den nu gällande (aktuella) personidentifieraren för en individ. / Exempel1: En person har haft ett samordningsnummer, men får vid senare tillfälle ett personnummer. Personnumret blir personens nya huvudidentitet. / Exempel2: En patient i vården som inte är folkbokförd i Sverige får ett nationellt Reservid tilldelat hos en vårdgivare, eftersom patienten saknar personnummer/samordningsnummer. Senare konstateras hos vårdgivaren att patienten också haft en lokal reservidentitet där man dokumenterat en tidigare vårdkontakt. Vårdgivaren knyter den lokala lokal reservidentiteten till patientens nationella ReservId, vilket är patientens huvudidentitet. |
| Kopplade personidentifierare, kopplingsinformation | Flera personidentifierare för samma individ har kopplats samman i en IT-tjänst. Exempel: en patient har tidigare registrerats på ett nationellt ReservId (NRID), men identifieras senare med hens personnummer. NRID kopplas till patientens personnummer i en stödtjänst för personuppgifter. |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Tjänstekonsument (K) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system (t.ex. e-tjänst eller journalsystem). En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens R2 |
| Anslutningspunkt (AP) | Den server som hanterar inkommande anrop som förmedlats av en tjänsteplattform. Anslutningspunkten uppvisar ett server-certifikat som är betrott av tjänsteplattformen. | Se referens R2 |
| Tjänsteproducent (P) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens R2 |
| Källsystem (KS) | Det verksamhetssystem där originalinformationen skapas (t.ex. en driftsinstans av ett journalsystem). | Se referens R2 |
| PNR | Personnummer | Se referens [R3] |
| SNR | Samordningsnummer | Se referens [R3] |
| LRID | Reservidentitet | Se referens [R3] |
| NRID | Nationell ReservID | Se referens [R3] |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
financial.patientfees.exemption: Högkostnadsskydd
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Nationellt Högkostnadsskydd
Högkostnadsskydd

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen financial.patientfees.exemption. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0_RC4

#### Oförändrade tjänstekontrakt
N/A

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
RequestExemptionStatuses, version 1.0
ProcessExemptionStatuses, version 1.0

#### Förändrade tjänstekontrakt
N/A

#### Utgångna tjänstekontrakt
N/A

### Version tidigare
Ingen tidigare version.

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsten för beskrivning av högkostnadsskydd erbjuder ett utlämnande av information i vårdgivarnas system för patientadministration. Utgångspunkten för tjänsten i denna tjänstedomän är i första hand patientens och professionens behov av utlämnande till patients besökskostnader ur ett nationellt eller ett regionalt perspektiv. I båda fallen är syftet att historisk information sammanställs från det eller de verksamhetssystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden

#### Hämtning av högkostnadsskydd samt alla transaktioner.
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

##### Sekvensdiagram

###### Sekvensdiagram 1 – Källsystem uppdaterar EI
Sekvensdiagrammet visar det informationsutbyte som sker mellan sjukvårdshuvudmans eller agents system och engagemangsindex innan en begäran om ett utlämnande senare kan ske. Det är varje sjukvårdshuvudmans ansvar att uppdatera engagemangsindex för att visa att sjukvårdshuvudman håller högkostnadsskyddsinformation om patient. Via engagemangsindex kan senare (se sekvensdiagram 2 nedan) en begäran om utlämnande skickas till berörda parter via aggregerad tjänst.

![img_005.png](images/img_005.png)

###### Sekvensdiagram 2 – Begäran om utlämnande
Sekvensdiagrammet visar begäran om ett utlämnande av högkostnadsskyddsinformation, vilket är första steget i informationsutbytet, initierat av den part som vill inhämta information. Konsument adresserar kontraktet RequestExemptionStatuses med Ineras organisationsnummer som logisk adress för att aktivera aggregerad tjänst av samma kontrakt (RequestExemptionStatuses). Aggregerad tjänst baserar vidare sina anrop om begäran på relevanta engagemangsindexposter för berörd invånare/patient. Aggregerad tjänst ska endast anropa sjukvårdshuvudman/agent vars engagemangsindexpost är 12 månader eller nyare, filtrering sker på attributet mostRecentContent. Aggregerad tjänst skickar således en begäran om utlämnande per engagemangsindexpost som matchar kriteriet ovan.

![img_004.png](images/img_004.png)

###### Sekvensdiagram 3 – Utlämnande
Sekvensdiagrammet visar det utlämnande som initierats av begäran i föregående sekvensdiagram. I detta diagram byter parterna roll. Konsumenten som i tidigare diagram initierade begäran blir nu producent och tar emot utlämnandet. Beroende på hur många olika engagemangsindexposter som hittades av aggregerad tjänst (sekvensdiagram 2 ovan) kommer ett ProcessExemptionStatuses anrop att inkomma per begäran/engagemangsindexpost.

![img_003.png](images/img_003.png)

#### Obligatoriska kontrakt

##### RequestExemptionStatus
En konsument som stödjer kontraktet RequestExemptionStatus måste även stödja ProcessExemptionStatus som producent.
En producent som stödjer kontraktet RequestExemptionStatus måste även stödja ProcessExemptionStatus som konsument.

##### ProcessExemptionStatus
En konsument som stödjer kontraktet ProcessExemptionStatus måste även stödja RequestExemptionStatus som producent.
En producent som stödjer kontraktet ProcessExemptionStatus måste även stödja RequestExemptionStatus som konsument.

### Adressering
Domänen innefattar två tjänstekontrakt bestående av:
RequestExemptionStatuses som används av en konsument för att initiera informationsöverföringen. Detta kontrakt motsvarar konsumentens begäran om att få utlämnat högkostnadsskyddsgrundande information.
ProcessExemptionStatuses som används av producentsystem för att svara på en begäran om utlämnande av högkostnadsskyddsgrundande information. Anrop av ProcessExemptionStatuses måste alltid föregås av ett inkommande anrop via RequestExemptionStatuses. Producent av RequestExemptionStatuses byter i detta läge roll och blir således konsument för ProcessExemptionStatuses.

#### Sammanfattning av adresseringsmodell för tjänstekontraktet RequestExemptionStatuses
Tjänstekontraktet anropas i första hand verksamhetsadresserat där varje logisk adress antingen motsvarar en sjukvårdshuvudman eller Ineras organisationsnummer för att aktivera aggregeringsfunktionen (se kap 3.3 nedan).
Tjänstekontraktet tillåts även anropas system-adresserat. I detta scenario pekas en agents källsystems-HSAId ut. En sådan agent ska i förhand ha godkänts av Inera och ingått relevant avtal.

| Begäran om utlämnande av patientens högkostnadsgrundande information | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id: 5565594230 
Detta adresseringssätt är normalfallet för konsument att använda. Adresseringssättet används exempelvis från vårdgivares kassasystem eller från invånares vy i 1177 Vårdguidens e-tjänster för att erhålla en nationellt sammanfattad bild över individs högkostnadsskyddsgrundande information. 
Genom att adressera på detta sätt triggas aggregerad tjänst igång på den nationella tjänsteplattformen som i sin tur baserar sina vidare anrop på innehållet i engagemangsindex. |
| För en huvudman/region | Huvudmannenslänskod / Detta adresseringssätt används normalt av aggregerad tjänst för att begära ett utlämnande av högkostnadsskyddsgrundande information från den adresserade huvudmannen. |
| För en agent | Agentens källsystems-HSAId. / Detta adresseringssätt används normalt av aggregerad tjänst för att begära ett utlämnande av högkostnadsskyddsgrundande information från en agent |

#### Sammanfattning av adresseringsmodell för tjänstekontraktet ProcessExemptionStatuses
Tjänstekontraktet ska anropas som en följd av en inkommande begäran om utlämnande (anrop via RequestExemptionStatuses). ProcessExemptionStatuses adresseras till den konsument som begärt utlämnandet, d v s till den logiska adress som förmedlats i begäran för RequestExemptionStatuses (attributet responseLogicalAddress).

| Utlämnande av patientens högkostnadsgrundande information | Logisk adress |
| :--- | :--- |
| Konsuments HSAId (hämtat från anropet RequesExemptionStatuses) | Om konsument är e-tjänst för invånare att hämta sin högkostnadsgrundande information (exempelvis 1177 Vårdguidens e-tjänster) motsvarar logisk adress e-tjänstens upplagda logiska adress i tjänsteadresseringskatalogen (TAK). Anropande part av ProcessExemptionStatuses behöver i förhand ha givits anropsbehörighet till denna logiska adress. |

### Aggregering och engagemangsindex
Tjänstekontraktet RequestExemptionStatus i denna domän har en tillhörande aggregerande tjänst som kan sammanställa information från flera tjänsteproducenter. I praktiken innebär det att den aggregerade tjänsten initierar begäran om utlämnande till eventuellt flera parter, baserat på förekomsten av engagemangsindexposter (se sekvensdiagram 1).
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om en huvudmans HSA-id anges som logisk adress, kommer tjänsteplattformen att dirigera frågemeddelandet vidare direkt till huvudmannens system utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera anges kommer anropet att dirigeras till aggregerande tjänst som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de system som har information om patienten.
Notera att svaret från en aggregerad tjänst kommer att innehålla kompletterande information i header som visar på vilka källsystem den aggregerande tjänst i sin tur anropat för att sammanställa sitt svar. Vidare information om denna header (ProcessingStatus) kan läsas i RIV Tekniska Anvisningar Basic Profile Valfria tillägg 2.1, kap3 [R8].
Tjänstekontraktet ProcessExemptionStatuses har ingen motsvarande aggregerande tjänst. Detta anrop måste riktas till den logiska adress som tidigare skickats genom tjänstekontraktet RequestExemptionStatuses via attributet requestLogicalAddress (se tjänstekontraktsbeskrivningen längre ner).

## Tjänstedomänens krav och regler

### Generellt
N/A

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
Engagemangsidexpost skapas per patient, källsystem och sjukvårdshuvudman.
När förnyad högkostandsskyddsrelaterad information skapas i källsystemet ska källsystemet uppdatera befintlig engagemangsindexpost och uppdatera attributet mostRecentContent med aktuellt datum.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet
urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).
Ladda hem Engagemangsindex WSDL (se R6), scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | PNR eller SNR enligt skatteverkets definition (12 tecken). | 1..1 | Validering med xml-regexp uttryckt enligt: / [0-9]{8}[0-9A-Zptf]{4} | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | riv: financial:patientfees:exemption | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i verksamhetsbaseradsystem för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Länskod eller källsystems-HSAId | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | UUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. Post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då indexposten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Källsystemet som genererade engagemangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Verksamhetsadressering samt adressering av agent tillämpas | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Sjukvårdshuvudmannens länskod. | 1..1 | Länskod för sjukvårdshuvudman | Del av instansens unikhet |

#### Regler för tilldelning av värde i fältet Categorization i engagemangsindexposten för tjänstekontrakt i denna domän.
Kortnamnet skapas enligt konventionen första bokstaven i domännamnets komponenter ”-” första bokstaven i tjänstekontraktets namnkomponenter:

| Informationsmängd | Värde på Categorization |
| :--- | :--- |
| FeeExemptionType | fpe-es |

### Informationssäkerhet och juridik
Se informationsspecifikationen för domänen [R5].

### Icke funktionella krav
N/A

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 98% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet uppdatering per dygn. |  |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |  |

#### Övriga krav

##### Gemensamma konsumentregler
R1: Tillämpa regelverk enl:
PDL - då konsumentsystem agerar från invånares direktåtkomst
OSL – då konsumentsystem agerar vårdgivare
R2: Aggregerande begäran förutsätter användning av individens senast gällande huvudidentitet, användning av andra identiteter för individ är enbart tillåten i vid anrop till ett källsystem.

##### Gemensamma producentregler
R1: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.
R2: Tjänsteproducenten skall i svaret leverera all information på en begäran riktad mot en giltig personidentifierare, dvs även information som tidigare har registrerats på andra till individen kopplade identiteter (LRID, NRID, tidigare SNR, eller tidigare PNR)

### Felhantering

#### Krav på en tjänsteproducent

#### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

##### Logiska fel
Inga krav på producent.

#### Krav på en tjänstekonsument

##### Tekniska fel
Inga krav på konsument.

##### Logiska fel
Inga krav på konsument.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM
Begäran om utlämnande – tjänstekontraktet RequestExemptionStatuses

![img_001.png](images/img_001.png)
Utlämnande – tjänstekontraktet ProcessExemptionStatuses

![img_006.png](images/img_006.png)

### Formatregler

##### Format för datum och tidpunkter
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDD” .
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för patient id

##### Personnummer
Personnummer anges enligt format ÅÅÅÅMMDDNNNN.

##### Samordningsnummer
Samordningsnummer anges enligt format ÅÅÅÅMMDDNNNN.
De inledande sex siffrorna utgår från personens födelsetid (år, månad och dag). Därefter följer ett tresiffrigt individnummer som motsvarar födelsenumret i ett personnummer. Individnumret hämtas slumpvis ur en serie 001-999 för alla som är födda samma dag. Numret är udda för män och jämnt för kvinnor. Siffran för födelsedag ökas med talet 60 och en kontrollsiffra beräknas på samma sätt som för ett personnummer.
Exempel
Samordningsnummer för en man som är född den 3 oktober 1970 och har individnummer 239 blir
19701003
+60
————---
197010632391

##### Reservidentitet
Format för nationellt reservidentitet: XXYYMMDDNNGC.
För mer information se informationsspecifikationen i domänen strategicresourcemanagement.persons.person [R3].

#### Format för belopp
Samtliga belopp anges som heltal eller med max 2 decimaler, exempelvis: 1123.40

## Tjänstekontrakt

### RequestExemptionStatuses
Detta tjänstekontrakt används för att begära ut högkostandsskyddstatus samt alla transaktioner 12 månader bakåt i tiden för det patientId som anges i begäran. Genom att anropa tjänstekontraktet initieras en begäran om ett utlämnande. Den efterfrågade informationen skickas sedan av utlämnande part via tjänstekontraktet ProcessExemptionStatuses.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| requestId | IIType | Unikt Id för begäran om utlämnandet. Det är konsuments ansvar att säkerställa identifierarens unikitet. Producent kommer därefter att använda denna identifierare i sitt svar som sker asynkront via tjänstekontraktet ProcessExemptionStatuses | 1..1 |
| ../root | string | Unikt Id för begäran om utlämnandet, ska förmedlas så som ett uuid. | 1..1 |
| ../extension |  | Ska utelämnas, då id förmedlas som ett uuid. | 0..0 |
| patientId | IIType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Tjänsteproducenten skall i svaret leverera all information på en begäran riktad mot individens huvudidentitet, dvs även information som tidigare har registrerats på andra till individen kopplade identiteter (LRID, NRID, tidigare SNR, eller tidigare PNR) / Fältet type sätts till OID för typ av identifierare. 
1) För PNR skall Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas. / 2) För SNR skall Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas. / 3) För NRID skall Ineras oid för NRID (1.2.752.74.9.1) användas. / 4) Tjänsteproducenter skall även stödja sökning på LRID med hjälp av att ange lokalt definierade oid’ar för LRID, exempelvis SLL’s LRID(1.2.752.97.3.1.3). / OBS LRID kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI skall göras av en tjänsteproducent för LRID. / En tjänstekonsument som vill begära mha LRID måste därmed använda sig av systemadressering och ha vetskap om vilken LRID-oid som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| actor | ActorType | Aktören som begär utlämnandet. / Aktören är antingen invånare som begär ut sin information alternativt vårdnadshavare som begär ut barnets information. / Aktören kan även vara en vårdgivare som begär ut patients information från annan vårdgivare. | 1..1 |
| actor.actorTypeEnum | ActorTypeEnum | Enumeration som visar typ av aktör. Kan vara en av följande: / CITIZEN / GUARDIAN / CAREGIVER | 1..1 |
| actor.actorId | IIType | Beroende på typ av aktör anges antingen aktörens personnummer eller HSAId. / För CITIZEN och GUARDIAN anges ett personnummer, se attributet patientId för hur personnummer anges. / För CAREGIVER anges ett HSAId för vårdpersonal. I det fall sätts: / actor.actorId.root = 1.2.752.129.2.1.4.1 / actor.actorId.extension = <HSA Id> | 1..1 |
| actor.careGiverId | IIType | Om aktören är CAREGIVER ska HSAId för vårdgivare anges. Annars ska detta fält utelämnas. / För vårdgivare sätts: / actor.careGiverId.root = 1.2.752.129.2.1.4.1 / actor.careGiverId.extension = <HSA Id> | 0..1 |
| responseLogicalAddress | String | Logisk adress dit utlämnandet senare ska skickas. Anropande part av detta tjänstekontrakt måste således även vara producent för tjänstekontraktet ProcessExemptionStatuses, dit svaret/utlämnandet senare skickas asynkront. Det betyder att anropande part behöver vara upplagd i tjänsteadresseringskatalogen (TAK) som producent samt att konsument av ProcessExemptionStatuses givits anropsbehörighet till anropande part. | 1..1 |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| Tomt svar |  |  |  |

#### Övriga regler
Se tillägg om header (ProcessingStatus) i referens [R8] - RIV Tekniska Anvisningar Basic Profile Valfria tillägg 2.1.

##### Icke funktionella krav
N/A

###### SLA-krav
Inga avvikande SLA-krav

### ProcessExemptionStatuses
Detta tjänstekontrakt används för att lämna ut högkostandsskyddstatus samt alla transaktioner 12 månader bakåt i tiden för det patientId som begärts ut.
Tjänstekontraktet kan förmedla utfärdade frikort hos region samt samtliga transaktioner som finns registrerade hos region.
Tjänstekontraktet anropas av utlämnande part efter att en begäran tidigare har mottagits – se tjänstekontraktet RequestExemptionStatuses ovan för begäran om utlämnande. Observera att det inte är tillåtet att använda tjänstekontraktet ProcessExemptionStatuses om inte annan part tidigare anropat region via RequestExemptionStatuses.
Om RequestExemptionStatuses anropats med aktören invånare eller vårdnadshavare ska ProcessExemptionStatuses innehålla både exemptions och transactions om sådana finns registrerade hos region, se nedan.
Om RequestExemptionStatuses anropats med aktören vårdgivare ska ProcessExemptionStatuses innehålla utfärdat frikort (exemptions). Om inget frikort finns utfärdat hos region för berörd person ska ProcessExemptionStatuses innehålla de hos region registrerade transaktionerna. I det fall ska transaktionerna inte innehålla ursprunglig vårdgivare/vårdenhet där avgiften genererats.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| requestId | IIType | Unikt Id för begäran om utlämnandet. Det är begärande parts ansvar att säkerställa identifierarens unikitet. Detta Id ska således återspegla det requestId som tidigare skickats via tjänstekontraktet RequestExemptionStatuses. | 1..1 |
| ../root | string | Unikt Id för begäran om utlämnandet, ska förmedlas så som ett uuid. | 1..1 |
| ../extension |  | Ska utelämnas, då id förmedlas som ett uuid. | 0..0 |
| feeExemption | FeeExemptionType | Returnerar en patients högkostnadsskyddstatus | 0..* |
| ../patientId | IIType | Id för patienten (samma som i begäran), även kopplade identiteter till en huvudidentitet i begäran skall returneras av tjänsteproducenten. / Dvs information som registrerats på t.ex tidigare NRID, LRID, SNR eller PNR. / Fältet extension sätts till patientens identifierare, anges med 12 siffror utan avskiljare.
Fältet root sätts till typ av identifierare. / För personnummer ska Skatteverkets identifierare för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets identifierare för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För reservidentiterer ska identifierare för nationell reservidentitet (1.2.752.74.9.1) användas. / Exempel: / <patientId> / <root>1.2.752.129.2.1.3.1</root> / <extension>196705053723</extension> / </patientId> | 1..1 |
| ../transaction | TransactionType | Alla avgifter patienten har betalat för besök inom hälsa och sjukvård (öppen vård). | 0..* |
| ../../fee* | AmountType | Patientavgift, den avgift patienten har betalat vid tillfället. / Avgifter på 0 SEK skall inte visas (t.ex makulerade transaktioner). | 0..1 |
| ../../../amount | decimal | Belopp med högst två decimaler. | 1..1 |
| ../../../currency* | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../dateOfVisit* | DateType | Datum för besök, måste ha ett värde om typeOfFee är CARE_VISIT | 0..1 |
| ../../timeOfRegistration* | TimeStampType | Datum och tidpunkt när avgiften registrerades i källsystemet. / Måste ha ett värde om typeOfFee är CARE_VISIT | 0..1 |
| ../../typeOfFee* | TypeOfExemptionEnum | Denna version av tjänstedomänen tillåter endast värdet: / CARE_VISIT - Öppen sjukvård | 1..1 |
| ../../careGiver* | IIType | HSA-id för Vårdgivare där besöket genomfördes, obligatorisk när typeOfFee är satt till CARE_VISIT. | 0..1 |
| ../../careUnit* | IIType | HSA-id för Vårdenhet där besöket genomfördes, obligatorisk när typeOfFee är satt till CARE_VISIT. | 0..1 |
| ../exemption | ExemptionType | Frikort / (Observera att nuvarande version av tjänstedomänen endast tillåter ../exemption.typeOfExemption = CARE_VISIT, vilket i praktiken innebär att kardinaliteten för exemptions i meddelandet bara kan vara [0..1]) | 0..* |
| ../../id | string | Unikt frikortsnummer eller serienummer för frikortet. Frikortsnumret genereras av källsystemet: ID’t är således unikt per källsystem. | 1..1 |
| ../../highCostProtectionPeriod* | DatePeriodType | Högkostnadsperioden är från första besöket hos vårdgivare till 12 månader framåt. / Nästa högkostnadsskydds period börjar när den senaste frikortsperioden är avslutad. / Se övriga regler. | 1..1 |
| ../../../start | DateType | Startdatum för högkostnadsskydd. | 0..1 |
| ../../../end | DateType | Slutdatum för högkostnadsskydd. | 0..1 |
| ../../exemptionPeriod* | DatePeriodType | Den period som frikortet gäller, se övriga regler. | 1..1 |
| ../../../start | DateType | Startdatum för frikort. | 0..1 |
| ../../../end | DateType | Slutdatum för frikort. | 0..1 |
| ../../typeOfExemption* | TypeOfExemptionEnum | Denna version av tjänstedomänen tillåter endast värdet: / CARE_VISIT - Öppen sjukvård | 1..1 |
| ../../region | IIType | HSA-id för den region som fattade beslut om att utfärda frikort. | 1..1 |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Kan vara ett av följande: / OK / INFO / ERROR | 1..1 |
| resultText | string | Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
[sch]= validering i schematron. I schematronfilen contraints.xml är id´t på regeln samma som i Id-kolumnen i tabellen.
Gemensamt för alla regler som valideras m h a schematron är att om fältet inte är obligatoriskt och inte finns med i nyttolasten så kommer regeln inte ge ett fel.
Fält exemptionPeriod
’

| Id | Kontext (xpath) | Beskrivning |
| :--- | :--- | :--- |
| rule001 [sch] | //transaction/dateOfVisit | Datumet får inte vara i framtiden |
| rule002 [sch] | //transaction/dateOfVisit | Får ej vara äldre än 12 månader |
| rule003 [sch] | //exemption/typeOfExemption | Får endast sättas till CARE_VISIT |
| rule004 [sch] | //transaction/typeOfFee | Får endast sättas till CARE_VISIT |
| rule005 [sch] | count(//exemptions) == 0 and / actor.actorTypeEnum[text() = CAREGIVER] | När antal exemptions är noll och actor.actorTypeEnum var satt till CAREGIVER i motsvarande föregångna anrop (RequestExemptionStatuses) som initierat begäran om utlämnande så ska transaction.careUnit och transaction.careGiver uteslutas. |
| rule006 [sch] | //transaction/timeOfRegistration | Får ej vara äldre än dateOfVisit |
| rule007 [sch] | //transaction/timeOfRegistration | Får ej vara i framtiden |
| rule008 [sch] | //patientId/root | Tillåtna värden är oid för personnummer, samordningsnummer enligt skatteverket samt nationell reservidentitet. |
| rule009 [sch] | //fee/currency/code | Får endast sättas till SEK |
| rule010 [sch] | //fee/currency/codeSystem | Får endast sättas till 1.0.4217 |
| rule011 [sch] | Element av typen CVType | Endast codeSystem och code ska ha värden. |
| rule012 [sch] | //transaction/typeOfFee, //transaction/dateOfVisit, //transaction/timeOfRegistration | För öppenvård måste både timeOfRegistration samt dateOfVisit vara med. |
| rule013 [sch] | typeOfExemption[text() = CARE_VISIT] | När typeOfExemption är satt till CARE_VISIT så är careUnit och careGiver obligatoriska. |
| rule014 [sch] | highCostProtectionPeriod.end = ../exemptionPeriod.end | Slutdatum på högkostnadsperioden skall vara samma som slutdatum för frikortsperioden. |
| rule015 [sch] | //amount | Inga transaktioner med summa 0 får skickas med. |
| rule016 [sch] | actor.actorTypeEnum[text() = CITIZEN OR text() = GUARDIAN] | actor.actorTypeEnum var satt till CITIZEN eller GUARDIAN i motsvarande föregångna anrop (RequestExemptionStatuses) som initierat begäran om utlämnande så är careUnit och careGiver obligatoriska. |
| rule017 [sch] | count(//exemptions) == 0 and / actor.actorTypeEnum[text() = CAREGIVER] | När antal exemptions är noll och actor.actorTypeEnum var satt till CAREGIVER i motsvarande föregångna anrop (RequestExemptionStatuses) som initierat begäran om utlämnande så ska meddelande innehålla en lista med transactions, om sådana finns registrerade hos den utlämnande regionen. |
| rule018 [sch] | count(//exemptions) != 0 and / actor.actorTypeEnum[text() = CAREGIVER] | När antal exemptions är skiljt från 0 och actor.actorTypeEnum var satt till CAREGIVER i motsvarande föregångna anrop (RequestExemptionStatuses) som initierat begäran om utlämnande så ska meddelandet inte innehålla en lista med transactions. / (Observera att nuvarande version av tjänstedomänen endast tillåter TypeOfFee = CARE_VISIT, vilket i praktiken innebär att kardinaliteten för exemptions i meddelandet bara kan vara [0..1]) |

![img_002.tiff](images/img_002.tiff)

![img_007.tiff](images/img_007.tiff)
Krav på hur en tjänstekonsument skall tolka
Finns det ett frikort
Summera transaktionerna de senaste 12 månaderna
Titta på transaktioner inom en högkostnad

##### Icke funktionella krav
N/A

###### SLA-krav
Inga avvikande SLA-krav
