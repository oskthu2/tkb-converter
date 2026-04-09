Log
Loggning och uppföljning av åtkomst till patientjournal
Tjänstekontraktsbeskrivning
Utgåva 1.2.3
2016-06-21
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
| :--- | :--- | :--- | :--- | :--- |
| 0.1 | 2012-09-18 | Upprättande | Göran Kristiansson, Logica |  |
| 0.2 | 2012-09-21 | Uppdatering, komplettering | Björn Skeppner, Inera |  |
| 0.3 | 2012-10-03 | Uppdaterat datatyper, returvärde och felhantering. | Göran Kristiansson |  |
| 0.4 | 2012-10-03 | Uppdaterad enligt mall, beskrivande text kompletterad | Björn Skeppner |  |
| 0.5 | 2012-10-11 | Uppdaterat datatyper så att namnrymd är lika. / Uppdaterat enligt mall. / Har uppdaterat rimlig tillgänglighet till / 99,80% (hämtat från SAD samtycke/patientrelation) | Göran Kristiansson |  |
| 0.6 | 2012-10-15 | Uppdaterat så 1..* Resource ligger under en datatyp som heter Resources för en tydligare samling av resurser. | Göran Kristiansson |  |
| 0.7 | 2012-10-23 | Ändrat namn på datatypen vårdgivare från careGiver till careProvider så att det blir enhetligt med tjänsterna samtycke, patientrelation och spärr. / Uppdaterat beskrivningen så att kontraktet inte innefattar de läsande tjänsterna mer än i vissa allmänna delar. | Göran Kristiansson |  |
| 0.8 | 2012-10-24 | Uppdaterat beskrivning av logisk adressering så att det inte beskriver en viss version av RIVTA. | Göran Kristiansson |  |
| 0.9 | 2012-10-31 | Lagt till underdomän querying. | Göran Kristiansson |  |
| 0.91 | 2012-11-05 | Uppdaterat timout för tjänster, beskrivning av åtkomst av äldre åtkomstloggar än 18 månader (kapitel 1.5) mm | Göran Kristiansson |  |
| 0.92 | 2012-11-13 | Ändrat ActivityType och PurposeType så ett dessa inte används i tjänsterna utan tjänsterna tar dessa som en sträng. Tjänsterna blir då mer framåtkompatibla om nya typer måste läggas till. / Uppdaterat PurposeType typer så att de stämmer med Hsa som de ser ut idag. | Göran Kristiansson |  |
| 0.93 | 2012-12-04 | Uppdaterad efter synpunkter från Johan Eltes | Björn Skeppner |  |
| 1.1 | 2014-01-20 | Lagt till CareUnitId som optionellt filter för tjänsterna GetLogsForCareProvider och GetLogsForUser. | Magnus Lexhagen, CGI |  |
| 1.2 | 2015-01-13 – 2015-02-05 | Nya attribut i GetAccessLogsForPatient samt stöd för aggregerande tjänster. (Björn) / Uppdaterat kardinalitet på objktet AccessLog så att de stämmer enligt loggschemat. (Göran) / Justerat kring aggregering & addresering. (Björn) / Justerad efter granskningskommentarer. (Björn) / Lagt till UserId som optional i GetAccessLogsForPatients. (Göran) / Ändrat datatyper i Accesslog så att dessa stämmer med datatyperna i log. (Göran) | Björn Skeppner, Inera / Göran Kristiansson, CGI |  |
| 1.2.1 | 2016-09-07 | Förtydligat text avseende adressering och aggregering enligt ärende https://bitbucket.org/rivta-domains/riv.ehr.log/issues/1/kritiska-uppdateringsbehov-av-tkb | Khaled Daham, Carity AB |  |
| 1.2.2 | 2016-09-09 | Krav på att queuedReportId inte får användas när aggregerande tjänst anropas för GetAccessLogsForPatient. | Khaled Daham, Carity AB |  |
| 1.2.2 | 2016-09-12 | Förtydligat i kap 2.7 att svar med queuedReportId inte skickas vidare ifrån aggregerande tjänst. | Khaled Daham, Carity AB |  |
| 1.2.3 | 2016-09-16 | Rättat fältnamn. | Khaled Daham, Carity AB |  |
| 1.2.3 | 2017-06-21 | Testsviter och självdeklaration tillagt i domänen | Magnus Söderlind, NordicMedtest |  |
Innehållsförteckning
1	Inledning	1
2	Generella regler	1
3	StoreLog	1
4	GetLogsForCareProvider	1
5	GetLogsForUser	1
6	GetLogsForPatient	1
7	GetAccessLogsForPatient	1
8	GetInfoLogsForCareProvider	1
9	GetInfoLogsForPatient	1
10	Datatyper	1

