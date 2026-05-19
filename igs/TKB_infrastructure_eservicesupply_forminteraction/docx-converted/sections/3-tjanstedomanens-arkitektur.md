## Tjänstedomänens arkitektur

![img_012.png](images/img_012.png)

### Flöden

#### Flöde AF-1 Skapa formulärmall

![img_005.jpeg](images/img_005.jpeg)
*Figur 1: Flöde AF-1*
Mall-administratör designar ny formulärmall eller ändrar i befintlig formulärmall i e-tjänst för mall-administration. Mallen sparas i producenten (formulärmotor).

#### Flöde AF-2 Begär formulärinsamling av patient
Användningsfallet kan även benämnas ”Skapa formulärbegäran”.

![img_003.png](images/img_003.png)
*Figur 1: Flöde AF-2*
I flödet begär vårdpersonal att en patient skall fylla i ett formulär (t.ex. en hälsodeklaration). Begäran kan göras i formulärmotorns användargränssnitt eller via det vårdsystem som används. Önskas begäran via vårdsystemet anropas tjänstekontraktet (CreateFormRequest) för ”1: Begär formulärifyllnad”.
Vid en formulärbegäran skapas ett formulär – en formulärinstans baserat på en utpekar formulärmall - där patient, verksamhet och formulärmall kopplas ihop.
Flöde:
Vårdpersonal: Gör en formulärbegär (t.ex. en hälsodeklaration) i lokalt vårdsystem eller via formulärmotorns användargränssnitt. En formulärbegäran kan även implementeras i verksamhetssystemet för att genereras automatiskt t.ex. i samband med en tidsbokning eller en remiss.
Om formulärbegäran implementeras i verksamhetssystemet anropas tjänstekontraktet ”CreateFormRequest”. Denna integrerade lösning medger en bättre processtyrning samt mindre handgrepp för medarbetare/vårdpersonal.
Formulärmotorn skapar ett formulär (status ONGOING).
Formulärmotorn: Notifierar e-tjänst om ny formulärbegäran, där följande attribut sätts:
”categorization” sätts till ”FormCreated” (Formulärbegäran).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
E-tjänsten: Mottager notifiering om formulärbegäran och tillhandahåller e-tjänst för formulärifyllnad till användaren/patienten.
E-tjänsten kan avisera användaren/patienten om händelsen, exempelvis via SMS.

#### Flöde AF-3A Patient fyller i formulär (redan skapat)

![img_014.png](images/img_014.png)
*Figur 2: Flöde AF-3A*
I flödet använder användaren e-tjänst för att fylla i ett formulär. E-tjänsten (konsumenten) kommunicerar med formulärmotorn med hjälp av tjänstekontrakt. E-tjänsten presenterar formulärets frågor för användaren/patienten som besvarar dessa.
Användningsfallet förutsätter att ett formulär är skapat.
Flöde:
Tillgängliga formulär hämtas/listas genom att anropa formulärmotorns ”GetForms”. Om e-tjänst redan
Formuläret ”startas” genom att användaren väljer ett formulär i ovanstående steg. ”GetForm” anropas.
Formulärstatus ”COMPLETED”. Formuläret är avslutat.
Formulärstatus ”ONGOING”. Pågående, frågor har temporärsparats.
Formulärstatus ”PENDING_COMPLETION”. Pågående, frågor har temporärsparats. Alla frågor är besvarade.
Formulärets frågor besvaras(invånare) och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formuläret får status ”COMPLETE”.
Formulärmotorn notifierar Vårdsystemet hos ansvarig vårdgivare när formuläret är avslutat.
”categorization” sätts till ”FormComplete” (Avslutat).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
Vårdsystemet kan hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Se AF-6 för detaljering av notifieringsflöde.
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

#### Flöde AF-3B Patient fyller i formulär efter notifiering

![img_010.png](images/img_010.png)
*Figur 2: Flöde AF-3B*
I flödet använder användaren e-tjänst för att fylla i ett formulär. E-tjänsten (klient) kommunicerar med formulärmotorn med hjälp av tjänstekontraktet. E-tjänsten presenterar dess frågor för användaren/patienten som besvarar dessa.
Användningsfallet förutsätter att ett formulär är skapat och därmed att en formulärbegäran genererats.
Flöde:
E-tjänst notifieras av formulärmotorn om att ny formulärbegäran skapats.
Formuläret ”startas” genom att användaren öppnar formuläret enligt formulärbegäran. ”GetForm” anropas.
Formulärets frågor besvaras och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formuläret får status ”COMPLETE”.
Formulärmotorn notifierar Vårdsystemet hos ansvarig vårdgivare när formuläret är avslutat.
”categorization” sätts till ”FormComplete” (Avslutat).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
Vårdsystemet kan hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Se AF-6 för detaljering av notifieringsflöde.
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

