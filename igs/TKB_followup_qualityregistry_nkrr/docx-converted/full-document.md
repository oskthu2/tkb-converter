uppföljning kärnprocess:kvalitetsregister:nkrr

![img_008.png](images/img_008.png)

![img_004.png](images/img_004.png)
Innehållsförteckning
1	Inledning	5
1.1	Svenskt namn	5
2	Versionsinformation	5
2.1	Version 1.2.2	6
2.1.1	Oförändrade tjänstekontrakt	6
2.1.2	Nya tjänstekontrakt	6
2.1.3	Förändrade tjänstekontrakt	6
2.1.4	Utgångna tjänstekontrakt	6
2.2	Version tidigare	6
3	Tjänstedomänens arkitektur	6
3.1	Flöden	7
3.1.1	Notifiering till kvalitetsregister	7
3.1.2	Kvalitetsregister hämtar underlag	8
3.1.3	Obligatoriska kontrakt	10
3.2	Adressering	11
3.3	Aggregering och engagemangsindex	11
4	Tjänstedomänens krav och regler	11
4.1	Informationssäkerhet och juridik	11
4.2	Icke funktionella krav	11
4.2.1	SLA krav	11
4.2.2	Övriga krav	12
4.3	Felhantering	12
4.3.1	Krav på en tjänsteproducent	12
4.3.2	Krav på en tjänstekonsument	12
5	Tjänstedomänens meddelandemodeller	12
5.1	ProcessRegistrationNotification	13
5.2	GetFormData	15
5.3	Formatregler	17
5.3.1	Format för datum och tidpunkter	17
6	Tjänstekontrakt	18
6.1	ProcessRegistrationNotification	18
6.1.1	Version	18
6.1.2	Gemensamma informationskomponenter	18
6.1.3	Fältregler	19
6.1.4	Övriga regler	22
6.1.5	Annan information om kontraktet	23
6.2	GetFormData	23
6.2.1	Version	24
6.2.2	Fältregler	24
6.2.3	Övriga regler	25
6.2.4	Annan information om kontraktet	28
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| PA1 | 2012-10-01 | Thomas Siltberg, Mawell | Första version |
| PA2 | 2012-10-04 | Thomas Siltberg, Mawell | Uppdatering av namn och typer under fältregler |
| PA3 | 2012-10-10 | Thomas Siltberg, Mawell | Korrigering av kommentarsbeskrivning för elementet resultCode |
| PA4 | 2012-11-19 | Thomas Siltberg, Mawell | Ändring av domännamn |
| PA5 | 2012-12-05 | Thomas Siltberg, Mawell | Uppdaterat kontraktet med careEncounterStartDate |
| PA6 | 2013-02-21 | Thomas Siltberg, Mawell | Ändrat namn på evidence till sourceData och typ till SourceDataType isf String. |
| PA7 | 2013-02-28 | Thomas Siltberg, Mawell / Yngve Nygren, Mawell | Uppdatering efter granskning |
| PA8 | 2013-06-20 | Göran Oettinger, Mawell | Tog bort parametern careProviderId i GetFormDataRequest i avsnitt 3.4 p.g.a. att vi använder logical address för att avgöra vårdgivartillhörighet istället |
|  | 2013-06-20 | Göran Oettinger, Mawell | Första version |
| 1.0.4 | 2014-10-17 | Sofia Sjölén, Mawell | Ny mall 1.4 / Tillägg av arbetsflöde, sekvensdiagram, meddelandemodell samt tillhörande beskrivningar |
| 1.0.4 | 2015-02-06 | Göran Oettinger, Mawell / Malin Lundgren, Mawell | Tagit bort vissa underrubriker till Flöden (kapitel 3) enligt ny mall. / Lagt till 3.2 Adressering / Lagt till underrubriker Krav på tjänsteproducent och Krav på tjänstekonsument / Lagt till 4.2.2 Övriga krav / Lagt till kapitel om felhantering 4.3 och framåt / Lagt till mappning mot XSD / Fältregler: ändrat FormElementResponseType à FormElementType (enl schemat) / Lagt till text + referenser till 5.2 formatregler / Lagt till 6.1.3.1 icke-funktionella krav |
| 1.0.4 | 2016-02-29 | Göran Oettinger, Mawell | Ny webbeskrivning enligt önskemål efter granskning av arkitekturledningen |
| 1.0.5 | 2016-03-22 | Göran Oettinger, Mawell | Nytt versionsnummer 1.0.5 |
| 1.0.5 | 2016-04-21 | Göran Oettinger, Mawell | Justering av webbeskrivning enligt önskemål efter granskning av arkitekturledningen. Borttag av engelskt domännamn och ändring av tjänst->tjänstekontrakt |
| 1.1 | 2016-05-12 | Göran Oettinger, Mawell | tillägg av två nya sökparametrar i requestmeddelande: careUnitHsaId och employeePersonId. Påverkar avsnitt 2.1, 2.1.1, 2.1.3, 3.1.1, 4.2.2.1, 6.1, 6.1.1, 6.1.2, 6.1.3. / Tillägg av logId i svarsmeddelande vilket påverkar 5.1 och 6.1.2. / Språkliga justeringar i avsnitt 1. |
| 1.2 | 2016-11-22 / 2022-05-02 | Oscar Möller / Krister Arlinger / Claudia Ehrentraut | Tillägg av ny sökparameter i requestmeddelande: careEncounterEndDate. Kompletterat versionsinformation. / Påverkar 2.1, 2.2, 6.1.2 / Korrigering av ResultCode-information, 4.3.1.1 |
| 1.2.1 | 2022-09-06 | Oscar Möller | Uppdaterat domän med ny version av arkitekturella beslut |
| 1.2.2 | 2024-10-22 | Thomas Siltberg, Inera | Lagt till tjänstekontrakt för notifiering till kvalitetsregister. / Uppdaterat TKB till ny mall. / Lagt till meddelandemodell för tjänstekontraktet GetFormData. Mindre justeringar och förtydliganden i inledningen och beskrivning av flöden. / Uppdatering av beskrivning för attributen careEncounterStartDate, careEncounterEndDate och employeePersonId i tjänstekontraktet GetFormData. / Ändrat benämningen ”beslutsunderlag” till ”underlag” genomgående i dokumentet. / Justerat avsnittet om adressering. / Justerat regel R3 i avsnitt 6.2.3 Övriga regler för att även hantera helautomatiserade förlopp. / Justerat flödet i avsnitt 3.1.2 Kvalitetsregister hämtar underlag för att även beskriva ett helautomatiserat förlopp. / Tillägg av SLA-krav och hantering av logiska fel. |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut |  | bilaga |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | ISO8601-standarden för tidsformat | Finns på webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R4 | Informationsspecifikation |  | bilaga |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
followup:qualityregistry:nkrr
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänens omfattning är sammanställning av underlag från vårddokumentation för registrering i kvalitetsregister. Den kravställande processen är kvalitetsregistrens behov av att kunna hämta underlag om patient, samt den speciella juridik detta omges av.
Användare av tjänstekontrakt i denna domän har kännedom om specificerade krav på sammanställning av underlag från vårddokumentationen. Dessa krav speglar den formulärmodell för datainsamling som kvalitetsregistrens manuella datainsamling baserar sig på.
Tjänstedomänen har två tjänstekontrakt. Tjänstekontraktet ProcessRegistrationNotification används av vårdgivare för att notifiera kvalitetsregister om att vårdgivaren har uppgifter om en patient som vårdgivaren avser ska registreras i registret. Tjänstekontraktet GetFormData används av kvalitetsregister för att hämta uppgifter om en patient med hjälp av tjänsten Nationell kvalitetsregisterrapport, NKRR.
NKRR förutsätter att den faktiska vårddokumentationen som kvalitetsregistrets förfrågan gäller finns tillgänglig via tjänstekontrakt, samt att specifikationen av frågor och möjlig svarsmängd är definierad.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
uppföljning kärnprocess:kvalitetsregister:nkrr

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen followup: qualityregistry: nkrr. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.2.2

