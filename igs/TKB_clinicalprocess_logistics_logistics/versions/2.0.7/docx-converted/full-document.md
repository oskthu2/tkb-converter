
|  | clinicalprocess logistics logistics / Tjänstekontraktsbeskrivning / Version 2.0.7 / 2026-06-03 |
| :--- | :--- |
Innehåll
1	Inledning	9
1.1	Svenskt namn	9
1.2	Beskrivning	9
2	Versionsinformation	10
2.1	Version 2.0.6	10
2.1.1	Oförändrade tjänstekontrakt	10
2.1.2	Nya tjänstekontrakt	10
2.1.3	Förändrade tjänstekontrakt	10
2.1.4	Utgångna tjänstekontrakt	10
2.1.5	Ej Fastställda kontrakt	10
2.2	Version tidigare	10
3	Tjänstedomänens arkitektur	11
3.1	Flöden	11
3.1.2	Obligatoriska kontrakt	13
3.2	Adressering	13
3.2.1	Illustrering av adressering	14
3.2.2	Sammanfattning av adresseringsmodell	16
3.3	Aggregering och engagemangsindex	16
3.3.1	Nationell användning	17
3.3.2	Regional användning	18
3.4	Tjänstekontraktets design	18
4	Tjänstedomänens krav och regler	19
4.1	Uppdatering av engagemangsindex	19
4.2	Informationssäkerhet och juridik	21
4.2.1	Medarbetarens direktåtkomst	21
4.2.2	Patientens direktåtkomst	21
4.2.3	Generellt	21
4.3	Icke funktionella krav	22
4.3.1	SLA krav	22
4.3.2	Övriga krav	22
4.4	Felhantering	23
4.4.1	Krav på en tjänsteproducent	23
4.4.2	Krav på en tjänstekonsument	24
5	Gemensamma informationskomponenter	24
6	Tjänstekontrakt	32
6.1	GetCareContacts	32
6.1.1	Version	32
6.1.2	Fältregler	32
6.1.3	Övriga regler	37
6.1.4	Icke funktionella krav	38
6.1.5	SLA-krav	38
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av |
| :--- | :--- | :--- | :--- |
| PA1 | 2012-12-03 | Arbetsdokument: Vårddokumentation tillagd | FS, MA |
| PA2 | 2012-12-11 | Uppdaterade tabeller efter diskussioner med Johan Eltes | Maria Andersson |
| PA3 | 2012-12-18 | Lagt till kap 5. GetReferralAnswer | Maria Andersson |
| PA4 | 2012-12-20 | Uppdaterat tabeller | Maria Andersson |
| PA5 | 2012-12-21 | Uppdaterat tabeller efter ny struktur | Maria Andersson |
| PA6 | 2012-12-21 | Uppdaterat namnen i tabellen | Maria Andersson |
| PA7 | 2012-12-21 | Lagt till avsnittet Tjänstedomänens arkitektur samt redigerat avsnittet Generella regler | Johan Eltes |
| PA8 | 2013-01-07 | Förbättrad kvalitén på texterna från PA7 | Johan Eltes |
| PA9 | 2013-01-08 | Uppdaterat tabellerna under kap 4, 5 och 6 | Maria Andersson |
| PA10 | 2013-01-09 | Lagt till avsnitt om engagemangsindex. Kompletterat/förtydligat avsnitten nationell användning, nationell användning och adresseringsmodell. | Johan Eltes |
| PA11 | 2013-01-14 | Uppdaterat kap 5 och 6 med ny struktur. | Maria Andersson |
| PA12 | 2013-01-14 | Lagt till kap 7. | Maria Andersson |
| PA13 | 2013-01-20 | Uppdaterat efter beslut att håll aindexpostern på PDLenhetsnivå och använda SourceSystem för adressering. | Johan Eltes |
| PA14 | 2013-01-21 | Uppdaterat gemensamma informationskomponenter och tjänstebeskrivning | Fredrik Ström |
| PA15 | 2013-01-21 | Uppdaterat typerna med inledande versal. Ändrat från careRequest till Referral och från Answer till Outcome i kap 6. | Maria Andersson |
| PA16 | 2013-01-21 | Ändrat kardinaliteten på referral i kap 6. | Maria Andersson |
| PA17 | 2013-01-24 | Ändrat i tabellerna i kap 4, 5 och 6. | Maria Andersson |
| PA18 | 2013-01-25 | Ändrat i tabellerna i kap 4, 5 och 6. | Maria Andersson |
| PA19 | 2013-01-29 | Ändrat beskrivningar i kap 4, 5 och 6 samt ny struktur i kap 4. | Maria Andersson |
| PA20 | 2013-01-30 | Ändrat beskrivningar kap 4, 5.4 och 6.4. / Nya och uppdaterade typer kap 4, 5.4 och 6.4. | Fredrik Ström / Magnus Ekstrand |
| PA21 | 2013-01-31 | Ändringar i beskrivningar kap 4, 5, 6 och 7. | Maria Andersson |
| PA22 | 2013-01-31 | Ändringar i kap 7, GetCareContact | Maria Andersson |
| PA23 | 2013-02-07 | Justeringar av elementnamn och kardinalitet i kap 5, 6 och 7. / Tog bort ej använd gemensam komponent. | Magnus Ekstrand |
| PA24 | 2013-02-11 | Lagt till kap 8, GetDiagnosis | Maria Andersson |
| PA25 | 2013-02-19 | Definierat krav på uppdatering av fältet mostRecentContent i EI-posten. | Johan Eltes |
| PA26 | 2013-03-01 | Lagt in beskrivning av personidentifierare under kap 3. | Maria Andersson de Vicente |
| PA27 | 2013-03-04 | Uppdaterat till careContactUnitid, careContactUnitName, careContactUnitAddress under 7.4. Uppdaterat beskrivningen av Author under 5.4, 6.4, 7.4 och 8.4. Ändrat Aderss till Postadress i hela dokumentet. | Maria Andersson de Vicente |
| PA28 | 2013-03-04 | Ändrat kardinalitet på CareContactUnit till 1..1 under 7.4. Lagt till authorOrgUnitHSAid och authorOrgUnitName. Ändrat kardinalitet på legalAuthenticatorHSAid till 0..1. Tagit bort information om signatur under 7.4. Lagt till sourceSystem. | Maria Andersson de Vicente |
| PA29 | 2013-03-05 | Lagt till nya sökparametrar för source system och care contact id. Lagt till authorOrgUnitAddress och tagit bort careUnitName. Tagit bort signeringsinformation. / Förtydligat skrivning om aggregerande tjänster samt lagt till scenariobeskrivning för sökning på careContactId / Ändringar är markerade med gult. | Johan Eltes |
| PA30 | 2013-03-14 | Lagt till Telecom, Email och Location i kap 5. Har även ändrat beskrivningen av DocumentTime. | Maria Andersson de Vicente |
| PA31 | 2013-03-15 | - Specificerat kodverk för EI-postens Categorization-fält. / - SLA-krav uppdaterade / - Preciserat lexikaliskt format för personnummer. | Johan Eltes |
| PA31 | 2013-04-08 | Skapat klassen OrgUnitType. / Bytt namn på documentId till careContactId / Bytt namn på careContactUnitId till careContactOrgUnitHsaId / Bytt namn på alla fält som börjar med careContactUnit… till careContactOrgUnit… / Ändrat kardinalitet på careContactOrgUnit från 0..* till 1..1. / Bytt namn på ”author” till ”accountableHealthcareProfessional” och definierat typen HealthcareProfessional / Lagt till fältet ” accountableHealthcareProfessionalOrgUnit” / HealthcareProfessionalType / Ändrat elementnamnet sourceSystem till sourceSystemHSAid / Ändrat semantik (regel) för EI-fältet ”Most Recent Content” / Färbättrat och utökat dokumentation om systemadressering | Johan Eltes / Khaled Daham |
| PA32 | 2013-04-15 | Ändrat kodverk för kontaktstatus till samma som i NPÖ RIV-Spec. / Lagt till contactTimePeriod i GetCareContacts svarsmeddelande. / Lagt till fältet Data Controller i EI-posten, samt uppdaterat regler för EI-fältet Logical Address | Johan Eltes |
| PA33 | 2013-04-23 | Ändrat kardinalitet för careContactCode till 0..1, samt tydliggjort innebörd i utelämnat värde. | Johan Eltes |
| PA34 | 2013-05-07 | Arkitekturskisser uppdaterade för att spegla korrekt användning av EI / Formatteringsfelet i dokumentet är årgärdat. | Johan Eltes |
| PA35 | 2013-08-20 | Beskrivning av accountableHealthcareProfesionalOrgUnit samt careContactOrgUnit uppdaterad/förtydligad | Fredrik Ström |
| PA36 | 2013-09-03 | Ändrat kardinalitet på accountableHealthcareProfessional, se Google Code issue 80. Följdändrat kardinaliteten på accountableHealthcareProfessional i PatientSummaryHeaderType. / Redigerat små felaktigheter. | Björn Genfors |
| PA37 | 2013-09-20 | Uppdaterat sektionen om gemensamma typer. / Följduppdaterat tjänstekontraktsbeskrivningar | Björn Genfors |
| PA38 | 2013-09-26 | Redaktionella ändringar (HSAId ska skrivas just så). | Björn Genfors |
| PA39 | 2013-09-30 | Rättade ”healthcareProfessionalOrgUnit” som var skrivet som ”healthCareProfessionalOrgUnit” | Johan Eltes |
| PA39b | 2013-11-04 | Avsnitt 2 ersatt med innehåll från PA44 | Johan Eltes |
| A | 2013-11-25 | Specat att GCC är kompatibelt med NPÖ RIV-Spec / Slutredigering inför release. | Johan Eltes |
| 2.0.1 | 2014-10-23 | Tydligare formulering för producent då planerade(framtida) vårdkontakter ska returneras. | Khaled Daham |
| 2.0.2 | 2015-12-07 | Ändrat svarstid för SLA-krav från 15s till 30s | Khaled Daham |
| 2.0.3 | 2017-05-12 | Utökning av testsvit / Tillägg ”Självdeklaration för Tjänsteproducent” | Björn Pettersson |
| 2.0.4 | 2018-10-15 | Uppdateringar i SJD och testförbättringar i testsviter, framförallt tidsfiltrering. Testsvit 7 & 8 tillkommer. | Magnus Söderlind |
| 2.0.4 | 2019-03-25 | Lagt till SjD för konsument och uppdaterat mock | Jan Söderman |
| 2.0.4 | 2019-04-17 | Ny testsvit och självdeklaration | Jan Söderman |
|  | 2019-11-01 | testcommit | Claudia Ehrentraut |
| 2.0.4 | 2021-08-04 / 2021-09-08 | Lagt in TKB i ny mall / Lagt till referenslista med tillhörande referenser i texten. / Ersatt alla skall med ska. / Uppdaterat beskrivningen av attributet ”documentId” i ”PatientSummaryHeaderType”. / Uppdaterat beskrivningen för tidsfiltrering. / Uppdaterat beskrivningen av attributet MostRecentContent under avsnitt 4.1 / Uppdaterat beskrivning av domän samt tjänstekontrakt. / Justerat vers02-ion under GetCareContact för att överensstämma med schemafiler. | Tobias Blomberg |
| 2.0.5 | 2022-02-16 | Uppdaterat version | Tobias Blomberg |
| 20.6_RC1 | 2022-11-21 | Uppdaterat beskrivningen för SourceSystemHSAId i begäran. / Uppdaterat reglerna för CVType under avsnitt 5 så de stämmer med schematronreglerna. | Tobias Blomberg |
| 2.0.6 | 2023-01-10 | Fastställd version | Tobias Blomberg |
| 2.0.7 | 2026-06-03 | Ändrat från Datainspektionen till Integritetsskyddsmyndigheten / Justera texten under kap. 4.3.1 SLA krav från “Svarstiden för ett anrop får inte överstiga 30 sekunder” till “Svarstiden för ett anrop får inte överstiga 27 sekunder” | Tobias Blomberg |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_clinicalprocess_healthcond_description.docx | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Bilaga Gemensamma_typer_3.pdf |  | Bilaga |
| R4 | RIV Tekniska Anvisningar Översikt | Finns på webben | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632911/RIV+Tekniska+Anvisningar+versikt |
| R5 | Tabell över godkända tjänstedomäner | Finns på Webben | http://rivta.se/domains/ |
| R6 | Patientdatalagen i praktiken RIV | Finns på webben | https://rivta.se/documents/ARK_0031/ |
| R7 | RIV Tekniska Anvisningar – Parallella versioner av ett tjänstekontrakt | Finns på webben | http://rivta.se/documents/ARK_0040/ |
| R8 | ISO8601-standarden för tidsformat | Finns på Webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R9 | Kodverkslistan | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt |
| R10 | Lista över identifierare | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902/Identifierare+i+nationella+tj+nstekontrakt |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| K | Tjänstekonsument | Se referens [R4] |
| P | Tjänsteproducent | Se referens [R4] |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess:logistics:logistics. Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänens syftar till att tillmötesgå behovet av systemoberoende åtkomst till patientjournal för såväl vårdgivar- som invånartjänster. ”Journal på nätet”, nationell patientöversikt och tjänster för elektroniskt utlämnande till patientens egna tjänster är alla exempel på nationella tjänster med behov av direktåtkomst till journalhistorik. Tjänstekontrakten i denna domän ska tillmötesgå de nationella behoven men också fylla behovet för direktåtkomst-tjänster inom ett landsting.
För att vara tillämpbara för både invånar- och vårdgivartjänster behöver tjänstekontrakten förmedla den information som behövs för att båda typerna av tjänster ska ha det underlag som behövs för att säkerställa behörig åtkomst för sina respektive användargrupper. Det är dock en grundläggande princip att tjänsteproducenterna inte ska anpassa svaret efter frågeställaren, utan istället tillhandahålla fullständig information som tjänstekonsumenten kan anpassa till sin målgrupp.
Tjänstedomänen syftar huvudsakligen till realisering av aggregerande tjänster (enl. T-bok REV B) [R4]. Tjänstekontrakten är därför uppbyggda för s.k. system-adressering.
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.
Tjänstedomänen baseras på RIV – Informationsspecifikation Nationell Patientöversikt version 2.2.0.

