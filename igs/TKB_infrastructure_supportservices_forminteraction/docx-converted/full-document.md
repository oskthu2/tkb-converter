
|  |  |  |  |  |
| :--- | :--- | :--- | :--- | :--- |
|  |  |  |  |  |
Innehåll
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.3 mall |  | 2014-04-16 | Infört revisionshistorik även för mall | Lennart Eriksson |  |
| 1.3.1 mall |  | 2014-05-14 | Rättat fel för versionsvariabler | Lennart Eriksson |  |
| 1.3.2 mall |  | 2014-05-20 | Rättat feltabeller efter genomlysning av krav kontra kontraktsinnehåll | Lennart Eriksson |  |
| 2.0.0RC_2 | PA1 | 2014-03-26 | Första version | Marco de Luca, HSF invånartjänster |  |
| 2.0.0RC_2 | PA2 | 2014-04-28 | Smärre textkorrigeringar och några frågetecken (se kommentarer i dokumentet) | Jarno Nieminen |  |
| 2.0.0RC_3 | PA1 | 2014-06-11 | Ny dokumentmall samt ändringar baserat på kommentarer från arkitekturledningens granskning | Jarno Nieminen nvånartjänster |  |
|  |  |  |  |  |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – | Obligatoriskt |  |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure: : forminteraction
Den svenska benämningen är ””.
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1]
Tjänstedomänen omfattar tjänstekontrakt för att stödja formulärinteraktion mellan patient (e-tjänst i form av en tjänstekonsument) och verksamhetssystem (formulärmotor i form av en tjänsteproducent).
Formulärtjänsten möjliggör hantering av formulärinformation mellan olika aktörer. Tjänstekontraktet möjliggör insamling av olika typer av formulärinformation.
Exempel:
Hälsodeklaration
Enkäter
Blanketter (Registrering, anmälan etc.)
Tjänstekonsument och tjänsteproducent kan använda tjänstekontraktet på olika sätt och i olika steg i sina processer.
Exempel:
En vårdaktivitet kräver en hälsodeklaration.
Ett vårdbesök föranleder en registreringsblankett
En behandling kräver uppföljning
Biverkningsregistrering
Effektmätning av behandling
Informationsinsamling under begäran och bedömning av vårdbegäran
Tjänstekontraktsbeskrivningen är ett teknik-oberoende, formellt regelverk som reglerar integrationskrav mellan parter (tjänstekonsumenter och tjänsteproducenter) med behov av elektronisk samverkan i ett speciellt syfte (i detta fall integration mellan nationella tjänster och lokala informationskällor).
Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, som de regler som uttrycks detta dokument. Tjänsteproducenter och konsumenter ska följa regelverket i RIVTA 2.1 med avseende på säkerhet och publicering av s.k. ping-tjänst.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### WEB beskrivning
Formulärtjänsten möjliggör hantering av formulärinformation mellan olika aktörer. Tjänstekontraktet möjliggör insamling av olika typer av formulärinformation.
Tjänstekonsument och tjänsteproducent kan använda tjänstekontraktet på olika sätt och i olika steg i sina processer.
Exempel:
En vårdaktivitet kräver en hälsodeklaration.
Ett vårdbesök föranleder en registreringsblankett
En behandling kräver uppföljning
Biverkningsregistrering
Effektmätning av behandling
Informationsinsamling under begäran och bedömning av vårdbegäran

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om version infrastructure: : forminteraction. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0.0.
Samtliga tjänster har version 2.0.

#### Oförändrade tjänstekontrakt
CancelForm

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
SaveFormTemplate
GetFormTemplate

#### Förändrade tjänstekontrakt
CreateForm
CreateFormRequest
GetForm
GetFormQuestionPage
GetForms
GetFormTemplates
SaveForm
SaveFormPage

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

## Tjänstedomänens arkitektur

![img_012.png](images/img_012.png)

![img_010.png](images/img_010.png)

### Flöde AF-1 Skapa formulärmall
[Flödet saknar sekvensdiagram. Aktiviteten sker internt i formulärmotorn.]
[Definieras av kommande formulärmotorer.]

### Flöde AF-2 Begär formulärinsamling av patient
Användningsfallet kan även benämnas ”Skapa formulärbegäran”.

![img_008.png](images/img_008.png)
*Figur 1: Flöde AF-2*
I flödet begär medarbetaren att en patient skall fylla i ett formulär (t.ex. Hälsodeklaration). Begäran kan göras i formulärmotorn eller via det vårdsystem som används. Önskas begäran via vårdsystemet används en tjänst (CreateFormRequest) för ”Begär hälsodeklaration”. I detta fall krävs ingen manuell aktivitet från medarbetaren.
Vid en formulärbegäran skapas ett formulär där patient, verksamhet och formulärmall kopplas ihop.
Vid skapad begäran skickar formulärmotorn en indexpost till engagemangsindex.
E-tjänster som Mina vårdkontakter blir notifierade (Engagemangsindex: ProcessNotification) och ger användaren/patienten möjlighet att fylla begärt formulär.
Om engagemangsindex inte används hanteras detta manuellt i Mina vårdkontakter.
Flöde:
Medarbetare: Gör en formulärbegär (t.ex. Hälsodeklaration) i lokalt vårdsystem eller i formulärmotorn. En formulärbegäran kan ”triggas” automatiskt t.ex. i samband med en tidsbokning eller en remiss.
Används vårdsystem används tjänsten ”CreateFormRequest”. Denna integrerade lösning medger en bättre processtyrning samt mindre handgrepp för medarbetare/vårdpersonal.
Att notera: Vårdsystemet genererar ett unikt id för formuläret (FormID).
Formulärmotorn skapar ett formulär (status ONGOING).
Formulärmotorn: Skickar begäran vidare till Engagemangsindex.
”categorization” sätts till ”FormCreated” (Formulärbegäran).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
E-tjänsten: Mottager notifiering och tillhandahåller e-tjänsten ”Hälsodeklaration” till användaren/patienten.
E.-tjänsten kan avisera användaren/patienten om händelsen.

### Flöde AF-3A Patient fyller i formulär (redan skapat)

![img_004.png](images/img_004.png)
*Figur 2: Flöde AF-3A*
I flödet använder användaren en e-tjänst i Mina vårdkontakter för att fylla i ett formulär. E-tjänsten (klient) kommunicerar med formulärmotorn med hjälp av tjänstekontraktet. E-tjänsten presenterar dess frågor för användaren/patienten som besvarar dessa.
Användningsfallet förutsätter att ett formulär är skapat.
Flöde:
Tillgängliga formulär hämtas/listas genom att anropa formulärmotorns ”GetForms”.
Formuläret ”startas” genom att användaren väljer ett formulär i ovanstående steg. ”GetForm” anropas.
Formulärstatus ”COMPLETED”. Formuläret är avslutat.
Formulärstatus ”ONGOING”. Pågående, frågor har temporärsparats.
Formulärstatus ”PENDING_COMPLETION”. Pågående, frågor har temporärsparats. Alla frågor är besvarade.
Formulärets frågor besvaras(invånare) och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formuläret får status ”COMPLETE”.
Formulärmotorn skickar ett meddelande till engagemangsindex när ett formulär är skapat/sparat/avslutat.
”categorization” sätts till ”FormComplete” (Formulärbegäran).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
Vårdsystem blir notifierad via ”Engagemangsindex”. Vårdsystemet kan hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Se AF-6 för detaljering av notifieringsflöde.
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

### Flöde AF-3B Patient fyller i formulär
Flödet illustrerar fallet då patienten skapar ett formulär utan att en ”formulärbegäran” är skapad. Patienten kan välja formulär mall.

![img_001.png](images/img_001.png)
*Figur 3: Flöde AF-3B*
I flödet använder användaren en e-tjänst i Mina vårdkontakter för att välja och fylla i ett formulär. E-tjänsten (klient) kommunicerar med formulärmotorn med hjälp av tjänstekontraktet. E-tjänsten presenterar dess frågor för användaren/patienten som besvarar dessa.
Flöde:
Tillgängliga formulärmallar hämtas genom att anropa formulärmotorns ”GetFormTemplates”. Detta för att få tillgång till valbara ”TemplateID”.
Formuläret ”startas” genom att användaren väljer ett formulär och formulärmotorns ”CreateForm” anropas.
Ett formulär skapas i formulärmotorn.
Formulärets frågor besvaras och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formuläret får status ”COMPLETE”.
Formulärmotorn skickar ett meddelande till engagemangsindex när ett formulär är skapat/sparat/avslutat.
Vårdsystem får därmed möjlighet att hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Se AF-6 för detaljering av notifieringsflöde.
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

### Flöde AF-4 Återuppta formulär.

![img_013.png](images/img_013.png)
*Figur 4: Flöde AF-4*
I flödet använder användaren en e-tjänst i Mina vårdkontakter för att återuppta i ett formulär. E-tjänsten (klient) kommunicerar med formulärmotorn med hjälp av tjänstekontraktet. E-tjänsten presenterar dess frågor för användaren/patienten som besvarar dessa.
Flöde:
Tillgängliga formulärmallar hämtas genom att anropa formulärmotorns ”GetForms”.
Formuläret ”startas” genom att användaren väljer ett formulär och formulärmotorns ”GetForm” anropas.
Formulärets frågor besvaras och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formulärmotorn skickar ett meddelande till engagemangsindex när ett formulär är skapat/sparat/avslutat.
Vårdsystem får därmed möjlighet att hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

### Flöde AF-5 Notifiera
Se ”Tjanstekontrakt ItIntegration EngagementIndex - Beskrivning.doc” för beskrivningar notifiering och uppdatering.

### Flöde AF-6 Vårdsystem hämtar användarens/patientens formulär.

![img_009.png](images/img_009.png)
*Figur 5: Flöde AF-6*
I flödet beskriv hur ett vårdsystem med hjälp av engagemangsindex på ett systematiskt sätt kan hämta en användarens/patients formulär (T.ex. Hälsodeklaration).
Genom att tillämpa detta flöde hämtas användarens/patientens formulär och kan lagras som en del av vårdsystemet. Medarbetaren behöver inte ha kunskap kring hur formulärmotorn utan kan arbeta som vanligt i sitt vårdsystem.
Flöde:
En patient har med hjälp av Mina Vårdkontakter och formulärmotorn fyllt i ett formulär.  Formulärmotorn har innan flödet startas skickat ett meddelande(Se tjänstekontraktsbeskrivningen) till engagemangsindex.
Engagemangsindex notifierar vårdsystemet.
Vårdsystemet mottager notifiering (ProcessNotification)
Notifiering innehåller bl.a. nyckel till användarens formulär ”FormID”.
Analyserar notifiering och hämtar användarens formulär genom att anropa formulärmotorns ”GetForm”.

### Flöde AF7 - Fylla i och avsluta ett formulär

![img_006.png](images/img_006.png)
Formulär skapas genom att tjänsten createForm anropas med hsa-id på vårdcentral, personnummer för den som ska fylla i formuläret (om det inte är anonymt) och id på formulärmallen. Formulär skapas utifrån det mall-id som skickats med. Det nya formuläret sparas i databasen och returneras med första formulärsidan till användaren. Formuläret har nu statusen ONGOING.

### Flöde AF-8 Fyll i formulär
Användaren fyller i den aktuella formulärsidan och anropar saveFormPage. Formulärmotorn validerar svaren och om allt är korrekt sparas sidan ner och nästa sida returneras till användaren. Formuläret har statusen ONGOING så länge det finns sidor kvar att fylla i.
När man nått sista sidan kommer null returneras och formuläret kommer nu få status PENDING_COMPLETION. Detta innebär att formuläret är redo att avslutas. Användaren får nu tillbaks hela det ifyllda formuläret och kan granska om allt ser ok ut.

### Flöde AF-9 Spara och avsluta formulär
Om formuläret är korrekt ifyllt kan nu användaren avsluta formuläret genom att anropa tjänsten saveForm. Formuläret kommer nu sparas i databasen med status COMPLETED. Det går nu inte att ändra i formuläret och användaren får tillbaks en OK-status om att formuläret är sparat och avslutat.

### Flöde AF-10 Hämta formulär

![img_005.png](images/img_005.png)

### Flöde AF-11 Avbryta formulär

![img_002.png](images/img_002.png)

### Flöde AF-12 Hämta formulärlista

![img_011.png](images/img_011.png)

### Flöde AF-13 Hämta mallar

![img_007.png](images/img_007.png)

### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

|  |  |  |  |  |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |

|  |  |  |  |  |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |

### Adressering
För tjänstedomänen gäller följande regler för logisk adressering:
Referens till informationskällan enligt tjänste-domänens definition till informationskälla.
Systemadressering <Formulärmotor hsa-id>

### Uppdatering av engagemangsindex
All uppdatering av engagemangsindex sker genom tjänstekontraktet urn:riv:itintegration:engagementindex:UpdateResponder:1. Ladda hem Engagemangsindex WSDL, scheman och tjänstekontraktsbeskrivning för detaljer.
Följande regler gäller för innehållet i begäran till engagemangsindex för uppdateringar som rör denna tjänstedomän (infrastructure::forminteraction):
Engagemangsindexpost categorization används för att signalera när ett formulär/mall är skapad för en användare/patient eller när en användare/patient har besvarat/avslutat ett formulär.
categorization ”FormCreated”
Indikerar att ett specifikt formulär är skapat för användaren/patienten.
T.ex. Patienten skall fylla i en hälsodeklaration.
categorization ”FormComplete”
Indikerar att ett formulär är skapat och lagras(temporärt) i en formulärmotor.
Tabellen beskriver de attribut som är unika för tjänstedomänen. Utöver nedanstående tabell se tjänstekontraktsbeskrivning för engagemangsindex.

| Namn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| categorization | String | Kategorier för engagemangsindexpost. / FormCreated (Indikerar att ett specifikt formulär är skapat för användaren.) / FormComplete (Indikerar att ett specifikt formulär är avslutat) | 1..1 |
| businessObjectInstanceIdentifier | String | Unik identifierare för händelse-bärande objekt. / Id för categorization: / FormComplete / Id som motsvarar ”FormId” (i objekt Form). / FormCreated / Id som motsvarar ”FormId” (i objekt Form). | 1..1 |
| LogicalAddress | String | Referens till informationskällan enligt tjänste-domänens definition till informationskälla. / < SourceSystem hsa-id> | 1..1 |
Se tjänstekontraktsbeskrivning(Engagemangsindex) för övriga attribut och beskrivning.

##### Flöde engagemangsindex

![img_003.png](images/img_003.png)
Flödet illustrerar hur vårdsystem, formulärmotor, engagemangsindex och e-tjänst samverkar för att hantera en process. Exemplet visar hur en begäran om hälsodeklaration kan realiseras.
Flöde:
Vårdsystemet skapar en formulärbegäran genom att använda Formulärmotorn ”CreateFormRequest”.
Detta steg kan ersättas av ett manuellt steg i formulärmotorn om integration saknas.
Formulärmotorn verifierar begäran och skapar en post i engagemangsindex.
Engagemangsindex notifierar intressenter. I detta exempel Mina vårdkontakter.
Mina vårdkontakter kan i detta steg sammankoppla patient med e-tjänst på ett antal olika sätt. Mina vårdkontakter kan även notifiera användaren/patienten.
Mina vårdkontakter ger användaren tillgång till e-tjänsten formulär.
Användaren besvarar formuläret.
Formulärmotorn skapar en indexpost i engagemangsindex (Anropar engagemangsindex).
Engagemangsindex notifierar intressenter (push alternativt pull från intressent).
Vårdsystemet mottager notifiering och hämtar användarens/patientens formulär.
Engagemangsindex kan ”push” notifiering alternativt kan vårdsystemet göra ”pull” mot engagemangsindex.
Om integration mot engagemangsindex saknas kompenseras detta med manuella hantering i de olika stegen.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Presentationsregler för konsument
Producerande system styr vilka frågor som konsument skall presentera för slutanvändaren (användare/patient).
T.ex. Om producerande system skickar 5 frågor skall konsumerande system presentera 5 frågor för slutanvändaren (användare/patient).
Konsumerande system skall följa den metadata som styr utformningen av frågor.
T.ex. om producerande system skickar metadata för ”checkbox” skall konsumerande system presentera en checkbox.
Konsumerande system presenterar formulär och dess frågor så det harmonisera med sin grafiska profil.

### Informationssäkerhet och juridik
Det kan vara effektivt för kontakter med olika regelverksansvariga att det finns upprättat en eller flera systembeskrivningar över den organisationskontext inom vilken formulärtjänsterna skall användas – bilder av hur formulärhanteringen ser ut ur ett organisatoriskt perspektiv. Bilden kan vara mer generisk, som en översiktsbild för planerade tjänster, flöden och relationer, eller mer konkret, som en kartläggning med tekniska skisser av redan befintliga tjänster. Regelverksansvariga kan t ex vara landstingsjurister, informationssäkerhetsexperter, personuppgiftsombud och handläggare hos tillsynsmyndigheter.
Systembeskrivningar är användbara även annars i tjänsteproducenters och tjänstekonsumenters arbete, t ex när de skall ta ställning till hur formulärhanteringen skall designas för att användandet enkelt skall kunna harmoniera med gällande juridiska regelverk (t ex vad avser informationssäkerhetskrav, patientsäkerhetsfrågor, hantering av offentlighet och sekretess, journalföring, krav på behörighetshantering, gallring och arkivering).
Nedan följer ett stöd vid framtagande av en organisatorisk systembeskrivning av verksamhetsinriktad karaktär. Systembeskrivningen bör tas fram av de parter som direkt arbetar med systemen, t ex utvecklare, projektägare, systemägare eller systemförvaltare. Vanligen är det frågan om del av ett vårdsystem i hälso- och sjukvården i Sverige, med några av de delar som det i sin tur är sammansatt av, ett system av system.
Exempel på delar att beskriva vid kartläggning av ett relevant vårdsystem:
Inom vilken hälso- och sjukvård skall tjänsten användas? Yttre gränsdragning är viktig för att begränsa till relevant helhet. Det kan vara generiska exempel, t ex offentlig primärvård inom ett landsting eller faktiska tillämpningar, t ex KOL-vården i Lidingö kommun.
Vid vilka vårdenheter och vilka verksamheter skall tjänsten användas? T ex vårdenheten Reumatologmottagningen vid Karolinska universitetssjukhuset i Solna eller verksamheten som reumatologmottagningen tillhör - Reumatologiska kliniken vid Karolinska universitetssjukhuset.
Inom vilka vårdprocesser skall tjänsten användas? T ex det normala, icke akuta, vårdflödet för kroniskt sjuka CF-patienter med egenvård, löpande konsultationer, månadskontroller och årskontroll.
Vilken vårdgivare är ansvarig? T ex myndigheten Karolinska universitetssjukhuset eller Jönköpings läns landsting eller Praktikertjänst AB. Ange organisationsnummer.
Vilka landsting/kommuner är yttersta ansvariga, d.v.s. sjukvårdshuvudmän, för verksamheten där tjänsten används? T ex Stockholms läns landsting, Göteborgs kommun eller Region Skåne. Ange organisationsnummer.
Vilka patientgrupper skall använda tjänsten? T ex personer med astmadiagnos som är över 55 år gamla och som är bosatta i Göteborgs kommun.
Exempel på egenskaper hos de kartdelar som beskrivs:
systemgränser (t ex landstingsgränser eller gränser mot kommunal socialtjänst och hur offentlighet och sekretess skall hanteras),
relationer (t ex förhållanden mellan olika vårdgivare som använder en gemensam formulärtjänst i en vårdprocess med samma patientgrupp när det gäller hur personuppgiftsansvaret skall organiseras),
objekt/subsystem (t ex informationsflöden som involverar labb eller intern IT-support och hur journalföring / arkivering skall ske)
omgivning (t ex gränsdragning mot vårdprocesser som inte skall omfattas av en tjänst, eller beroenden till systemförvaltande IT-leverantörer, tillsynsmyndigheters ansvarsområden för att analysera hur dessa skall involveras eller avgränsas i regelverksarbetet).
Resultatet av en systembeskrivning kan beskrivas mer i text eller mer grafiskt (jfr systemkarta). Här följer exempel på frågor och resonemang på påverkan som kan utredas med systembeskrivningar som ett underlag:

| Exempel på fråga | Exempel på påverkan som kan utredas med systembeskrivningar som ett underlag |
| :--- | :--- |
| ”Vilka avtal/kontrakt bör upprättas mellan de olika aktörerna (e-tjänst mellanhänder, huvudman och invånaren)?” | Det är just för denna typ av frågeställning det behövs tydlig systemkartläggning som sedan kan belysas och bearbetas med hjälp verkliga och hypotetiska case och scenarier. När en e-tjänst funnits under en period kan inventering av befintliga avtal också ge en bättre bild av vilka kontrakt som upplevs som nödvändiga och användbara. Den nationella arkitekturen, landstingsgemensamma ramavtal och strukturer, referensarkitektur kommer att underlätta integration och gemensam utveckling samt underlätta för regelverksansvariga. |
| ”Hur länge får information lagras i ett formulär, hur länge bör ett pågående formulär få vara aktivt d.v.s. vara temporärt.” | Denna frågeställning påverkar kraven som en vårdgivare måste ställa på den tekniska lösningen och kan kräva att den tekniska lösningen antingen uppfyller krav som ställs på journalsystem, alternativt innehåller stöd för export av information från formulärtjänst till journal på ett sätt som uppfyller särskilda informationssäkerhetskrav. Normalt sätt kan detta hanteras med utgångspunkten att själva formulärtjänsten inte innehåller lagring av känsliga personuppgifter. |
| ”Vem äger och kan ta betalt för en formulärtjänst?”, ”Vem äger informationen i tjänsten?” | Dessa frågeställningar påverkar ingångsvillkoren för hur en etjänstelösning introduceras inom en sjukvårdshuvudmans område och medför t ex att man när en medborgare använder en tjänst tillser att den som äger tjänsten i förhållandet med invånaren (t ex en vårdgivare) har säkrat med slutanvändarna att informationen kan utnyttjas för ytterligare ändamål som t ex statistik, forskning. Normalt sätt kan detta hanteras genom att man har väl utvecklade avtal med slutanvändarna, t ex villkorstexter integrerade i de olika tjänstekomponenterna som användarna godkänner när man har börjat använda tjänsten, och att man med policies, ramavtal och anslutningsavtal reglerar från sjukvårdshuvudmannens sida vad som skall gälla. |
| ”På vilket sätt bör en användares (patients) avslutade formulär vara tillgängligt? Måste man kunna se det som en historik över ifyllda formulär?” | Denna frågeställning påverkar hur en personuppgiftsansvarig vårdgivare skall se på formulärhanteringen på verksamhetsnivå och kan kräva att verksamheterna har särskilda rutiner för journalföring, gallring och arkivering. Normalt sätt kan detta hanteras genom att personuppgiftsansvarig vårdgivare har ett särskilt system för kartläggning av befintliga register (jfr PUH-registret inom SLL där också ett Arkiv och biobankscentrum finns som erbjuder tjänster för förvaring och långtidslagring av information och råd och stöd i arkiv- och dokumenthanteringsfrågor). |
| ”Kan olika vårdgivare ta del av information från samma patient?” | Denna frågeställning påverkar frågor om sammanhållen journalföring och avtal mellan vårdgivare om personuppgiftsbiträden, direktåtkomst, personuppgiftsombud m.m. och kan kräva att den som tillhandahåller en formulärtjänst har kartlagt alla personuppgiftsflöden. Normalt sätt kan detta hanteras genom att själva formulärtjänsten inte möjliggör att olika vårdgivare har access till ”varandras” patientuppgifter, istället styrs accessmatriser och behörigheter på verksamhetsnivå. |
| ”Kan patienter dela med sig av informationen i formulärtjänsten till handläggare inom socialtjänsten?” | Det pågår utredningar för att förbättra tillgång till personuppgifter inom och mellan hälso- och sjukvården och socialtjänsten som skall förbättra och förenkla möjligheterna för aktörer i e-hälsa att utbyta information. Dessa frågeställningar påverkar avtal mellan invånare och den som tillhandahåller en tjänst, t ex en för att en vårdgivare skall kunna säkerställa att patienten har en privat sfär för hantering av sina patientuppgifter som inte faller inom vårdgivarens ansvar för offentlig handling och sekretess. |
| ”Har en användare rätt att få ett avslutat formulär raderat? Vilka verksamhetsregler skall tillämpas på formulären? Vilka regelverk kan styra patientens möjlighet att radera ett formulär?” | Denna frågeställning påverkar avtal mellan vårdgivare, verksamheter, tjänsteleverantörer, patienter m.fl. och kan kräva att tjänsten både i användargränssnitt och avtal tydliggör vad som är patientens egna uppgifter som patienten kan bestämma skall raderas (jfr patientens skrivyta), vad som är journaluppgifter eller administrativa uppgifter som vårdgivare äger (jfr uppgifter som skall journalföras eller som ingår i administrationsgränssnitt). Normalt sätt kan detta hanteras genom att formulärtjänster delas upp i tydliga deltjänster så att inte sammanblandning mellan olika krav och regelverk behöver hanteras (ett normalfall skulle vara att separera information som skall journalföras från allmän användarinformation eller rent administrativa uppgifter). |
| ”Vilka olika typer av formulär kan aktualiseras och vilka olika generella regelverk behövs? På vilket sätt är dess typer kopplade till verksamhetsprocesser och hur styr det regelverken?” | Formulär kan t ex hjälpa till vid förnyande av recept, dialog om provresultat eller för att inhämta hälsodeklaration. Vilka frågeställningar som är aktuella påverkar sjukvårdshuvudmannens krav på hur eTjänster integreras i verksamhetsprocesser och lokala regelverk. I upphandlingsunderlag kan krav på att olika tjänster tillhandahålls ställas och även generella policys kan skapas för att styra upp hanteringen, t ex med etiska riktlinjer kring hur patientuppgifter får användas för forskning och marknadsföring. Graden av integration med verksamhetsprocesser påverkar hur integrerad eTjänsten skall ses med vårdtjänster i övrigt vilket får påverkan på patientsäkerhetsfrågor, ansvarsfrågor m.m. |
|  |  |
| ”Hur skall ansvarsgränser dras mellan aktörer? Systemkrav?” | För att denna frågeställning skall kunna bearbetas behövs tydlig systemkartläggning som sedan kan belysas och bearbetas med hjälp verkliga och hypotetiska case och scenarier. |
| ”Vem är ansvarig för helheten? Styrmedel?” | Med utgångspunkt i de avgränsningar och delar som beskrivits i en systemkartläggning kan styrmedel diskuteras, t ex vad gäller: / - Policies / - Ersättningsmodeller / - Regelverk / - Avtal / - Författningskrav / Ansvar mellan beställare och utförare kan regleras avtalas med e-tjänster som en integrerad del. Nationella strukturer kan utformas och regleras. |
| ”Vem är ansvarig inför patienten? Informationskrav” | Ett vanligt sätt att beskriva begreppet personlig integritet i samband med informationshantering är att den enskilde skall kunna kontrollera spridningen av uppgifter om sig själv eller ha en rätt att bestämma vilka uppgifter om sig själv som han eller hon vill dela med sig till andra. Med utgångspunkt i de avgränsningar och delar som beskrivits i en systemkartläggning kan informationssäkerhetsfrågor diskuteras konkret, t ex vad gäller: / - Integritet / - Sekretess / - Offentlighet / - Informationssäkerhet / - Informationsklassning / - Integritetsfilter / - Informationssäkerhet |
| ”Vart vänder sig patienten vid fel/missnöje?” | Utgångspunkten är att eHälsotjänsterna är en integrerad del i hälso- och sjukvården. Det bör då alltid finnas en ansvarig vårdgivare som en missnöjd patient kan vända sig till. Invånare utan patientrelation bör kunna vända sig till en representant för sjukvårdshuvudmannen, t ex utsedd en funktion för Mina Vårdkontakter. |

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt. Observera att detta gäller tjänsteproducenten, antalet ”mellanhänder” som tjänsteplattformar kan komma att utöka svarstiden.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid (avg) | < 500 ms per anrop. |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 50 samtidiga anrop |  |
| Aktualitet | - |  |
| Återställningstid | - |  |

#### Övriga krav

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
Användaren kommer enbart att se ”tekniskt fel – inte detaljinformation. Den riktar sig till systemförvaltaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText/comment.
Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för invånaren.
resultCode kan vara:
OK 
transaktionen har utförts enligt uppdraget i frågemeddelandet.
INFO 
transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren. Exempel på detta kan vara ”medtag legitimation vid besöket”.
ERROR
transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara ”ditt svar gick inte att hantera pga XXX”.

#### Krav på en tjänsteproducent

##### Logiska fel
Inga specifika felkoder används.

##### Tekniska fel
Inga specifika felkoder används.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga specifika felkoder används.

##### Tekniska fel
Inga specifika felkoder används.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

| Informationsklass | Innehåller information om |
| :--- | :--- |
| Mall 
(FormTemplate) | Mall innehåller formulärinformation och dess frågor och svarsalternativ. |
| Mall info / (FormTemplateInfo) | Mall info innehåller ett urval av mallens information. |
| Formulär 
(Form) | Formulär innehåller grundläggande information och egenskaper kopplade till ett skapat formulär. |
| Frågesida / (Page) | En sida innehåller en till många block. En(1) är ett sätt att gruppera ett formulär. |
| Frågegruppering/block 
(QuestionBlock) | Frågegruppering/Frågeblocket innehåller en gruppering av frågor som skall presenteras för invånaren/användaren. |
| Mall för frågegruppering/block 
(TemplateQuestionBlock) | Mall för Frågegruppering/Frågeblocket innehåller en gruppering av frågor som skall presenteras för invånaren/användaren. |
| Malldelning / (TemplatePropagate) | Innehåller information om mallen delas. |
| Frågor
(Question) | Innehåller detaljerad information om en fråga. |
| Mall för frågor
(TemplateQuestion) | Mall för en fråga. |
| Svarsalternativ 
(AnswerAlternative) | Innehåller en frågas svarsalternativ. |
| Svar
(Answer) | Innehåller svaret på en fråga. |
| Status / (answerStatus) | Statusobjekt. Innehåller statusinformation kopplat till en operation. |
| Kode / (code) | Objekt för kodverk och kodvärde. Används för att konfigurera specifikt kodverk+kod (T.ex. Beskriva typ av formulär AUDIT-C, PHQ-9, ASRS-Screening, EQ-5D, CGI-S, MINI. Eller fältvärden definierade med SNOMED-CT) |
| Frågerelation / (QuestionSuperior) | Objekt för att beskriva en relation till en fråga eller svarsalternativ. |
| Valideringsobjekt / (ValidationEvent) | Objekt för att beskriva valideringsevent och anpassad text för detta. |
| Media / (media) | Objekt för att beskriva media. |
| GridConfig / (gridconfig) | Objekt för att definiera en ”grid” eller matris/tabell. |
| GridValue / gridvalue | Objekt för att definiera var en fråga skall placeras i ”grid”. |

### Klasser och attribut V-MIM

#### Klass Formulär (Form)
Klassen Formulär innehåller grundläggande information samt formulärets egenskaper.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | i VTIM |  |  |
| Enhets-id vårdgivare (healthcare_ CareGiver) | Enhets-id vårdgivare (healthcare_ CareGiver) | Ansvarig vårdgivare (huvudman). / T.ex. Landsting | II | 0..1 | Hsa-id |  |  |  |  |
| Enhets-id ansvarig / (healthcare_ MedUnit) | Enhets-id ansvarig / (healthcare_ MedUnit) | Medicinsk ansvarig klinik/vårdcentral eller motsvarande. / T.ex. Medicinklinik | II | 0..1 | Hsa-id |  |  |  |  |
| Enhets-id / (healthcare_facility_CareUnit) | Enhets-id / (healthcare_facility_CareUnit) | Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. / T.ex. Den avdelning som äger formuläret: se2321000016-1hz3 | II | 1 | Hsa-id |  |  |  |  |
| Enhetsnamn / (healthcare_facility_CareUnitName) | Enhetsnamn / (healthcare_facility_CareUnitName) | Vårdenhetens namn. / T.ex. Testvårdcentral A, Medicinmottagningen USÖ | TXT | 1 |  |  |  |  |  |
| (healthcare_systemID) | (healthcare_systemID) | Id för att identifiera mottagande system. / T.ex. Ett hsa-id uttaget för en instans av ett journalsystem. | II | 0..1 | Hsa-id |  |  |  |  |
| Hälsoärende-id / (ClinicalProcessInterestId) | Hälsoärende-id / (ClinicalProcessInterestId) | HSA-id för framställarens enhet/process + unik identifierare.
Globalt/nationellt hälsoärende ID. Hälsoärende är ett begrepp för det som håller samman information i en kärnprocess för en vård- och omsorgstagare, tvärs över organisatoriska enhetsgränser. | II | 0..1 | ID |  |  |  |  |
| Status / (FormStatus) | Status / (FormStatus) | Formulärets status. Ett avslutat besvarat formulär kan visas i ”läs läge” för patienten. | KTOV | 1 | KV Form Status / COMPLETED = Avslutad
ONGOING = Pågående, frågor har temporärsparats
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade. |  |  |  |  |
| (FormText) | (FormText) | Unik text för Formulär. Använd t.ex. tjänsten "CreateFormRequest" för att bifoga en unik text för formuläret. T.ex. "Hälsoundersökning inför besök X". | TXT | 0..1 |  |  |  |  |  |
| (FormID) | (FormID) | Formulärets unika ID (Sätts av formulärmotorn id/GUID). / T.ex. MHV1 har FormID = 3B2DF0C0-BC22-11DE-823D-00155D316606 / Måste genereras slumpmässigt för att vara unikt. | II | 1 |  | Globally unique identifier (GUID) |  |  |  |
| Patient id / (SubjectOfCare) | Patient id / (SubjectOfCare) | Patienten formuläret avser. Personnummer format yyyymmddnnnn. / T.ex. 191212121212 | II | 1 |  |  |  |  |  |
| (ExpireDate) | (ExpireDate) | Formulärets giltighetstid. Indikerar att formuläret kan fyllas i fram till om med angivet datum. / T.ex. 20121101 | TXT | 0..1 | ISO 8601:2004 ÅÅÅÅMMDD
(yyyyMMdd) |  |  |  |  |
| (CreatedDateTime) | (CreatedDateTime) | Datum när användaren/patienten skapade formuläret. / T.ex. 2012-11-01 kl 13:05:00  20121101T130500 | TXT | 1 | ISO 8601:2004 ÅÅÅÅMMDDTttmmss
(yyyyMMddThhmmss) |  |  |  |  |
| (LastSavedDate) | (LastSavedDate) | Datum för senaste temporärsparning (användare/patientens). / T.ex. 2012-11-01 kl 13:05:00  20121101T130500 | TXT | 0..1 | ISO 8601:2004 / ÅÅÅÅMMDDTttmmss
(yyyyMMddThhmmss) |  |  |  |  |
| (KeepUntil) | (KeepUntil) | Datum för hur länge källsystemet kommer lagra formuläret. Tomt indikerar tillsvidare. | TXT | 0..1 | ISO 8601:2004 / ÅÅÅÅMMDD |  |  |  |  |
| Formulärmall/id / (FormTemplate) | Formulärmall/id / (FormTemplate) | Koppling till klass för formulärmall. | II | 1 | Länk till objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett formulär(Form) tillhör formulärmall (FormTemplate) | Ett formulär(Form) tillhör formulärmall (FormTemplate) | Ett formulär(Form) tillhör formulärmall (FormTemplate) |  |  |  |  |  |  |  |

#### Klass Formulärmall (FormTemplateInfo)
Objektet innehåller översiktlig mallinformation för ett formulär.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (AnonymousForm) | (AnonymousForm) | Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. / Värden: / True = Tillåter anonym användning. "SubjectOfCare" får inte användas. / False = Tillåter inte anonym användning. "SubjectOfCare" är obligatorisk attribut. / T.ex. Om ”true” blir subjectOfcare obligatoriskt. | S/F |  | True = Anonymt formulär / False = Ej anonymt formulär |  |  |  |  |
| (Category) | (Category) | Formulärets kategori / T.ex. Anmälan, registrering, hälsodeklaration | KTOV | 1 | KV Formulärkategori | Definierar formulärets typ |  |  |  |
| Code/id / (Code) | Code/id / (Code) | Koppling till klass för code. Används för att beskriva t.ex. formulärinstrument. | II | 0..1 | Länk till objekt |  |  |  |  |
| (FormCompleteText) | (FormCompleteText) | Text som visas för invånaren när formuläret är besvarat. | TXT | 0..1 |  |  |  |  |  |
| (PublishStatus) | (PublishStatus) | Mallen status. | KTOV | 1 | KV Publicerings status |  |  |  |  |
| (TemplateId) | (TemplateId) | Typ av formulär. Kodverk för standardiserade id för formulärtyper. / T.ex. Mödrahälsovårdsjournal 1 - MHV1. | KTOV | 1 | KV Malltyp. | Standard saknas |  |  |  |
| (templateVersion) | (templateVersion) | Mallens version | VÄ | 1 |  |  |  |  |  |
| Obligatoriskt / (Mandatory) | Obligatoriskt / (Mandatory) | Indikerar om formuläret är obligatoriskt att fylla i av användaren. / T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. | S/F | 1 | True = obligatoriskt / False = Frivilligt |  |  |  |  |
| Språk (Language) | Språk (Language) | Beskriver vilket språk som används i formuläret. / T.ex. s eller en. | KTOV | 1 | KV Språk. | Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005 |  |  |  |
| Rubrik / (FormTitle) | Rubrik / (FormTitle) | Mallens/formulärets rubrik. Används på formulärets introduktionssida. | TXT | 0..1 |  |  |  |  |  |
| Mallens namn / (FormName) | Mallens namn / (FormName) | Mallens namn. / T.ex. Hälsodeklaration Mödravård | TXT | 1 |  |  |  |  |  |
| Formulärbeskrivning (Description) | Formulärbeskrivning (Description) | Formulärets beskrivning och instruktioner. / T.ex. Formuläret skall besvaras innan du besöker mottagningen. | TXT | 1..0 |  |  |  |  |  |
| Informations URL / (InformationURL) | Informations URL / (InformationURL) | URL till ytterligare/relevant information. | URL | 0..1 |  | Länk till publik information utan krav på autentisering. |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Villkor / (Term) | Villkor / (Term) | Villkor kopplade till formuläret. / T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras. | TXT | 1 |  |  |  |  |  |
| (MaxNumberOfPages) | (MaxNumberOfPages) | Beskriver hur många ”sidor” formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfPages) | (MinNumberOfPages) | Beskriver hur många ”sidor” formuläret minst kan innehålla. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MaxNumberOfQuestion) | (MaxNumberOfQuestion) | Beskriver hur många frågor formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfQuestion) | (MinNumberOfQuestion) | Beskriver hur många frågor formuläret som minst kan innehåller. | VÄ | 1 |  |  |  |  |  |
| (media/id) | (media/id) | Mediaobjekt som skall visas på formulärets introduktionssida. | II | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärmall kan ha ett media objekt. | En formulärmall kan ha ett media objekt. | En formulärmall kan ha ett media objekt. |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
Klass Formulärmall (FormTemplate)
Klassen Formulär innehåller grundläggande information om formuläret.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (anonymousForm) | (anonymousForm) | Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. / Värden: / True = Tillåter anonym användning. "SubjectOfCare" får inte användas. / False = Tillåter inte anonym användning. "SubjectOfCare" är obligatorisk attribut. / T.ex. Om ”true” blir subjectOfcare obligatoriskt. | S/F |  | True = Anonymt formulär / False = Ej anonymt formulär |  |  |  |  |
| (Category) | (Category) | Formulärets kategori / T.ex. Anmälan, registrering, hälsodeklaration | KTOV | 1 | KV Formulärkategori | Definierar formulärets typ |  |  |  |
| (PublishStatus) | (PublishStatus) | Mallen status. | KTOV | 1 | KV Publicerings status |  |  |  |  |
| (TemplateId) | (TemplateId) | Typ av formulär. Kodverk för standardiserade id för formulärtyper. / T.ex. Mödrahälsovårdsjournal 1 - MHV1. | KTOV | 1 | KV Malltyp. | Standard saknas |  |  |  |
| Mall delning/id / (templatePropagate) | Mall delning/id / (templatePropagate) | Indikerar om mallen skall delas (standardiserad). | II | 0..* | Länk till objekt |  |  |  |  |
| (templateVersion) | (templateVersion) | Mallens version | VÄ | 1 |  |  |  |  |  |
| Obligatoriskt / (Mandatory) | Obligatoriskt / (Mandatory) | Indikerar om formuläret är obligatoriskt att fylla i av användaren. / T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. | S/F | 1 | True = obligatoriskt / False = Frivilligt |  |  |  |  |
| Språk (Language) | Språk (Language) | Beskriver vilket språk som används i formuläret. / T.ex. s eller en. | KTOV | 1 |  |  |  |  |  |
| Rubrik / (FormTitle) | Rubrik / (FormTitle) | Mallens/formulärets rubrik. Används på formulärets introduktionssida. | TXT | 0..1 |  |  |  |  |  |
| Mallens namn / (FormName) | Mallens namn / (FormName) | Mallens namn. / T.ex. Hälsodeklaration Mödravård | TXT | 1 |  |  |  |  |  |
| Formulärbeskrivning (Description) | Formulärbeskrivning (Description) | Formulärets beskrivning och instruktioner. / T.ex. Formuläret skall besvaras innan du besöker mottagningen. | TXT | 1..0 |  |  |  |  |  |
| Formulärbeskrivning för personal (DescriptionInternal) | Formulärbeskrivning för personal (DescriptionInternal) | Formulärets beskrivning och instruktioner. Avsedd för personal. | TXT | 1..0 |  |  |  |  |  |
| (FormCompleteText) | (FormCompleteText) | Informationstext vid avslutat och sparat formulär. |  |  |  |  |  |  |  |
| Informations URL / (InformationURL) | Informations URL / (InformationURL) | URL till ytterligare/relevant information. | URL | 0..1 |  | Länk till publik information utan krav på autentisering. |  |  |  |
| Villkor / (Term) | Villkor / (Term) | Villkor kopplade till formuläret. / T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras. | TXT | 1 |  |  |  |  |  |
| (MaxNumberOfPages) | (MaxNumberOfPages) | Beskriver hur många ”sidor” formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfPages) | (MinNumberOfPages) | Beskriver hur många ”sidor” formuläret minst kan innehålla. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MaxNumberOfQuestion) | (MaxNumberOfQuestion) | Beskriver hur många frågor formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfQuestion) | (MinNumberOfQuestion) | Beskriver hur många frågor formuläret som minst kan innehåller. | VÄ | 1 |  |  |  |  |  |
| (healthCareFacilityUnit) | (healthCareFacilityUnit) | Mallens ägare. | II | 1 | Hsa-id |  |  |  |  |
| Sida/id / (pages) | Sida/id / (pages) | Koppling till klass för sida. | II | 0..* | Länk till objekt |  |  |  |  |
| (media/id) | (media/id) | Mediaobjekt som skall visas på formulärets introduktionssida. | II | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärmall (FormTemplate) har en till många sidor (TemplatePage) | En formulärmall (FormTemplate) har en till många sidor (TemplatePage) | En formulärmall (FormTemplate) har en till många sidor (TemplatePage) |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Formulärsida (TemplatePage)
Objektet utgör mall för en sida (Page)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (PageNumber) | (PageNumber) | Grupperingsbegrepp  av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik / (Subject) | Rubrik / (Subject) | Sidans rubrik. / T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning / (Description) | Beskrivning / (Description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| Frågegruppering/id / (TemplateQuestionBlock) | Frågegruppering/id / (TemplateQuestionBlock) | Koppling till klass för frågegruppering. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärsida(Page) är har noll till flera frågegrupperingar (TemplateQuestionBlock) | En formulärsida(Page) är har noll till flera frågegrupperingar (TemplateQuestionBlock) | En formulärsida(Page) är har noll till flera frågegrupperingar (TemplateQuestionBlock) |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Formulärsida (Page)
Objektet innehåller en till många frågegrupperingar.  En sida är ett sätt att dela upp/gruppera ett formulär.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (PageNumber) | (PageNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik / (Subject) | Rubrik / (Subject) | Sidans rubrik. / T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning / (Description) | Beskrivning / (Description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  |  |  |  |
| (LastPage) | (LastPage) | Indikerar om ytterligare sidor. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. | S/F | 1 | S = Indikerar att detta är det sista sidan. / F= Indikerar att ytterligare sidor. |  |  |  |  |
| Frågor/id / (QuestionBlock) | Frågor/id / (QuestionBlock) | Koppling till klass för Block. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärsida(Page) är har noll till flera Block (QuestionBlock) | En formulärsida(Page) är har noll till flera Block (QuestionBlock) | En formulärsida(Page) är har noll till flera Block (QuestionBlock) |  |  |  |  |  |  |  |

#### Klass Frågegrupperingsmall (TemplateQuestionBlock)
Objektet utgör mall för en frågegruppering (QuestionBlock)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (BlockNumber) | (BlockNumber) | Grupperingsbegrepp  av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik / (Subject) | Rubrik / (Subject) | Blockets rubrik. / T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning / (Description) | Beskrivning / (Description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 | (InformationURL) |  |  |  |  |
| (NumberOfQuestions) | (NumberOfQuestions) | Antal frågor tillhörande blocket. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| gridConfig/id | gridConfig/id | Koppling till klass för gridkonfigurering. | II | 0..1 |  |  |  |  |  |
| Frågor/id / (QuestionId) | Frågor/id / (QuestionId) | Koppling till klass för frågor. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) |  |  |  |  |  |  |  |
| En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) |  |  |  |  |  |  |  |

#### Klass Frågegruppering (QuestionBlock)
Objektet innehåller ett block fråga och dess svarsalternativ.  Ett block representerar en grupp av frågor. Grupperingen kan styras av vägskäl i fråge hierarkin alternativt lämplig gruppering på grund av mängden frågor.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (BlockNumber) | (BlockNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik / (Subject) | Rubrik / (Subject) | Blockets rubrik. / T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning / (Description) | Beskrivning / (Description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 | (InformationURL) |  |  |  |  |
| (NumberOfQuestions) | (NumberOfQuestions) | Antal frågor tillhörande blocket. / T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| gridConfig/id | gridConfig/id | Koppling till klass för gridkonfigurering. | II | 0..1 |  |  |  |  |  |
| Frågor/id / (QuestionId) | Frågor/id / (QuestionId) | Koppling till klass för frågor. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) |  |  |  |  |  |  |  |
| En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) |  |  |  |  |  |  |  |

#### Klass Formulärfråga mall (TemplateQuestion)
Objektet utgör mall för en fråga (Question)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  |  |  |  |
| (Subject) | (Subject) | Frågans rubrik. / T.ex Ange din blodgrupp. | TXT | 1 |  |  |  |  |  |
| (Description) | (Description) | Frågans beskrivande text eller instruktion till användaren/patient. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! | TXT | 1..0 |  |  |  |  |  |
| (FormId) | (FormId) | Frågans unika id. (Producentens unika id) | TXT | 1 |  |  |  |  |  |
| (input) | (input) | Beskriver frågans inmatningstyp. / T.ex. radio(enkelvärde), checkbox(multivärde) eller fritext. | KTOV | 1 | KV Inmatningstyp |  |  |  |  |
| (Mandatory) | (Mandatory) | Indikerar om frågan är obligatorisk. | S/F | 1 | True = obligatorisk fråga / False = Frivillig fråga |  |  |  |  |
| (MaxNumberOfChoices) | (MaxNumberOfChoices) | Indikerar max antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. |  |  |  |
| (MinNumberOfChoices) | (MinNumberOfChoices) | Indikerar min. antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. |  |  |  |
| (InputUnit) | (InputUnit) | Typ av enhet. / T.ex. kg, m | KTOV | 0..1 | KV enhet |  |  |  |  |
| (AnswerMax) | (AnswerMax) | Specificerar maxvärde för inmatning. (Gäller typ: number, date) / T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMin) | (AnswerMin) | Specificerar minvärde för inmatning. / (Gäller typ: number, date) | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMaxLenght) | (AnswerMaxLenght) | Specificerar maxvärdelängd för inmatning. / (Gäller typ: number) / T.ex: En inmatning (text) får inte vara större än 100 tecken. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerPattern) | (AnswerPattern) | Inmatningsvalidering / (Regular expresson). / T.ex: pattern="[A-z]{3}" tillåter endast 3 teckan A-z. | TXT | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerStep) | (AnswerStep) | Specificerar giltiga intervall för inmatning. / (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) / T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 
35-40. | VÄ | 0..1 |  |  |  |  |  |
| (questionAlign) | (questionAlign) | Presentationsrekommendation för fråga och svarsalternativ. / left / right / Center / vertical: Fråga och svarsalternativ presenteras i vertikalt. T.ex. inmatning placeras under rubrik. / horizontal: Fråga och svarsalternativ presenteras i horisontalt. T.ex. inmatning placeras bredvid varandra. | TXT | 0..1 |  |  |  |  |  |
| Code/id / (codeType) | Code/id / (codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för en fråga. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  |  |  |  |
| Svarsalternativ/id / (AnswerAlternative) | Svarsalternativ/id / (AnswerAlternative) | Koppling till klass för svarsalternativ. | II | 0..* | Länk till objekt |  |  |  |  |
| Media/id | Media/id | Koppling till klass för media. | II | 0..1 | Länk till objekt |  |  |  |  |
| ValidationEvent/id | ValidationEvent/id | Koppling till klass för validerings events. | II | 0..* | Länk till objekt |  |  |  |  |
| GridValue/id | GridValue/id | Koppling till klass för ”grid” värden. | II | 0..1 | Länk till objekt. |  |  |  |  |
| QuestionSuperior/id | QuestionSuperior/id | Koppling till klass för kopplade frågor. | II | 0..1 | Länk till objekt. |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(Question) är har noll till flera svarsalternativ (AnswerAlternative) | En formulärfråga(Question) är har noll till flera svarsalternativ (AnswerAlternative) | En formulärfråga(Question) är har noll till flera svarsalternativ (AnswerAlternative) |  |  |  |  |  |  |  |
| En formulärfråga (Question) har noll till flera svar (Answer) | En formulärfråga (Question) har noll till flera svar (Answer) | En formulärfråga (Question) har noll till flera svar (Answer) |  |  |  |  |  |  |  |
| En Formulärfråga (Question) har noll till ett kodverk (code) | En Formulärfråga (Question) har noll till ett kodverk (code) | En Formulärfråga (Question) har noll till ett kodverk (code) |  |  |  |  |  |  |  |
| En Formulärfråga (Question) har noll till ett gridvalue | En Formulärfråga (Question) har noll till ett gridvalue | En Formulärfråga (Question) har noll till ett gridvalue |  |  |  |  |  |  |  |
| En Formulärfråga (Question) har noll till ett questionsuperior | En Formulärfråga (Question) har noll till ett questionsuperior | En Formulärfråga (Question) har noll till ett questionsuperior |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Formulärfråga (Question)
Objektet innehåller en fråga samt metadata.
Exempel:
”Vilken är din favoritfärg?”

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  |  |  |  |
| (Subject) | (Subject) | Frågans rubrik. / T.ex Ange din blodgrupp. | TXT | 1 |  |  |  |  |  |
| (Description) | (Description) | Frågans beskrivande text eller instruktion till användaren/patient. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! | TXT | 1..0 |  |  |  |  |  |
| (FormId) | (FormId) | Frågans unika id. (Producentens unika id) | TXT | 1 |  |  |  |  |  |
| (input) | (input) | Beskriver frågans inmatningstyp. / T.ex. radio(enkelvärde), checkbox(multivärde) eller fritext. | KTOV | 1 | KV Inmatningstyp |  |  |  |  |
| (Mandatory) | (Mandatory) | Indikerar om frågan är obligatorisk. | S/F | 1 | True = obligatorisk fråga / False = Frivillig fråga |  |  |  |  |
| (MaxNumberOfChoices) | (MaxNumberOfChoices) | Indikerar max antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. |  |  |  |
| (MinNumberOfChoices) | (MinNumberOfChoices) | Indikerar min. antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. |  |  |  |
| (InputUnit) | (InputUnit) | Typ av enhet. / T.ex. kg, m | KTOV | 0..1 | KV enhet |  |  |  |  |
| (AnswerMax) | (AnswerMax) | Specificerar maxvärde för inmatning. (Gäller typ: number, date) / T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMin) | (AnswerMin) | Specificerar minvärde för inmatning. / (Gäller typ: number, date) | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMaxLenght) | (AnswerMaxLenght) | Specificerar maxvärdelängd för inmatning. / (Gäller typ: number) / T.ex: En inmatning (text) får inte vara större än 100 tecken. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerPattern) | (AnswerPattern) | Inmatningsvalidering / (Regular expresson). / T.ex: pattern="[A-z]{3}" tillåter endast 3 teckan A-z. | TXT | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerStep) | (AnswerStep) | Specificerar giltiga intervall för inmatning. / (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) / T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 
35-40. | VÄ | 0..1 |  |  |  |  |  |
| (questionAlign) | (questionAlign) | Presentationsrekommendation för fråga och svarsalternativ. / left / right / Center / vertical: Fråga och svarsalternativ presenteras i vertikalt. T.ex. inmatning placeras under rubrik. / horizontal: Fråga och svarsalternativ presenteras i horisontalt. T.ex. inmatning placeras bredvid varandra. | TXT | 0..1 |  |  |  |  |  |
| Code/id / (codeType) | Code/id / (codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för en fråga. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  |  |  |  |
| Svarsalternativ/id / (AnswerAlternative) | Svarsalternativ/id / (AnswerAlternative) | Koppling till klass för svarsalternativ. | II | 0..* | Länk till objekt |  |  |  |  |
| Media/id | Media/id | Koppling till klass för media. | II | 0..1 | Länk till objekt |  |  |  |  |
| ValidationEvent/id | ValidationEvent/id | Koppling till klass för validerings events. | II | 0..* | Länk till objekt |  |  |  |  |
| GridValue/id | GridValue/id | Koppling till klass för ”grid” värden. | II | 0..1 | Länk till objekt. |  |  |  |  |
| QuestionSuperior/id | QuestionSuperior/id | Koppling till klass för kopplade frågor. | II | 0..1 | Länk till objekt. |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(Question) är har noll till flera svarsalternativ (AnswerAlternative) | En formulärfråga(Question) är har noll till flera svarsalternativ (AnswerAlternative) | En formulärfråga(Question) är har noll till flera svarsalternativ (AnswerAlternative) |  |  |  |  |  |  |  |
| En formulärfråga (Question) har noll till flera svar (Answer) | En formulärfråga (Question) har noll till flera svar (Answer) | En formulärfråga (Question) har noll till flera svar (Answer) |  |  |  |  |  |  |  |
| En Formulärfråga (Question) har noll till ett kodverk (code) | En Formulärfråga (Question) har noll till ett kodverk (code) | En Formulärfråga (Question) har noll till ett kodverk (code) |  |  |  |  |  |  |  |
| En Formulärfråga (Question) har noll till ett gridvalue | En Formulärfråga (Question) har noll till ett gridvalue | En Formulärfråga (Question) har noll till ett gridvalue |  |  |  |  |  |  |  |
| En Formulärfråga (Question) har noll till ett questionsuperior | En Formulärfråga (Question) har noll till ett questionsuperior | En Formulärfråga (Question) har noll till ett questionsuperior |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Svarsalternativ (AnswerAlternative)
Objektet innehåller de svarsalternativen som skall presenteras för användaren. För varje svarsalternativ finns ett objekt. Nedanstående exempel kräver tre objekt.
Exempel:
InputType = checkbox (multivärde)
☐ Blå
☐ Gul
☐ Röd

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (InputUnit) | (InputUnit) | Typ av enhet. / T.ex. kg, m | KTOV | 0..1 | KV enhet |  |  |  |  |
| (AlternativeValue) | (AlternativeValue) | Valbart svarsalternativ. | ANY | 1..* |  |  |  |  |  |
| (answerHelp) | (answerHelp) | Hjälptext till svarsalternativet. (placeholder) | TXT | 0..1 |  |  |  |  |  |
| (AlternativID) | (AlternativID) | Svarsalternativets id. | II | 1 |  |  |  |  |  |
| Code/id / (codeType) | Code/id / (codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för ett svarsalternativ. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  |  |  |  |
| Medi/id | Medi/id | Koppling till klass för media. | II | 0..1 | Länk till objekt |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett svarsalternativ(AnswerAlternative) har en formulärfråga (Question) | Ett svarsalternativ(AnswerAlternative) har en formulärfråga (Question) | Ett svarsalternativ(AnswerAlternative) har en formulärfråga (Question) |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Svar (Answer)
Objektet innehåller patientens/användarens svar på en fråga.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (Value) | (Value) | Patientens/användarens svar. | ANY | 1 |  |  |  |  |  |
| (ValueID) | (ValueID) | ID på frågan | II | 1 |  |  |  |  |  |
| Statuskod/id / (Status/id) | Statuskod/id / (Status/id) | Koppling till klass för statuskod. | II | 0..1 | Länk till objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett svar(Answer) har en formulärfråga (Question) | Ett svar(Answer) har en formulärfråga (Question) | Ett svar(Answer) har en formulärfråga (Question) |  |  |  |  |  |  |  |
| Ett svar(Answer) har noll eller en statuskod (Status) | Ett svar(Answer) har noll eller en statuskod (Status) | Ett svar(Answer) har noll eller en statuskod (Status) |  |  |  |  |  |  |  |

#### Klass anropsbekräftelse (AnswerStatus)
Objekt innehåller statuskod och meddelande.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (resultCode) | (resultCode) | Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod | KTOV | 0..1 | KV Statuskod |  |  |  |  |
| (resultCodeText) | (resultCodeText) | Felmeddelande, förklarande text. Vid INFO eller ERROR. / T.ex. INFO – Medtag legitimation. | TXT | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Frågerelation (QuestionSuperior)
Objekt innehåller information om beroende till överordnade frågor eller svarsalternativ finns.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (superiorAnswerAlternativeNumber) | (superiorAnswerAlternativeNumber) | Indikerar att frågan är beroende av att ett specifikt svarsalternativ är besvarat. / T.ex. Frågan skall endast visa om invånaren har svarat ”Ja” på en fråga. | TXT | 0..1 |  |  |  |  |  |
| (superiorQuestionNumber) | (superiorQuestionNumber) | Indikerar att frågan är beroende av att en  specifikt fråga är besvarad. | TXT | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass kodverk (Code)
Objekt innehåller definition av kodverk/kod. Klassen kan användas för att kodverk/kod för en fråga/svarsalternativ eller ett formulär instrument (EQ-5D).
Om ”code” används på formulärnivå avses ett standardinstrument. Prefixet 1177 Innebär att instrumentet är etablerat inom 1177 konceptet.
Ex:

| 1177.forms.audit-c / 1177.forms.eq-5d / 1177.forms.phq-9 |
| :--- |
Om ”code” används på fråga eller svarsalternativ avses ett kodsystem som avspeglar fråga och svarsalternativ.
Ex
ICD-10(Diagnos kod)
KVÅ (Operations kod)
SNOMED-CT.
Separat dokumentation kring fastställda mallar/instrument kommer publiceras under ”/riv/infrastructure//forminteraction/trunk/docs/mallar”.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (codeValue) | (codeValue) | Kod som används (Kodverk). | TXT | 1 |  |  |  |  |  |
| (codeSystem) | (codeSystem) | Identifierar vilket kodverk som används. | TXT | 1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Malldelning (TemplatePropagate)
Objekt för att definiera om mallen är regional/nationell. En standardiserad mall kan användas regionalt eller nationellt. mall kan delas definieras global (kan). Attributet countycode styr mallens tillgänglighet. ISO 3166-2:SEObjekt  information om mallen delas med.innehåller definition av kodverk/kod.
Ex:

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (countycode) | (countycode) | Avgränsande fält. Om Propagate "true" kan mallen delas inom en till flera länskoder. / Om attributet är tomt delas mallen utan avgränsning. / Avgränsningen (länskod) gäller för inom det län verksamheten (hsa-id) verkar inom (som vill använda mallen). | KTOV | 0..* | KV Länskod. |  |  |  |  |
| (propagate) | (propagate) | Attribut för att indikera att mallen är global. | S/F | 1 | S = Mallen delas (t.ex är nationell). / F = Mallen delas inte. |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |

#### Klass validering (validationEvent)
Objekt innehåller valideringsmeddelanden kopplade till en valideringshändelse. Det finns följande validerings alternativ koppla de till frågor. Om validationEvent finns skall dessa visas för slutanvändaren vid valideringsfel.
ÖVERSIKT

| Validerings event | Text | TextArea | Radio | CheckBox | Select | Number | Date / Time / Month / Week | Range | Matrix / Radio | Matrix / checkbox | Matrix / Text | Scale |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| answerMin |  |  |  |  |  | X | X | X |  |  |  |  |
| answerMax |  |  |  |  |  | X | X | X |  |  |  |  |
| answerPattern | X | X | X | X | X | X | X | X | X | X | X | X |
| inputUnit | X |  |  |  |  |  |  |  |  |  |  |  |
| mandatory | X | X | X | X | X | X | X | X | X | X | X | X |
| maxNumberOfChoices |  |  |  | X | X |  |  |  |  | X |  |  |
| minNumberOfChoices |  |  |  | X | X |  |  |  |  | X |  |  |

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (event) | (event) | Valideringshändelse. / Ex: ”mandatory” indikerar att det finns en valideringstext för ett obligatoriskt fält. | TXT | 1..1 | KV Valideringshändelse |  |  |  |  |
| (text) | (text) | Valideringstext för valideringshändelse.. / Ex: ”Fältet x är obligatoriskt” | TXT | 1..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

### Terminologier, kodverk och identifierare (t/k/i)
Terminologier, kodverk och indentifikationssystem som hanteras i informationsutbytet inom formulärtjänst.

| Namn | Syfte | Innehåll. språk | Föreskrift, standard, internationellt kodverk | Fastställt av | OID-nummer och ägaren av OID-numret | Ägare/förvaltare, länkar och revideringsprocess | Återfinns i Klass / attribut | Ev begränsningar |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| KV Formulärkategori | Kodverk för formulärkategori | Kodverk saknas / Exempel / Anmälan / Registrering / Deklaration |  |  |  |  |  |  |
| KV Malltyp | Kodverk för malltyp | Kodverk saknas / Exempel / Mödrahälsovårdsjournal 1 - MHV1 |  |  |  |  |  |  |
| KV Språk | Kodverk för formulärspråk. |  |  | CeHis | 1.2.752.129.2.2.1.9 | Sveriges Kommuner och Landsting |  |  |
| KV Inmatningstyp | Kodverk för inmatningstyp | Följande typer stödjs. / Inmatning kan vara av följande huvudtyper: / Enkelvärde / Multivärde / Fritext / Exempel på inmatningstyper: / Text / textarea / Checkbox / Radio / Select / SelectMultiple / Number / URL / Date and time / Date / Month / Week / Time / Local date and time / Range / Image / MatrixText / MatrixRadio / MatrixCheckbox / MatrixMulti / Scale |  | W3C * | Version HTML5 | W3C * |  |  |
| KV Form Status | Kodverk för formulärets status | COMPLETED = Skickat / ONGOING = Pågående, svar har temporärsparats / PENDING_COMPLETION = Pågående, svarr har temporärsparats. Alla frågor är besvarade (färdigt ej skickat). |  |  |  |  |  |  |
| KV Statuskod | Kodverk för logisk felhantering | OK - Transaktion utförd / INFO - Transaktion utförd med kommentar. / ERROR - Transaktion ej genomförd |  |  |  |  |  |  |
| KV enhet | Kodverk för måttenheter | Grundenheter samt härledda SI-enheter beskrivs med dess beteckning. / T.ex. km, m, cm, kg, mm Hg etc | Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26) |  |  |  |  |  |
| KV Länskod | Kodverk för länskod, | Kodverk för länskod. | Länskod enligt SCB |  |  |  |  |  |
| KV valideringshändelse | Kodverk för formulärvalideringshändelser. | Gilgitga värden / mandatory / answerMax / answerMin / answerMaxLength answerPattern / maxNumberOfChoises minNumberOfChoises answerSuperior |  |  |  |  |  |  |
| KV Publicerings status |  | Unpublished / Pending / Published / Archived |  |  |  |  |  |  |
* http://www.w3.org/TR/html5/the-input-element.html#attr-input-type

### Formatregler

#### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601:2004-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDTttmmss”, vilket motsvara den ISO 8601:2004-kompatibla formatbeskrivningen ”YYYYMMDDTttmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänster sammanställning

| Namn på tjänst | Aktiviteter | Beskrivning |
| :--- | :--- | :--- |
| GetFormTemplates | Hämta valbara formulärmallar | Tjänsten används för att lista valbara formulär för en användare. |
| GetForms | Hämta användarens formulär | Tjänsten används för att hämta alla pågående eller avslutade formulär. |
| GetForm | Hämta ett specifikt formulär | Tjänsten används för att hämta ett specifikt formulär. |
| CreateForm | Skapa formulär | Tjänsten används för att skapa och starta ett formulär. |
| SaveFormPage | Temporärspara | Spara och hämta formulärfrågor |
| SaveForm | Spara och avsluta | Spara och avsluta formulär. |
| CancelForm | Avbryt/radera formulär | Avbryter och radera ett pågående formulär. |
| GetFormQuestionPage | Tjänst för hoppa till en sida. | Tjänst för att hoppa till en specifik sida(grupp med frågor). Används typiskt för att navigera fram/bak i ett formulär med många frågor. |
| CreateFormRequest | Skapa en formulärbegäran. | Ett vårdsystem använder tjänsten för att skapa en begäran om formulär. |
| GetFormTemplate | Hämta formulärmall. | Tjänst för att hämta formulärmall från tjänsteproducent. |
| SaveFormTemplate | Spara formulärmall. | Tjänst för att spara formulärmall hos tjänsteproducent. |

## Tjänstekontrakt GetFormTemplates
Tjänst för att hämta tillgängliga formulär för invånare. Tjänsten används för att lista de formulär som invånaren kan använda för att skapa formulär.
Tjänsten returnerar formulär baserat på olika parametrar.
Vårdenhets hsa-id.
Personnummer.
Indikerar att producerande system kan presentera formulär anpassat till användaren.
Formulärmall.
Indikerar att producerandesystem skall presentera formulärmall om denna finns tillgänglig.
Hälsoärende.
Indikerar att producerande system skall visa formulär kopplade till hälsoärende.
Tjänst används för att:
Hämta och lista formulär som användaren kan använda/fylla i.
Hämta specifika formulär som användaren skall fylla i.
Hämta formulär som användaren skall använda som resultat av en vårdprocess/vårdaktivitet.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
Healthcare_Facility_CareUnit[1..1]
PublishedStatus [0..*]
SubjectOfCare [0..1]
TemplateId [0..*]
ClinicalProcessInterestId [0..*]
Response
FormsTemplatesType [0..*]

#### Begäran (Request) och Svar (Response)

| Namn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). / T.ex. se2321000016-1hz3 | 1..1 |
| PublishedStatus |  | Indikerar vilken status en mall skall ha. | 0..* |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| TemplateId |  | Typ av formulärmall. Kodverk. Om denna inte anges skall formulärtjänsten som default returnera ALLA tillgängliga formulär för medborgaren. | 0..* |
| ClinicalProcessInterestId |  | Hälsoärende. | 0..* |
| Svar |  |  |  |
| FormTemplate |  | Objekt FormTemplateType. | 0..* |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet
Personnummer (subjectOfCare).
Hälsoärende (ClinicalProcessInterestId). Formulär relaterade till ett eller flera hälsoärenden.
Formulärtyp (TemplateId).

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Null/tomt indikerar att det inte finns något formulär för angivna sökparametrar.

### Tjänsteinteraktion
GetFormTempatesInteraction

## Tjänstekontrakt CreateForm
Tjänsten används för att skapa och initiera/starta ett formulär.
Tjänsten anropas när användaren vill:
Starta/skapa ett nytt formulär.
En ”CreateForm” kan hämta nödvändiga parametrar från tjänsten GetFormTemplates eller från en alternativ källa som engagemangsindex.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
Healthcare_Facility_CareUnit [1..1]
SubjectOfCare [0..1]
TemplateId [1..1]
TemplateVersion [0..1]
ClinicalProcessInterestId [0..1]
Response
Form [1..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
|  |  |  |  |
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). / T.ex. se2321000016-1hz3 | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn). FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| TemplateId |  | Mallid. | 1..1 |
| TemplateVersion |  | Mallens version. Utelämnas denna parameter skall producerande system använda den senaste versionen. | 0..1 |
| ClinicalProcessInterestId |  | Hälsoärende id. Parameter indikerar att formiuläret ingår i ett Hälsoärende. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form | FormType | Objekt CreateFormResponseType | 1..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan använda följande parametrar.
Filtreringsprioritet
Personnummer (subjectOfCare)
Personnummer indikerar starkt autentiserad invånare.
Tomt fält indikerar anonym användare.
Hälsoärende (ClinicalProcessInterestId)
Indikerar att formuläret skall kopplas till ett hälsoärende.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Formulärets (Form, FormTemplate) sida med frågor (Page) skall av konsumerande system(e-tjänst) presenteras för invånaren utan uppdelning.
Vid komplexa formulär med många frågor bör frågor delas upp i flera sidor (Page).

### Tjänsteinteraktion
CreateFormInteraction

## Tjänstekontrakt GetForms
Tjänsten används för att lista alla pågående/avslutade formulär.
Tjänsten returnerar formulär baserat på olika parametrar.
Vårdenhets hsa-id
Personnummer
Indikerar att producerande system skall hämta formulär för den specifika användaren.
Formulärtyp
Indikerar att producerandesystem skall filtrerar sitt svar baserat på formulärtypen (om denna finns tillgänglig).
Hälsoärende.
Indikerar att producerande system skall filtrera formulär kopplade till ett specifikt hälsoärende.
Tjänsten anropas när användaren vill:
Lista användarens alla formulär.
Formulär kan ha följande status:
ONGOING = Formulär skapat/formulärbegäran skapad. Pågående, frågor har temporärsparats
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade.
COMPLETED = Avslutad

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
Healthcare_Facility_CareUnit [0..1]
SubjectOfCare [0..1]
TemplateId [0..*]
ClinicalProcessInterestId [0..*]
Response
Forms [0..*]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). / T.ex. se2321000016-1hz3 | 0..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| TemplateId |  | Ett unikt id för en formulärtyp. | 0..* |
| ClinicalProcessInterestId |  | Hälsoärende ID | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| Formulär 
(Form) | FormsType | Objekt GetFormsResponse | 0..* |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet
Healthcare_Facility_CareUnit
Personnummer (subjectOfCare)
Hälsoärende (ClinicalProcessInterestId)
Formulärtyp (TemplateId)
Flera villkor kan anges.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Formulär som returneras kan ha följande status:
ONGOING = Pågående, frågor har temporärsparats
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade.
COMPLETED =  Formulär kan endast visas i ”läsläge”.

### Tjänsteinteraktion
GetFormsInteraction

## Tjänstekontrakt GetForm
Tjänsten används för att hämta ett specifikt formulär. Nödvändiga parametrar kan hämtas från tjänsten GetForms(GetFormsInteraction) alternativt engagemangsindex.
Tjänsten anropas när:
En invånare vill återuppta ett formulär (ONGOING).
En invånare vill se en sammanställning av ifyllt formulär. (PENDING_COMPLETE).
Ett vårdsystem skall hämta ett ifyllt, avslutat formulär (COMPLETED).
FormID kan t.ex. hämtas via
GetFormsInteraction.
Notifiering via Engagemangsindex.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
FormID [1..1]
SubjectOfCare [0..1]
Response
Form [0..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form | FormType | Objekt FormResponseType | 0..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Om formuläret är uppdelat i sidor (Page) skall det sista ifyllda sidan i sekvensen returneras.
COMPLETED =  Avslutat. Formuläret är besvarat och avslutat av invånaren. Konsumerande system (e-tjänst) kan endast visas formulär i ”läsläge”.
ONGOING = Pågående, frågor har temporärsparats. Producenten skall returnera det sista/senaste Page i sekvensen(currentPage).
PENDING_COMPLETION = Invånaren har besvarat(och temporärsparats) formulärets samtliga frågor. Formuläret byter status till COMPLETED genom att uppdateras via tjänsten ”SaveForm”.
Om formulär saknas returneras ett SOAP exception.

### Tjänsteinteraktion
GetFormInteraction

## Tjänstekontrakt GetFormQuestionPage
Tjänsten används för att hoppa/navigera framåt eller bakåt i ett formulär.
Tjänsten anropas när användaren vill:
Hoppa framåt eller bakåt bland besvarade och sparade frågor.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
FormID [1..1]
pageNumber [1..1]
Direction [1..1]
subjectOfCare [0..1]
Response
Form [0..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| pageNumber |  | Nummer på sidan som navigering utgår ifrån. | 1..1 |
| Direction |  | Kodverk. FORWARD, BACK | 1..1 |
| subjectOfCare |  | Invånarens personnummer. | 0..1 |
| Svar |  |  |  |
| Form |  | Objekt FormType | 0..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Konsumenten kan endast hoppa till en gruppering(FormType.currentPage) med sparade frågor.
Direction ”BACK” är inte tillåtet om objektet ”PageNumber” är 1.
Direction ”FORWARD” är inte tillåtet om objektets LastPage(PageType) är sant (true).
Anges ”PageNumber = 0” och ”direction = FORWARD” för att gå till första sidan.
Anges ”PageNumber = 0” och ”direction = BACK” för att gå till sista sidan.
Vid ovanstående fel genereras ett exception.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

### Tjänsteinteraktion
GetFormQuestionPageInteraction

## Tjänstekontrakt SaveFormPage
Tjänsten används för att spara invånarens besvarade frågor. Tjänsten används under pågående formulär session.
E-tjänsten (konsumerande system) sparar invånarens svar med ”PageAnswers”.
Formulärmotor (producerande system) returnerar nästa sida med frågor (nextPage).
Om parametern ”temporarySave” anges kommer formulärmotorn.
Spara formulärvärden som skickas in.
Validering av formulärdata skall ej göras.
Det Form och Page som skickades in skall returneras.
Formulärmotorn skall inte skicka med nästa sida (page).
Vid valideringsfel signaleras fel via ”ResultCode” och ”PageAnswer” returneras. ”AnswerStatus” (i AnswerType) kommer innehålla felindikering samt feltext.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
formID [1..1]
subjectOfCare [0..1]
pageAnswer [1..1]
pageNumber [1..1]
questionAnswerBlock [1..*]
blockNumber [1..1]
..
temporarySave [0..1]
Response
Form [0..1]
resultCode [1..1]
comment [0..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| PageAnswers |  | Objek PageAnswerType. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| temporarySave |  | Parameter för att indikera temporärsparning. / True = temporär / False = normal hantering / Utelämnad parameter = normal hantering. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form |  | Objekt FormType. | 0..1 |
| comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |
| ResultCode |  | Objekt StatusType. | 1..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Endast formulär som har FormStatus ”ONGOING” kan använda denna tjänst.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Attributet ”LastPage” = sant (Objekt PageType) indikerar att detta är det sista frågesida.
Förklaring:
Status = ”ERROR”
Vid  SaveFormPage skall producerandesystem validera begäran. Vid valideringsfel skall producerande (formulärmotorn) skicka objekt (FormType) tillbaka till konsumerande (e-tjänst) system.   Objektet ”form.currentPage.questionBlock.question.answer.answerStatus” används för att markera fält som innehåller fel.  Producerande system presenterar dessa för användaren för åtgärd.
Status = ”OK”
Vid godkänd begäran returneras validerade frågor/svar. Null ”form” bedöms formuläret färdigifyllt. Detta har föregåtts av ”LastPage” sant i objektet PageType.

### Tjänsteinteraktion
SaveFormAnswerPageInteraction

## Tjänstekontrakt SaveForm
Tjänsten används för att indikera/signalera att invånarens formulär är färdigt ifyllt och skall avslutas/stängas.
Exempel spara och avsluta formulär:
Konsumerandesystem(e-tjänst) frågar användaren (i grafiskt gränssnitt) om formuläret skall avslutas.
Konsumerandesystem(e-tjänst) hämtar en sammanställning (formulär, sida, frågor, svar) via tjänst GetForm.
Användaren/patienten granskar och godkänner formuläret.
Konsumerandesystem avslutar formuläret (på invånarens begäran). Anropar SaveForm.
Producerande system validerar begäran och avslutar formulär.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
FormID [1..1]
SubjectOfCare [0..1]
Response
ResultCode [1..1]
Comment [0..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets ID. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.
Endast formulär som har FormStatus ”PENDING_COMPLETE” kan använda tjänsten.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Vid  SaveForm skall producerandesystem validera begäran. Vid valideringsfel meddelas användaren fel via ”resultCode”.

### Tjänsteinteraktion
SaveFormInteraction

## Tjänstekontrakt CancelForm
Tjänsten används för att avbryta/radera formulär. Tjänsten användas av tjänsteproducent (e-tjänst eller verksamhetssystem).
Pågående (ONGOING, PENDING_COMPLETION) formulär kan raderas på användarens begäran.
Ett avslutat formulär (SaveForm har anropats) behöver inte automatiskt raderas. Anropet skall i detta fall ses som en begäran om radering.
Lokala verksamhetsregler gäller.

### Frivillighet
Obligatoriskt

### Version
2.0

### Tjänstens signatur
Request
FormID [1..1]
subjectOfCare [0..1]
Response
ResultCode [1..1]
Comment [0..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| subjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Objekt för att signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Vid CancelForm skall producerandesystem validera begäran. Vid valideringsfel meddelas användaren fel via ”resultCode”. Eventuellt felmeddelande presenteras för användaren.

### Tjänsteinteraktion
CancelFormInteraction

## Tjänstekontrakt CreateFormRequest
Tjänsten används av ett system (Verksamhetssystem) för att skapa en begäran om formulär(formulärbegäran), d.v.s. att en patient skall fylla i t.ex. en hälsodeklaration. Formulärmotorn ansvarar för att skapa ett unikt id (FormID) för formulärbegäran.
Begäran (CreateFormRequest) om formulär instruerar Formulärmotorn (tjänsteproducent) att skapa en engagemangsindexpost (Update).
Tjänsten används för att begära ett formulär från formulärmotorn.
Formulärmotorn tar emot begäran och skapar en post i engagemangsindex (enligt specifikation avsnitt 2.1). Aktiviteten är nödvändig för att notifieringsflödet skall fungera.
Vårdsystemet skall använda ”FormID” för att identifiera sin patients formulär i sin vårdprocess.
System(Mina vårdkontakter) som prenumererar(Engagemangsindex) på händelsen kan t.ex. ge användaren/patienten tillgång till en e-tjänst för att besvara/fylla i formuläret (Hälsodeklarationen).

### Frivillighet
Frivillig

### Version
2.0

### Tjänstens signatur
Request
FormRequest [1..*]
Healthcare_ CareGiver [0..1]
Healthcare_ MedUnit [0..1]
Healthcare_Facility_CareUnit [1..1]
healthcare_systemID [0..1]
SubjectOfCare [0..1]
TemplateId [1..1]
TemplateVersion [0..1]
ClinicalProcessInterestId [0..1]
FormText [0..1]
expireDate [1..1]
keepUntil [1..1]
Response
FormRequestResponse [0..*]
Comment [0..1]
ResultCode [1..1]

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormRequest |  | Objekt FormRequestType. Objektet innehåller information för att skapa en formulärbegäran. | 1..* |
| Healthcare_ CareGiver |  | Hsa-id vårdgivare (informationsägare). | 0..1 |
| Healthcare_ MedUnit |  | Hsa-id medicinskt ansvarig (informationsägare).. | 0..1 |
| Healthcare_Facility_CareUnit |  | Hsa-id vårdenhet (informationsägare). | 1..1 |
| healthcare_systemID |  | Hsa-id vårdsystem. | 0..1 |
| SubjectOfCare |  | Personnummer patient/invånare. / - Utelämnas parameter hanteras formulär som anonymt. | 0..1 |
| TemplateId |  | Formulärmall id. | 1..1 |
| TemplateVersion |  | Formulärmall version. | 0..1 |
| ClinicalProcessInterestId |  | Hälsoärende id. | 0..1 |
| FormText |  | Formulärtext för formulärbegäran. | 0..1 |
| expireDate |  | Datum för att reglera hur länge patient/invånaren kan besvara formulär. | 1..1 |
| keepUntil |  | Datum för hur läng formulär kommer lagras innan gallring/arkivering. | 1..1 |
| Svar |  |  |  |
| FormRequestResponse |  | Objekt FormRequestResponseType | 0..* |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |
| ResultCode | ResultCodeEnum | Objekt för att signalera status på operationen (gick det bra/uppstod fel). | 1..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Formulärmotorn returnerar respektive formulärbegärans unika id (formID) för det formulär som lyckades skapas.

### Tjänsteinteraktion
CreateFormRequestInteraction

## Tjänstekontrakt GetFormTemplate
Tjänsten används av ett system(t.ex. Verksamhetssystem) för att hämta en formulärmall från tjänsteproducent (t.ex. Invånartjänsters Formulärmotor). Formulärmallar adresseras med formulär mall id och version.
Tjänsten används för att hämta en malla från formulärmotorn.

### Frivillighet
Frivillig

### Version
2.0

### Tjänstens signatur
Request
healthcare_facility_CareUnit [0..1]
templateId [0..1]
templateVersion [0..1]
Response
FormTemplates [0..*]
FormTemplateType

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility_CareUnit |  | Vårdenhetens hsa-id (ägaren av formulärmall) | 0..1 |
| templateId |  | Mallens id. | 0..1 |
| templateVersion |  | Mallens version. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| FormTemplates |  | Objekt FormTemplateType (Formulärmallar) | 0..* |
|  |  |  |  |
|  |  |  |  |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.
Utlämnas ”healthcare_facility_CareUnit” är ”templateId” obligatorisk.
Samtliga mallar (templateId) skall returneras.
Utelämnas ”templateId” är ”healthcare_facility_CareUnit” obligatorisk.
Vårdenhetens samtliga mallar skall returneras.
Utelämnas ”templateVersion” skall samtliga versioner returneras (ej arkiverade mallar).

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

### Tjänsteinteraktion
GetFormTemplateInteraction

## Tjänstekontrakt SaveFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att spara en

### Frivillighet
Frivillig

### Version
2.0

### Tjänstens signatur
Request
formTemplate [1..1]
Response
FormTemplates [0..*]
FormTemplateType

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formTemplate |  | Objektet innehåller formulärmallen. | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| Comment |  | Kommentar. | 0..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

### Tjänsteinteraktion
SaveFormTemplateInteraction
