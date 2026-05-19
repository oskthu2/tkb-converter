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