### Svenskt namn
operativt processtöd: samordna resurser över verksamhetsstrukturer: logistik
resurssamordning

### Beskrivning
Denna domän hanterar information om historiska och framtida vårdkontakter samt vårdplaner. Domänen hanterar administrativ information som sker vid kontakt med hälso- och sjukvården, samt vid vårdplanering, och möjliggör tillgång till sådan information för både patienter och hälso- och sjukvårdspersonal.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: logistics: logistics. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte ska brytas.

### Version 2.0.6

#### Oförändrade tjänstekontrakt
GetCareContacts, version 2.0

#### Nya tjänstekontrakt
Inga kontrakt är nya sedan föregående version.

#### Förändrade tjänstekontrakt
Inga kontrakt är förändrade sedan föregående version.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått sedan föregående version.

#### Ej Fastställda kontrakt
Inga tjänstekontrakt är ej fastställda sedan föregående version.

### Version tidigare
2.0.5

## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna i denna domän erbjuder sökning efter logistikrelaterad information från hälso- och sjukvårdens journal- och patientadministrativa system, såsom information om planerade och utförda vårdkontakter, samt information om vårdplaner. Utgångspunkten är i första hand patientens och professionens behov av direktåtkomst till en patients vårdhistorik sett ur ett nationellt eller ett regionalt perspektiv. I båda fallen är syftet att historisk information sammanställs från de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det systemet, istället för den aggregerande tjänsten.
Tjänstedomänen förutsätter en aggregeringsplattform motsvarande den som beskrivs i T-boken, REV B [R4]. Tjänstedomänen förutsätter också användning av engagemangsindex på nationell nivå. Behovet av ett regionalt engagemangsindex beror dels av om regionen avser tillämpa tjänstekontrakten för regionala tjänstekonsumenter och av antalet informationskällor som ska tillgängliggöras för regionala behov.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras (exemplifierat med GetCareContacts). Den första figuren visar direktåtkomst inom sammanhållen journalföring och den andra figuren visar användning inom patientens direktåtkomst.

