Hantera ordinations- och förskrivningsrelaterat utfall av aktivitet
Utgåva 1.0.2
2022-02-16

## Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringar gjorda av | Definitiv revision faställd av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2013-05-01 | Arbetsdokument, baserat på motsvarande för Hälsorelaterat tillstånd, utfall av aktivitet. | Marcus Claus |  |
| PA2 | 2013-05-21 | Ändringar baserat på diskussioner och möten 20-21 maj med JE, FS, MC, VL, JG m.fl. | Marcus Claus |  |
| PA3 | 2013-05-22 | Slutgiltiga ändringar från möte 21maj för första versionen för anslutning Svevac, konformitet med TC, samt aggregerad tjänst. Introduktion av CodedValueType, notering om att kontraktet i legacy system där HSAid-data ej finns stringent, ändå stödjer invånar/patienttjänster. Rättat formateringsfel. Hänvisar i TK till gemensamma komponenter för bättre läsbarhet. | Marcus Claus |  |
| PA4 | 2013-05-23 | Lokal DC kan anges i EI-anrop. Städat bland gemensamma komponenter för domänen | Marcus Claus |  |
| PA5 | 2013-05-27 | Ändrat ’deleted’ till ’nullified’ enligt diskussion med JE, FS om HL7s begrepp för makulerade poster. Tydliggjort att gemensamma typer som är enkla skall anges som ’simple type’ i schemana | Marcus Claus |  |
| PA6 | 2013-05-28 | Kvalitetssäkring inför granskning av CeHis. Justeringar i olika textavsnitt, samt kommentar om att engelsk text behöver översättas. | Johan Eltes |  |
| PA7 | 2013-05-28 | Engelska texterna översatta till svenska. Justerat stavfel och fel rubriknivå i avsnittet Informationssäkerhet. Lagt till DIM/V-MIM modell. | Marcus Claus |  |
| PA8 | 2013-06-27 | Ändring av beskrivningen för inparametern TimePeriod och DocumentTime i PatientSummaryHeader samt AuthorTime i AuthorType | Göran Oettinger |  |
| PA9 | 2013-09-03 | Förtydligat innebörden av author. | Björn Genfors |  |
| PA10 | 2013-09-06 | Tog bort fältet patientPostalCode.
Ändrade merparten av obligatoriska fält till frivilliga för att stödja att vaccinationsinformation kan komma från annan källa t.ex. utlandet / Beskrivning av documentTitle borttagen | Göran Oettinger |  |
| PA11 | 2013-09-12 | Återinförde patientPostalCode men nu med ny beskrivning | Göran Oettinger |  |
| PA12 | 2013-09-19 | Infört de nya domän-överskridande gemensamma datatyperna enl TK-utv.gruppens beslut 19/9-13. / Mappat mot rapportkraven och xml-schemats variabler för nationella vaccinationsregistret (SMI; NVR) och adderat några fält. Ändringarna är markerade med gult i avsnitt 6.1. | Marcus Claus |  |
| PA13 | 2013-09-23 | Bytte vaccActorType till VaccActorType | Göran Oettinger |  |
| PA14 | 2013-09-24 | Normerat gemensamma typer (tagit bort VaccActorType till förmån för ActorType, och redigerat ActorType enligt beslutade gemensamma komponenter). / Följdändrade hänvisningar i vaccinationskontraktet. | Björn Genfors |  |
| PA15 | 2013-09-23 | Redaktionell ändring, en hänvisning till AuthorType ändrades till hänvisning till HealthcareProfessionalType | Björn Genfors |  |
| PA16 | 2013-09-30 | - Fällt ut strukturen för header. / - Justerat positionen på de fält som adderades i PA12 (de ligger i body) / - Ändrat namngivining och justerat beskrivning för dessa fält. | Björn Genfors |  |
| PA17 | 2013-10-03 | Justerat anvädning av versal/camelcase i fält med ”healthcare” i namnet. / Ändrat ”nullified” till 1..1 i GetVaccinationHistory. | Johan Eltes |  |
| PA18 | 2013-10-17 | Lagt till Sourcesystem i Engagemangsindex / Justerat beskrivningen av adress i OrtUnitType. / Korrigerat beskrivningen av documentId i PatientSummaryHeader. | Björn Genfors |  |
| PA19 | 2013-10-21 | Förtydligat kravet på filtrering av svar enligt logicalAddress (lagt till avsnitt 5.4). / Markerat i flödesmodeller att anslutningskatalog inte är del av dagens arkitektur. / Bytt namn på fältet vaccinationUniqueReference från tidigare vaccineUniqueReference / Förtydligat användningen av IIType för fältet vaccinationUniqueReference | Johan Eltes |  |
| PA20 | 2013-11-04 | Ersatt termen PDL-enhet med vårdenhet (i löpande text) / Uppdaterat avsnittet om informationssäkerhet efter CeHis-granskning | Johan Eltes |  |
| PA21 | 2013-11-20 | Förtydligat beskrivningen för fält som är enhets-id för organisationer respektive personal-id för vård- och omsorgspersonal så att NPÖ:s riv-spec v2.2.0 skrivelse i avsnitt 4.1.6 (för Enhet) respektive 4.1.39 (för Personal) följs: Enhets-id respektive personal-id har värdemängd HSAid men även beslutsregeln ”I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr+lokalt id anges.” | Marcus Claus |  |
| A | 2013-11-25 | Revision A inför release | Johan Eltes |  |
| 1.0.1 | 2015-12-07 | Uppdaterat svarstider från 15s till 30s | Khaled Daham |  |
| 1.0.2 | 2022-02-16 | Uppdaterat version | Tobias Blomberg |  |