## Inledning

### Svenskt namn
infrastruktur:säkerhetstjänster:logghantering
logghantering

### WEB beskrivning
Logghantering lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation.
Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten kan gör det möjligt för patienten/medborgaren att själv ta del av åtkomstloggar via till exempel Mina vårdkontakter eller motsvarande tjänst.

### Om dokumentet
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen urn:riv:ehr:log (huvuddomän Electronic Health Record underdomän Log). Den svenska benämningen är Loggtjänst.
Tjänstedomänen syftar till att standardisera informationsutbyte med loggtjänster. Med loggtjänster avses verktyg för vårdgivarna inom svensk hälso- och sjukvård för att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande krav på uppföljning av åtkomst till patientinformation.”
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vårdsystem och loggtjänst skapas kompatibilitet mellan alla journalsystem och alla loggtjänster. Därigenom undviks huvudmanna-specifika anpassningar av vårdsystem som behöver integration med loggtjänster samt att åtkomst till åtkomstloggar sker på ett enhetligt sätt i ett standardiserat format. Tjänstedomänen standardiserar även patienttjänsters åtkomst till logginformation.”
Tjänstedomänen omfattar två underdomäner och beskrivs med store och querying.
Registrerande tjänst med domännamn urn:riv:ehr:log:store
Registrera loggposter i åtkomstloggen
Där en loggpost kan innehålla en eller flera logghändelser.
Läsande tjänster med domännamn urn:riv:ehr:log:querying
Patientperspektiv
Lista för angiven patient, vilka vårdgivare,vårdenheter och vårdaktörer som har haft åtkomst till information
Vårdgivarperspektiv
Lista för angiven vårdgivare, all åtkomst som har skett av vårdgivarens medarbetare
Lista för angiven vårdgivare samt medarbetare, all åtkomst som har skett av medarbetaren
Lista för angiven vårdgivare samt patient, all åtkomst som har skett av vårdgivarens medarbetare till patientens information
Informationsägarperspektiv
Lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information
Lista för angiven patient samt vårdgivare, vilka vårdgivare som har haft åtkomst till patientens information, där vårdgivaren är informationsägare
En utgångspunkt för tjänstedomänen är Cehis uppdrag Patientdatalagen i Praktiken (PDLiP), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av direktåkomst inom sammanhållen journalföring.

### Målgrupp
Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för hantering av loggning som kräver logguppföljning lokalt såväl som nationellt.
Det typiska behovet är att ansluta en tillämpning som erbjuder direktåtkomst till sammanhållen journalföring och som därmed har behov av åtkomstloggning enligt PDL & SOSFS2008:14. Tjänstekontrakten möjliggör distribuerad lagring och åtkomst av åtkomstloggar.