##### Arbetsflöde

![img_004.png](images/img_004.png)
*Figur 1 - Direktåtkomst inom sammanhållen journalföring*

![img_003.png](images/img_003.png)
*Figur 2 - Patientens direktåtkomst*

#### Obligatoriska kontrakt
Tjänstedomänen definierar inga flöden, alla tjänstekontrakt är frivilliga.

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.

#### Illustrering av adressering
Följande figurer illustrerar adressering av aggregerande tjänst genom ett exempel. Det är alltid källsystemets HSA-id som är logisk adress när en aggregerande tjänst anropar en anslutningspunkt (ap), även om det inte är just källsystemet som är anslutningspunkt eller ens tjänsteproducent (i fallet av ett mellanlager).

##### Adressering vid nationell användning

![img_001.png](images/img_001.png)
*Figur 3 - Adressering vid anrop till nationell aggregerande tjänst (t.ex. från Mina vårdkontakter eller NPÖ-tillämpningen)*

##### Adressering vid regional användning

![img_006.png](images/img_006.png)
*Figur 4 - Adressering vid anrop till regional aggregerande tjänst (t.ex. från ett vårddokumentationssystem, beslutsstödsystem eller en regional patientöversikt)*

##### Adressering direkt till ett källsystem
Sökning efter en specifik vårdkontakt kan göras genom adressera systemet där vårdkontakten finns. Det förutsätter att källsystemets HSA-id och vårdkontaktens HSA-id är känt, t.ex. genom att informationen finns i sökresultatet från något av tjänstekontrakten för journalhistorik (t.ex. tjänstekontrakt i domänen riv:clinicalprocess:healthcond:description).
Eftersom anropet i dessa fall sker direkt mot virtuell tjänst, sker adressering med källsystemets HSA-id direkt från tjänstekonsumenten. Detta beskrivs i figuren nedan.

