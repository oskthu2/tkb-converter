
|  | Logg / Loggning och uppföljning av åtkomst till patientjournal / Version 2.0.8 / 2024-10-24 |
| :--- | :--- |
Innehåll
1	Inledning	9
1.1	Svenskt namn	9
2	Versionsinformation	10
2.1	Version 2.0.6	10
2.1.1	Oförändrade tjänstekontrakt	10
2.1.2	Nya tjänstekontrakt (version 2.0.6)	10
2.1.3	Förändrade tjänstekontrakt (version 2)	10
2.1.4	Utgångna tjänstekontrakt (version 2)	10
2.2	Version tidigare	10
3	Tjänstedomänens arkitektur	11
3.1	Flöden	14
3.1.1	Flöde 1: Lagra åtkomstlog	14
3.1.2	Flöde 2: Läsa åtkomstloggar	16
3.1.3	Flöde 3: Patientens möjlighet att ta del av sina åtkomstloggar	18
3.1.4	Flöde 4: Vårdgivarens möjlighet att ta del av vilka vårdgivare som läst information som ägs av vårdgivaren	20
3.1.5	Vårdgivarens behov av att hämta hem sina logposter för lokal bearbetning.	22
3.1.6	Obligatoriska kontrakt	24
3.2	Adressering	24
3.2.1	Logiska adresser	24
3.3	Aggregering och engagemangsindex	25
4	Tjänstedomänens krav och regler	26
4.1	Informationssäkerhet och juridik	26
4.1.1	Förlitande parter enligt RIV TA Basic Profile	26
4.1.2	Stark autentisering av slutanvändare	26
4.1.3	Krav på konsumenten	26
4.2	Hantering av otillgänglighet	26
4.3	Icke funktionella krav	27
4.3.1	SLA krav	27
4.3.2	Övriga krav	27
4.4	Felhantering	28
4.4.1	Krav på en tjänsteproducent	28
4.4.2	Krav på en tjänstekonsument	28
4.4.3	Konfidentialitet	28
5	Tjänstedomänens meddelandemodeller	29
5.1	Tjänsteöversikt	29
5.2	Formatregler	29
5.2.1	Format för tidpunkter	29
5.2.2	Tidszon för tidpunkter	29
6	Tjänstekontrakt	30
6.1	StoreLog	30
6.1.1	Version	30
6.1.2	Fältregler	30
6.1.3	Övriga regler	30
6.1.4	Exempel	31
6.2	GetLogs	32
6.2.1	Version	32
6.2.2	Fältregler	32
6.2.3	Övriga regler	33
6.2.4	Exempel	33
6.3	GetAccessLogsForPatient	35
6.3.1	Version	35
6.3.2	Fältregler	35
6.3.3	Övriga regler	36
6.3.4	Exempel	36
6.4	GetInfoLogs	37
6.4.1	Version	37
6.4.2	Fältregler	37
6.4.3	Övriga regler	38
6.4.4	Exempel	38
6.5	GetLogsByOrder	40
6.5.1	Version	40
6.5.2	Fältregler	40
6.5.3	Övriga regler	41
6.5.4	Exempel	41
6.6	GetFilesForOrderId	42
6.6.1	Version	42
6.6.2	Fältregler	42
6.6.3	Övriga regler	42
6.6.4	Annan information om kontraktet	43
7	Datatyper	44
7.1	Datatyper från namnrymd urn:riv:informationsecurity:auditing:log:2	44
7.1.1	urn:riv:informationsecurity:auditing:log:2:AccessLogType	44
7.1.2	urn:riv:informationsecurity:auditing:log:2:AccessLogsType	44
7.1.3	urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType	45
7.1.4	urn:riv:informationsecurity:auditing:log:2:ActivityType	45
7.1.5	urn:riv:informationsecurity:auditing:log:2:ActivityArgs	45
7.1.6	urn:riv:informationsecurity:auditing:log:2:ActivityLevel	46
7.1.7	urn:riv:informationsecurity:auditing:log:2:ActivityTypeValue	46
7.1.8	urn:riv:informationsecurity:auditing:log:2:Assignment	46
7.1.9	urn:riv:informationsecurity:auditing:log:2:CareProviderType	46
7.1.10	urn:riv:informationsecurity:auditing:log:2:CareProviderName	46
7.1.11	urn:riv:informationsecurity:auditing:log:2:CareProvidersType	46
7.1.12	urn:riv:informationsecurity:auditing:log:2:CareUnitType	47
7.1.13	urn:riv:informationsecurity:auditing:log:2:CareUnitName	47
7.1.14	urn:riv:informationsecurity:auditing:log:2:HsaId	47
7.1.15	urn:riv:informationsecurity:auditing:log:2:IIType	47
7.1.16	urn:riv:informationsecurity:auditing:log:2:Id	48
7.1.17	urn:riv:informationsecurity:auditing:log:2:InfoLogsResultType	48
7.1.18	urn:riv:informationsecurity:auditing:log:2:LogType	48
7.1.19	urn:riv:informationsecurity:auditing:log:2:LogsType	49
7.1.20	urn:riv:informationsecurity:auditing:log:2:LogsResultType	49
7.1.21	urn:riv:informationsecurity:auditing:log:2:PatientType	49
7.1.22	urn:riv:informationsecurity:auditing:log:2:PatientName	49
7.1.23	urn:riv:informationsecurity:auditing:log:2:PurposeDescription	49
7.1.24	urn:riv:informationsecurity:auditing:log:2:ReportResultType	50
7.1.25	urn:riv:informationsecurity:auditing:log:2:ResourceType	50
7.1.26	urn:riv:informationsecurity:auditing:log:2:ResourceTypeValue	50
7.1.27	urn:riv:informationsecurity:auditing:log:2:ResourcesType	51
7.1.28	urn:riv:informationsecurity:auditing:log:2:ResultType	51
7.1.29	urn:riv:informationsecurity:auditing:log:2:ResultCodeType	51
7.1.30	urn:riv:informationsecurity:auditing:log:2:SystemType	52
7.1.31	urn:riv:informationsecurity:auditing:log:2:SystemName	52
7.1.32	urn:riv:informationsecurity:auditing:log:2:UserType	52
7.1.33	urn:riv:informationsecurity:auditing:log:2:UserName	53
7.1.34	urn:riv:informationsecurity:auditing:log:2:UserTitle	53
7.1.35	urn:riv: informationsecurity:auditing:log:2:OrderId	53
7.1.36	urn:riv: informationsecurity:auditing:log:2:MultimediaType	54
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av |
| :--- | :--- | :--- | :--- |
| 0.1 | 2012-09-18 | Upprättande | Göran Kristiansson, Logica |
| 0.2 | 2012-09-21 | Uppdatering, komplettering | Björn Skeppner, Inera |
| 0.3 | 2012-10-03 | Uppdaterat datatyper, returvärde och felhantering. | Göran Kristiansson |
| 0.4 | 2012-10-03 | Uppdaterad enligt mall, beskrivande text kompletterad | Björn Skeppner |
| 0.5 | 2012-10-11 | Uppdaterat datatyper så att namnrymd är lika. / Uppdaterat enligt mall. / Har uppdaterat rimlig tillgänglighet till / 99,80% (hämtat från SAD samtycke/patientrelation) | Göran Kristiansson |
| 0.6 | 2012-10-15 | Uppdaterat så 1..* Resource ligger under en datatyp som heter Resources för en tydligare samling av resurser. | Göran Kristiansson |
| 0.7 | 2012-10-23 | Ändrat namn på datatypen vårdgivare från careGiver till careProvider så att det blir enhetligt med tjänsterna samtycke, patientrelation och spärr. / Uppdaterat beskrivningen så att kontraktet inte innefattar de läsande tjänsterna mer än i vissa allmänna delar. | Göran Kristiansson |
| 0.8 | 2012-10-24 | Uppdaterat beskrivning av logisk adressering så att det inte beskriver en viss version av RIVTA. | Göran Kristiansson |
| 0.9 | 2012-10-31 | Lagt till underdomän querying. | Göran Kristiansson |
| 0.91 | 2012-11-05 | Uppdaterat timout för tjänster, beskrivning av åtkomst av äldre åtkomstloggar än 18 månader (kapitel 1.5) mm | Göran Kristiansson |
| 0.92 | 2012-11-13 | Ändrat ActivityType och PurposeType så ett dessa inte används i tjänsterna utan tjänsterna tar dessa som en sträng. Tjänsterna blir då mer framåtkompatibla om nya typer måste läggas till. / Uppdaterat PurposeType typer så att de stämmer med Hsa som de ser ut idag. | Göran Kristiansson |
| 0.93 | 2012-12-04 | Uppdaterad efter synpunkter från Johan Eltes | Björn Skeppner |
| 1.1 | 2014-01-20 | Lagt till CareUnitId som optionellt filter för tjänsterna GetLogsForCareProvider och GetLogsForUser. | Magnus Lexhagen, CGI |
| 1.2 | 2015-01-13 - 2015-02-05 | Nya attribut i GetAccessLogsForPatient samt stöd för aggregerande tjänster. (Björn) / Uppdaterat kardinalitet på objktet AccessLog så att de stämmer enligt loggschemat. (Göran) / Justerat kring aggregering & addresering. (Björn) / Justerad efter granskningskommentarer. (Björn) / Lagt till UserId som optional i GetAccessLogsForPatients. (Göran) / Ändrat datatyper i Accesslog så att dessa stämmer med datatyperna i log. (Göran) | Björn Skeppner, Inera / Göran Kristiansson, CGI |
| 1.2.1 | 2016-09-07 | Förtydligat text avseende adressering och aggregering enligt ärende https://bitbucket.org/rivta-domains/riv.ehr.log/issues/1/kritiska-uppdateringsbehov-av-tkb | Khaled Daham, Carity AB |
| 1.2.2 | 2016-09-09 | Krav på att queuedReportId inte får användas när aggregerande tjänst anropas för GetAccessLogsForPatient. | Khaled Daham, Carity AB |
| 1.2.2 | 2016-09-12 | Förtydligat i kap 2.7 att svar med queuedReportId inte skickas vidare ifrån aggregerande tjänst. | Khaled Daham, Carity AB |
| 2.0 | 2017-03-03 | Uppdaterat till ny TKB-mall, ny datatyp för patientId, lagt till flöden och sekvensscheman, samt tagit bort några tjänstekontrakt. | David Komar, Björn Skeppner, CAG |
| 2.0_RC1 | 2017-03-14 | Uppdaterad efter intern granskning | Björn Skeppner |
| 2.0_RC2 | 2017-06-21 | Felaktig kardinalitet på resultText | Björn Skeppner |
| 2.0.1 | 2018-01-24 | Förtydligande kring aggregering | Björn Skeppner/Khaled Daham |
| 2.0.1 | 2018-04-18 | Testmaterial migrerat från riv.ehr.log | Magnus Söderlind |
| 2.0.2 | 2020-01-20 | Generella förbättringar & förtydliganden i testmaterialet. Justerat brutna länkar etc / QueueTime saknades i datatyp ReportResultType. Justerat felaktiga namn på exempel på returkoder | Magnus Söderlind & Björn Skeppner |
| 2.0.3 | 2020-02-12 | Justerat referenser | Björn Skeppner |
| 2.0.4 | 2020-06-08 | Felaktig referens tidigare till kap 1.5 som ej fanns | Björn Skeppner |
| 2.0.5 | 2021-01-09 | Uppdaterat referens till RecourceType (KV_Informationstyp) samt lagt till referens #7 samt #8 | Björn Skeppner |
| 2.0.6_RC2 | 2022-07-17 | Lagt till 2 nya kontrakt, GetLogsByOrder samt GetFilesForOrderId. Text om aggregerande tjänst är borttaget från kap 3.2 / Förtydligat referensen till ARK_0041 och information om de begränsningar som gäller för loggning inom sammanhållen journalföring | Björn Skeppner |
| 2.0.6_RC3 | 2023-01-19 | Förtydligat referensen till ARK_0041 och information om de begränsningar som gäller för loggning inom sammanhållen journalföring. / Lagt till en regel för att en producent ska verifiera att attributet LogId är unikt. (6.1.3) / Lagt till en regel att en konsument ej får skicka >500 records/anrop (6.1.3) | Björn Skeppner |
| 2.0.6 | 2023-01-29 | Uppdaterat versionsnumret inför produktionssättning | Björn Skeppner |
| 2.0.7_RC1 | 2023-12-18 | Uppdaterat beskrivning av ResultCodeType VALIDATION_ERROR | Emma Fridén |
| 2.0.7_RC2 | 2024-01-16 | Anpassningar för att följa TKB-mall | Emma Fridén |
| 2.0.7_RC3 | 2024-01-24 | Uppdaterade referens (R3) | Emma Fridén |
| 2.0.7 | 2024-02-14 | Skarp version inkluderande: Uppdaterat beskrivning av ResultCodeType VALIDATION_ERROR, Uppdaterade referens (R3) | Emma Fridén |
| 2.0.8 | 2024-10-24 | Återskapa tidigare borttagen SjD (troligtvis av misstag) | Emma Fridén |
Referenser

