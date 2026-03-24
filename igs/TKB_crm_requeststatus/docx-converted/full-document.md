crm. requeststatus

![img_006.png](images/img_006.png)

![img_003.png](images/img_003.png)
Innehållsförteckning
1	Inledning	9
1.1	Svenskt namn	9
2	Versionsinformation	10
2.1	Version 2.0.1	10
2.1.1	Oförändrade tjänstekontrakt	10
2.1.2	Nya tjänstekontrakt	10
2.1.3	Förändrade tjänstekontrakt	10
2.1.4	Utgångna tjänstekontrakt	10
2.2	Version tidigare	10
3	Tjänstedomänens arkitektur	11
3.1	Flöden	12
3.1.1	Patientens direktåtkomst	12
3.1.2	Medarbetarens direktåtkomst	13
3.1.3	Sekvensdiagram	14
3.1.4	Obligatoriska kontrakt	14
3.2	Adressering	14
3.2.1	Adressering vid nationell användning	15
3.2.2	Adressering vid regional användning	16
3.2.3	Adressering direkt till ett källsystem	16
3.2.4	Sammanfattning av adresseringsmodell	18
3.3	Aggregering och engagemangsindex	18
3.4	Nationell användning	18
3.5	Regional användning	19
4	Tjänstedomänens krav och regler	20
4.1	Informationssäkerhet och juridik	20
4.1.1	Medarbetarens direktåtkomst	20
4.1.2	Patientens direktåtkomst	21
4.1.3	Generellt	21
4.2	Icke funktionella krav	21
4.2.1	SLA krav	22
4.2.2	Övriga krav	23
4.3	Felhantering	23
4.3.1	Krav på en tjänsteproducent	23
4.3.2	Krav på en tjänstekonsument	23
4.4	Uppdatering av engagemangsindex	23
5	Gemensamma informationskomponenter	28
5.1	CVType	28
5.1.1	Regler CVType	28
5.2	DatePeriodType	30
5.3	DateType	30
5.4	IIType	30
5.4.1	Regler för IIType	30
5.5	TimeStampType	31
6	Tjänstedomänens meddelandemodeller	32
6.1	V-MIM GetRequestActivities	32
6.2	Formatregler	34
6.2.1	Format för datum och tidpunkter	34
6.3	Tidzon för tidpunkter	35
6.4	Format för patient id	35
6.4.1	Personnummer	35
6.4.2	Samordningsnummer	35
6.4.3	Reservnummer	35
7	Tjänstekontrakt	37
7.1	GetRequestActivities	37
7.1.1	Version	37
7.1.2	Fältregler	37
7.1.3	Övriga regler	45
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| PA1 | 2012-05-29 | - | Första utkast för remiss |
| PA2 | 2012-10-31 | Johan Eltes, Callista | healthcare_facility för är satt till obligatorisk för begäran till GetRequestActivities, samt förtydligande av innebörden. |
| PA3 | 2012-11-02 | Thomas Siltberg, Mawell | Ändrat namn på healthcare_facility till organizationalUnit.
Tagit bort bindestreck i elementnamn. |
| PA4 | 2012-11-19 | Thomas Siltberg, Mawell | Ändrade domän och subdomän |
| PA5 | 2012-11-28 | Johan Eltes, Callista | Justeringar av fältbeskrivningar för engagemangsindex, samt korrigeringar av några gamla fältnamn som levt kvar. Ändrat eng. ”formOfRequest” till requestMedium”. Tagit bort text som relaterade till en specifik tjänstekonsument. |
| PA6 | 2013-01-17 | Johan Eltes, Callista | Domänen är nu ändrad från verksamhetsadressering till systemadressering. OBS: EI ska fortfarande uppdateras på PDL-enhetsnivå. / Fält för PDL-enhet är tillagt i svarsposten. / Fält för PDL-enhet i begäran är namnändrat. / Lagt till text och regler om adressering och aggregering. / Lagt till generell regel om behörighetskontroll. |
| PA7 | 2013-06-02 | Johan Eltes, Callista | Justeringar efter önskemål från CeHis Arkitektursamordning samt uppdaterat regelverket för EI. För slutgranskning av CeHis. |
| PA7 | 2013-06-05 | Johan Eltes, Callista | Tagit bort felaktig fältregel för careUnitId i response-meddelandet. Den felaktiga texten angav att värdet skulle vara samma som logicalAddress. / Ändrat kardinalitet för careUnitId från 1..1 till 0..1 för att möjliggöra för vårdenhet att stödja invånartjänster även om Care Unit HSA-id ännu inte mappats i källsystemet. |
| A | 2013-06-12 | Johan Eltes, Callista | Uppdsterat enligt granskningskommentarer från CeHis: / - Korrigerat referens till V-TIM |
| 1.0.1 | 2017-11-07 | Thomas Siltberg, Inera | Tagit bort text om att domänen är deprecated då tjänsten GetRequestActivities nu kommer att fortsätta att användas. / Ändrat careUnitId i TKB till careUnit då benämningen i schema är careUnit. / Förtydligat hanteringen av categorization vid uppdatering av EI. / Uppdaterat beskrivning av careUnitId i begöran. / Uppdaterat beskrivning av careUnit i svaret. |
| 1.0.2 | 2017-02-21 | Magnus Söderlind, Nordic Medtest | Textmaterial tillagt i domänen |
| 1.0.2 | 2018-04-11 | Thomas Siltberg, Inera | Flyttat till senaste mallversionen för TKB. / Tagit bort index-pull i avsnitt 4.1 om uppdatering av EI. / Lagt till beskrivning på typeOfRequest. |
| 1.0.2 | 2018-06-26 | Thomas Siltberg, Inera | Tagit bort beskrivning om stöd för sammanhållen journalföring |
| 1.0.2 | 2018-08-23 | Thomas Siltberg, Inera | Uppdaterat värdena i kodverket Form av framställan. / Tagit bort identifiering av kodverk för statusCode. |
| 1.0.2 | 2018-08-30 | Thomas Siltberg, Inera | Tagit bort identifiering av kodverk för typ av framställan. |
| 2.0_RC1 | 2019-02-01 | Malin Ljunggren | Påbörjat korrigeringar för version 2.0_RC1 |
| 2.0_RC1 | 2019-02-11 | Malin Ljunggren | Uppdaterat MIM inkl mappning+ beskrivningar i fältregler. |
| 2.0_RC1 | 2019-02-12 | Malin Ljunggren | Lagt till arbetsflöde för medarbetarens direktåtkomst + sekvensdiagram. / Uppdaterat logiska fel (tjänsteproducent) / Korrigerat kardinalitet på remissid. / Lagt till Övriga regler. / Uppdaterat infosäk-avsnittet (medarbetarens direktåtkomst) / Ny kod för Categorization |
| 2.0_RC1 | 2019-05-07 | Thomas Siltberg | Uppdaterat beskrivning på request.id / Kompletterat övriga regler. |
| 2.0_RC2 | 2019-05-28 | Thomas Siltberg | Tagit bort beskrivning av logiska fel som felaktigt låg kvar sedan tidigare version. Logiska fel hanteras inte längre av läsande tjänster. / Tagit bort beskrivning i avsnitt 3 att tjänsten förutsätter en aggregeringsplattform. |
| 2.0_RC2 | 2019-08-20 | Malin Ljunggren | Korrigerat datatyp i fältregeltabellen för OriginalAuthor /by/type |
| 2.0_RC2 | 2019-09-03 | Malin Ljunggren | Ändrat description för Organization till name + ändrat till obligatoriskt fält. / Lagt till en regel för statuskoderna Skickad, Svar mottaget och Makulerad / Tagit bort regel att id eller description ska anges för recievingOrganization. |
| 2.0_RC2 | 2019-09-06 | Malin Ljunggren | Tagit bort regel att id eller description ska anges för author + text att id eller description ska anges för author och recievingOrganization (fältregeltabellen) |
| 2.0_RC2 | 2019-09-17 | Malin Ljunggren | Korrigerat sista regeln (remittent är obligatoriskt att ange). |
| 2.0_RC3 | 2019-12-12 | Thomas Siltberg | Uppdaterat JoL-headern till version 1.2. |
| 2.0_RC3 | 2020-02-13 | Thomas Siltberg | Tagit bort careContactId från requesten. / Förtydligat beskrivningen av patientId i requesten. / Lagt till kapitel 5 om 	Gemensamma / informationskomponenter. / Lagt till referens R6 och R7. |
| 2.0_RC3 | 2020-03-10 | Thomas Siltberg | Uppdaterat beskrivningen för datePeriod i förfrågan. |
| 2.0_RC3 | 2020-03-10 | Thomas Siltberg | Uppdaterat beskrivningen av sourceSystemHSAId i begäran. / Uppdaterat till Gemensam Header version 1.3. |
| 2.0_RC4 | 2021-04-20 | Thomas Siltberg | Ändrat requestActivity/body/request/id till sträng och uppdaterat beskrivningen. |
| 2.0_RC4 | 2021-04-27 | Tobias Blomberg | Lagt till referens R9 / Ändrat förklaring för förkortningar och enbart hänvisa till aktuell referens / Referenser till SOSFS 2008:14 ersatts av HSLF-FS 2016:40 / Ändrat förekomster av ”skall” till ”ska” samt ”oid” till ”OID”. / Uppdaterat beskrivningen under kap 4.3 / Uppdaterat länk till kodverk och identifierare / Uppdaterat beskrivningen av attribut MostRecentContent under kap 4.1. / Uppdaterat tjänstedomänens beskrivning samt tjänstekontraktets beskrivning / Uppdaterat beskrivningen av tidsfiltrering under attributet datePeriod i GRA |
| 2.0_RC5 | 2021-06-01 | Thomas Siltberg | Uppdaterat headern till version 1.5 |
| 2.0_RC6 | 2021-06-15 | Thomas Siltberg | Uppdaterat till mallversion 1.8.4. / Uppdaterat V-MIM. |
| 2.0_RC7 | 2022-04-06 | Tobias Blomberg | Beskrivningen för attributet ../../../blockComparisonTime uppdaterad. / Ändrat namnet för kodverket gällande remiss-status |
| 2.0 | 2022-08-17 | Tobias Blomberg | Version fastställd |
| 2.0.1 | 2023-09-26 | Tobias Blomberg / Rebecca Ceder | Lagt in i ny mall med Ineras nya grafiska profil. / Rättat figurnummer / Ändrat Datainspektionen till Integritetsskyddsmyndigheten på grund av namnbyte hos myndighet / Ändrat svarstiden under kap 4.2.1 från 30 sek till 27 sek enligt regler i RIV-TA. Totaltiden är fortfarande 30 sek men 3 sek behövs för bearbetning hos tjänstekonsumtenten. / Tagit bort förkortningar för tjänsteproducent och tjänstekonsument i avsnittet Förkortningar då dessa inte är vedertagna. / Uppdaterat kap 5 för att innefatta gemensamma informationskomponenter för domänen. / Uppdaterat beskrivning av patientId i begäran i GetRequestActivities / Lagt till referens R11 som beskriver begreppen vårdgivare och vårdenhet. / Uppdaterat kapitlet ”Övriga regler” för att innefatta alla schematronregler samt göra befintliga regler tydligare. / Rödmarkerat attributet lockTime samt lagt till regel om att attributet inte ska användas då låsning ej är tillåten längre enligt SOSFS 2016:40 . / I headern: ändrat från ”uppgift i patientjournal” till remisstatus för att tydliggöra vad fälten avser beskriva. / Tagit bort skrivningen att eventTime kan vara samma som recordTime under attributet eventTime. |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut | Obligatoriskt. / Finns på webben. | Distribueras med detta dokument. |
| R2 | RIVTA flera dokument | Finns på Webben. | Länk |
| R3 | Informationsspecifikation för Remisstatus | Obligatoriskt / Finns på webben. | Distribueras med detta dokument. |
| R4 | Gemensam Header version 1.5 | Bitbucket. | Bilaga JoL Header Fältregler_v.1.5.docx |
| R5 | Identifierare, kodverk och urval i de nationella tjänstekontrakten | Finns på webben. | Länk / Länk |
| R6 | Gemensamma datatyper version 12 | Bitbucket. | Bilaga Gemensamma_typer_v12.pdf |
| R7 | Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben. | Länk |
| R8 | RIV Tekniska Anvisningar |  | Länk |
| R9 | RIV Tekniska Anvisningar – Parallella huvudversioner av ett tjänstekontrakt |  | Länk |
| R10 | De facto-konventioner för datatyper | - | Länk |
| R11 | Förtydliganden Vårdgivare Vårdenhet | Från HSA Katalogtjänst. | Länk |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| HSA | Hälso- och Sjukvårdens Adressregister | Se R8 |
| EI | Engagemangsindex | Se R8 |
| TP | Tjänsteplattformen | Se R8 |
| KS | Källsystem | Se R8 |
| AP | Anslutningspunkt | Se R8 |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
crm: requeststatus
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
individens processtöd:remissatus
remisstatus

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen crm: requeststatus. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0.1