### Allmänt
Den nationella arkitekturen för hantering av åtkomstloggar är utformad till att
Dels stödja vårdgivarens krav att följa upp vilken tillgång vårdgivarens personal har haft till patientinformation, dels kravet att den vårdgivare som bereder tillgång till information skall få veta vilka vårdgivare som har haft tillgång till vårdgivarens information.
Dels möjliggöra att patienten kan ta del av åtkomstloggar som rör patienten. Arkitekturen medger att vårdgivare, landsting/kommuner och regioner flexibelt kan välja var uppföljningen av åtkomstloggar kan ske. Antingen via nationella tjänster/rapporter för uppföljning eller lokala/regionala system där uppföljningen kan ske med de system som vårdgivaren lokalt har valt att använda.
Tjänstekontrakten  syftar till att ge följande verksamhetsmässiga effekter
Säkerställa uppföljning av åtkomst till journaluppgifter som sker i de nationella tillämpningarna/tjänsterna
Valfrihet för vårdgivaren hur uppföljning av åtkomstloggar ska ske
Tillgängliggörande av åtkomstinformation till patienten innebär mindre administrativ belastning bland vårdgivarna genom att patienten själv bereds åtkomst till åtkomstloggar.

![img_001.png](images/img_001.png)
*Figur 1: Principer för samverkande tjänster för logghantering & logguppföljning.*
I figuren ovan visas som exempel en tjänst för sammanhållen patientöversikt (NPÖ) där en aktörs aktiviteter i NPÖ loggas till den nationella loggtjänsten. Uppföljning av åtkomstloggar kan sen ske antingen via den nationella loggrapporttillämpningen eller för de vårdgivare som har etablerade system för lokal logguppföljning i deras logguppföljningssystem. Dessa system kan via hämtningstjänsten hämta de loggar som tillhör dem.
Logguppföljning sker i respektive logguppföljningssystem.
Figuren visar även ett exempel där patienten via en tillämpning i ex. MVK kan få se vilka vårdgivare och vilken vårdenhet som har haft tillgång till patientens information. Som källor för detta så kan dels den nationella loggtjänsten leverera information, men även information hos åtkomstloggar i lokal logghantering hos de vårdgivare som via de nationella tjänstekontrakten kan publicera denna information
Tjänsten inom domänen hanterar loggposter som ska ge tillräckligt underlag för att beskriva vilken typ av åtkomst som har skett till vårdinformationen, inom vilket syfte, av vem och i vilket uppdrag, rörande vilken resurs, där resursen oftast är en patient och ägs av någon vårdgivare.
Informationen skall kunna tjäna som underlag för att bedöma om åtkomsten till vårdinformationen har varit berättigad eller ej.
Tjänstekontrakten hanterar registrering av åtkomsloggar samt läsning av demsamma.

### Läsning av åtkomstloggar som är äldre än 18 månader
Åtkomstloggar som är maximalt 18 månader finns tillgängligt via de läsande tjänsterna. Behöver man göra uppföljning på äldre loggar måste man beställa dessa separat via förvaltningsorganisationen av respektive loggtjänsten). Dessa ska då normalt levereras inom 2 veckor från dess att beställningen är gjord. Tjänsteproducenten ska leverera data för minst 18 månader.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.

| Tjänst | Beskrivning | Underdomän | Obligatorisk / Nationellt | Obligatoriskt lokalt |
| :--- | :--- | :--- | :--- | :--- |
| StoreLog | Tar en samling loggposter som lagras persisten i arkivfiler. | store | Ja | Nej |
| GetLogsForCareProvider | Tjänst som returnerar loggposter för angiven vårdgivare, all åtkomst som har skett av vårdgivarens medarbetare. | querying | Ja | Nej |
| GetLogsForUser | Tjänst som returnerar loggposter för angiven vårdgivare samt medarbetare, all åtkomst som har skett av medarbetaren. | querying | Ja | Nej |
| GetLogsForPatient | Tjänst som returnerar loggposter för angiven vårdgivare samt patient, all åtkomst som har skett av vårdgivarens medarbetare till patientens information. | querying | Ja | Nej |
| GetAccessLogsForPatient | Tjänst som returnerar lista för angiven patient, vilka vårdaktörer som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs. | querying | Ja | Nej |
| GetInfoLogsForCareProvider | Tjänst som returnerar lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare. | querying | Ja | Nej |
| GetInfoLogsForPatient | Tjänst som returnerar lista för angiven vårdgivare samt patient, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare | querying | Ja | Nej |