| RefNr | Beteckning | Dokument / Källa |
| :--- | :--- | :--- |
| #1 | RIV PDL-specifikation
Dokumentet har avpublicerats | RIV Specifikation, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| #2 | PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| #3 | HSLF-FS 2016:40 | Socialstyrelsens föreskrifter: / Journalföring och behandling av personuppgifter i hälso- och sjukvården / https://www.socialstyrelsen.se/kunskapsstod-och-regler/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/ |
| #4 | RIV TA | RIV Teknisk Anvisning Basic Profile
http://rivta.se/ |
| #5 | RIV Tekniska Anvisningar – Kryptografi | ARK_0036, http://rivta.se/documents/ARK_0036/ |
| #5 | Regel #11, Logiska fel | RIV Tekniska Anvisningar - Tjänsteschema 2.1, http://rivta.se/documents/ARK_0005/ |
| #6 | Arkitekturella beslut | AB_informationsecurity_auditing_log |
| #7 | KV Informationstyp (RecourceType) | Kodverksförvaltningen, KV Informationstyp |
| #8 | Tillämpningsanvisning PDL-loggning | http://rivta.se/documents/ARK_0041 |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
informationsecurity: auditing: log
Tjänstekontrakten är baserade på RIVTA 2.1 [R4] och reglerade genom arkitekturella beslut [R6].
Logghanteringstjänsten lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation.
Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten kan göra det möjligt för patienten/medborgaren att själv ta del av åtkomstloggar via till exempel Mina vårdkontakter eller motsvarande tjänst.