#### Oförändrade tjänstekontrakt
I denna version finns inga oförändrade tjänstekontrakt.

#### Nya tjänstekontrakt
I denna version finns inga nya tjänstekontrakt

#### Förändrade tjänstekontrakt
GetRequestActivities, version 2.0
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetRequestActivities | 1.0.4 | 2.0 | Ej kompatibel |
|  | 2.0 | 1.0.4 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
2.0

## Tjänstedomänens arkitektur
Denna domän hanterar information om status för en remiss avseende en patient. Tjänsten för remisstatus erbjuder sökning av remisstatus-information rörande patientens remisser utgående från hälso- och sjukvårdsgivarnas remissprocesser. Utgångspunkten är patientens och professionens behov av direktåtkomst till status rörande remisser som är under hantering.
Domänen ställer inga krav på att verksamheten är ansluten till tjänsten Elektronisk remiss.
Utgångspunkten är i första hand patientens och professionens behov av direktåtkomst till en patients hälso- och sjukvårdshistorik sett ur ett nationellt eller ett regionalt perspektiv.
I båda fallen är syftet att historisk information sammanställs från de källsystem där det finns historik, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det systemet, istället för den aggregerande tjänsten.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna. Figuren nedan visar användning inom patientens direktåtkomst.

### Flöden