![img_005.png](images/img_005.png)
*Figur 5 - Adressering vid sökning efter information ur ett specifikt källsystem*

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystems HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet utav tjänsteplattformen utan att passera en aggregerande tjänst. Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

#### Nationell användning
Vid nationell användning av tjänstekontrakten (d.v.s. tjänstekonsumenter som begär information från alla tjänsteproducenter i Sverige) sker aggregering av informationen genom aggregerande tjänster i den gemensamma tjänsteplattformen. Regioner och Landsting tillhandahåller då källsystemens (KS) information genom anslutningspunkter (AP) i enlighet med tjänstekontrakten. Det kan t.ex. ske enligt olika modeller:
A: Direktanslutning av källsystem: Källsystemet är anslutningspunkten till gemensamma tjänsteplattformen
B: Källsystem ansluts via regional tjänsteplattform: Regionens tjänstplattform är anslutningspunkt till gemensamma tjänsteplattformen
C: Mellanlager ansluts direkt eller via regional tjänsteplattform: Ett mellanlager avskärmar källsystemen från den last som uppstår vid från nationella medarbetar- och invånartjänster
Modellerna illustreras nedan (från höger till vänster):

![img_002.png](images/img_002.png)
Figur: Olika modeller för anslutning av källsystem.
Anslutningsmodellerna förutsätter att…
vårdsystemen uppdaterar nationellt engagemangsindex – direkt eller indirekt via regionalt index. Källsystemets HSA-id anges i engagemangsposten jämte övrig info enligt beskrivning i särskilt avsnitt under regelverk
en ev. regional tjänsteplattform kan dirigera anrop till rätt tjänsteproducent baserat på källsystemets HSA-id (på samma sätt som nationellt)
tjänsteproducenten validerar att aktuell tjänstekonsument (HSA-id i http-header) är godkänd av verksamheten (informationsägande vårdenhet)