### Svenskt namn
Loggtjänst
Informationssäkerhet:Uppföljning:Åtkomstlogg

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen informationsecurity: auditing: log.

### Version 2.0.8
Skillnaden mellan 2.0 och 2.0.1 är förtydligande kring aggregering, se mer i kapitel 3.3 nedan.
Skillnaden mellam 2.0.1 och 2.0.2 är språkliga justeringar, komplettering av queueTime i datatypen ReportResultType samt åtgärdat brutna URL-länkar. Version 2.0.6 innebär 2 nya kontrakt samt smärre textjusteringar.

#### Oförändrade tjänstekontrakt
Samtliga befintliga kontrakt är oförändrade.

#### Nya tjänstekontrakt (version 2.0.6)
GetLogsByOrder samt GetFilesForOrderId

#### Förändrade tjänstekontrakt (version 2)
Inga befintliga kontrakt i denna release är oförändrad.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| Samtliga kontrakt | 1.x | 2.0 | Ej kompatibel |
| Samtliga kontrakt | 2.0 | 1.x | Ej kompatibel |
|  | 2.0 | 2.0 | OK |

#### Utgångna tjänstekontrakt (version 2)
GetLogsForCareProvider, GetLogsForUser, GetLogsForPatient -är ersatta av GetLogs
GetInfoLogsForCareProvider, GetInfoLogsForPatient -är ersatta av GetInfoLogs

### Version tidigare
Endast en version 1.x tidigare

## Tjänstedomänens arkitektur
Tjänstedomänen syftar till att standardisera informationsutbyte med loggtjänster. Med loggtjänster avses verktyg för vårdgivarna inom svensk hälso- och sjukvård för att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok [R3] ) gällande krav på uppföljning av åtkomst till patientinformation.”
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vårdsystem och loggtjänst skapas kompatibilitet mellan alla journalsystem och alla loggtjänster. Därigenom undviks huvudmannaspecifika anpassningar av vårdsystem som behöver integration med loggtjänster samt att åtkomst till åtkomstloggar sker på ett enhetligt sätt i ett standardiserat format. Tjänstedomänen standardiserar även patienttjänsters åtkomst till logginformation.
Tjänstekontrakten hanterar registrering av åtkomstloggar samt läsning av densamma.
Registrerande tjänst
Registrera loggposter i åtkomstloggen
Där en loggpost kan innehålla en eller flera logghändelser.
Läsande tjänster (querying) med följande perspektiv
Patientperspektiv
Lista för angiven patient, vilka vårdgivare, vårdenheter och vårdaktörer som har haft åtkomst till information
Vårdgivarperspektiv
Lista för angiven vårdgivare, all åtkomst som har skett av vårdgivarens medarbetare
Lista för angiven vårdgivare samt medarbetare, all åtkomst som har skett av medarbetaren
Lista för angiven vårdgivare samt patient, all åtkomst som har skett av vårdgivarens medarbetare till patientens information
Informationsägarperspektiv
Lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information
Lista för angiven patient samt vårdgivare, vilka vårdgivare som har haft åtkomst till patientens information, där vårdgivaren är informationsägare
En utgångspunkt för tjänstedomänen är Cehis uppdrag Patientdatalagen i Praktiken (PDLiP, [R1]), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av direktåtkomst inom sammanhållen journalföring.
Den nationella arkitekturen för hantering av åtkomstloggar är utformad till att:
Dels stödja vårdgivarens krav att följa upp vilken tillgång vårdgivarens personal har haft till patientinformation, dels kravet att den vårdgivare som bereder tillgång till information skall få veta vilka vårdgivare som har haft tillgång till vårdgivarens information.
Dels möjliggöra att patienten kan ta del av åtkomstloggar som rör patienten. Arkitekturen medger att vårdgivare, landsting/kommuner och regioner flexibelt kan välja var uppföljningen av åtkomstloggar kan ske. Antingen via nationella tjänster/rapporter för uppföljning eller lokala/regionala system där uppföljningen kan ske med de system som vårdgivaren lokalt har valt att använda.
Tjänstekontrakten syftar till att ge följande verksamhetsmässiga effekter
Säkerställa uppföljning av åtkomst till journaluppgifter som sker i de nationella tillämpningarna/tjänsterna
Valfrihet för vårdgivaren hur uppföljning av åtkomstloggar ska ske
Tillgängliggörande av åtkomstinformation till patienten innebär mindre administrativ belastning bland vårdgivarna genom att patienten själv bereds åtkomst till åtkomstloggar.