## Innehållsförteckning
1	Revisionshistorik	2
2	Innehållsförteckning	4
3	Inledning	5
3.1	Användningsområden	5
3.2	Övrigt	5
3.3	Arbetsgrupp	6
4	Tjänstedomänens arkitektur	7
4.1	Övergripande	7
4.2	Nationell användning	9
4.3	Regional användning	10
4.4	Adresseringsmodell	10
4.5	Aggregerande tjänster	14
4.6	Informationssäkerhet	14
4.7	Tjänstekontraktens design	15
5	Generella regler	15
5.1	Uppdatering av engagemangsindex	15
5.2	SLA-krav	18
5.3	Gemensamma konsumentregler	19
5.4	Gemensamma producentregler	19
5.5	Format för Datum	19
5.6	Format för tidpunkter	19
5.7	Tidszon för tidpunkter	19
5.8	Felhantering	19
6	Gemensamma informationskomponenter	20
6.1	Gemensamma med andra domäner	20
6.2	Gemensamma inom denna domän	25
7	GetVaccinationHistory	27
7.1	Frivillighet	27
7.2	Version	27
7.3	SLA-krav	27
7.4	Särskilda förutsättningar beroende på typ av konsument med hänsyn till historisk information (i äldre system)	27
7.5	V-MIM	27
7.6	Fältregler	29

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
riv:clinicalprocess:activityprescription:actoutcome
Den svenska benämningen är
”Hantera ordinations- och förskrivningsrelaterat utfall av aktivitet”.
Användningsområden
Tjänstedomänen syftar till att tillmötesgå behovet av systemoberoende åtkomst till information om utfallet av ordinations- och förskrivningsrelaterade aktiviteter för såväl vårdgivar- som invånartjänster.
”Min journal”, ”Mitt vårdflöde”, Nationell patientöversikt och tjänster för elektroniskt utlämnande till patientens egna tjänster (via API-Gateway) som exempelvis personligt konto för hälsoinformation är exempel på nationella tjänster med behov av åtkomst till sådan information.
Tjänstekontrakten i denna domän ska tillmötesgå de nationella behoven men också fylla behovet för tjänster regionalt och lokalt.
För att vara tillämpbara för både invånar- och vårdgivartjänster behöver tjänstekontrakten förmedla den information som behövs för att båda typerna av e-tjänster (tjänstekonsumenter) ska ha det underlag som behövs för att säkerställa behörig åtkomst för sina respektive användargrupper.
Det är dock en grundläggande princip att tjänsteproducenterna inte ska anpassa svaret efter frågeställaren, utan istället tillhandahålla fullständig information som tjänstekonsumenten kan anpassa och behörighetsstyra för sin målgrupp.
Övrigt
Tjänstedomänen syftar i första hand till realisering av aggregerande tjänster (enl. T-bok REV B). Tjänstekontrakten är därför uppbyggda för s.k. system-adressering.
Detta dokument kompletterar reglerna i de tekniska kontrakten (XML-scheman, WSDL-filer). Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.
Där inte annat anges, baseras tjänstedomänens kontrakt på RIV – Informationsspecifikation Nationell Patientöversikt version 2.2.0.
Arbetsgrupp
I arbetet har följande personer deltagit:
Projektgrupp:
Johan Eltes, Eltes Consulting
Marcus Claus, Mawell
Fredrik Ström, Mawell
Viktor Jernelöv, Cambio
Göran Oettinger, Mawell
Björn Genfors, Mawell
Referensgrupp Vaccination:
Helena Palm, Cehis
Roger Lundberg, Siemens
Qemajl Imeri, SLL
Jane Gustafsson, CGM/Takecare
Katarina Skärlund, SMI
Projektledning:
Johan Eltes, Eltes Consulting
Beställare:
Nina Lundberg, SLL HSF

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Övergripande
Tjänsterna erbjuder sökning av information i vård- och omsorgsgivarnas system för patientadministration och vårddokumentation.
Utgångspunkten är i första hand patientens och professionens behov av direktåtkomst till en patients vård- och omsorgshistorik sett ur ett nationellt eller ett regionalt perspektiv.
I båda fallen är syftet att historisk information sammanställs från de källsystem där det finns historik, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det systemet, istället för den aggregerande tjänsten.
Tjänstedomänen förutsätter en aggregeringsplattform motsvarande den som beskrivs i T-boken, REV B. Tjänstedomänen förutsätter också användning av engagemangsindex på nationell nivå. Behovet av ett regionalt engagemangsindex beror dels av om regionen avser tillämpa tjänstekontrakten för regionala tjänstekonsumenter och av antalet informationskällor som ska tillgängliggöras för regionala behov.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna. Den första figuren visar direktåtkomst inom sammanhållen journalföring och den andra figuren visar användning inom patientens direktåtkomst.