### Referenser

| Beteckning | Dokument / Källa |
| :--- | :--- |
| RIV PDLiP | RIV Specifikation Patientdatalagen i Praktiken, 1.0, CeHis, www.cehis.se |
| PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| SOS2008:14 | SOSFS 2008:14 föreskrifter samt handbok http://www.sos.se/sosfs |
| RIVAnvisning Tjänstebeskrivning | RIV_21_Anvisning_Bilaga_51_Tjanstekontraktbeskrivning_Regelverk_110220 |
| RIV TA 2 | RIV Teknisk Anvisning Basic Profile 2.1
http://rivta.googlecode.com/svn/wiki/specs/RIV_Tekniska_Anvisningar_Basic_profile_2.1.pdf |

## Generella regler

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss.zzz”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss.zzz”. W3C-datatypen dateTime används för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering
Vid ett tekniskt fel levereras ett resultat objekt med status kod ERROR och ett meddelande som i text beskriver felet. Exempel på detta kan vara följdeffekter av programmeringsfel. Denna information bör loggas av anropande system.
Vid ett logiskt fel i tjänsten levereras ett resultatobjekt med olika statuskod beroende på fel tillsammans med en beskrivande text. Det tjänstekontrakt som beskrivs i detta dokument använder olika statuskoder för att underlätta felhanteringen för anropande vårdsystem. Se vidare tjänstekontrakten för vilka statuskoder som är definierade.

### Säkerhet

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att att konsument och producent ömsesidigt kan verifera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### Behörighetsstyrning
Kontroll av att anropande system har rätt att anropa tjänsten.

#### Stark autentisering av slutanvändare
På loggtjänsten åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för loggadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Hantering av otillgänglighet
Tjänstekontraktet stödjer en arkitektur där där det är möjligt att integrera mot tjänsten utan att skapa ett hårt beroende i run-time.

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används.
Logisk adressat skall anges även om loggtjänsten inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares Id (t.ex. HSA-id) skall anges som logisk adressat. HSA-id för den organisation vars tjänst adresseras (t.ex. HSA-id för Region Skåne)  Se tabellen nedan hur adressat skall anges.

| Tjänst | Logisk adressat |
| :--- | :--- |
| StoreLog | HSA-id för den organisation (vårdgivare) vars logg åtkomsten avser (t ex HSA-id för Region Skåne) |
| GetLogsForCareProvider | Samma som StoreLog |
| GetLogsForUser | Samma som StoreLog |
| GetLogsForPatient | Samma som StoreLog |
| GetAccessLogsForPatient | För aggregerande tjänst används Ineras HSA-id: 5565594230 / Vid adressering mot vårdgivare samma som StoreLog |
| GetInfoLogsForCareProvider | Samma som StoreLog |
| GetInfoLogsForPatient | Samma som StoreLog |

### Samverkan i aggregerande tjänster
Arkitekturen i logtjänsten har idag inget stöd för aggregering enligt T-boken med hjälp av engagemangsindex.
Aggregering sker istället genom att den aggregerande tjänsten anropar alla förekommande logiska adressater (anslutna vårdgivare) och returnerar all loginformation ifrån de producenter som svarar synkront - dvs oaktat om patienten faktiskt har loggposter hos alla anslutna vårdgivare.
Observera att en producent som returnerar queuedReportId kommer inte att returneras av den aggregerande tjänsten.
Se dokumentet Arkitekturella beslut för mer information.

### Termer och begrepp

| Term/begrepp | Förklaring |
| :--- | :--- |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |

## StoreLog
Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter.
Loggposter valideras enligt schema. Resultat av anropet returneras i ett Result objekt med statuskod. Vi fel sparas ej loggposter i loggtjänsten.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav
Loggtjänsten har höga krav på tillgänglighet enär loggande tillämpningar kan drabbas av funktionsstörningar om loggtjänsten är otillgänglig. För att minska detta beroende bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att lagring av loggposter skett då anropet genomförts utan fel. Loggposter ska vara tillgängliga för uppföljning inom 24 timmar. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| log | log:Log | En kollektion av loggposter som ska lagras i loggtjänsten. | 1..* |
| Svar |  |  |  |
| storeLog | log.store:Result | Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATIONERROR och ACCESSDENIED. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet att lagra loggposter. Om behörighet nekas skall ett fel returneras och flödet avbrytas.

### Tjänsteinteraktion
StoreLog

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:StoreLogRequest xmlns:ns0="urn:riv:ehr:log:store:StoreLogResponder:1" xmlns:ns1="urn:riv:ehr:log:store:1" xmlns:ns2="urn:riv:ehr:log:1">
<!-- Array -->
<ns0:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns0:Log>
</ns0:StoreLogRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:StoreLogResponse xmlns:ns0="urn:riv:ehr:log:store:StoreLogResponder:1" xmlns:ns1="urn:riv:ehr:log:store:1">
<ns0:StoreLog>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
</ns0:StoreLog>
</ns0:StoreLogResponse>

## GetLogsForCareProvider
Tjänst som returnerar loggposter för angiven vårdgivare, all åtkomst som har skett av vårdgivarens medarbetare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.1

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| Svar |  |  |  |
| getLogsForCareProvider | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetLogsForCareProvider

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetLogsForCareProviderRequest xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
<!-- Optional -->
<ns0:CareUnitId>?</ns0:CareUnitId>
</ns0:GetLogsForCareProviderRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetLogsForCareProviderResponse xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetLogsForCareProvider>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:Logs>
<!-- Optional -->
<!-- Array -->
<ns1:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns1:Log>
</ns1:Logs>
</ns0:GetLogsForCareProvider>
</ns0:GetLogsForCareProviderResponse>

## GetLogsForUser
Tjänst som returnerar loggposter för angiven vårdgivare samt medarbetare, all åtkomst som har skett av medarbetaren.
Logguttaget begränsas av angivet datumintervall .
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapas av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultatkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.1

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| userId | log:HsaId | Medarbetare som haft åtkomst. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| Svar |  |  |  |
| getLogsForUser | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetLogsForUser

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetLogsForUserRequest xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForUserResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:UserId>?</ns0:UserId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
<!-- Optional -->
<ns0:CareUnitId>?</ns0:CareUnitId>
</ns0:GetLogsForUserRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetLogsForUserResponse xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForUserResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetLogsForUser>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:Logs>
<!-- Optional -->
<!-- Array -->
<ns1:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns1:Log>
</ns1:Logs>
</ns0:GetLogsForUser>
</ns0:GetLogsForUserResponse>

## GetLogsForPatient
Tjänst som returnerar loggposter för angiven vårdgivare samt patient, all åtkomst som har skett av vårdgivarens medarbetare till patientens information.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| patientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som vårdgivare haft åtkomst till. | 1..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |  |  |  |
| getLogsForPatient | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.
.

### Tjänsteinteraktion
GetLogsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetLogsForPatientRequest xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<ns0:CareUnitId>?</ns0:CareUnitId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetLogsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetLogsForPatientResponse xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetLogsForPatient>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:Logs>
<!-- Optional -->
<!-- Array -->
<ns1:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns1:Log>
</ns1:Logs>
</ns0:GetLogsForPatient>
</ns0:GetLogsForPatientResponse>

## GetAccessLogsForPatient
Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK .
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.1

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| PatientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till. | 1..1 |
| FromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| ToDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| QueuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. / Skall inte användas när aggregerande tjänst anropas. | 0..1 |
| Svar |  |  |  |
| AccessLogsResultType | logquerying:AccessLogsResultType | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet till ”patientbunden” logginformation. Normalt så sker detta via behörighetskontrollen i en Tjänsteplattform. Anropande konsument har att säkerställa att patienten är starkt autentiserad.