![img_008.png](images/img_008.png)
*Figur 1: Principer för samverkande tjänster för logghantering & logguppföljning.*
I figuren ovan visas som exempel en tjänst för sammanhållen patientöversikt (NPÖ) där en aktörs aktiviteter i NPÖ loggas till den nationella loggtjänsten. Uppföljning av åtkomstloggar kan sen ske antingen via den nationella loggrapporttillämpningen eller för de vårdgivare som har etablerade system för lokal logguppföljning i deras logguppföljningssystem. Dessa system kan via hämtningstjänsten hämta de loggar som tillhör dem.
Logguppföljning sker i respektive logguppföljningssystem.
Figuren visar även ett exempel där patienten via en tillämpning i ex. 1177 kan få se vilka vårdgivare och vilken vårdenhet som har haft tillgång till patientens information. Som källor för detta så kan dels den nationella loggtjänsten leverera information, dels även information hos åtkomstloggar i lokal logghantering hos de vårdgivare som via de nationella tjänstekontrakten kan publicera denna information. Figuren visar även ett exempel där ett journalsystem skickar sina åtkomstloggar till en lokal lagringsinstan av åtkomstloggar.
Tjänsten inom domänen hanterar loggposter som ska ge tillräckligt underlag för att beskriva vilken typ av åtkomst som har skett till vårdinformationen, inom vilket syfte, av vem och i vilket uppdrag, rörande vilken resurs.
Informationen skall kunna tjäna som underlag för att bedöma om åtkomsten till vårdinformationen har varit berättigad eller ej.

### Flöden

#### Flöde 1: Lagra åtkomstlog
Nedanstående flöde och sekvenser beskriver användningsfallet att en konsument vill lagra information om åtkomst till vårdinformation. Processen börjar med att en aktör utför en åtkomst till information. Antingen läser eller skriver/uppdaterar information.

##### Arbetsflöde

![img_003.png](images/img_003.png)

###### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En (vård)aktör som begär åtkomst till -eller skriver information i ett system. |
| Tjänstekonsument | Det system som användaren nyttjar för sin åtkomst/skrivning av information. Informationsägaren har krav på att kunna följa upp åtkomsten |
| Tjänsteproducent | System som lagrar konsumentens åtkomstloggar |

##### Sekvensdiagram
Sekvensdiagram för att åtkomstlogga en användares åtgärd i ett (vård)system. Åtkomstloggningen behöver ej ske synkront med åtkomsten utan kan ske senare, ex batchvis.

![img_002.png](images/img_002.png)

#### Flöde 2: Läsa åtkomstloggar
Nedanstående flöde och sekvenser beskriver användningsfallet att en verksamhetsansvarig har behov av att kunna följa upp vad dess medarbetare har haft för åtkomst.

##### Arbetsflöde

![img_009.png](images/img_009.png)

###### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En verksamhetsansvarig eller av den utsedd person som har uppgiften att följa upp att medarbetarnas åtkomst till informationen har varit berättigad |
| Tjänstekonsument | Det system som aktören som svarar för verksamhetens uppföljning av åtkomst, använder sig av |
| Tjänsteproducent | System som lagrar åtkomstloggar |

##### Sekvensdiagram
Sekvensdiagram för att läsa ut åtkomstloggar för ändamålet att en verksamhetsansvarig har behov av uppföljning av medarbetarnas åtkomst.

![img_006.png](images/img_006.png)

#### Flöde 3: Patientens möjlighet att ta del av sina åtkomstloggar
Nedanstående flöde och sekvenser beskriver användningsfallet att en patient har behov av att kunna följa upp vårdaktörer åtkomstloggar, t.ex för att se vilka vårdaktörer som har haft för åtkomst till patientens information.

##### Arbetsflöde

![img_005.png](images/img_005.png)

###### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En patient som vill kunna följa upp vilka vårdgivare som har tagit del av patientens information |
| Tjänstekonsument | Det system som patienten använder för att få åtkomst till vårdgivarnas åtkomstloggar. Kan t.ex vara Journalen |
| Tjänsteproducent | System som lagrar åtkomstloggar |

##### Sekvensdiagram
Sekvensdiagram som beskriver patientens åtkomst till vårdgivares åtkomstloggar för ändamålet uppföljning av vårdaktörers åtkomst.

![img_011.png](images/img_011.png)
OBS! Sekvensschemat ovan är förenklat. Om tjänsten anropas till den aggregerande tjänsten (se pkt 3.3) så anropas de lagringstjänster som finns anslutna till kontraktet.

#### Flöde 4: Vårdgivarens möjlighet att ta del av vilka vårdgivare som läst information som ägs av vårdgivaren
Nedanstående flöde och sekvenser beskriver användningsfallet att en vårdgivare har behov av att kunna följa upp vilka vårdgivare som har tagit del av vårdgivarens information. Dvs vilka vårdgivare har tagit del av den information som vårdgivaren har tillgängliggjort för sammanhållen journalföring.