#### Regional användning
Regional användning innebär att tjänstekonsumenten är regional (R-K) och begär information från alla producenter i regionen, avseende ett visst tjänstekontrakt inom tjänstedomänen. Det innebär att regionen behöver utföra regional aggregering i den regionala tjänsteplattformen. Anslutningen av regional tjänsteplattform till nationell påverkas inte av att regionen inför en regional aggregerande tjänst:

![img_007.png](images/img_007.png)

### Tjänstekontraktets design
Tjänsterna, som beskrivs nedan, returnerar 0, 1 eller flera instanser av tjänstespecifik patientbunden information i form av dokument. Varje dokument består av en header, PatientSummaryHeader, som är gemensam för alla tjänster, samt en body som är specifik för varje tjänstekontrakt, där ett dokument omfattar en instans av information som ska överföras, exempelvis ett konsultationsremissvar.
Ett dokument motsvarar den information som täcks av en signatur (oavsett om signaturen ännu gjorts).
Tjänsterna har en gemensam basuppsättning sökparametrar som i vissa fall utökats specifikt per tjänst.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”) eller genom att erbjuda tjänsteproducent för tjänstekontraktet urn:riv:itintegration:engagementindex:GetUpdatesResponder:1 (”index-pull”). Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer [R5].
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens personnummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän>. | 1..1 | Värdet ska vara ”riv:clinicalprocess:logistics:logistics” | Del av instansens unikhet |
| Categori-zation* | Kategorisering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. | 1..1 | Informationsmängd som finns i källsystemet för angiven patient och som indexposten avser. Anges med kortform enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – dvs ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Verksamhetsmässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 1..1 | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. |  |
| Creation / Time | Tidpunkten då index-posten registrerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då indexposten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Uppdatering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Data Controller | Personuppgitsansvarig organisation | Organisationsnummer | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” | Del av instansens unikhet |
Regler för tilldelning av värde i fältet Categorization i engagemangsposten för tjänstekontrakt i denna domän.