#### Patientens direktåtkomst

##### Arbetsflöde

![Figur 1. Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (till exempel från Journalen på nätet)](images/img_009.png)

#### Medarbetarens direktåtkomst

##### Arbetsflöde

![img_007.png](images/img_007.png)
*Figur 2. Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (till exempel från NPÖ-tillämpningen).*

#### Sekvensdiagram

![img_004.png](images/img_004.png)
*Figur 3. Sekvensdiagram över sökning efter information om remisstatus. Diagrammet visar på två alternativa sekvenser där det första alternativet gäller när aggregerande tjänster adresseras och det andra alternativet gäller när källsystemet adresseras.*

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Patientens direktåtkomst | Medarbetarens direktåtkomst |
| :--- | :--- | :--- |
| GetRequestActivities | X | X |

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA. Det sker vanligen genom att ett sådant anrop föregås av antingen ett anrop till en aggregerande tjänst (källsystemets HSAid finns då i svarsmeddelandet) eller genom att tjänstekonsumenten direkt interagerar med ett engagemangsindex (indexposterna innehåller källsystemets HSAid). Detta scenario beskrivs i avsnitt 2.4.3. Det kan också ske genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direkt adressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten. Följande figur illustrerar adressering av aggregerande tjänst genom ett exempel. Det är alltid källsystemets HSA-id som är logisk adress när en aggregerande tjänst anropar en anslutningspunkt (ap), även om det inte är just källsystemet som är anslutningspunkt eller ens tjänsteproducent (i fallet av ett mellanlager).

#### Adressering vid nationell användning

![img_002.png](images/img_002.png)
*Figur 4. Adressering vid anrop till nationell aggregerande tjänst (till exempel från Journalen på nätet eller NPÖ-tillämpningen).*

#### Adressering vid regional användning

![img_012.png](images/img_012.png)
*Figur 5. Adressering vid anrop till regional aggregerande tjänst (t.ex. från ett vårddokumentationssystem, Journalen på nätet eller en regional patientöversikt).*

#### Adressering direkt till ett källsystem
Tjänstekontrakten i denna domän möjliggör sökning av information relaterad till en patient.
När patienten eller medarbetaren inom vård och omsorg använder en e-tjänst för att följa ett remissflöde används en aggregerande tjänst. Men det kan också finnas behov av händelsedrivet agera när en status förändras. Det kan göras genom att prenumerera på händelser från engagemangsindex. Då blir e-tjänsten notifierad genom att vara tjänsteproducent för tjänstekontraktet ProcessNotification. Engagemangsindex genererar då händelser när det sker förändringar i ett källsystem. Eftersom e-tjänsten då vet vilket källsystem som har en ny status, kan e-tjänsten via virtuell tjänst i en tjänsteplattform, anropa källsystemet istället för att gå via en aggregerande tjänst. Man behöver därför avgränsa en sådan fråga till ett specifikt källsystem. Det görs helt enkelt genom att ange källsystemets HSA-id som sökparameter samt att ange källsystemets HSA-id som logisk adress.

![img_010.png](images/img_010.png)
*Figur 6. Flöde som förutsätter adressering med källsystemets HSAid.*
Eftersom anropet i detta fall sker direkt mot virtuell tjänst, sker adressering med källsystemets HSA-id direkt från tjänstekonsumenten. Detta beskrivs i figuren nedan.

