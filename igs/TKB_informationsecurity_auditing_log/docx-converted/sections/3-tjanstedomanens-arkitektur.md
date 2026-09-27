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