### Tjänsteinteraktion
GetAccessLogsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetAccessLogsForPatientRequest xmlns:ns0="urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:PatientId>?</ns0:PatientId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetAccessLogsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetAccessLogsForPatientResponse xmlns:ns0="urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:GetAccessLogsForPatient>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:AccesssLogs>
<!-- Optional -->
<!-- Array -->
<ns1:AccessLog>
<ns1:CareProviderId>?</ns1:CareProviderId>
<!-- Optional -->
<ns1:CareProviderName>?</ns1:CareProviderName>
<ns1:CareUnitId>?</ns1:CareUnitId>
<!-- Optional -->
<ns1:CareUnitName>?</ns1:CareUnitName>
<ns1:UserId>?</ns1:UserId>
<!-- Optional -->
<ns1:UserName>?</ns1:UserName>
<!-- Optional -->
<ns1:UserTitle>?</ns1:UserTitle>
<ns1:AccessDate>?</ns1:AccessDate>
<ns1:Purpose>?</ns1:Purpose>
<ns1:ResourceType>?</ns1:ResourceType>
</ns1:AccessLog>
</ns1:AccesssLogs>
</ns0:GetAccessLogsForPatient>
</ns0:GetAccessLogsForPatientResponse>

## GetInfoLogsForCareProvider
Tjänst som returnerar lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |  |  |  |
| getInfoLogsForCareProvider | log.querying:InfoLogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetInfoLogsForCareProvider

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetInfoLogsForCareProviderRequest xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetInfoLogsForCareProviderRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetInfoLogsForCareProviderResponse xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetInfoLogsForCareProvider>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:CareProviders>
<!-- Optional -->
<!-- Array -->
<ns1:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns1:CareProvider>
</ns1:CareProviders>
</ns0:GetInfoLogsForCareProvider>
</ns0:GetInfoLogsForCareProviderResponse>

## GetInfoLogsForPatient
Tjänst som returnerar lista för angiven vårdgivare samt patient, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| patientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |  |  |  |
| getInfoLogsForPatient | log.querying:InfoLogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetInfoLogsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetInfoLogsForPatientRequest xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetInfoLogsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetInfoLogsForPatientResponse xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetInfoLogsForPatient>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:CareProviders>
<!-- Optional -->
<!-- Array -->
<ns1:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns1:CareProvider>
</ns1:CareProviders>
</ns0:GetInfoLogsForPatient>
</ns0:GetInfoLogsForPatientResponse>

## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 1.0.

### Datatyper från namnrymd urn:riv:ehr:log:1
Nedan beskrivs några komplexa datatyper som är deklarerade i den beroende namnrymden urn:riv:ehr:log:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### log:Activity
Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| activityType | log:ActivityTypeValue | Värde som anger vilken typ av aktivitet som utförts. / Något av dessa värden ska anges: Läsa, Skriva, Signera, Utskrift, Vidimera, Radera och Nödöppning | 1 |
| activityLevel | log:ActivityLevel | Information om vilken nivå som aktivitet utförts på. | 0..1 |
| activityArgs | log:ActivityArgs | Övrig information för aktiviteten. T.ex. parameterar för en rapport. | 0..1 |
| startDate | xs:dateTime | Information om tidpunkt som aktivitet utfördes på. | 1 |
| purpose | log:PurposeDescription | Information om syftet med aktiviten. / Något av dessa värden ska anges: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |

#### log:ActivityArgs
Datatyp som representerar en .
Maxlängd: 8192

#### log:ActivityLevel
Datatyp som representerar en aktivitets nivå.
Maxlängd: 50

#### log:ActivityType
Enumerationsvärde som anger typ av aktivitet som utförts.
Kan vara Läsa, Skriva, Signera, Utskrift, Vidimera, Radera, Nödöppning