![img_005.png](images/img_005.png)
*Figur 7. Adressering vid sökning efter information ur ett specifikt källsystem*

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| För alla huvudmän | Ineras HSA-id |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigera vidare direkt till källsystemet utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex, vidarebefordrar frågan till de källsystem som har information om patienten.

### Nationell användning
Vid nationell användning av tjänstekontrakten (d.v.s. tjänstekonsumenter som begär information från alla tjänsteproducenter i Sverige) sker aggregering av informationen genom aggregerande tjänster i den gemensamma tjänsteplattformen. Regioner och Landsting tillhandahåller då källsystemens (KS) information genom anslutningspunkter (AP) i enlighet med tjänstekontrakten. Det kan t.ex. ske enligt olika modeller:
A: Direktanslutning av källsystem: Källsystemet är anslutningspunkten till gemensamma tjänsteplattformen
B: Källsystem ansluts via regional tjänsteplattform: Regionens tjänstplattform är anslutningspunkt till gemensamma tjänsteplattformen
C: Mellanlager ansluts direkt eller via regional tjänsteplattform: Ett mellanlager avskärmar källsystemen från den last som uppstår vid från nationella medarbetar- och invånartjänster
Modellerna illustreras nedan (från höger till vänster):

![img_013.png](images/img_013.png)
*Figur 8: Olika modeller för anslutning av källsystem.*
Anslutningsmodellerna förutsätter att:
vårdsystemen uppdaterar nationellt engagemangsindex – direkt eller indirekt via regionalt index. Källsystemets HSA-id anges i engagemangsposten jämte övrig info enligt beskrivning i särskilt avsnitt under regelverk.
en ev. regional tjänsteplattform kan dirigera anrop till rätt tjänsteproducent baserat på källsystemets HSA-id (på samma sätt som nationellt).
tjänsteproducenten validerar att aktuell tjänstekonsument (HSA-id i http-header) är godkänd av verksamheten (informationsägande vårdenhet).

### Regional användning
Regional användning innebär att tjänstekonsumenten är regional (R-K) och begär information från alla producenter i regionen, avseende ett visst tjänstekontrakt inom tjänstedomänen. Det innebär att regionen behöver utföra regional aggregering i den regionala tjänsteplattformen. Anslutningen av regional tjänsteplattform till nationell påverkas inte av att regionen inför en regional aggregerande tjänst:

![img_011.png](images/img_011.png)
*Figur 9: Anslutning av källsystem via regional tjänsteplattform.*

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik

#### Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från integritetsskyddsmyndigheten om ytterligare teknisk åtkomstkontroll.
HSLF-FS 2016:40 ställer också krav (via "Journalföring och behandling av personuppgifter i hälso- och sjukvården", se referens R7) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet). Det kompletta regelverket finns i handboken samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).

##### Spärrkontroll
Den spärrkontroll som behöver utföras kan behöva utföras i två nivåer.
På meddelandeposten i sin helhet
Är meddelandeposten spärrad ska hela posten filtreras bort innan presentation för användare.
På delar av en meddelandepost
I vissa tjänstekontrakt finns möjlighet att i en meddelandepost peka ut annan journalinformation (andra meddelandeposter som kan hämtas via samma eller annat tjänstekontrakt), till vilken ett samband finns från meddelandeposten ifråga. Denna utpekade information kan i sig vara spärrad. Den del av meddelandeposten som håller information om relaterad information som är spärrad måste filtreras bort innan presentation för användare.

#### Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får utlämnas till patient. Det kan t.ex. ha skett genom menprövning eller rådrum. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.

#### Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.

### Icke funktionella krav
Det är den informationsproducerande vårdgivarens ansvar att endast ett källsystem tillhandahåller informationen via lästjänst och engagemangsindex där patientdata lagras i flera källsystem. Konsumenter som är anslutna till flera majorversioner av samma kontrakt måste hantera dubblettborttagning mellan dessa. Detta sker genom att jämföra identiteter på postnivå och endast behålla en av de poster som returnerats, se R9.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | Svarstiden för ett anrop får inte överstiga 27 sekunder. | Svarstid |
| Tillgänglighet | 24x7, 99,5% | Tillgänglighet |
| Last | Tjänsteproducenten ska kunna hantera minst dubbla mängden frågor per dygn i förhållande till antalet journaluppdatering per dygn. | Last |
| Aktualitet | Kraven på aktualitet varierar för olika tjänstekonsumenter. Det behöver inte vara absolut aktualitet i förhållande till källsystemet, men ju mindre fördröjning desto bättre. Ett riktmärke är att försöka undvika längre fördröjning än 60 minuter. Fördröjningen avser både journaldata och uppdatering av engagemangsindex. / Uppdatering av engagemangspost måste ske så att engagemangsposten refererar data som är omedelbart tillgängligt via tjänstekontraktet. | Aktualitet |
| Robusthet | Om komplett tidsintervall inte angivits i frågan kan tjänsteproducenten kan välja att lämna ett delsvar i syfte att uppfylla svarstidskravet. Delsvaret måste då vara avgränsat i tiden genom att det finns äldre men inte nyare data än det äldsta som returnerats. | Robusthet |
| Samtidighet | Tjänsteproducenten ska hantera minst 10 samtidiga frågor. | Samtidighet |

#### Övriga krav

##### Gemensamma konsumentregler
R1 (invånartjänster): Filtrera enligt flagga ”approvedForPatient”
R2: Tillämpa regelverk enl. PDL
R3: Aggregerande sökning förutsätter användning av individens senast gällande huvudidentitet, användning av andra identiteter för individ är enbart tillåten i vid anrop till ett källsystem.