| Informationsmängd enligt Tjänstekontrakt | Värde på Categorization |
| :--- | :--- |
| GetCareContacts | vko |

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från Integritetsskyddsmyndigheten om ytterligare teknisk åtkomstkontroll.
Patientdatalagen ställer också krav (via dess tolkning ”PDL-i-praktiken” [R6]) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet). Det kompletta regelverket finns i senaste utredningen PDLiP [R6] samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa av tjänstekontrakten, såsom Hälso- och sjukvårdskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, [R7].

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Krav |
| :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 27 sekunder. |
| Tillgänglighet | 24x7, 99,5% |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet kontaktregistreringar per dygn. |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. |
| Robusthet | Om tidsintervall inte angivits i frågan kan tjänsteproducenten kan välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. |

#### Övriga krav

##### Gemensamma konsumentregler
R1: Filtrera enligt flagga ”approvedForPatient”
R2: Tillämpa regelverk enl. PDL

##### Format för datum och tidpunkter
Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R8]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

##### Personidentifierare
Bland tillåtna typer av personidentifierare finns:
Personnummer med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret.
Samordningsnummer med OID 1.2.752.129.2.1.3.3 och är ett nummer som kan användas av svenska myndigheter som identitet på personer som inte är folkbokförda i Sverige. Samordningsnummer tilldelas av skattekontoret på begäran av vissa myndigheter.
Reservnummer från olika landsting och regioner vilka identifieras med olika unika OID. Bland dessa återfinns bl.a. reservnummer från SLL med OID 1.2.752.97.3.1.3. Reservnummer är ett tillfälligt nummer som används för att kunna identifiera en patient med sin vårddokumentation när personnummer eller samordningsnummer saknas eller är okänt. Ett reservnummer ska anges med OID för aktuell reservnummerdefinition.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Inga krav på producent.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla känsliga personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav på konsument.

##### Tekniska fel
Inga krav på konsument.