##### Arbetsflöde

![img_001.png](images/img_001.png)

###### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En vårdgivare vill ta del av vilka vårdgivare som har läst information som ägs av vårdgivaren, baserat på information i åtkomstloggar |
| Tjänstekonsument | Det system som vårdgivaren som svarar för verksamhetens uppföljning av åtkomst, använder sig av |
| Tjänsteproducent | System som lagrar åtkomstloggar |

##### Sekvensdiagram
Sekvensdiagram som beskriver användningsfallet att en vårdgivare har behov av att kunna följa upp vilka vårdgivare som har tagit del av vårdgivarens information. Dvs vilka vårdgivare har tagit del av den information som vårdgivaren har tillgängliggjort för sammanhållen journalföring.

![img_010.png](images/img_010.png)

#### Vårdgivarens behov av att hämta hem sina logposter för lokal bearbetning.
Nedanstående flöde och sekvenser beskriver användningsfallet att en vårdgivare har behov av att kunna följa upp sina loggposter lokalt, genom att hämta hem sina loggposter och analysera dem lokalt.

##### Arbetsflöde

![img_007.png](images/img_007.png)

###### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En vårdgivare vill hämta hem sina loggposter för lokal analys av loggposter |
| Tjänstekonsument | Det system som vårdgivaren som svarar för verksamhetens uppföljning av åtkomst, använder sig av |
| Tjänsteproducent | System som lagrar åtkomstloggar |

##### Sekvensdiagram
Sekvensdiagram som beskriver användningsfallet att en vårdgivare har behov av att kunna hämta hem sina loggposter från Säkerhetstjänsternas loggtjänst för att sen kunna analysera loggposterna lokalt.

![img_004.png](images/img_004.png)

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| StoreLog | X |  |  |  |  |
| GetLogs |  | X |  |  |  |
| GetAccessLogsForPatient |  |  | X |  |  |
| GetInfoLogs |  |  |  | X |  |
| GetLogsByOrder |  |  |  |  | X |
| GetFilesForOrderId |  |  |  |  | X |

### Adressering

#### Logiska adresser
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används.
Logisk adressat skall anges även om loggtjänsten inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares Id (t.ex. HSA-id) skall anges som logisk adressat. HSA-id för den organisation vars tjänst adresseras (t.ex. HSA-id för Region Skåne).  Se tabellen nedan hur adressat skall anges.
Om Ineras tjänst ska anropas (den nationella lagringstjänsten) så skall anropet ske till adress: SE165565594230-1000

| Tjänst | Logisk adressat |
| :--- | :--- |
| StoreLog | HSA-id för den organisation (vårdgivare) vars logg åtkomsten avser (t ex HSA-id för Region Skåne). Alternativt Ineras nationella loggtjänst för de nationella tjänsterna. |
| GetLogs | Samma som StoreLog |
| GetAccessLogsForPatient | Vid adressering mot vårdgivare samma som StoreLog |
| GetInfoLogs | Samma som StoreLog |
| GetLogsByOrder samt GetFilesForOrderId | Samma som StoreLog |

### Aggregering och engagemangsindex
Arkitekturen i logtjänsten har idag inget stöd för aggregering enligt T-boken med hjälp av engagemangsindex.
Aggregering sker istället genom att den aggregerande tjänsten anropar alla förekommande logiska adressater (anslutna logproducenter) och returnerar all logginformation ifrån de producenter som svarar synkront – dvs alla anslutna logproducenter anropas, även om de ej har loggposter för aktuell patient.
Kunskap om vilka producenter som är anslutna kan den aggregerande tjänsten erhålla genom anrop till infrastructure:itintegration:registry och kontrakt GetLogicalAddresseesByServiceContract.
En aggregerande tjänst kan ej anropas av en konsument med queuedReportId. Om så är fallet så ska den aggregerande tjänsten returnera ett logiskt fel.
Aggregering stöds idag bara för kontraktet GetAccessLogsForPatient.
En aggregerande tjänst kan endast returnera 1 förekomst av ReportResultType.
ResultType ska sättas till OK.
startInterval & endInterval ska sättas till samma värden som vid requestet/anropet.
Den aggregerande tjänsten ska aggregera datatypen AccessLogsType från de producenter som har svarat på anropet.
Eventuella bearbetningsfel i den aggregerande tjänsten ska hanteras enligt https://inera.atlassian.net/wiki/spaces/RTA/pages/3632899/RIV+Tekniska+Anvisningar+Basic+Profile+Valfria+till+gg+2.1 ) Observera att en producent som returnerar queuedReportId kommer inte att returneras av den aggregerande tjänsten, vilket då kan innebära att det finns loginformation kring en patient som då ej returneras till anropande konsument.
Se dokumentet Arkitekturella beslut för mer information.

## Tjänstedomänens krav och regler

### Informationssäkerhet och juridik
Tjänstedomänens juridiska krav baseras bl.a på RIV PDLiP [R1], Patientdatalagen [R2] samt SOS2008:14 [R3].

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att konsument och producent ömsesidigt kan verifiera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### Stark autentisering av slutanvändare
All åtkomst ska ske genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet Socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för loggadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

#### Krav på konsumenten
Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad (se kap 4.1.2) inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten (läsande tjänster), samt att slutanvändarens aktiviteter loggas.

### Hantering av otillgänglighet
För att minska beroendet av hög tillgänglighet till loggtjänsten vid lagring av logposter så bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 15 sekund för 95% av alla anrop | Se separata tjänstekontrakt för mer info. |
| Tillgänglighet | 24x7, 99,8% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Se respektive tjänstekontrakt |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav
Kravet på en producent av åtkomstloggar är att dessa minst ska vara tillgängliga online i minst 18 månader via de läsande tjänsterna. För de fall en tjänsteproducent väljer att efter 18 månader arkivera åtkomstloggar och ej längre tillhandahålla dem via de läsande tjänsterna så skall producentens förvaltning kunna leverera åtkomstloggarna på beställning.  Dessa ska då normalt kunna levereras inom 2 veckor från det att beställningen är gjord.

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.
Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [R1-R3].