##### Gemensamma producentregler
R1: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
N/A

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (Soap Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga krav på konsument

##### Tekniska fel
Inga krav på konsument.

### Uppdatering av engagemangsindex
Alla källsystem ska uppdatera engagemangsindex. Engagemangsindex ska uppdateras så snart en händelse inträffar som påverkar indexposterna enligt beskrivningen nedan.
All uppdatering av engagemangsindex sker genom att källsystemet anropar engagemangsindex genom tjänstekontraktet urn:riv:itintegration:engagementindex:UpdateResponder:1 (”index-push”).
Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän:

| Attribut | Beskrivning | Format | Kardinalitet | Kodverk/värde-mängd 
/ ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens person-nummer | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). | 1..1 |  | Del av instansens unikhet |
| Service domain* | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän1>:<underdomän2> | 1..1 | ”riv:crm:requeststatus” | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text i ASCII | 1..1 | Värde enligt tabell nedan. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för den tjänstedomän som anges av fältet Service Domain. | 1..1 | Samma värde som fältet Source System. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Text | 1..1 | ”NA” – d.v.s. ej tillämpat för tjänstedomänen. | Del av instansens unikhet |
| Clinical process interest Id | Hälsoärende-id | GUID | 1..1 | ”NA” (ännu ej tillämpat i tjänstedomänen) | Del av instansens unikhet |
| Most Recent Content* | Tidpunkt för senaste uppdatering av den informationstyp och patient i den källa som denna indexpost avser. | DT | 1..1 | Tidpunkt för senaste händelse som matchar indexposten. Kan även avse borttag. Ex: En indexpost representerar 2 bef. dokument. Ett av dem tas bort. Det markeras genom att bef. post uppdateras med tidpunkt för borttagshändelsen. |  |
| Creation / Time | Tidpunkten då index-posten regi-strerades | DT | 1..1 | Sätts automatiskt av EI-instansen. | Genereras automatiskt av kontraktets tjänste-producent |
| Update Time | Tidpunkten då index-posten senast upp-daterades | DT | 0..1 | Sätts automatiskt av EI-instansen. | Upp-datering innebär ny post som matchar samtliga attribut som är del av en instans unikitet. |
| Owner | Organisation vars index tog emot ”update” från ”source system” | Organisationsnummer (HSA-id) för organisationen som äger indexinstansen. Organisationen är en myndighet eller Inera om uppdateringen togs emot direkt av nationellt index. | 1..1 | Syftet är att skapa förutsättningar för att undvika rundgång mellan notifierande parter. | Del av instansens unikhet |
| Source System | Systemet som genererade engagemangsposten | Källsystemets HSA-id. Detta HSA-id ska gälla den systeminstans som ansvarar för originalinformationen. Det kan vara ett annat HSA-id än för den tekniska anslutningspunkten. | 1..1 | Syftet är att underlätta felsökning och ge spårbarhet. | Del av instansens unikhet |
| Data Controller | Personuppgiftsansvarig organisation | Vårdgivarens organisationsnummer eller HSA-id / eller inom källsystemet unik identifierare för vårdgivaren. | 1..1 | ”SE”<organisationsnummer>. Exempel: ”SE5565594230” eller HSA-id, eller / systemspecifik identitet. | Del av instansens unikhet |
Categorization för tjänstekontrakt i denna domän:

| Tjänstekontrakt | Categorization |
| :--- | :--- |
| GetRequestActivities | req-act |

## Gemensamma informationskomponenter
Gemensamma informationskomponenter är typer gemensamma för användning i tjänstekontrakt i flera domäner. Nedan listas de gemensamma typer som används i domänen. Dessa är hämtade från version 20 av de gemensamma datatyperna [R8].

### CVType
En CVType är en referens till ett begrepp som definieras i ett externt kodverk (kodsystem, terminologi eller ontologi). Se vanligt förekommande kodverk [R5]. En CVType kan innehålla en enkel kod, det vill säga en hänvisning till ett begrepp som definieras direkt av det refererade kodverket, eller den kan innehålla ett uttryck i någon syntax definierad av det refererade kodverket som kan utvärderas, exempelvis begreppet "vänster fot" som är ett postkoordinerat uttryck byggt från den primära koden "FOT" och bestämningen "VÄNSTER".

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod eller uttryck definierad enligt kodverket. | 0..1 |
| codeSystem | string | Kodverket som definierar koden. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. | 0..1 |
| codeSystemVersion | string | Versionsangivelse som har definierats specifikt för det givna kodverket. | 0..1 |
| displayName | string | Den läsbara representationen (klartext) av koden eller uttrycket som definieras av kodverket. | 0..1 |
| originalText | string | Texten så som sedd och/eller vald av användaren som har matat in den, och som representerar användarens avsedda betydelse. | 0..1 |