## Gemensamma informationskomponenter
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän, och dessa beskrivs i detta avsnitt.
Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSAid-information så är HSAid-attribut i beskrivningarna nedan valfria. Se även avsnittet ”Informationssäkerhet” ovan.
ActorType
Information om medarbetare i hälso- och sjukvård som genomfört den behandling som rapporteras genom tjänstekontrakt i denna domän.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaId | HSAIdType | HSAid för personen | 0..1 |
| name | string | Namn på personen. Minst ett av dessa två fält ska anges. | 0..1 |
| personTelecom | string | Telefon till personen. | 0..1 |
| personEmail | string | Epostadress till personen. | 0..1 |
| personAddress | string | Postadress till personen. | 0..1 |
CVType
Typ som beskriver kodade värden med en struktur hämtad från HL7 v3 CV (”CodedValue”). För implementering av attribut av slaget ”KTOV” i RIV. Kodade värden avser officiellt hanterade kodverk som hänvisas till med CodeSystem OID/UUID.
För annan användning av koder, exempelvis för lokala kodverk utan OID, ska originalText attributet användas för att ge kodens text i det lokala systemet, och övriga attribut lämnas tomma.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod enligt producentsystemets kodverk. / Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| codeSystem | string | Anger kodverket som definierar koden. Dvs OID för det kodverk som används. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. Ska anges när så är möjligt. | 0..1 |
| codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. / Om separat displayName inte finns i producerande system ska det ange samma värde som för code. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
DatePeriodType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType | Periodens startdatum. Minst ett av start och end ska anges. | 0..1 |
| end | DateType | Periodens slutdatum. Minst ett av start och end ska anges. | 0..1 |
DateType
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| date | string | Datum uttrycks med formatet ”ÅÅÅÅMMDD” | 1..1 |
HealthcareProfessionalType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| authorTime | TimeStampType | Den tidpunkt då dokumentet skapades. | 1..1 |
| healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. | 0..1 |
| healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso- och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet som hälso- och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig. | 0..1 |
| healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. | 0..1 |
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
| legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
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
| orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| orgUnitEmail | string | Epost till enhet | 0..1 |
| orgUnitAddress | string | Postadress till enhet | 0..1 |
| orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering | 0..1 |
PatientSummaryHeaderType
Innehåller basinformation om ett dokument.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| documentId | string | Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| documentTime | TimeStampType | Händelsetidpunkt, om relevant. | 0..1 |
| patientId | PersonIdType | Id för patienten. Anges med 12 siffror utan avskiljare.
id sätts till patientens identifierare.
Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| accountableHealthcareProfessional | HealthcareProfessionalType | Ansvarig hälso- och sjukvårdsperson. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| careContactId | string | Identitet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| nullifiedReason | string | Anger orsak till makulering. | 0..1 |
PersonIdType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| type | string | OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
PQType
Typ som baseras på datatypen PQ enligt HL7, och som beskriver överföring av uppmätta värden (”Physical Quantity”). Tillåtna värden för ”unit” bestäms av http://unitsofmeasure.org/ucum.html. Dimension ska preciseras av fältregel vid tillämpning (ex. ”Massa”). Typen är till för presentation av givna mätvärden. Vaksamhet ska iakttagas vid konvertering mellan enheter.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| value | double | Mätetal mätt i enheten som anges av ”unit” | 1..1 |
| unit | string | Enhet enligt standard http://unitsofmeasure.org/ucum.html | 1..1 |
TimePeriodType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeStampType | Periodens starttid. Minst ett av start och end ska anges. | 0..1 |
| end | TimeStampType | Periodens sluttid. Minst ett av start och end ska anges. | 0..1 |
TimeStampType
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| timestamp | string | Tid uttrycks med formatet ”ÅÅÅÅMMDDttmmss” | 1..1 |

## Tjänstekontrakt