![img_007.png](images/img_007.png)
Figur: Direktåtkomst inom sammanhållen journalföring

![img_004.png](images/img_004.png)
Figur: Patientens direktåtkomst
Nationell användning
Vid nationell användning av tjänstekontrakten (d.v.s. tjänstekonsumenter som begär information från alla tjänsteproducenter i Sverige) sker aggregering av informationen genom aggregerande tjänster i den gemensamma tjänsteplattformen. Regioner och Landsting tillhandahåller då källsystemens (KS) information genom anslutningspunkter (AP) i enlighet med tjänstekontrakten. Det kan t.ex. ske enligt olika modeller:
A: Direktanslutning av källsystem: Källsystemet är anslutningspunkten till gemensamma tjänsteplattformen
B: Källsystem ansluts via regional tjänsteplattform: Regionens tjänstplattform är anslutningspunkt till gemensamma tjänsteplattformen
C: Mellanlager ansluts direkt eller via regional tjänsteplattform: Ett mellanlager avskärmar källsystemen från den last som uppstår vid från nationella medarbetar- och invånartjänster
Modellerna illustreras nedan (från höger till vänster):

![img_003.png](images/img_003.png)
Figur: Olika modeller för anslutning av källsystem.
Anslutningsmodellerna förutsätter att:
vårdsystemen uppdaterar nationellt engagemangsindex – direkt eller indirekt via regionalt index. Källsystemets HSA-id anges i engagemangsposten jämte övrig info enligt beskrivning i särskilt avsnitt under regelverk
en ev. regional tjänsteplattform kan dirigera anrop till rätt tjänsteproducent baserat på källsystemets HSA-id (på samma sätt som nationellt)
tjänsteproducenten validerar att aktuell tjänstekonsument (HSA-id i http-header) är godkänd av verksamheten (informationsägande vårdenhet)
Regional användning
Regional användning innebär att tjänstekonsumenten är regional (R-K) och begär information från alla producenter i regionen, avseende ett visst tjänstekontrakt inom tjänstedomänen. Det innebär att regionen behöver utföra regional aggregering i den regionala tjänsteplattformen. Anslutningen av regional tjänsteplattform till nationell påverkas inte av att regionen inför en regional aggregerande tjänst:

![img_001.png](images/img_001.png)
Adresseringsmodell
Tjänstedomänen tillämpar system-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Källsystemet adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSAid finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direkt adressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Följande figur illustrerar adressering av aggregerande tjänst genom ett exempel. Det är alltid källsystemets HSA-id som är logisk adress när en aggregerande tjänst anropar en anslutningspunkt (ap), även om det inte är just källsystemet som är anslutningspunkt eller ens tjänsteproducent (i fallet av ett mellanlager).
Adressering vid nationell användning

![img_008.png](images/img_008.png)
Figur: Adressering vid anrop till nationell aggregerande tjänst (t.ex. från Mina vårdkontakter eller NPÖ-tillämpningen)
Adressering vid regional användning

![img_005.png](images/img_005.png)
Figur: Adressering vid anrop till regional aggregerande tjänst (t.ex. från ett vårddokumentationssystem, beslutsstödsystem eller en regional patientöversikt)
Adressering direkt till ett källsystem
Tjänstekontrakten i denna domän möjliggör sökning av information relaterad till en patient.
Eftersom vårdkontaktid finns som sökparameter till tjänstekontrakten i denna domän, kan man filtrera sökningen. Vårdkontakt-id är bara unikt inom ett källsystem. Man behöver därför avgränsa en sådan fråga till ett specifikt källsystem. Det görs helt enkelt genom att ange källsystemets HSA-id som sökparameter, tillsammans med vårdkontakt-id. I detta fall används källsystemets HSA-id som logisk adress. Källsystemets HSA-id och vårdkontakt-id ingår i svarsmängden för alla tjänstekontrakt i denna domän.

![img_002.png](images/img_002.png)
Figur: Flöde som förutsätter adressering med källsystemets HSAid
Eftersom anropet i detta fall sker direkt mot virtuell tjänst, sker adressering med källsystemets HSA-id direkt från tjänstekonsumenten. Detta beskrivs i figuren nedan.

![img_009.png](images/img_009.png)
Figur: Adressering vid sökning efter information ur ett specifikt källsystem
Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| För alla huvudmän | Ineras HSA-id |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |
Aggregerande tjänster
Det behövs en aggregerande tjänst för varje tjänstekontrakt i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigera vidare direkt till källsystemet utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex, vidarebefordrar frågan till de källsystem som har information om patienten.
Informationssäkerhet
Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från datainspektionen om ytterligare teknisk åtkomstkontroll.
Patientdatalagen ställer också krav (via dess tolkning ”PDL-i-praktiken”) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet). Det kompletta regelverket finns i senaste utredningen PDLiP samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).
Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa av tjänstekontrakten, såsom Vård- och omsorgskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.
Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.
Tjänstekontraktens design
Tjänsterna, som beskrivs nedan, returnerar 0, 1 eller flera instanser av tjänstespecifik patientbunden information i form av dokument enligt HL7 Green CDA-standarden.
Varje dokument består av en inledning (Header) – PatientSummaryHeader - som är gemensam för alla tjänster i domänen, samt en Body som är specifik för varje tjänstekontrakt, där ett dokument omfattar en instans av information som ska överföras, exempelvis patientens vaccinationshistorik.
Ett dokument motsvarar den information som täcks av en signatur (oavsett om signaturen ännu gjorts).
Tjänsterna har en gemensam basuppsättning sökparametrar som i vissa fall utökats specifikt per tjänst.
Tjänstekontrakten i sig stödjer inte HL7 CDA, men de distribueras tillsammans med XSLT-transformationsfiler som leverantörer av CDA-kompatibla system kan använda för att transformera svarsmeddelandet till HL7 CDA, eller omvänt - för att skapa ett svarsmeddelande från ett HL7 CDA-meddelande.