#### Oförändrade tjänstekontrakt
GetFormData, version 1.2

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
ProcessRegistrationNotification, version 1.0

#### Förändrade tjänstekontrakt
Inga tjänstekontrakt har förändrats.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetFormData | 1.0 | 1.2 | OK |
|  | 1.1 | 1.2 | OK |
Det finns bara en producent av GetFormData, därför listas enbart kompabilitet med avseende på konsument.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Version 1.2

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet, dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Notifiering till kvalitetsregister
En vårdgivare notifierar ett kvalitetsregister om att vårdgivaren har uppgifter om en patient som kan vara relevanta för kvalitetsregistret att ta del av.

##### Arbetsflöde

![img_006.png](images/img_006.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Vårdgivare | Statlig myndighet, region, kommun, annan juridisk person eller enskild näringsidkare som bedriver hälso- och sjukvårdsverksamhet och som lämnar ut information till ett kvalitetsregister. |
| Kvalitetsregister | Register som tar emot notifiering och som med dess registrerade uppgifter ger kunskap om hur vården och omsorgen fungerar och kan förbättras. |

##### Sekvensdiagram

![img_005.jpeg](images/img_005.jpeg)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som har behov av att notifiera ett kvalitetsregister. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Det system som tar emot notifieringar för ett eller flera kvalitetsregister. |

#### Kvalitetsregister hämtar underlag
Hämtning av underlag till kvalitetsregister över NKRR förlöper i två typiska scenarier. Ett delvis automatiserat förlopp, där hälso- och sjukvårdspersonal (registrator) hos en vårdgivare loggar in i aktuellt kvalitetsregister och i ett registreringsformulär, per patient, begär hämtning av uppgifter från vårddokumentationen hos vårdgivaren för automatisk förifyllnad av fält, till hjälp för registrerande personal. Detta är en vanlig lösning då data till ett formulärs alla fält inte finns att hämta med automatik utan en registrering även kräver kompletterande manuell ifyllnad av vissa fält.
Ett andra förlopp är ett helt automatiserat sådant och kan fortlöpa utan bistånd av hälso- och sjukvårdspersonal. I ett sådant förlopp används notifiering till kvalitetsregister. Det kvalitetsregister som tagit emot en notifiering fullföljer automatiskt den önskade patientregistreringen med anrop till vårdgivaren via NKRR.
Frågorna som finns definierade för formuläret evalueras mot inhämtat underlag utifrån givna regelskrivningar i NKRR, och resultatet med associerat beslutsunderlag sammanställs i svaret.
Nedanstående diagram visar hur flödet ser ut när information hämtas med NKRR.

![Arbetsflöde](images/img_002.jpeg)
Arbetsflöde

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Kvalitetsregister | Med kvalitetsregister avses ett kvalitetsregistersystem som hanterar och lagrar patientuppgifter, journalhistorik, avseende ett specifikt patienturval. |
| Registrator | Med registrator avses person som vill hämta information. En registrator är inte aktuell i ett helautomatiserat förlopp. |
| NKRR | Tjänst som besvarar frågeställningar och ställer samman svar till dessa baserat på de underlag som hämtas från informationskällorna. |
| Informationskällor | System där information hämtas. |

##### Sekvensdiagram

![img_007.png](images/img_007.png)

![img_003.jpeg](images/img_003.jpeg)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument (kvalitetsregister) | Uppföljningssystem som inhämtar underlag från landets vårdgivare via anrop över tjänsteplattform till en tjänst för sammanställning av underlag. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent (NKRR) | Producerar tjänst för sammanställning av underlag till kvalitetsregister. Anropar i sin tur olika tjänster producerade av vårdgivare, här kallade informationskällor. |
| Informationskällor | Informationstjänster som producerar underlag från vårdgivares vårddokumentationssystem. |

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Notifiering till kvalitetsregister | Kvalitetsregister hämtar underlag |
| :--- | :--- | :--- |
| ProcessRegistrationNotification | X |  |
| GetFormData |  | X |

### Adressering
Tjänstekontraktet ProcessRegistrationNotification använder systembaserade logiska adresser. Ett kvalitetsregisters system eller en registerplattform förses med en identitet och det är denna som adresseras och via tjänsteadresseringskatalogen översätts till den anropsadress som gäller för systemet.
Tjänstekontraktet GetFormData tillämpar verksamhetsbaserad adressering. Det innebär att den logiska adressen i anropet ska innehålla informationsägande enhets identitetsbeteckning.

### Aggregering och engagemangsindex
Denna domän tillämpar inte aggregering och uppdaterar inte engagemangsindex.

## Tjänstedomänens krav och regler
Dessa krav och regler gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Information om informationssäkerhet och juridik för användning av tjänstekontrakten i den här tjänstekontraktsbeskrivningen beskrivs i informationsspecifikationen [R4].

### Icke funktionella krav
Det informationsinnehåll som levereras är konfigurerbart och specificeras inte i detalj i tjänstekontraktsbeskrivningen. Överenskommelsen om informationsinnehåll måste ske mellan konsument och producent på annat sätt. I regel är det kvalitetsregistret i sig som ansvarar för att specificera de regler som appliceras på den grundläggande informationen och därmed specificerar informationen som levereras.

#### SLA krav
SLA-krav anges specifikt för varje tjänstekontrakt.

#### Övriga krav

##### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Respektive kontrakt beskriver närmare hur logiska fel ska hanteras.

#### Krav på en tjänstekonsument

## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt ska ha en (1..1) egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

![ProcessRegistrationNotification](images/img_011.jpeg)
ProcessRegistrationNotification
Modellen är en UML-representation av XSD-schemat. Någon mappning mellan XSD och MIM är därmed inte inkluderad.
Nedan beskrivs mappning mellan XSD och informationsmodellen i informationsspecifikationen.

| Klass.attribut | Mappning mot informationsmodell |
| :--- | :--- |
| ProcessRegistrationNotificationRequest |  |
| LogicalAddress | Saknas |
| parameters | Saknas |
| ProcessRegistrationNotificationType |  |
| type | Notifiering till kvalitetsregister.typ |
| patientId | Patient.patient-id |
| healthcareProviderId | Vårdgivare.id |
| registerUnitId | Notifiering till kvalitetsregister.registerenhet-id |
| reference | ReferenceType |
| NkrrParameters | NKRR-anropsattribut |
| NkrrParametersType |  |
| formId | NKRR-anropsattribut.formulär-id |
| careEncounterDate | NKRR-anropsattribut.vårdhändelsdatum |
| careUnitId | NKRR-anropsattribut.vårdenhet-id |
| ReferenceType |  |
| key | Referenspost.nyckel |
| value | Referenspost.värde |
| ProcessRegistrationNotificationResponse |  |
| parameters | Saknas |
| ProcessRegistrationNotificationResponseType |  |
| referenceId | Svar på notifiering.referens-id |
| result | Saknas |
| ResultType |  |
| resultCode | Saknas |
| resultText | Saknas |

### GetFormData

![img_009.jpeg](images/img_009.jpeg)
Modellen är en UML-representation av XSD-schemat. Någon mappning mellan XSD och MIM är därmed inte inkluderad.
Nedan beskrivs mappning mellan XSD och informationsmodellen i informationsspecifikationen.

| Klass.attribut | Mappning mot informationsmodell |
| :--- | :--- |
| GetFormDataRequest |  |
| LogicalAddress | Saknas |
| parameters | Saknas |
| GetFormDataType |  |
| formId | NKRR-anropsattribut.formulär-id |
| subjectOfCareId | Person.person-id |
| careEncounterStartDate | NKRR-anropsattribut.filtreringsdatum |
| employeeId | Saknas |
| careUnitHSAId | NKRR-anropsattribut.vårdenhet-id |
| employeePersonId | Saknas |
| careEncounterEndDate | NKRR-anropsattribut.filtreringsdatum |
| GetFormDataResponse |  |
| parameters | Saknas |
| GetFormDataResponseType |  |
| formElement | Formulärdata |
| resultCode | Saknas |
| resultText | Saknas |
| logId | Saknas |
| FormElementType |  |
| formId | Formulärdata.id |
| query | Fråga.id |
| answer | Svar |
| sourceData | Underlag |
| AnswerType |  |
| value | Svar.värde |
| type | Svar.typ |
| SourceDataType |  |
| name | Underlagskälla.källa |
| entry | Underlagspost |
| SourceDataEntryType |  |
| name | Underlagspost.nyckel |
| value | Underlagspost.värde |

### Formatregler

#### Format för datum och tidpunkter
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R3]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss” (se referens [R3]).