#### Regler CVType
code
code ska vara en exakt match till en kod eller ett uttryck definierat av kodverket, som refereras till i codeSystem. Om kodverket definierar en kod eller ett uttryck som inkluderar mellanslag, ska koden inkludera mellanslaget. Ett uttryck kan endast användas där kodverket antingen definierar en uttryckssyntax, eller där det finns en allmänt accepterad syntax för kodverket.
Det åligger det mottagande systemet att bedöma om man kontrollerar huruvida det är ett uttryck som har skickats istället för en enkel kod, och utvärdera uttrycket istället för att behandla uttrycket som en kod. I vissa fall kan det vara oklart eller tvetydigt om koden representerar en enda symbol eller ett uttryck. Detta uppstår vanligtvis där kodverket definierar ett uttrycksspråk och sedan definierar prekoordinerade begrepp med symboler som matchar deras uttryck, t.ex. UCUM. I andra fall är det säkert att behandla uttrycket som en symbol. Det finns ingen garanti för att detta alltid är säkert: definitionerna i kodverket bör alltid konsulteras för att avgöra hur man ska hantera potentiella uttryck.
codeSystem
Kodverk ska refereras till genom en globalt unik identifierare, som möjliggör entydig hänvisning till standardkodverk eller andra lokala kodverk. Identifieraren ska vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI). En CVType som har ett kodattribut ska ha ett kodverk som specificerar begreppsystemet som definierar koden.
codeSystemName
Syftet med ett kodverksnamn är att hjälpa en mänsklig tolkare av en kod att tolka codeSystem. Tjänstekonsumenter och tjänsteproducenter som använder codeSystemName ska INTE funktionellt förlita sig på kodverkets namn. Dessutom KAN de välja att inte implementera kodverkets namn men ska INTE avvisa instanser då namnet finns.
codeSystemVersion
Olika versioner av ett kodverk måste vara kompatibla. Per definition ska en kod ha samma betydelse i alla versioner av ett kodverk. Mellan versioner kan koder inaktiveras men inte tas bort eller återanvändas. Om klartexten av en kod ändras måste den fortfarande vara kompatibel (lika) mellan olika kodverksversioner.
displayName
Om ifylld, ska klartexten vara den läsbara representationen av koden eller uttrycket som definieras av kodverket vid tiden för datainmatningen. Om kodverket inte definierar en klartext för koden eller uttrycket, kan ingen tillhandahållas. Tjänstekonsumenter och tjänsteproducenter som hävdar direkt eller indirekt överensstämmelse KAN välja att inte implementera klartext men ska INTE avvisa instanser då klartext finns.
Huvudsyfte med klartexten är att stödja implementationsfelsökning, men kan även användas till andra tillämpningsspecifika ändamål som till exempel visning för användaren i gränssnittet.
originalText
Det finns två godkända tillämpningar av elementet originalText:
OriginalText kan användas för att beskriva det en användare angav och som representeras av koden. I en situation där användaren dikterar eller skriver text är originalText den text som matats in eller yttrats av användaren.
OriginalText kan användas i de fall producenten avser ange ett värde som saknar kod. I dessa fall motsvarar originalText benämningen för värdet som saknar kod. Behov att tillföra nya koder till kodverket förmedlas till den som ansvarar för kodverkets innehåll.
OriginalText ska vara den exakta text så som den presenteras i originalkällan utan att på något sätt bearbetas eller omvandlas. Således ska originalText representeras i vanlig textform.

### DatePeriodType
Ett datumintervall anges normalt sett med ett start- och ett slutdatum, men öppna intervall är tillåtna. Huruvida ändpunkterna inkluderas i intervallet eller ej bör tydligt beskrivas vid varje enskild tillämpning.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType | Periodens startdatum. Minst ett av start och end skall anges. | 0..1 |
| end | DateType | Periodens startdatum. Minst ett av start och end skall anges. | 0..1 |

### DateType
Datum anges som en sträng med formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”. Tidszon anges inte. Datum ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### IIType
En IIType är en numerisk eller alfanumerisk sträng som kan härledas till ett enskilt objekt eller entitet i ett känt system. Exempel är ett personnummer eller ett vårdkontakts-id. Se identifierare i nationella tjänstekontrakt [R5].

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En identifierare som i sig själv eller tillsammans med värdet för extension är universellt unik. Om extension anges är root en unik identifierare av namnrymden för värdet som anges i extension. | 1..1 |
| extension | string | En identifierare som tillsammans med värdet för root är universellt unik. Används om värdet på root inte är universellt unikt. | 0..1 |

#### Regler för IIType
root
När root används som en identifierare av en namnrymd ska identifieraren vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI).
extension
Vissa scheman för identifierare definierar formateringsmöjligheter för deras kodvärden. Till exempel så skrivs personnumret vanligtvis med bindestreck, 19121212-1212. Bindestrecket bär dock ingen betydelse och kan utelämnas, som i 191212121212.

### TimeStampType
Tidpunkt anges som en sträng med formatet ”ÅÅÅÅMMDDttmmss”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”. Tidszon anges inte. Tidpunkt ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen.

### V-MIM GetRequestActivities

![Klassen i modellen med streckade linjer runt visar begäran och resten visar svaret. De klasser som är gråa är information som finns i den gemensamma headern, men är inte aktuella för detta tjänstekontrakt.](images/img_008.png)
Klassen i modellen med streckade linjer runt visar begäran och resten visar svaret. De klasser som är gråa är information som finns i den gemensamma headern, men är inte aktuella för detta tjänstekontrakt.
Meddelandemodellen visar den struktur som tjänstekontraktet har med dess header och body. Informationsmodellen i informationsspecifikationen visar behoven och har inte samma struktur som meddelandet. Tabellen nedan visar en mappning mellan informationen i meddelandemodellen (MIM:en) och informationen som den visas i informationsmodellen i informationsspecifikationen [R3]. Där mappning saknas har behoven ej framkommit vid framtagning av informationsmodellen utan är information som finns med tack vare den gemensamma headern som används eller som är av mer teknisk karaktär. Meddelandemodellen är en identisk representation av schemat och någon mappning mot schemat behövs därför inte i tabellen nedan.

| Klass.attribut i MIM | Mappning mot klass och attribut i informationsmodellen |
| :--- | :--- |
| HeaderType |  |
| sourceSystemId | - |

| AccessControlHeaderType | - |
| :--- | :--- |
| accountableHealthcareProvider | vårdgivare.id |
| accountableCareUnit | vårdenhet.id |
| originalPatientId | patient.id |
| careProcessId | - |
| lockTime | - |
| blockComparisonTime | - |
| approvedForPatient | remisstatus.utlämnas till patient |

| RecordType | - |
| :--- | :--- |
| id | remisstatus.id |
| timeStamp | - |

| AuthorType | Beror på vem som sätter statusen. Kan vara Remittent, Remissmottagande person eller remissbesvarande person |
| :--- | :--- |
| id |  |
| name | remittent.namn, remissmottagande person.namn, remissbesvarande person.namn |
| timestamp | - |
| byRole | - |

| RequestActivityBodyType | - |
| :--- | :--- |
| statuscode | remisstatus.status |
| eventTime | remisstatus.händelsetidpunkt |