## Generella regler
Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet
urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”)
eller genom att erbjuda tjänstekontraktet
urn:riv:itintegration:engagementindex:GetUpdatesResponder:1 (”index-pull”)
Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskriv-ning | Format | Kardinalitet | Kodverk/värde-mängd 
/ ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | ”riv:clinicalprocess:activityprescription:actoutcome” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Tjänstekontrakt genom vilket den information som indexposten avser kan hämtas. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna  indexpost | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då index-posten regi-strerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Source system | Käll-systemet som genererade engage-mangs-posten via Update-tjänsten | Systemets HSA-id.  För system-adresserade tjänstedomäner motsvarar detta LogicalAddress vid anrop till tjänster i tjänstedomänen i fråga. Detta är inte anslutningspunktens HSA-id utan systemet som operativt hanterar informationen i verksamheten. | 1..1 | Systemadressering tillämpas. Detta värde används som LogicalAddress vid tjänsteanrop. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |
Regler för tilldelning av värde i fältet Categorization i engagemangsposten för tjänstekontrakt i denna domän.
Kortnamnet skapas enligt konventionen första bokstaven i domännamnets komponenter ”-” första bokstaven i tjänstekontraktets namnkomponenter:

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetVaccinationHistory | caa-gvh |
SLA-krav
Följande SLA-krav gäller för producenter av tjänstekontrakten i denna domän

| Kategori | Krav |
| :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 30 sekunder. |
| Tillgänglighet | 24x7, 99,5% |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |
| Robusthet | Om komplett tidsintervall inte angivits i frågan kan tjänsteproducenten kan välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |
Gemensamma konsumentregler
R1: Filtrera enligt flagga ”approvedForPatient”
R2: Tillämpa regelverk enl. PDL (se bl.a Informationssäkerhet)
Gemensamma producentregler
R3: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet få endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.
Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.
Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.
Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten.
Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om.
Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).
Felhantering
Allmänt om tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).
Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Tekniska fel får inte förmedla känsliga personuppgifter.
Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