## Tjänstekontrakt

### ProcessRegistrationNotification
Tjänstekontraktet ProcessRegistrationNotification möjliggör för vårdgivare att notifiera kvalitetsregister om att vårdgivaren har uppgifter om en patient som vårdgivaren avser ska registreras i registret.

#### Version
1.0

#### Gemensamma informationskomponenter
Gemensamma informationskomponenter är typer gemensamma för användning i tjänstekontrakt i flera domäner. Nedan listas de gemensamma typer som används i kontraktet ProcessRegistrationNotification.
Användning av datatyperna sker i enlighet med hur de är definierade, dvs. regler som anges för respektive datatyp och kardinalitet för de olika attributen ska följas. I de fall det finns restriktioner på en eller flera datatyper anges det i fältregeltabellerna.
Version 22 av gemensamma datatyper har använts för det här kontraktet.

##### IIType
En IIType är en numerisk eller alfanumerisk sträng som kan härledas till ett enskilt objekt eller entitet i ett känt system. Exempel är ett personnummer eller ett vårdkontakts-id.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En identifierare som i sig själv eller tillsammans med värdet för extension är universellt unik. Om extension anges är root en unik identifierare av namnrymden för värdet som anges i extension. | 1..1 |
| extension | string | En identifierare som tillsammans med värdet för root är universellt unik. Används om värdet på root inte är universellt unikt. | 0..1 |
Regler
root
När root används som en identifierare av en namnrymd ska identifieraren vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI).
extension
Vissa scheman för identifierare definierar formateringsmöjligheter för deras kodvärden. Till exempel så skrivs personnumret vanligtvis med bindestreck, 19121212-1212. Bindestrecket bär dock ingen betydelse och kan utelämnas, som i 191212121212.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| type | string | Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till. / Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| patientId | IIType | Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare. / Fältet root sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. | 1..* |
| healthcareProviderId | IIType | Id för informationsägande vårdgivare för informationen i notifieringen. / Anges för att möjliggöra spårbarhet till informationsägande vårdgivare för informationen som lämnas ut och som hanteras av informationsmottaren eller andra parter. / I första hand HSA-id alternativt i andra hand organisationsnummer. / Om HSA-id används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. / Om organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret. / Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. | 1..1 |
| registerUnitId | string | Id för registerenhet. / Registerenhet är den minsta indelning av datatillhörighet som ett kvalitetsregister använder för registrering och analys av data. Inte sällan motsvarar en registerenhet en vårdenhet inom vårdgivaren, men inte alltid. / Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| reference | ReferenceType | Information om referenser till tidigare registreringar i kvalitetsregistret. Informationen används för att ge rätt kontext på den avsedda registreringen. / Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..* |
| NkrrParameters | NkrrParametersType | Här kan parametrar som används i begäran för tjänstekontraktet GetFormData anges. / Parametrarna ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| Svar |  |  |  |
| referenceId | string | Identifierare som kan lämnas som referens. / Ska specificeras och hanteras enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| result | ResultType | Information om mottagningen av notifieringen lyckades. | 1..1 |
| ../resultCode | ResultCodeEnum | Anger resultatet av notifieringen. / Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../resultText | string | En beskrivande text som kan anges vid INFO eller ERROR. | 0..1 |
| ReferenceType |  |  |  |
| key | string | Nyckel för referens. / Vad som ska anges som nyckel ska framgå i den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 1..1 |
| value | string | Information om tidigare registrering enligt den angivna nyckeln. | 1..1 |
| NkrrParametersType |  |  |  |
| formId | string | Identifierare av mallen | 0..1 |
| sampleDate | string | Datum för filtrering vid insamling av underlag. / Datum som skickas i attributet används för att populera attributen careEncounterStartDate och careEncounterEndDate i tjänstekontraktet GetFormData. / Attributet ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. / Observera att ordningen på datumen som skickas kan ha betydelse och måste därför följa den ordning som beskrivs i informationsspecifikationen som kvalitetsregistret tillhandahåller. | 0..* |
| careUnitId | IIType | Vårdenheter inom vilka underlag för registrering ska hämtas. / Fältet root sätts till OID (1.2.752.129.2.1.4.1) för HSA. / Fältet extension sätts till HSA-id på vårdenhet. | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify OID for patientId.root [sch] | patientId | extension ska vara
1.2.752.129.2.1.3.1 eller 1.2.752.129.2.1.3.3. |
| Verify single patient if NkrrParameters or reference is used [sch] | NkrrParameters
reference | NkrrParameters eller reference får inte anges om fler än en patient anges då dessa uppgifter är patientspecifika. Ska någon av dessa uppgifter hanteras behöver tjänstekonsumenten skicka en notifiering per patient. |
| Unik typ av registrering | type | Typen av registrering ska vara unik inom en tjänsteproducent. |
| Regler i svaret | Regler i svaret | Regler i svaret |
|  |  |  |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element. | Tomma värden får inte anges. |
| Tillämpad specifikation | Elementen type, registerUnitId, reference och NkrrParameters behöver beskrivas i den tillämpad specifikation. / Hantering av övriga element kan också beskrivas i den tillämpade specifikationen, men det är inte nödvändigt. | Tjänsteproducenter behöver tillhandahålla en tillämpad specifikation i form av t.ex. en informationsspecifikation för att beskriva hanteringen av notifiering till registret. Den tillämpade specifikationen beskriver regler för användning av tjänstekontraktet och dess innehåll utöver reglerna i denna TKB. Den tillämpade specifikationen kan t.ex. begränsa kardinaliteten för attributet patientId som uttrycker om en eller flera patienter får skickas i en notifiering. / Tjänstekonsumenter behöver utöver denna TKB även följa regler och anvisningar i den tillämpade specifikationen. |

##### Icke funktionella krav

###### SLA-krav
Kvalitetsregistrets informationsspecifikation eller annan tillämpad specifikation anger krav som en tjänsteproducent av tjänstekontraktet ProcessRegistrationNotification ställer på en tjänstekonsument.

###### Logiska fel
Vid ett logiskt fel i anrop levereras felinformation i resultCode och resultText.
Koden som anges i resultCode kan vara:

| Värde | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget. |
| INFO | Transaktionen har utförts enligt uppdraget. En beskrivande text kan anges i resultTest. / Kvalitetsregistrets informationsspecifikation eller annan tillämpad specifikation anger hantering av beskrivande text när resultatkoden INFO används. |
| ERROR | Transaktionen har INTE kunnat utföras p.g.a. ett logiskt fel. / Kvalitetsregistrets informationsspecifikation eller annan tillämpad specifikation anger hantering av logiska fel. |

#### Annan information om kontraktet

###### Loggning
För loggning och för att underlätta spårning tillhandahåller Virtualiseringsplattformen i SKLTP (Referensimplementation av tjänsteplattform) [R2] en HTTP-header med namnet “x-skltp-correlation-id” till tjänstekonsumenten och tjänsteproducenten.

### GetFormData
GetFormData hämtar underlag för ett enskilt kvalitetsregisterformulär. Anropet anger aktuellt kvalitetsregister-formulär, patient, vårdgivare, medarbetare, samt eventuellt datum för start av vårdkontakt och vårdenheter inom vilka underlag ska hämtas. Tjänsten evaluerar de frågor om finns definierade för formuläret. Frågorna evalueras mot underlag hämtat från informationskällorna utifrån de givna förutsättningarna, och resultaten med associerat underlag sammanställs i svaret till konsumenten.

#### Version
1.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formId | string | Identifierare av mallen. | 1..1 |
| subjectOfCareId | SubjectOfCareIdType | Identifierare av patienten. | 1..1 |
| careEncounterStartDate | Iso8601DateType | Datum för start av vårdhändelse. / Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet careEncounterStartDate i en informationsspecifikation eller annan tillämpad specifikation. | 0..1 |
| careEncounterEndDate | Iso8601DateType | Datum för slut av vårdhändelse. / Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet careEncounterEndDate i en informationsspecifikation eller annan tillämpad specifikation. | 0..1 |
| careUnitHSAId | HsaIdType | Vårdenheter inom vilka underlag ska hämtas. | 0..* |
| employeeId | HsaIdType | Identifierare av medarbetare. | 0..1 |
| employeePersonId | string | Medarbetares personnummer.
Anges med 12 tecken utan avskiljare. | 0..1 |
| Svar |  |  |  |
| formElement | FormElementType | Svaret består av en lista med formulärets enskilda element. | 0..* |
| resultCode | ResultCodeEnum | OK = Hämtningen av underlag utfört utan fel. / ERROR = Fel har uppstått. / Felet beskrivs i elementet resultText. / INFO = Information finns om hämtningen. Informationen beskrivs i elementet resultText. | 1..1 |
| resultText | string | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |
| logId | string | Identifierare av loggpost hos tjänsteproducenten, t.ex. ett UUID som kan användas vid felsökning. | 0..1 |
| FormElementType |  |  |  |
| formID | string | Identifierare av mallen. | 1..1 |
| query | string | Identitet för fråga. | 0..1 |
| answer | AnswerType | Svar på fråga. | 0..* |
| sourceData | SourceDataType | Beskrivning på hur svaret framställts. Kan visas för slutanvändare i konsumentapplikationen. | 0..* |
| AnswerType |  |  |  |
| value | string | Svar på fråga. | 1..1 |
| type | string | Typning av svaret. | 1..1 |
| SourceDataType |  |  |  |
| name | string | Domän + kontraktsnamn för grunddata. | 1 |
| entry | SourceDataEntryType | Del av underlaget för svaret. | 1..* |
| SourceDataEntryType |  |  |  |
| name | string | Namn på del av underlaget. Exempelvis enhet, födelseår eller kön. | 1..1 |
| value | string | Värde för del av underlaget. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| R3 – Registrator måste anges | employeeId
employeePersonId | Vid scenariet att en sjukvårdspersonal (registrator) loggar in i aktuellt kvalitetsregister och i ett registreringsformulär, per patient, begär hämtning av uppgifter från vårddokumentationen hos vårdgivaren för automatisk förifyllnad av fält måste uppgift om registratorn anges antingen med HSA-Id i fältet employeeId eller med personnummer i fältet employeePersonId. / I ett helautomatiserat förlopp efter en notifiering ska fälten employeeId och employeePersonId inte anges. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| R2 – Svar är osorterade |  | Tjänsteproducenten behöver inte garantera att de svar som returneras är sorterade i en viss ordning. |
| R4 – Filtrering på LogicalAddress |  | Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som hämtats från den vårdgivare som anges av frågemeddelandets LogicalAddress. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| R1 - Flexibel ifyllnadsgrad |  | Om ett givet formulär innehåller N frågor kan en konsument av tjänsten förvänta sig M answer-element där M ≤ N. Även för ett givet formulär måste en konsument hantera att beroende på övriga inparametrar och när anropet sker kan en variabel mängd svar returneras. |

##### Icke funktionella krav

###### SLA-krav
Resultatet av tjänsteanrop till GetFormData används bland annat också interaktivt med vårdpersonal som en del i arbetet med registrering av uppgifter i kvalitetsregister. Det är därför viktigt att svarstider hålls låga för att systemet inte ska upplevas negativt. Annan användning avser mera automatiserade flöden som också ställer krav på svarstider.
Följande SLA-krav gäller för tjänsteproducenter av detta tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | 1 sek + den tid som adderas av underliggande informationstjänster | Ett enskilt anrop ska besvaras inom 1 sekund. |
| Tillgänglighet | kontorstid | Om ett kvalitetsregister inte kan nå tjänsteproducenten så förutsätts att informationen fortfarande läsas manuellt ur respektive vårdgivares vårddatasystem av kvalitetsregisterapportören (på samma sätt som sker idag). |
| Last | 10 000 anrop/dygn | Verklig last förväntas vara mellan 1000 och 10 000 anrop per dygn (kontorstid). |
| Aktualitet | Informationen skall alltid sammanställas vid anropet |  |

###### Logiska fel
Vid ett logiskt fel i anrop levereras felinformation i resultCode, resultText.
Felkoden kan vara:

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| INFO |  | Uppslag har utförts enligt begäran, men det finns obesvarade frågor. Det finns ett meddelande som beskriver felet. |
| ERROR |  | Uppslag har INTE kunnat utföras. Det finns ett meddelande som beskriver felet. Exempel på detta kan vara ogiltigt inmatade inparametrar i frågemeddelandet. Denna felkod erhålls också om det inte finns någon data registrerad för patienten. Data kan returneras tillsammans med denna felkod, tex om ett källsystem svarar med felkod medans ett eller flera andra källsystem svarar med data. Returnerad data kan då vara korrekt och komplett, men behöver inte vara det. |
|  |  |  |

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.