#### Flöde AF-3C Patient fyller i formulär
Flödet illustrerar fallet då patienten skapar ett formulär utan att en ”formulärbegäran” är skapad. Patienten kan välja formulärmall.

![img_008.png](images/img_008.png)
*Figur 3: Flöde AF-3C*
I flödet använder användaren en e-tjänst för att välja och fylla i ett formulär. E-tjänsten (klient) kommunicerar med formulärmotorn med hjälp av tjänstekontraktet. E-tjänsten presenterar dess frågor för användaren/patienten som besvarar dessa.
Flöde:
Tillgängliga formulärmallar hämtas genom att anropa formulärmotorns ”GetFormTemplates”. Detta för att få tillgång till valbara ”TemplateID”.
Formuläret ”startas” genom att användaren väljer ett formulär och formulärmotorns ”CreateForm” anropas.
Ett formulär skapas i formulärmotorn.
Formulärmotorn notifierar vårdsystemet hos ansvarig vårdgivare om ny formulärbegäran, där följande attribut sätts:
”categorization” sätts till ”FormCreated” (Formulär skapat).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
Formulärets frågor besvaras och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formuläret får status ”COMPLETE”.
Formulärmotorn notifierar Vårdsystemet hos ansvarig vårdgivare när formuläret är avslutat.
”categorization” sätts till ”FormComplete” (Avslutat).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
Vårdsystem får därmed möjlighet att hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Se AF-6 för detaljering av notifieringsflöde.
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

#### Flöde AF-4 Återuppta formulär.

![img_018.png](images/img_018.png)
*Figur 4: Flöde AF-4*
I flödet använder användaren en e-tjänst för att återuppta i ett formulär. E-tjänsten (klient) kommunicerar med formulärmotorn med hjälp av tjänstekontraktet. E-tjänsten presenterar dess frågor för användaren/patienten som besvarar dessa.
Flöde:
Tillgängliga formulärmallar hämtas genom att anropa formulärmotorns ”GetForms”.
Formuläret ”startas” genom att användaren väljer ett formulär och formulärmotorns ”GetForm” anropas.
Formulärets frågor besvaras och skickas med formulärmotorns ”SaveFormPage”.
När det inte finns flera frågor signaleras detta med ”LastPage” sätts till ”true”.
Ett formulär avslutas genom att e-tjänsten anropar formulärmotorns ”SaveForm”.
Formulärmotorn notifierar Vårdsystemet hos ansvarig vårdgivare när formuläret är avslutat.
”categorization” sätts till ”FormComplete” (Avslutat).
”businessObjectInstanceIdentifier” sätts till unikt id på formulär ”FormID”.
Vårdsystem får därmed möjlighet att hämta användarens/patientens besvarade formulär (T.ex. Hälsodeklaration)
Användaren kan avbryta ett formulär genom att e-tjänsten anropar formulärmotorns ”CancelForm”.

#### Flöde AF-5 Notifiera
Se kapitel 3.18 för mer detaljerad beskrivning av notifieringsmeddelanden.
En tjänsteproducent av tjänstekontrakten för formulärhantering ska kunna notifiera statusförändringar till berörda parter. Notifiering behövs vid två olika tillfällen i process-kedjan.
Notifiera invånare eller patient om behov av att fylla i ett formulär
Vårdpersonal initierar en formulärbegäran för utvalt invånare/patient via sitt verksamhetssystem/journalsystem. Systemet anropar tjänstekontraktet CreateFormRequest gentemot formulärmotorn, som i sin tur notifierar e-tjänsten ”besvara formulär” med categorization = FormCreated.
(Som alternativ erbjuder den nationella implementationen av formulärmotorn ett användargränssnitt till vårdpersonal för att initiera formulärbegäran. I detta specialfall agerar den nationella formulärmotorn e-tjänst och initierar internt formulärbegäran och notifiering.)

![img_002.png](images/img_002.png)
Notifiera vårdgivare/vårdpersonal om att ett formulär fyllts i
När invånare/patient fyllt i ett formulär och sparat det i e-tjänst anropar e-tjänsten tjänstekontraktet SaveForm() gentemot formulärmotorn. Formulärmotorn notifierar vårdsystemet hos ansvarig vårdgivare med categorization = FormCompleted.

![img_015.png](images/img_015.png)

#### Flöde AF-6 Vårdsystem hämtar användarens/patientens formulär.

![img_011.png](images/img_011.png)
*Figur 5: Flöde AF-6*
I flödet beskriv hur ett vårdsystem med hjälp av efter notifiering på ett systematiskt sätt kan hämta en användarens/patients formulär (T.ex. Hälsodeklaration).
Genom att tillämpa detta flöde hämtas användarens/patientens formulär och kan lagras som en del av vårdsystemet. Medarbetaren behöver inte ha kunskap kring hur formulärmotorn utan kan arbeta som vanligt i sitt vårdsystem.
Flöde:
En patient har med hjälp av e-tjänst för att besvara formulär fyllt i ett formulär.
Formulärmotorn notifierar vårdsystemet.
Vårdsystemet mottager notifiering (ProcessNotification)
Notifiering innehåller bl.a. nyckel till användarens formulär ”FormID”.
Vårdsystemet analyserar notifiering och hämtar användarens formulär genom att anropa formulärmotorns ”GetForm”.
Vårdsystemet lagrar mottaget formulärsvar.
Vårdpersonal tar del av svaret som lagrats i vårdsystemet.

#### Flöde AF7 - Fylla i och avsluta ett formulär

![img_006.jpeg](images/img_006.jpeg)
Formulär skapas genom att tjänsten CreateForm anropas med hsa-id på vårdcentral, personnummer för den som ska fylla i formuläret (om det inte är anonymt) och id på formulärmallen. Formulär skapas utifrån det mall-id som skickats med. Det nya formuläret sparas i databasen och returneras med första formulärsidan till användaren. Formuläret har nu statusen ONGOING.

#### Flöde AF-8 Fyll i formulär
Användaren fyller i den aktuella formulärsidan och anropar SaveFormPage. Formulärmotorn validerar svaren och om allt är korrekt sparas sidan ner och nästa sida returneras till användaren. Formuläret har statusen ONGOING så länge det finns sidor kvar att fylla i.
När man nått sista sidan kommer fältet form inte att returneras och formuläret kommer nu få status PENDING_COMPLETION. Detta innebär att formuläret är redo att avslutas. Användaren får nu tillbaks hela det ifyllda formuläret och kan granska om allt ser ok ut.

#### Flöde AF-9 Spara och avsluta formulär
Om formuläret är korrekt ifyllt kan användaren avsluta formuläret genom att anropa tjänsten SaveForm. Formuläret kommer nu sparas i databasen med status COMPLETED. Det går därefter inte att ändra i formuläret och användaren får tillbaks en OK-status om att formuläret är sparat och avslutat.

![img_016.jpeg](images/img_016.jpeg)

#### Flöde AF-10 Hämta formulär
Invånare väljer ett formulär (formulärinstans) antingen via en länk i ett inkorgsmeddelande eller från en lista med tillgängliga formulärinstanser. Formuläret visas för invånaren.

![img_013.jpeg](images/img_013.jpeg)

#### Flöde AF-11 Avbryta formulär
Invånaren kan närsomhelst efter att en formulärinmatning påbörjats välja att ångra sig och därmed radera formuläret. E-tjänst (konsumenten) anropar då tjänstekontraktet CancelForm med formulärinstansens unika formulärId (formid). Formuläret måste befinna sig i ett av tillstånden ONGOING eller PENDING_COMPLETION. Om formuläret sparats (SaveForm anropats) kan formuläret inte längre raderas.

![img_009.jpeg](images/img_009.jpeg)

#### Flöde AF-12 Hämta formulärlista
E-tjänst (konsument) kan anropa tjänstekontraktet GetForms för att hämta invånares alla formulär. Svaret kommer att innehålla både de ännu ej-påbörjade formulär som initierats från exempelvis ett verksamhetssystem som anropat CreateFormRequest, men även formulär som invånaren påbörjat men ännu inte färdigställt. Likaså returneras de avslutade (sparade) formulären. E-tjänst/invånare har möjlighet att filtrera anropet baserat på formulärmall-typ (templateId).

![img_019.jpeg](images/img_019.jpeg)

#### Flöde AF-13 Hämta mallar
E-tjänst (konsument) kan anropa tjänstekontraktet GetFormTemplates för att hämta möjliga formulärmallar som kan tillgängliggöras för invånare. Konsumenten har möjlighet att filtrera ut en eller flera formulärmallar genom att i anropet ange en lista med formulärmallstyper (templateIds).

![img_004.jpeg](images/img_004.jpeg)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde AF1 | Flöde AF2 | Flöde AF3A,B | Flöde AF3C | Flöde AF4 | Flöde AF5 | Flöde AF6 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| GetFormTemplate | X |  |  |  |  |  |  |
| SaveFormTemplate | X |  |  |  |  |  |  |
| CreateForm |  |  |  | X |  |  |  |
| CreateFormRequest |  | X |  |  |  |  |  |
| GetForm |  |  |  |  | X |  | X |
| GetFormQuestionPage |  |  |  |  |  |  |  |
| GetForms |  |  | X |  | X |  |  |
| GetFormTemplates |  |  |  | X |  |  |  |
| SaveForm |  |  | X | X | X |  |  |
| SaveFormPage |  |  | X | X | X |  |  |
| CancelForm |  |  | (X) |  |  |  |  |
|  |  |  |  |  |  |  |  |
| ProcessNotification (itintegration:engagementindex) |  | X | X | X | X | X | X |
|  |  |  |  |  |  |  |  |
| Tjänstekontrakt | Flöde AF7 | Flöde AF8 | Flöde AF9 | Flöde AF10 | Flöde AF11 | Flöde AF12 | Flöde AF13 |
| GetFormTemplate |  |  |  |  |  |  |  |
| SaveFormTemplate |  |  |  |  |  |  |  |
| CreateForm | X |  |  |  |  |  |  |
| CreateFormRequest |  |  |  |  |  |  |  |
| GetForm |  |  |  | X |  |  |  |
| GetFormQuestionPage |  |  |  |  |  |  |  |
| GetForms |  |  |  |  |  | X |  |
| GetFormTemplates |  |  |  |  |  |  | X |
| SaveForm | X |  | X |  |  |  |  |
| SaveFormPage | X | X |  |  |  |  |  |
| CancelForm |  |  |  |  | X |  |  |
|  |  |  |  |  |  |  |  |
| ProcessNotification (itintegration:engagementindex) |  |  |  |  |  |  |  |

### Adressering
För tjänstedomänen gäller följande regler för logisk adressering:
Referens till informationskällan enligt tjänste-domänens definition till informationskälla.
Systemadressering <Formulärmotor hsa-id>

### Notifieringar med ProcessNotification
I versioner av tjänstedomänen före 2.1.1 användes Engagemangsindex i notifieringsflöden. Detta är ej längre möjligt på grund av ändrade regelverk. För bakåtkompatibilitet med redan anslutna notifieringsmottagare används dock fortsatt tjänstekontraktet ProcessNotification från tjänstedomänen Engagemangsindex (urn:riv:itintegration:engagementindex:ProcessNotificationResponder:1).
Formulärmotorn agerar tjänstekonsument för ProcessNotification, dvs skickar notifieringar. Notifieringar får endast skickas till:
vårdsystem kopplat till ansvarig vårdgivare/vårdenhet för den aktuella formulärinstansen
e-tjänst för besvarande av formulär
Det är inte obligatoriskt för en aktör att motta notifieringar. Om ett verksamhetssystem saknar integration för notifieringar kan detta kompenseras med manuella rutiner i de olika flödena.
Följande regler gäller för notifieringar som rör denna tjänstedomän (infrastructure:eservicesupply:forminteraction):
Categorization
Fältet används för att signalera när ett formulär/mall är skapad för en användare/patient eller när en användare/patient har besvarat/avslutat ett formulär.
categorization ”FormCreated”
Indikerar att ett specifikt formulär är skapat för användaren/patienten.
T.ex. Patienten skall fylla i en hälsodeklaration.
categorization ”FormComplete”
Indikerar att ett formulär är skapat och lagras(temporärt) i en formulärmotor.
Tabellen beskriver de attribut som är unika för tjänstedomänen. Utöver nedanstående tabell se tjänstekontraktsbeskrivning för engagemangsindex [ref R3].

| Attributnamn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| serviceDomain | String | infrastructure:eservicesupply:forminteraction | 1..1 |
| categorization | String | Kategorier för engagemangsindexpost. / FormCreated (Indikerar att ett specifikt formulär är skapat för användaren.) / FormComplete (Indikerar att ett specifikt formulär är avslutat) | 1..1 |
| businessObjectInstanceIdentifier | String | Unik identifierare för händelse-bärande objekt.
Id som motsvarar ”FormId” (i objekt Form | 1..1 |
| LogicalAddress | String | Referens till informationskällan enligt tjänste-domänens definition till informationskälla. / < SourceSystem hsa-id> | 1..1 |
| dataController | String | Identifierare som pekar på personuppgiftsansvarig (PuA) för formuläret. Ska motsvara det HSAId som har satts i attributet healthcare_facility_CareUnit i formulärinstansen. | 1..1 |