## Gemensamma informationskomponenter
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän, och dessa beskrivs i detta avsnitt.
Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSAid-information så är HSAid-attribut i beskrivningarna nedan valfria. Se även avsnittet ”Informationssäkerhet” ovan.
Gemensamma med andra domäner
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän, och dessa beskrivs i detta avsnitt.
Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSAid-information så är HSAid-attribut i beskrivningarna nedan valfria. Se även avsnittet ”Informationssäkerhet” ovan.
ActorType
Information om medarbetare i vård- och omsorg som genomfört den behandling som rapporteras genom tjänstekontrakt i denna domän.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaId | HSAIdType | HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| name | string | Namn på personen. Minst ett av dessa två fält ska anges. | 0..1 |
| personEmail | string | Epostadress till personen | 0..1 |
| personTelecom | string | Telefon till personen | 0..1 |
| personAddress | string | Adress till personen | 0..1 |
CVType
Typ som beskriver kodade värden med en struktur hämtad från HL7 v3 CV (”CodedValue”). För implementering av attribut av slaget ”KTOV” i RIV. Kodade värden avser officiellt hanterade kodverk som hänvisas till med CodeSystem OID/UUID.
För annan användning av koder, exempelvis för lokala kodverk utan OID, skall originalText attributet användas för att ge kodens text i det lokala systemet, och övriga attribut lämnas tomma.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod enligt producentsystemets kodverk. / Om code anges skall också codeSystem  samt displayName anges. | 0..1 |
| codeSystem | string | Anger kodverket som definierar koden. Dvs UID/OID för det kodverk som används. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. Skall anges när så är möjligt. | 0..1 |
| codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. / Om separat displayName inte finns i producerande system skall det ange samma värde som för code. | 0..1 |
| originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. / Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
DatePeriodType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType | Periodens startdatum. Minst ett av start och end skall anges. | 0..1 |
| end | DateType | Periodens slutdatum. Minst ett av start och end skall anges. | 0..1 |
DateType
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| date | string | Datum uttrycks med formatet ”ÅÅÅÅMMDD” | 1..1 |
HealthCareProfessionalType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| authorTime | TimeStampType | Den tidpunkt då dokumentet skapades. | 1..1 |
| healthcareProfessionalHSAId | HSAIdType | HSA-id för vård- och omsorgspersonal. Skall anges om tillgänglig. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| healthcareProfessionalName | string | Namn på vård- och omsorgspersonal. Om tillgängligt skall detta anges. | 0..1 |
| healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4) användas. | 0..1 |
| healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven vård- och omsorgsperson är uppdragstagare på. Om tillgängligt skall detta anges. | 0..1 |
| healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet som vård- och omsorgspersonen är uppdragstagare för. Skall anges om tillgänglig. | 0..1 |
| healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för Vårdgivaren, som är vårdgivare för den enhet som vård- och omsorgspersonen är uppdragstagare för. Skall anges om tillgänglig. | 0..1 |
HSAIdType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaId | string | HSA-id enligt definition från Inera AB | 1..1 |
IIType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren. | 1..1 |
| extension | string | En textsträng som tillsammans med root bildar en unik identifierare. | 0..1 |
LegalAuthenticatorType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| legalAuthenticatorName | string | Namnen i klartext för signerande person | 0..1 |
MultimediaType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string | Identitet på multimediaobjekt som används vid referenser inom multimediadokument. | 0..1 |
| mediaType | MediaTypeEnum | Mediatyper enligt HL7 | 1..1 |
| value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. | 0..1 |
OrgUnitType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| orgUnitName | string | Namn på organisationsenhet. Om tillgängligt skall detta anges. | 0..1 |
| orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering | 0..1 |
PatientSummaryHeaderType
Innehåller basinformation om ett dokument.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| documentId | string | Dokumentets identitet som är unik inom källsystemet. | 1..1 |
| sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| documentTime | TimeStampType | Händelsetidpunkt, om relevant. | 0..1 |
| patientId | PersonIdType | Id för patienten. Anges med 12 siffror utan avskiljare.
id sätts till patientens identifierare.
Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| accountableHealthCareProfessional | HealthCareProfessionalType | Ansvarig hälso- och sjukvårdsperson. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| careContactId | string | Identitet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| nullifiedReason | string | Anger orsak till makulering. | 0..1 |
PersonIdType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| type | string | OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
PQType
Typ som baseras på datatypen PQ enligt HL7, och som beskriver överföring av uppmätta värden (”Physical Quantity”). Tillåtna värden för ”unit” bestäms av http://unitsofmeasure.org/ucum.html. Dimension ska preciseras av fältregel vid tillämpning (ex. ”Massa”). Typen är till för presentation av givna mätvärden. Vaksamhet skall iakttagas vid konvertering mellan enheter.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| value | double | Mätetal mätt i enheten som anges av ”unit” | 1..1 |
| unit | string | Enhet enligt standard http://unitsofmeasure.org/ucum.html | 1..1 |
TimePeriodType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeStampType | Periodens starttid. Minst ett av start och end skall anges. | 0..1 |
| end | TimeStampType | Periodens sluttid. Minst ett av start och end skall anges. | 0..1 |
TimeStampType
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| timestamp | string | Tid uttrycks med formatet ”ÅÅÅÅMMDDttmmss” | 1..1 |
Gemensamma inom denna domän
DosageType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| quantity | PQType | Mängd preparat som givits dvs 1 ml etc. / Skall anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text | 0..1 |
| displayName | string | Fritextbeskrivning av preparat och mängd som givits. T ex ”Twinrix 1 ml, 1 av 3”, ”2 ml” odyl. / Anges även om quantity angivits ovan | 1..1 |