### GetCareContacts
GetCareContacts returnerar vårdkontakter som finns dokumenterade för en patient.
Meddelandeformatet är kompatibelt med NPÖ RIV Informationsspecifikation 2.2.1, V-MIM ”Vård- och omsorgskontakt”, enligt beskrivning i bilaga MIM_Mappningar_GetCareContacts.xlsx.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Kommentar | Kardi- / nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Begränsning av sökning avseende vårdenheter vilket motsvarar careUnitHSAId i HealthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten.
value sätts till patientens identifierare.
Type sätts till OID för typ av identifierare. Anges med 12 siffror utan avskiljare.
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, careContactTimePeriod.start och careContactTimePeriod.end i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| .start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| .end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till vårdkontakt som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. | 0..1 |
| careContactId | string | Begränsar sökningen till dokument som Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| careContact | CareContactType | De hälso- och sjukvårdskontakter som matchar begäran. | 0..* |
| .careContactHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ..documentId | string | Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ..sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ..patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ...id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ...type | string | type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ..accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdsperson som ansvarar för vårdkontakten. Ska anges om tillgänglig. | 0..1 |
| ...authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Regel 2. | 1..1 |
| ...healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdsperson som ansvar för vårdkontakten. | 1..1 |
| ...healthcareProfessionalName | string | Namn på hälso- och sjukvårdsperson. Om tillgängligt ska detta anges. | 1..1 |
| ...healthcareProfessionalRoleCode | CVType | Information om hälso- och sjukvårdspersonens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), [R9] | 0..1 |
| ....code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ....codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ....codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ....codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ....displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ....originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| …healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Regel 4. | 1..1 |
| ….orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Regel 4. | 1..1 |
| ….orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdsperson enär uppdragstagare på. Regel 4. | 1..1 |
| ….orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ….orgUnitEmail | string | Epost till enhet | 0..1 |
| ….orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdsperson en är uppdragstagare på | 0..1 |
| ….orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ...healthcareProfessionalcareUnitHSAId | HSAIdType | HSA-id för vårdenhet. Regel 1. | 1..1 |
| ...healthcareProfessionalcareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdsperson en är uppdragstagare för. Regel 1 | 1..1 |
| ..approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. Regel 3. | 1..1 |
| ..nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| ..nullifiedReason | string | Anger orsak till makulering. | 0..1 |
| .careContactBody | CareContactBodyType |  | 1..1 |
| ..careContactCode | integer | Typ av hälso- och sjukvårdsdokumentation. Tillåtna värden är: / 1 = Besök
2 = Telefon
3 = Vårdtillfälle
4 = Dagsjukvård
5 = Annan / Utelämnat värde betyder att värdet är okänt. | 0..1 |
| ..careContactReason | string | Text som beskriver orsaken till hälso- och sjukvårdskontakt som hälso- och sjukvårdstagaren själv eller dess företrädare anger. | 0..1 |
| ..careContactOrgUnit | OrgUnitType | Den enhet som kontakten utfördes vid | 1..1 |
| ...orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet | 1..1 |
| ...orgUnitName | string | Namn på organisationsenheten | 1..1 |
| ...orgUnitTelecom | string | Telefon till organisationsenheten | 0..1 |
| ...orgUnitEmail | string | Epost till organisationsenheten | 0..1 |
| ...orgUnitAddress | string | Postadress till organisationsenheten | 0..1 |
| ...orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationsenhetens eller funktionens fysiska placering | 0..1 |
| ..careContactTimePeriod | TimePeriodType | För besök sätts sluttidpunken till samma tid som anges som starttidpunkt. / För planerade kontakter sätts ingen sluttidpunkt. / Pågående vårdtillfälle ska anges på samma sätt som en planerad vårdkontakt, dvs med angivet startdatum, men utan slutdatum. | 1..1 |
| …start | TimeStampType | Starttidpunkt | 1..1 |
| …end | TimeStampType | Sluttidpunkt | 0..1 |
| ..careContactStatus | integer | Tillåtna värden är: / 1 = Ej påbörjad / 2 = Inställd / 3 = Pågående / 4 = Avbruten / 5 = Avslutad | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | healthcareProfessionalCareGiverHSAId / healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Används ofta för kontroll av tidsbegränsade spärrar i e-tjänster för sammanhållen journalföring | authorTime | Sammanhållen journalföring |
| Regel 3 | Ska kunna sättas till false för information som inte ska visas vid enskilds direktåtkomst | approvedForPatient | Enskilds direktåtkomst |
| Regel 4 | För kompatibilitet med nationell patientöversikt måste healthcareProfessionalOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | healthcareProfessionalOrgUnit / healthcareProfessionalOrgUnit.orgUnitHSAId / healthcareProfessionalOrgUnit.orgUnitName | Kompatibilitet med NPÖ |

#### Icke funktionella krav
Inga övriga icke funktionella krav.SLA-krav

#### SLA-krav
Inga avvikande SLA-krav.