| RequestType | Remiss |
| :--- | :--- |
| Id | id |
| type | remisstyp |
| medium | medium |

| RequestAuthorType | Remittent |
| :--- | :--- |
| name | namn |

| OrganizationType | Remissmottagande enhet / Remitterande enhet |
| :--- | :--- |
| id | Remissmottagande enhet.vårdenhet.id / Remitterande enhet.vårdenhet.id |
| name | Remissmottagande enhet.vårdenhet.namn / Remitterande enhet.vårdenhet.namn |

### Formatregler

#### Format för datum och tidpunkter
Datum anges på formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

### Tidzon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Format för patient id

#### Personnummer
Personnummer anges enligt format ÅÅÅÅMMDDNNNN.

#### Samordningsnummer
Samordningsnummer anges enligt format ÅÅÅÅMMDDNNNN.
De inledande sex siffrorna utgår från personens födelsetid (år, månad och dag). Därefter följer ett tresiffrigt individnummer som motsvarar födelsenumret i ett personnummer. Individnumret hämtas slumpvis ur en serie 001-999 för alla som är födda samma dag. Numret är udda för män och jämnt för kvinnor. Siffran för födelsedag ökas med talet 60 och en kontrollsiffra beräknas på samma sätt som för ett personnummer.
Exempel
Samordningsnummer för en man som är född den 3 oktober 1970 och har individnummer 239 blir
19701003
+60
————---
197010632391

#### Reservnummer
Format för lokala reservnummer: Olika format för varje landsting/region och därmed krav på flexibel hantering.
Några exempel på reservnummer i olika regioner:
201612345678, 19521234TA3C, 20081234-0123, 123456-DA0A, 123456789A.

## Tjänstekontrakt