## GetVaccinationHistory
Tjänsten returnerar strukturerad eller ostrukturerad information om patientens vaccinationer.
Frivillighet
Tjänstekontraktet är frivilligt
Version
1.0
SLA-krav
Inga specifika. Se generella SLA-krav.
Särskilda förutsättningar beroende på typ av konsument med hänsyn till historisk information (i äldre system)
Relaterat till notering ovan i avsnittet ”Informationssäkerhet”är att vid konsumtion av tjänstekontraktet från en patient/invånartjänst så kan fält som är valfria i kontraktet utelämnas i svaret i de fall som information saknas i producerande system.
Observera att utelämnat HSA-id för Vårdgivare eller Vårdenhet begränsar verksamhetens möjlighet att tillgängliggöra information för egna och andras medarbetare genom olika etjänster riktade till professionen.
MIM
Informationsinnehåll och -struktur baseras på en genomgång och analys av ett antal vaccinationsjournalsystem (SMI:s Svevac, TakeCare’s vaccinationsmodul med avstämning även med vissa andra) samt informationskraven som ställs av nationella vaccinationsregistret (sedan 1 januari 2013).
Det förekommer stora skillnader i hur pass strukturerat vaccinationshistorik beskrivs i olika journalsystem, varför nedan kontakt har ett antal attribut som ger viss frihet i hur vaccinationshistorik ges. Observera därför att som regel skall alltid så strukturerad information som möjligt ges av producerande system, och i förekommande fall den ostrukturerade informationen endast ges som kompletterande information.
Vidare ställer lagen om rapportering av nationella vaccinationsprogram vissa informationskrav, som vi valt att inkludera i nedan tjänstekontrakt i syfte att möjliggöra användning av detta tjänstekontrakt för att samla information för rapportering till SMI enligt lagkrav.
Modellen beskriver den logiska strukturen för ett svarsmeddelande.

![img_006.emf](images/img_006.emf)
Fältregler