##### Logiska fel
Vid ett logiskt fel i tjänsten levereras ett resultatobjekt med olika statuskod beroende på fel tillsammans med en beskrivande text. Det tjänstekontrakt som beskrivs i detta dokument använder olika statuskoder för att underlätta felhanteringen för anropande vårdsystem. Se vidare tjänstekontrakten för vilka statuskoder som är definierade.

##### Tekniska fel
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.

#### Krav på en tjänstekonsument
Alla fel hos konsumenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiskt fel
För konsumenter så skall beskrivna felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### Konfidentialitet
All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se ref [R5].

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.

| Tjänst | Beskrivning |
| :--- | :--- |
| StoreLog | Tar emot en samling loggposter vilka sedan lagras i arkivfiler. |
| GetLogs | Tjänst som returnerar loggposter för följande sökparametrar: vårdgivare, patient, medarbetare |
| GetAccessLogsForPatient | Tjänst som returnerar lista för angiven patient, vilka vårdaktörer som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs. |
| GetInfoLogs | Tjänst som returnerar lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare utifrån angivna sökparametrar |
| GetLogsByOrder | Tjänst som tillsammans med GetFilesForOrderId möjliggör för en vårdgivare att hämta ett urval av sina loggfiler för lokal analys, se kap 3.1.5 |
| GetFilesForOrderId | Se GetLogsByOrder |

### Formatregler

#### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss.zzz”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss.zzz”. W3C-datatypen dateTime används för att realisera detta.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänstekontrakt

### StoreLog
Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter ska sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter.
Loggposter valideras enligt schema. Resultat av anropet returneras i ett Result objekt med statuskod. Vi fel sparas ej loggposter i loggtjänsten.
Viktigt: För loggning av åtkomster som ryms inom sammanhållen journalföring så skall en konsument av StoreLog följa referens #8 (ARK_0041, Tillämpningsanvisning PDL-loggning). De tekniska möjligheter som kontraktet stödjer begränsas av ARK_0041.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Log* | urn:riv:informationsecurity:auditing:log:2:LogType | En kollektion av loggposter som ska lagras i loggtjänsten. | 1..* |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:auditing:log:2:ResultType | Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATION_ERROR och ACCESSDENIED. | 1..1 |

#### Övriga regler
#1 En producent ska verifiera att attributet LogId (se datatyp informationsecurity:auditing:log:2:LogType) är unikt och om så ej är fallet, returnera anropet med VALIDATION_ERROR.
#2 För att begränsa storleken på tjänsteanropet/requestet så får en konsument ej skicka mer än 500 records/anrop då paketet kan bli för stort för mellanliggande tjänsteplattformer eller tjänsteproducent.

##### Icke funktionella krav

###### SLA-krav
Loggtjänsten har höga krav på tillgänglighet enär loggande tillämpningar kan drabbas av funktionsstörningar om loggtjänsten är otillgänglig. För att minska detta beroende bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att lagring av loggposter skett då anropet genomförts utan fel. Loggposter ska vara tillgängliga för uppföljning inom 24 timmar. |  |

#### Exempel

##### Exempel på anrop
Se StoreLogRequest.xml

##### Exempel på svar
Se StoreLogResponse.xml