| Värde | Beskrivning |
| :--- | :--- |
| "Läsa" | En läsning av data har utförts. |
| "Skriva" | En aktivitet där något läggs till. |
| "Signera" | Signering har utförts. |
| "Utskrift" | En utskrift har utförts. |
| "Vidimera" | En autentisering har utförts. |
| "Radera" | Något har raderats. |
| "Nödöppning" | Nödöppning har gjorts. |

#### log:Assignment
Datatyp som representerar namn på medarbetare i uppdrag.
Maxlängd: 256

#### log:CareProvider
Datatyp som representerar en vårdgivare.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviderId | log:HsaId | Vårdgivarens id. | 1 |
| careProviderName | log:CareProviderName | Vårdgivarens namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:CareProviderName
Datatyp som representerar namn på en vårdgivare.
Maxlängd: 256

#### log:CareUnit
Datatyp som representerar en vårdenhet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careUnitId | log:HsaId | Vårdenhetens id. | 1 |
| careUnitName | log:CareUnitName | Vårdenhetens namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:CareUnitName
Datatyp som representerar namn på en vårdenhet.
Maxlängd: 256

#### log:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### log:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### log:Log
Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logId | log:Id | Unik, global identifierare för loggposten. | 1 |
| system | log:System | Information om systemet som skapar loggpost. Innehåller systemets id samt eventuellt namn. | 1 |
| activity | log:Activity | Information om aktivitet som utförts och som ska loggas. Innehåller typ av aktivitet, datum för aktiviteten och i vilket syfte som aktiviteten utfördes. | 1 |
| user | log:User | Information om användaren som utfört aktivitet. Innehåller användarens id samt till vilken vårdenhet användaren tillhör. Kan även innehålla ej obligatoriska uppgifter som namn, personnummer, uppdrag och titel. | 1 |
| resources | log:Resources | Information om aktuella resurser. | 1 |

#### log:Patient
Datatyp som representerar en patient i en resurs.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | log:PersonId | Patientens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. | 1 |
| patientName | log:PatientName | Patienten namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:PatientName
Datatyp som representerar en patients namn.
Maxlängd: 256

#### log:PersonId
Datatyp som representerar ett personnummer, samordningsnummer eller ett reservnummer.
Maxlängd: 12

#### log:PurposeDescription
Datatyp som representerar beskrivning av ett syfte i Hsa.
Maxlängd: 256

#### log:ActivityTypeValue
Datatyp som representerar beskrivning av en aktivitetstyp.
Maxlängd: 256

#### log:Resource
Datatyp som representerar en resurs i loggposten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resourceType | log:ResourceTypeValue | Information om vilken typ av resurs som loggpost avser. Kan vara kemlabbsvar, journaltext, remiss, översikt, samtycke, patientrelation, sätta spärr, rapport osv. | 1 |
| patient | log:Patient | Information om vilken patient som resursen avser. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | log:CareProvider | Information om vilken vårdgivare resursen tillhör. | 1 |
| careUnit | log:CareUnit | Information om vilken vårdenhet resursen tillhör. | 0..1 |

#### log:ResourceTypeValue
Datatyp som representerar en aktivitets nivå.
Maxlängd: 50

#### log:Resources
Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resource | log:Resource |  | 1..* |

#### log:ResultCode
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "REPORT_ON_QUEUE" | Angiven rapport är ej klar. Rapporten ligger på kö för att genereras. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_IN_PROCESS" | Angiven rapport är ej klar. Rapporten är under uppbyggnad. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_NOT_FOUND" | Felaktig id angivet. Angiven tjänst ej kan hitta rapport med angivet id som är skapad eller rapport som ligger på kö för att skapas. |
| "MAX_QUERY_RESULT_EXCEEDED" | Max antal loggposter som tjänsten kan returnera har överstigits. Ändra sökparametrar för att begränsa rapportuttaget. |