| Namn | Typ | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på Vårdenhet vilket motsvarar careUnitHSAid i HealthCareProfessionalType. Journalposter som saknar märkning med vårdenhet ingår inte i svaret om detta fält använts i anropet. | 0..* |
| patientId | PersonIdType | Id för patienten. 
value sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.
Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| timePeriod | DatePeriodType | Begränsning av sökningen i tid. Begränsningen sker genom att resultatet innehåller de poster som i något av de tidsfält som ingår i vaccinationMedicalRecordHeader eller vaccinationMedicalRecordBody.registrationrecord.date anger en tidpunkt som ligger inom det sökta tidsintervallet (start- och slutpunkt inkluderas i intervallet). | 0..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapade i angivet system. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. | 0..1 |
| careContactId | string | Begränsar sökningen till den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| vaccinationMedicalRecord | VaccinationMedicalRecordType | En strukturerad vaccinationsjournal. | 0..* |
| ../vaccinationMedicalRecordHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet. | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller. | 0..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthCareProfessional | HealthCareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Hälso- och sjukvårdspersonens HSA-id. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonen. Om tillgängligt skall detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4), se / http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges skall också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges skall också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system skall samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges skall inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för. | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 1..1 |
| ../../nullifiedReason | string | Anger orsak till makulering. Får endast anges i kombination med att nullified = true | 0..1 |
| ../vaccinationMedicalRecordBody | VaccinationMedicalRecordBodyType | Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället. | 1..1 |
| ../../registrationRecord | RegistrationRecordType | Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället | 1..1 |
| ../../../date | DateType | Datum då nedan vaccination(er) gavs | 1..1 |
| ../../../patientPostalCode | string | Postnummer för patientens senast kända bostadsadress | 0..1 |
| ../../../vaccinationUnstructuredNote | string | Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här. / Kan formateras enligt HL7NarrativeBlock. / Not: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras. | 0..1 |
| ../../../riskCategory | CVType | Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration | 0..* |
| ../../../patientAdverseEffect | CVType | Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle) | 0..* |
| ../../../careGiverOrg | OrgUnitType | Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn,epost,tel,adress etc | 1..1 |
| ../../../careGiverContact | ActorType | Kontaktperson hos juridiskt ansvarig vårdgivare | 0..1 |
| ../../../sourceSystemName | String | Klartextnamn på källsystemet | 1..1 |
| ../../../sourceSystemProductName | String | Klartextnamn på källsystemets produktnamn | 0..1 |
| ../../../sourceSystemProductVersion | String | Klartextnamn på källsystemets produktversion | 0..1 |
| ../../../sourceSystemContact | ActorType | Kontaktuppgifter till källsystemsansvarig | 1..1 |
| ../../../careUnitSmiId | String | Utförande vårdenhetens registreringsId hos SMI | 0..1 |
| ../../administrationRecord | AdministrationRecordType | Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas. | 0..* |
| ../../../vaccinationProgramName | CVType | Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av DisplayName i CVType. | 0..1 |
| ../../../prescriberOrg | OrgUnitType | Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits) | 0..1 |
| ../../../prescriberPerson | ActorType | Information om vem som ordinerat/förskrivit vaccinationen | 0..1 |
| ../../../performerOrg | OrgUnitType | Information om vårdenhet som utfört vaccinationen | 0..1 |
| ../../../performer | ActorType | Information om vem som utfört (administrerat) vaccineringen | 0..1 |
| ../../../anatomicalSite | CVType | Information om var på kroppen vaccinet givits. | 0..1 |
| ../../../route | CVType | Information om hur vaccinet givits. Ibland kallat ”administrationsväg” | 0..1 |
| ../../../dosage | DosageType | Mängd vaccin som givits | 0..1 |
| ../../../isDoseComplete | boolean | True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer skall ges innan full dos är uppnådd) | 0..1 |
| ../../../doseOrdinalNumber | integer | Anger i förekommande fall om vaccineringen är en del av flera vaccinationer som skall utföras, värden 1,2,3… 1 om endast en | 0..1 |
| ../../../numberOfPrescribedDoses | integer | Anger antalet delvaccinationer som skall utföras för att vaccinationen skall räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos | 0..1 |
| ../../../sourceDescription | string | Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl. | 0..1 |
| ../../../commentPrescription | string | Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen | 0..1 |
| ../../../commentAdministration | string | Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den | 0..1 |
| ../../../patientAdverseEffect | CVType | Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen | 0..* |
| ../../../vaccineType | CVType | Information om givet vaccin | 0..1 |
| ../../../vaccineName | CVType | Information om givet vaccins produktnamn. I Code skall då anges exempelvis NPL-id om det finns och kodverk ”npl”. Om standardkodverk ej används, ej anges lokal kod, se CVType ovan. Namnet i klartext ges i DisplayName. | 0..1 |
| ../../../vaccineBatchId | string | Identifiering av batchnummer för vaccinets tillverkning | 0..1 |
| ../../../vaccineManufacturer | string | Namn på tillverkaren av vaccinet | 0..1 |
| ../../../vaccineTargetDisease | CVType | Information om den/de sjukdomar vaccinet skyddar emot | 0..* |
| ../../../vaccinationUniqueReference | IIType | Unika referensen till källsystemets vaccinationsinformation | 0..1 |
| ../../../../root | string | Om identiteten i källsystemet är globalt unik kan den anges här (t.ex. om den är en UUID). Annars anges källsystemets HSA-id här och källsystemets lokala ID för vaccinationen anges i ”extention”. | 1..1 |
| ../../../../extension | string | Används vid behov. Se beskrivning för ”root” | 0..1 |