### GetLogs
Tjänst som returnerar loggposter utifrån angivna sökkriterier, all åtkomst som har skett av vårdgivarens medarbetare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten ska returnera inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORT_ON_QUEUE eller REPORT_IN_PROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Observera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekommenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORT_ON_QUEUE eller REPORT_IN_PROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORT_NOT_FOUND ifall man har angett ett felaktigt id (queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAX_QUERY_RESULT_EXCEEDED. Datumintervall kan då justeras för ett mindre antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reserv-nummer som vårdgivare haft åtkomst till. | 0..1 |
| userId | urn:riv:informationsecurity:auditing:log:2:HsaId | Medarbetare som haft åtkomst. | 0..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| careUnitId | urn:riv:informationsecurity:auditing:log:2:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |  |  |  |
| logsResult | urn:riv:informationsecurity:auditing:log:2:LogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### Övriga regler
queuedReportId kan ej anropas av en aggregerande tjänst.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |  |

#### Exempel

##### Exempel på anrop
Se GetLogsRequest.xml

##### Exempel på svar
Se GetLogsResponse.xml

### GetAccessLogsForPatient
Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK .
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORT_ON_QUEUE eller REPORT_IN_PROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Observera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekommenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORT_ON_QUEUE eller REPORT_IN_PROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORT_NOT_FOUND ifall man har angett ett felaktigt id (queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAX_QUERY_RESULT_EXCEEDED. Datumintervall kan då justeras för ett mindre antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till. | 1..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |  |  |  |
| accessLogsResult | urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### Övriga regler
queuedReportId kan ej anropas av en aggregerande tjänst.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |  |

#### Exempel

##### Exempel på anrop
Se GetAccessLogsForPatientRequest.xml

##### Exempel på svar
Se GetAccessLogsForPatientResponse.xml

### GetInfoLogs
Tjänst som returnerar loggposter utifrån angivna sökkriterier, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORT_ON_QUEUE eller REPORT_IN_PROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Observera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekommenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORT_ON_QUEUE eller REPORT_IN_PROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORT_NOT_FOUND ifall man har angett ett felaktigt id (queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAX_QUERY_RESULT_EXCEEDED. Datumintervall kan då justeras för ett minska antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till. | 0..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |  |  |  |
| infoLogsResult | urn:riv:informationsecurity:auditing:log:2:InfoLogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### Övriga regler
queuedReportId kan ej anropas av en aggregerande tjänst.

##### Icke funktionella krav

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |  |

#### Exempel

##### Exempel på anrop
Se GetInfoLogsRequest.xml

##### Exempel på svar
Se GetInfoLogsResponse.xml

### GetLogsByOrder
En tjänst som returnerar ett unikt ordernummer (order-id) vilket senare kan användas för anrop av tjänsten GetFilesForOrderId för att från denna tjänst erhålla ett unikt URL, vilket man sedan kan använda för att via REST-anrop hämta hem de filer som har skapats av GetLogsByOrder, se kap 3.1.5.
Logguttaget begränsas av nedan angiva inparametrar.

#### Version
1.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på | 1..1 |
| careUnitId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdenhet som är ägare till loggposter och som urvalet av loggposter baseras på | 0..500 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer | 0..500 |
| userId | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..500 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| maxResultsPerFile | xs:int | Antal loggposter/fil (max 10000/zipfil) | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:auditing:log:2:ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. / En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. / Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| orderId | Urn:riv:informationsecurity:auditing:log:2:OrderId | Det ordernummer som ska bifogas anropet till GetFilesForOrder för att få de loggposter som urvalet angavs i anropet till tjänsten. Se kap 3.1.5 | 0..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se GetLogsByOrderRequest.xml

##### Exempel på svar
Se GetLogsByOrderResponse.xml

### GetFilesForOrderId
Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter.
Producenten ska säkerställa att anropande tjänstekonsument har rättighet till det efterfrågade order id't.
Då ordnarna som inkommer via den asynkrona tjänster läggs på kö så är det inte säkert att resultatet är färdigt ifall man frågar direkt efter att ordern har lagts. Tiden för orderna att bli klar varierar beroende på last på systemet och storleken på resultatet. Ett frågande system bör dock kunna förvänta sig ett svar inom fyra timmar.
Under tiden ordern inte är klar returnerar GetFilesForOrderId ett svar utan länkar/<multimedia>-stycke.
OBS: Resultatfilerna är garanterat tillgängliga i ett dygn. Därefter ska de rensas automatiskt bort. Filen ska bara kunna hämtas en gång då de efter hämtning ska rensas bort.
Resultatfilerna är ZIP:ade och innehåller en XML-fil med det urval som efterfrågats

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| orderId | urn:riv: informationsecurity:auditing:log:2:OrderId | Order Id för vilka filer man vill lista. | 1..1 |
| Svar |  |  |  |
| multimedia | urn:riv: informationsecurity:auditing:log:2:MultimediaType | GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer. | 0..* |

#### Övriga regler
Inga övriga regler finns.

#### Annan information om kontraktet
URL’n som erhålls i responset skall följa format på URL enligt ARK_0038. Se även AKR_0038 för  tillämpning.

##### Exempel på anrop
Se GetFilesForOrderIdRequest.xml.

##### Exempel på svar
Se GetFilesForOrderIdResponse.xml

## Datatyper
Kapitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### Datatyper från namnrymd urn:riv:informationsecurity:auditing:log:2
Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:informationsecurity:auditing:log:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### urn:riv:informationsecurity:auditing:log:2:AccessLogType
Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId | Vårdgivare som haft åtkomst. | 1 |
| careProviderName | CareProviderName | Namn på vårdgivare som haft åtkomst. | 0..1 |
| careUnitId | HsaId | Vårdenhet som haft åtkomst. | 1 |
| careUnitName | CareUnitName | Namn på vårdenhet som haft åtkomst. | 0..1 |
| accessDate | xs:DateTime | Tidpunkt för åtkomst. | 1 |
| userId | HsaId | Vårdaktörens id. | 1 |
| userName | UserName | Namn på vårdaktör. | 0..1 |
| userTitle | UserTitle | Titel på vårdaktör. | 0..1 |
| purpose | PurposeDescription | Information om syftet med aktiviten. / kan vara något av dessa värden: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |
| resourceType | ResourceTypeValue | Typ av resurs. Se ref #7 och #8 | 1 |

#### urn:riv:informationsecurity:auditing:log:2:AccessLogsType
Datatyp som håller lista med Access loggar. Kan vara en tom lista.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accessLog | AccessLogType |  | 0..* |

#### urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType
Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |  | 1 |
| accesssLogs | AccessLogsType |  | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:ActivityType
Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| activityType | ActivityTypeValue | Värde som anger vilken typ av aktivitet som utförts. / Något av dessa värden ska anges: Läsa, Skriva, Signera, Utskrift, Vidimera, Radera och Nödöppning | 1 |
| activityLevel | ActivityLevel | Information om vilken nivå som aktivitet utförts på. | 0..1 |
| activityArgs | ActivityArgs | Övrig information för aktiviteten. T.ex. parametrar för en rapport. | 0..1 |
| startDate | xs:DateTime | Information om tidpunkt som aktivitet utfördes på. | 1 |
| purpose | PurposeDescription | Information om syftet med aktiviteten. / Något av dessa värden ska anges: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |

#### urn:riv:informationsecurity:auditing:log:2:ActivityArgs
Datatyp som representerar en .
Restriktionstyp: xs:string
Maxlängd: 8192

#### urn:riv:informationsecurity:auditing:log:2:ActivityLevel
Datatyp som representerar en aktivitetsnivå.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:ActivityTypeValue
Datatyp som representerar beskrivning av en aktivitetstyp.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:Assignment
Datatyp som representerar namn på medarbetare i uppdrag.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:CareProviderType
Datatyp som representerar en vårdgivare.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId | Vårdgivarens id. | 1 |
| careProviderName | CareProviderName | Vårdgivarens namn. Värdet är ej obligatoriskt. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:CareProviderName
Datatyp som representerar namn på en vårdgivare.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:CareProvidersType
Datatyp som håller lista med vårdgivare. Kan vara en tom lista.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProvider | CareProviderType |  | 0..* |

#### urn:riv:informationsecurity:auditing:log:2:CareUnitType
Datatyp som representerar en vårdenhet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careUnitId | HsaId | Vårdenhetens id. | 1 |
| careUnitName | CareUnitName | Vårdenhetens namn. Värdet är ej obligatoriskt. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:CareUnitName
Datatyp som representerar namn på en vårdenhet.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Restriktionstyp: xs:string
Maxlängd: 32

#### urn:riv:informationsecurity:auditing:log:2:IIType
En universellt unik identifierare.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Restriktionstyp: xs:string
Maxlängd: 36

#### urn:riv:informationsecurity:auditing:log:2:InfoLogsResultType
Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |  | 1 |
| careProviders | CareProvidersType |  | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:LogType
Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logId | Id | Unik, global identifierare för loggposten. | 1 |
| system | SystemType | Information om systemet som skapar loggpost. Innehåller systemets id samt eventuellt namn. | 1 |
| activity | ActivityType | Information om aktivitet som utförts och som ska loggas. Innehåller typ av aktivitet, datum för aktiviteten och i vilket syfte som aktiviteten utfördes. | 1 |
| user | UserType | Information om användaren som utfört aktivitet. Innehåller användarens id samt till vilken vårdenhet användaren tillhör. Kan även innehålla ej obligatoriska uppgifter som namn, personnummer, uppdrag och titel. | 1 |
| resources | ResourcesType | Information om aktuella resurser. Se ref #7 och #8 | 1 |

#### urn:riv:informationsecurity:auditing:log:2:LogsType
Datatyp som håller lista med loggposter. Kan vara en tom lista

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| log | LogType |  | 0..* |

#### urn:riv:informationsecurity:auditing:log:2:LogsResultType
Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |  | 1 |
| logs | LogsType |  | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:PatientType
Datatyp som representerar en patient i en resurs.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | IIType | Patientens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. | 1 |
| patientName | PatientName | Patienten namn. Värdet är ej obligatoriskt. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:PatientName
Datatyp som representerar en patients namn.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:PurposeDescription
Datatyp som representerar beskrivning av ett syfte i Hsa.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:ReportResultType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| startInterval | xs:DateTime | Parameter som anger datum för första loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| endInterval | xs:DateTime | Parameter som anger datum för sista loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| queuedReportId | Id | Parameter som anger id på den rapport som efterfrågas och returneras om anropet avslutas innan rapporten är genererad. Ytterligare anrop kan då göras med rapport id som inparameter för att hämta rapport. Finns för att undvika hängande anrop samt köa upp jobb vid hög belastning. | 0..1 |
| queueTime | Integer | Anger förväntad tid i sekunder tills en köad rapport (identifierad med queuedReportId) kan levereras av producenten. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:ResourceType
Datatyp som representerar en resurs i loggposten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resourceType | ResourceTypeValue | Information om vilken typ av resurs som loggpost avser. Se resurstyp (informationstyp) under ref #7 och ref #8 | 1 |
| patient | PatientType | Information om vilken patient som resursen avser. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | CareProviderType | Information om vilken vårdgivare resursen tillhör. | 1 |
| careUnit | CareUnitType | Information om vilken vårdenhet resursen tillhör. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:ResourceTypeValue
Datatyp som representerar en aktivitetsnivå. Se Logganvisning på inera.se, under Säkerhetstjänster
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:ResourcesType
Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resource | ResourceType | Se mer under ref #7 och ref #8 | 1..* |

#### urn:riv:informationsecurity:auditing:log:2:ResultType
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:ResultCodeType
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | Svaret som skulle ha returnerats innehåller korrupt data enligt valideringen. Information på blockkedjan kan inte valideras. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "REPORT_ON_QUEUE" | Angiven rapport är ej klar. Rapporten ligger på kö för att genereras. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_IN_PROCESS" | Angiven rapport är ej klar. Rapporten är under uppbyggnad. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_NOT_FOUND" | Felaktig id angivet. Angiven tjänst ej kan hitta rapport med angivet id som är skapad eller rapport som ligger på kö för att skapas. |
| "MAX_QUERY_RESULT_EXCEEDED" | Max antal loggposter som tjänsten kan returnera har överstigits. Ändra sökparametrar för att begränsa rapportuttaget. |

#### urn:riv:informationsecurity:auditing:log:2:SystemType
Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| systemId | HsaId | Systemets id. | 1 |
| systemName | SystemName | Systemets namn. Värdet är ej obligatoriskt. | 0..1 |

#### urn:riv:informationsecurity:auditing:log:2:SystemName
Datatyp som representerar namn på ett system.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:UserType
Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| userId | HsaId | Användarens id. Loggpostens ägare. | 1 |
| name | UserName | Användarens fulla namn. Värdet är ej obligatoriskt. | 0..1 |
| personId | IIType | Användarens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. Värdet är ej obligatoriskt. | 0..1 |
| assignment | Assignment | Namn på medarbetare i uppdrag, exempelvis sjuksköterska på kirurgkliniken. Värdet är ej obligatoriskt. | 0..1 |
| title | UserTitle | Användarens titel. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | CareProviderType | Användarens vårdgivare när aktivitet utfördes. Den vårdgivaren är ägare av loggposten. | 1 |
| careUnit | CareUnitType | Användarens vårdenhet när aktivitet utfördes. | 1 |

#### urn:riv:informationsecurity:auditing:log:2:UserName
Datatyp som representerar namn för en användare.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:auditing:log:2:UserTitle
Datatyp som representerar titel på användare.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv: informationsecurity:auditing:log:2:OrderId
OrderId med begränsad längd
Restriktionstyp: xs:string
Maxlängd: 36

#### urn:riv: informationsecurity:auditing:log:2:MultimediaType
Datatyp som beskriver en multimediatyp.
Data kan förekomma som inbäddat element eller hänvisas via en referens URL

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | xs:String | Identitet på bilagan. Används vid referenser inom en tjänsteinteraktion. | 0..1 |
| mediaType | CodedValue | Mediatyper i MIME-format. Se ARK_0038 för mediatyper | 1 |
| value | xs:Base64Binary | Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. / Om bilagan innehåller avkodad text ska denna vara kodad enligt UTF-8-format. | 0..1 |
| reference | xs:AnyURI | Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. | 0..1 |