### GetRequestActivities
Detta kontrakt returnerar en lista med status för en patients remisser. Tjänsten returnerar status/aktivitetsrader för de remisser som finns på det personnummer som är inkluderat i anropet. Tjänsten levererar en rad för varje aktivitet/status som en remiss passerat i remissprocessen.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Beskrivning”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”. Hänvisningar till kodverk finns på webben [R5].

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | IIType | Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdenhet. | 0..* |
| careGiverHSAId | IIType | Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdgivare. | 0..* |
| patientId | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet. / En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att samtliga statusrader för en remiss ska returneras där minst en av statusradernas body.eventTime ligger inom sökintervallets start- och slutdatum eller där en av statusradernas body.eventTime ligger före och en annan efter. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / OBS! Datumet gäller för remissen, dvs om någon statusrad faller inom intervallet så ska alla statusrader för denna remiss returneras. | 0..1 |
| sourceSystemHSAId | IIType | Källsystemets id / Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / systemHSAId.root = 1.2.752.129.2.1.4.1 / (HSA-id OID) / Ska anges vid begäran på reservnummer. | 0..1 |
| typeOfRequest | CVType | Remisstyp / Kod som anger vilken typ av remiss som avses. / KV framställantyp / OID: 1.2.752.129.2.2.2.24 / Giltiga värden: / 1 = röntgenremiss / 2 = labbremiss / 4 = allmänremiss / Se [R5]. | 0..* |
| Svar |  |  |  |
| requestActivity | RequestActivityType | Remisstatus som matchar begäran | 0..* |
| ../header | HeaderType | Innehåller information som är gemensam för remisstatusen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en remisstatus samt information om signering. | 1..1 |
| ../../accessControlHeader | AccessControlHeaderType | Information som används för kontroll av åtkomst. | 1..1 |
| ../../../accountableHealthcareProvider | IIType | Id för uppgiftsägande vårdgivare [R11]. / I första hand HSA-id, i andra hand organisationsnummer. / Om HSA-id används: / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id / Om organisationsnummer används: / root sätts till OID för organisationsnummer (1.2.752.29.4.3) / extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. / Regel 2.1 | 1..1 |
| ../../../accountableCareUnit | IIType | HSA-id för vårdenheten [R11] där uppgiften är dokumenterad. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id / Regel 2.1 | 0..1 |
| ../../../originalPatientId | IIType | Personidentifieraren som den tillgängliggjorda remisstatusen lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 0..1 |
| ../../../careProcessId | IIType | Id för den individanpassade vårdprocess som remisstatusen journalförts inom ramen för. Består av ett lokalt genererat UUID. / root sätts till UUID / extension anges ej | 0..1 |
| ../../../lockTime | TimeStampType | Ska ej användas! / Regel 2.2 | 0..0 |
| ../../../blockComparisonTime | TimeStampType | Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr. / Informationsägaren väljer själv en lämplig tidpunkt, t.ex. tidpunkten då remissen först skickades. | 1..1 |
| ../../../approvedForPatient | boolean | Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida remisstatusen får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). / Om remisstatusen beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. / Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex. | 1..1 |
| ../../sourceSystemId | IIType | Det källsystem som remisstatusen lagras i. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till källsystemets HSA-id | 1..1 |
| ../../record | RecordType | Information avseende remisstatusen som tillgängliggörs. | 1..1 |
| ../../../id | IIType | Identifierare för remisstatus. / Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. / Root sätts till systemHSA-id / Extension sätts till id för remissen | 1..1 |
| ../../../timestamp | TimeStampType | Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem. | 1..1 |
| ../../author | AuthorType | Information avseende dokumentation av remisstatus som tillgängliggörs. / Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses. | 0..1 |
| ../../../id | IIType | HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen som tillgängliggörs. / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| ../../../name | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| ../../../timestamp | TimeStampType | Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades. / I de fall då remisstatusen ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där remisstatusen ursprungligen dokumenterades. | 1..1 |
| ../../../byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| ../../signature | AuthorType | Ej aktuell för remisstatus | 0..0 |
| ../body | RequestActivityBodyType |  | 1..1 |
| ../../statusCode | CVType | Angivelse av vilken status remissen befinner sig i. / Anges med Kv status vårdbegäran [R5] / OID: 1.2.752.129.2.2.2.43 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på kontraktet uppdateras. | 1..1 |
| ../../eventTime | TimeStampType | Händelsetidpunkt / Tidpunkt då en händelse inträffade, dvs när en ändring av remisstatus sker. | 1..1 |
| ../../request | RequestType | Den utfärdade remissen. | 1..1 |
| ../../../id | string | Remiss-id. Unik identifierare av remissen. / Vid kännedom om remittentens id på remissen ska detta anges för att kunna koppla ihop flera status och följa remissens status-information över tid. / I det fall kännedom om remittentens id på remissen saknas ska källsystemets unika id på remissen anges. / I det fall remissens id (sträng) består av flera delar, t.ex. enligt formatet ”källsystem-Id(HSA-ID)#lokalt-id” så ska hela strängen anges. | 1..1 |
| ../../../type | CVType | Remisstyp. Kod och klartext som anger vilken typ av remiss som avses. / Anges med Kv framställantyp [R5] / OID: 1.2.752.129.2.2.2.24 / Giltiga värden: / 1 = röntgenremiss / 2 = labbremiss / 4 = allmänremiss / Exempel: / request.type.codesystem = 1.2.752.129.2.2.2.24 / request.type.code = 4 / request.type.displayName = allmänremiss | 0..1 |
| ../../../medium | CVType | Medium. Kod och klartext som anger medium för remissen. / Anges med Kv Form av framställan [R5] / OID: 1.2.752.129.2.2.2.7 / Giltiga värden: / 3 = skriftligt elektroniskt / 4 = skriftligt papper / Exempel: / medium.codesystem = 1.2.752.129.2.2.2.7 / medium.code = 3 / medium.displayName = skriftligt elektroniskt | 0..1 |
| ../../../author | RequestAuthorType | Remittent / Författare av remissen. | 0..1 |
| ../../../../name | string | Remittentens namn | 1..1 |
| ../../../../organization | OrganizationType | Remitterande enhet | 1..1 |
| ../../../../../id | IIType | Remitterande enhetens id / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| ../../../../../name | string | Remitterande enhetens namn. | 1..1 |
| ../../../receivingOrganization | OrganizationType | Remissmottagande enhet. | 1..1 |
| ../../../../id | IIType | Remissmottagande enhets id / Identitetsbeteckning för den som är angiven mottagare till remissen eller den faktiska mottagaren om detta ändras (om remissen har skickats vidare). / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| ../../../../name | string | Remissmottagande enhetens namn. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).
Gemensamt för alla övriga regler som valideras med hjälp av schematron är att om fältet inte är obligatoriskt och inte finns med i nyttolasten så kommer regeln inte ge ett fel.

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i getRequestActivities/request | Regler i getRequestActivities/request | Regler i getRequestActivities/request |
| Regler i getRequestActivities /response/header | Regler i getRequestActivities /response/header | Regler i getRequestActivities /response/header |
| 2.1 | ../../../accountableHealthcareProvider / ../../../accountableCareUnit | Fältet krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av tjänstekonsumenter inom sammanhållen journalföring. |
| 2.2 | ../../../lockTime | Detta element skall ej användas. Enligt SOSFS 2016:40 ska det ej längre finnas möjlighet att låsa osignerade journalanteckningar |
| 2.3 [sch] | ../../../accountableHealthcareProvider/root | Anges till något av värdena: / 1.2.752.129.2.1.4.1 / 1.2.752.29.4.3 |
| 2.4 [sch] | ../../../accountableCareUnit/root | Anges till värdet / 1.2.752.129.2.1.4.1 |
| 2.5 [sch] | ../../author/id/root | Anges till värdet / 1.2.752.129.2.1.4.1 |
| 2.6 [sch] | ../../author/byRole/codeSystem | Anges till värdet / 1.2.752.129.2.2.1.4 |
| 2.7 [sch] | ../../record/id | ska vara unikt inom källsystemet |
| Regler i getRequestActivities/response/body | Regler i getRequestActivities/response/body | Regler i getRequestActivities/response/body |
| statusCode [sch] | ../../statusCode | Elementet ska ha något av värdena i KV status vårdbegäran / (OID: 1.2.752.129.2.2.2.43) |
| request.type [sch] | ../../request/type | Elementet ska ha något av värdena i KV framställantyp (OID: 1.2.752.129.2.2.2.24) / Giltiga värden: / 1 = röntgenremiss / 2 = labbremiss / 4 = allmänremiss |
| request.medium [sch] | ../../request/medium | Elementet ska ha något av värdena i KV Form av framställan (OID: 1.2.752.129.2.2.2.7). / Giltiga värden: / 3 = skriftligt elektroniskt / 4 = skriftligt papper |
| request.author [sch] | ../../request/author | Remittent är obligatoriskt då någon av följande koder anges: / body.statusCode.code =1 (Skickad) / body.statusCode.code =7 (Svar mottaget) / body.statusCode.code =11 (Makulerad) |
| Allmänna regler | Allmänna regler | Allmänna regler |
| pattern.CVType [sch] | ../../author/byRole | Om code anges SKA codeSystem samt displayName anges. / codeSystem SKA vara en OID / Om codeSystem anges SKA code OCH displayName anges / Om displayName anges SKA code samt codeSystem anges. / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |
| pattern.IITypeStrict [sch] | ../../../accountableHealthcareProvider / ../../../accountableCareUnit / ../../../originalPatientId / ../../sourceSystemId / ../../../../organization/id / ../../author/id / ../../record/id / ../../../receivingOrganization/id | Extension måste finnas |
| pattern.CvTypeStrict [sch] | ../../statusCode / ../../request/type / ../../request/medium | Code, codeSystem och displayname måste finnas. |
| Verify non-empty elements [sch] | Alla inkluderade element i svaret. | Måste ha ett giltigt värde. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav
