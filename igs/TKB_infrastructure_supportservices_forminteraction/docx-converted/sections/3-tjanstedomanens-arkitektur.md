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