#### log:System
Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| systemId | log:HsaId | Systemets id. | 1 |
| systemName | log:SystemName | Systemets namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:SystemName
Datatyp som representerar namn på ett system.
Maxlängd: 256

#### log:User
Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| userId | log:HsaId | Användarens id. Loggpostens ägare. | 1 |
| name | log:UserName | Användarens fulla namn. Värdet är ej obligatoriskt. | 0..1 |
| personId | log:PersonId | Användarens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. Värdet är ej obligatoriskt. | 0..1 |
| assignment | log:Assignment | Namn på medarbetare i uppdrag, exempelvis sjuksköterska på kirurgkliniken. Värdet är ej obligatoriskt. | 0..1 |
| title | log:UserTitle | Användarens titel. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | log:CareProvider | Användarens vårdgivare när aktivitet utfördes. Den vårdgivaren är ägare av loggposten. | 1 |
| careUnit | log:CareUnit | Användarens vårdenhet när aktivitet utfördes. | 1 |

#### log:UserName
Datatyp som representerar namn för en användare.
Maxlängd: 256

#### log:UserTitle
Datatyp som representerar titel på användare.
Maxlängd: 256

### Datatyper från namnrymd urn:riv:ehr:log.querying:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:log.querying:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### log.querying:AccessLogType
Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| CareProviderId | log:HsaId | Vårdgivare som haft åtkomst. | 1 |
| CareProviderName | log:CareProviderName | Namn på vårdgivare som haft åtkomst. | 0..1 |
| CareUnitId | log:HsaId | Vårdenhet som haft åtkomst. | 1 |
| CareUnitName | log:CareUnitName | Namn på vårdenhet som haft åtkomst. | 0..1 |
| AccessDate | xs:dateTime | Tidpunkt för åtkomst. | 1 |
| UserId | log:HsaId | Aktörens Id | 1 |
| UserName | log:UserName | Namn på vårdaktören | 0..1 |
| UserTitle | log:UserTitle | Titel på vårdaktören | 0..1 |
| Purpose | log:PurposeDescription | Information om syftet med aktiviten. / kan vara något av dessa värden: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |
| ResourceType | log:ResourceTypeValue | Typ av resurs. | 1 |

#### log.querying:AccessLogs
Datatyp som håller lista med Access loggar. Kan vara en tom lista.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accessLog | log.querying:AccessLog |  | 0..* |

#### log.querying:AccessLogsResult
Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accesssLogs | log.querying:AccessLogs |  | 0..1 |

#### log.querying:CareProviders
Datatyp som håller lista med vårdgivare. Kan vara en tom lista.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProvider | log:CareProvider |  | 0..* |

#### log.querying:InfoLogsResult
Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviders | log.querying:CareProviders |  | 0..1 |

#### log.querying:Logs
Datatyp som håller lista med loggposter. Kan vara en tom lista

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| log | log:Log |  | 0..* |

#### log.querying:LogsResult
Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logs | log.querying:Logs |  | 0..1 |

#### log.querying:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | log:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |
| startInterval | xs:dateTime | Parameter som anger datum för första loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| endInterval | xs:dateTime | Parameter som anger datum för sista loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| queuedReportId | log:Id | Parameter som anger id på den rapport som efterfrågas och returneras om anropet avslutas innan rapporten är genererad. Ytterligare anrop kan då göras / med raport id som inparameter för att hämta rapport. Finns för att undvika hängande anrop samt köa upp jobb vid hög belastning. | 0..1 |
| queueTime | xs:int | Parameter som anger ungefärlig tid det förväntas ta innan rapporten är genererad och returneras tillsammans med queuedReportId. / Ytterligare anrop kan då göras av anropande system efter föväntad tid har gått.	Finns för att undvika hängande anrop. Anges i sekunder. | 0..1 |

### Datatyper från namnrymd urn:riv:ehr:log.store:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:log.store:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### log.store:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | log:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |
