infrastructure: eservicesupply: forminteraction

![img_007.png](images/img_007.png)

![img_017.png](images/img_017.png)
Innehållsförteckning
1	Inledning	7
1.1	Svenskt namn	8
1.2	WEB beskrivning	8
2	Versionsinformation	9
2.1	Version 2.1	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Förändrade tjänstekontrakt	9
2.1.4	Utgångna tjänstekontrakt	11
3	Tjänstedomänens arkitektur	12
3.1	Flöden	12
3.1.1	Flöde AF-1 Skapa formulärmall	12
3.1.2	Flöde AF-2 Begär formulärinsamling av patient	13
3.1.3	Flöde AF-3A Patient fyller i formulär (redan skapat)	14
3.1.4	Flöde AF-3B Patient fyller i formulär efter notifiering	16
3.1.5	Flöde AF-3C Patient fyller i formulär	18
3.1.6	Flöde AF-4 Återuppta formulär.	20
3.1.7	Flöde AF-5 Notifiera	21
3.1.8	Flöde AF-6 Vårdsystem hämtar användarens/patientens formulär.	22
3.1.9	Flöde AF7 - Fylla i och avsluta ett formulär	23
3.1.10	Flöde AF-8 Fyll i formulär	23
3.1.11	Flöde AF-9 Spara och avsluta formulär	24
3.1.12	Flöde AF-10 Hämta formulär	24
3.1.13	Flöde AF-11 Avbryta formulär	24
3.1.14	Flöde AF-12 Hämta formulärlista	25
3.1.15	Flöde AF-13 Hämta mallar	25
3.1.16	Obligatoriska kontrakt	26
3.2	Adressering	27
3.3	Notifieringar med ProcessNotification	27
4	Tjänstedomänens krav och regler	29
4.1	Presentationsregler för konsument	29
4.2	Informationssäkerhet och juridik	29
4.3	Icke funktionella krav	35
4.3.1	SLA krav	35
4.3.2	Övriga krav	35
4.4	Felhantering	36
4.4.1	Krav på en tjänsteproducent	36
4.4.2	Krav på en tjänstekonsument	36
5	Tjänstedomänens meddelandemodeller	37
5.1	Klasser och attribut V-MIM	39
5.1.1	Klass Formulär (FormType)	39
5.1.2	Klass Formulärmall (FormTemplateInfoType)	42
5.1.3	Klass Formulärmall (FormTemplateType)	45
5.1.4	Klass Regelbaserad formulärsida (TemplateRoutedPageType)	49
5.1.5	Klass Lista med vägval (TemplateRoutingType)	49
5.1.6	Klass Lista med vägval (TemplateRouteType)	50
5.1.7	Klass Kriterier för vägvalet för en sida (TemplateRuleType)	50
5.1.8	Klass Formulärsida (TemplatePageType)	51
5.1.9	Klass Formulärsida (PageType)	52
5.1.10	Klass Frågegrupperingsmall (TemplateQuestionBlockType)	53
5.1.11	Klass Frågegruppering (QuestionBlockType)	55
5.1.12	Klass Formulärfråga mall (TemplateQuestionType)	56
5.1.13	Klass Formulärfråga (QuestionType)	61
5.1.14	Klass Svarsalternativ (AnswerAlternativeType)	65
5.1.15	Klass Svar (AnswerType)	66
5.1.16	Klass Svarssida (PageAnswerType)	67
5.1.17	Klass anropsbekräftelse (AnswerStatus)	67
5.1.18	Klass Frågerelation (QuestionSuperior)	68
5.1.19	Klass kodverk (Code)	68
5.1.20	Klass Malldelning (TemplatePropagate)	69
5.1.21	Klass validering (ValidationEventType)	70
5.1.22	Klass Svar på formulärförfrågan (FormRequestResponseType)	71
5.1.23	Klass Resultat (CalculationOutcomeType)	73
5.1.24	Klass Beräkningsformel (CalculationFormulaType)	74
5.1.25	Klass Aktör (ActorType)	75
5.2	Terminologier, kodverk och identifierare (t/k/i)	76
5.3	Formatregler	81
5.3.1	Format för datum	81
5.3.2	Format för tidpunkter	81
5.3.3	Tidszon för tidpunkter	81
5.3.4	DocBook	81
6	Tjänster sammanställning	84
7	Tjänstekontrakt	85
7.1	Tjänstekontrakt GetFormTemplates	85
7.1.1	Version	85
7.1.2	Fältregler	86
7.1.3	Övriga regler	86
7.1.4	Tjänsteinteraktion	86
7.2	Tjänstekontrakt CreateForm	87
7.2.1	Version	87
7.2.2	Fältregler	87
7.2.3	Övriga regler	88
7.2.4	Tjänsteinteraktion	88
7.3	Tjänstekontrakt GetForms	88
7.3.1	Version	89
7.3.2	Fältregler	89
7.3.3	Övriga regler	89
7.3.4	Tjänsteinteraktion	90
7.4	Tjänstekontrakt GetForm	90
7.4.1	Version	90
7.4.2	Fältregler	90
7.4.3	Övriga regler	91
7.4.4	Tjänsteinteraktion	91
7.5	Tjänstekontrakt GetFormQuestionPage	91
7.5.1	Version	91
7.5.2	Fältregler	91
7.5.3	Övriga regler	92
7.5.4	Tjänsteinteraktion	92
7.6	Tjänstekontrakt SaveFormPage	92
7.6.1	Version	92
7.6.2	Fältregler	93
7.6.3	Övriga regler	93
7.6.4	Tjänsteinteraktion	94
7.7	Tjänstekontrakt SaveForm	94
7.7.1	Version	94
7.7.2	Fältregler	94
7.7.3	Övriga regler	95
7.7.4	Tjänsteinteraktion	95
7.8	Tjänstekontrakt CancelForm	95
7.8.1	Version	96
7.8.2	Fältregler	96
7.8.3	Övriga regler	96
7.8.4	Tjänsteinteraktion	97
7.9	Tjänstekontrakt CreateFormRequest	97
7.9.1	Version	97
7.9.2	Fältregler	97
7.9.3	Övriga regler	99
7.9.4	Tjänsteinteraktion	99
7.10	Tjänstekontrakt GetFormTemplate	99
7.10.1	Version	99
7.10.2	Fältregler	99
7.10.3	Övriga regler	100
7.10.4	Tjänsteinteraktion	100
7.11	Tjänstekontrakt SaveFormTemplate	100
7.11.1	Version	100
7.11.2	Fältregler	100
7.11.3	Övriga regler	101
7.11.4	Tjänsteinteraktion	101
7.12	Tjänstekontrakt DeleteFormTemplate	101
7.12.1	Version	101
7.12.2	Fältregler	101
7.12.3	Övriga regler	101
7.12.4	Tjänsteinteraktion	102
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 2.0.0RC_2 | 2014-03-26 | Marco de Luca, HSF invånartjänster | Första version |
| 2.0.0RC_2 | 2014-04-28 | Jarno Nieminen | Smärre textkorrigeringar och några frågetecken (se kommentarer i dokumentet) |
| 2.0.0RC_3 | 2014-06-11 | Jarno Nieminen, HSf invånartjänster | Ny dokumentmall samt ändringar baserat på kommentarer från arkitekturledningens granskning |
| 2.0.0RC_4 | 2014-06-24 | Jarno Nieminen, HSf invånartjänster | Uppdaterat enligt kommentarer från arkitektur@inera.se. / Tydligare informationsmappning mot V-TIM |
| 2.0.0RC_5 | 2014-06-27 | Jarno Nieminen, HSf invånartjänster | Ändrat deltagarlistan och tjänstedomänförvaltare |
| 2.0 RC_6 | 2014-09-04 | Gunilla Olofsson / Jarno Nieminen, HSf invånartjänster | Uppdaterat baserat på förändringar i tjänstekontrakten |
| 2.0 | 2017-05-16 | Thomas Fafoutis | Uppdaterat enligt kommentarer från arkitektur@inera.se. |
| 2.1 RC1 | 2020-01-10 | Thomas Fafoutis |  |
| 2.1 RC2 | 2022-06-22 | Thomas Fafoutis | Lagt till aktör för tjänstekontrakten CreateForm, SaveForm och SaveFormPage |
| 2.1.1 | 2026-04-20 | Björn Pettersson | Uppdatering av notifieringsflöde så att Engagemangsindex inte längre används. |
| 2.1.1 | 2026-04-27 | Björn Pettersson | Ny dokumentmall |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – infrastructure:eservicesupply:forminteraction | Obligatoriskt |  |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Tjänstekontraktsbeskrivning Engagemangsindex | Tjänstekontraktsbeskrivningen beskriver interaktion med engagemangsindex | http://rivta.se/domains/itintegration_engagementindex.html |
|  |  |  |  |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure: eservicesupply: forminteraction
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänen definierar tjänstekontrakt för att stödja formulärinteraktion mellan patient/invånare och vårdverksamhet, alternativt mellan patient-e-tjänst och verksamhetssystem. Tjänstedomänens tjänstekontrakt möjliggör en vård-initierad process för formulärbegäran gentemot identifierad invånare eller patient.
Exempel på formulärtyper:
Hälsodeklaration
PROM/PREM
Enkäter
Blanketter (Registrering, anmälan etc.)
Tjänstekonsument och tjänsteproducent kan använda tjänstekontrakten på olika sätt och i olika steg i sina processer.
Exempel:
En vårdaktivitet som kräver en hälsodeklaration.
Ett vårdbesök som föranleder en registreringsblankett
En behandling som kräver uppföljning, exempelvis:
Biverkningsregistrering
Effektmätning av behandling
Informationsinsamling under begäran och bedömning av vårdbegäran
Tjänstekontraktsbeskrivningen utgör ett teknik-oberoende, formellt regelverk som reglerar integrationskrav mellan parter (tjänstekonsumenter och tjänsteproducenter) med behov av elektronisk samverkan i ett speciellt syfte (i detta fall integration mellan nationella tjänster och lokala informationskällor).
Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:etjänsteförsörjning:formulärhantering
Formulärhantering

### WEB beskrivning
Formulärtjänsten möjliggör hantering av formulärinformation mellan vårdens olika aktörer. Tjänstekontrakten möjliggör insamling av olika typer av formulärinformation i ett vård-initierat flöde gentemot invånare eller patient.
Tjänstekonsument och tjänsteproducent kan använda tjänstekontrakten på olika sätt och i olika steg i sina processer.
Exempel:
En vårdaktivitet som kräver en hälsodeklaration.
Ett vårdbesök som föranleder en registreringsblankett
En behandling som kräver uppföljning, exempelvis:
Biverkningsregistrering
Effektmätning av behandling
Informationsinsamling under begäran och bedömning av vårdbegäran

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen infrastructure: eservicesupply: forminteraction. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.1

#### Oförändrade tjänstekontrakt
CancelForm
CreateForm
CreateFormRequest
GetForm
GetFormQuestionPage
GetForms
GetFormTemplates

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
DeleteFormTemplate

#### Förändrade tjänstekontrakt
GetFormTemplate
SaveForm
SaveFormPage
SaveFormTemplate
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.
Kompatibilitet mellan versionerna 1.0 och 2.x

| Tjänstekontrakt |  | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- | :--- |
| GetForms |  | 2.x | 1.0 | Ej kompatibel |
| GetForms |  | 1.0 | 2.x | Ej kompatibel |
| GetForm |  | 2.x | 1.0 | Ej kompatibel |
| GetForm |  | 1.0 | 2.x | Ej kompatibel |
| CreateForm |  | 2.x | 1.0 | Ej kompatibel |
| CreateForm |  | 1.0 | 2.x | Ej kompatibel |
| SaveFormPage |  | 2.x | 1.0 | Ej kompatibel |
| SaveFormPage |  | 1.0 | 2.x | Ej kompatibel |
| SaveForm |  | 2.x | 1.0 | Ej kompatibel |
| SaveForm |  | 1.0 | 2.x | Ej kompatibel |
| CancelForm |  | 2.x | 1.0 | OK |
| CancelForm |  | 1.0 | 2.x | OK |
| GetFormQuestionPage |  | 2.x | 1.0 | Ej kompatibel |
| GetFormQuestionPage |  | 1.0 | 2.x | Ej kompatibel |
| CreateFormRequest |  | 2.x | 1.0 | Ej kompatibel |
| CreateFormRequest |  | 1.0 | 2.x | Ej kompatibel |
| SaveFormTemplate |  | 2.x | 1.0 | Ej kompatibel |
| SaveFormTemplate |  | 1.0 | 2.x | Ej kompatibel |
| Nya kontrakt i v.2.0 |  |  |  |  |
| GetFormTemplate |  | 2.0 | - | Ny fr.o.m. 2.0 |
| GetFormTemplate |  | - | 2.0 | Ny fr.o.m. 2.0 |
| GetFormTemplates |  | 2.0 | - | Ny fr.o.m. 2.0 |
| GetFormTemplates |  | - | 2.0 | Ny fr.o.m. 2.0 |
Kompatibilitet mellan minor-versionerna 2.0 och 2.1
Konsumenter och producenter som kommunicerar med varandra och implementerar olika minor-versioner (2.0 eller 2.1) är syntaktiskt/tekniskt kompatibla med varandra. Dock påverkas kommunikationen semantiskt.
Följande behöver beaktas:

| Tjänstekontrakt | Konsument | Producent | Semantisk diskrepans |
| :--- | :--- | :--- | :--- |
| GetFormTemplate | 2.0 | 2.1 | Om formulärmallen har skapats av en 2.1 producent och innehåller media (exempelvis bilder eller videos) på formulärsidonivå (TemplatePage) eller kopplat till en grupp med frågor (TemplateQuestionBlock) kommer dessa att bli osynliga för konsumenten. / Formler för resultatberäkningar som tidigare sparats i en formulärmall av en 2.1 konsument kommer att skickas med i svaret av en 2.1 producent. Resultatberäkningarna kommer dock att vara osynliga för en 2.0 konsument. |
| GetFormTemplate | 2.1 | 2.0 | OK |
| SaveForm | 2.0 | 2.1 | Producenten kan i detta scenario inte avgöra huruvida formulärsvaren är besvarade av invånaren själv eller av vårdnadshavare eller ombud (aktör). Producent måste anta att det är invånaren själv som svarat. |
| SaveForm | 2.1 | 2.0 | Om konsumenten förmedlar en aktör i anropet kan producenten inte tillgodogöra sig det. Aktören blir osynlig för producenten. |
| SaveFormPage | 2.0 | 2.1 | Producenten kan i detta scenario inte avgöra huruvida formulärsvaren är besvarade av invånaren själv eller av vårdnadshavare eller ombud (aktör). Producent måste anta att det är invånaren själv som svarat. |
| SaveFormPage | 2.1 | 2.0 | Om konsumenten förmedlar en aktör i anropet kan producenten inte tillgodogöra sig det. Aktören blir osynlig för producenten. |
| SaveFormTemplate | 2.0 | 2.1 | OK |
| SaveFormTemplate | 2.1 | 2.0 | Konsument kommer inte att kunna spara media (exempelvis bilder eller videos) på formulärsidonivå (TemplatePage) eller kopplat till en grupp med frågor (TemplateQuestionBlock). Dessa kommer att ignoreras av producenten |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

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

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Presentationsregler för konsument
Producerande system styr vilka frågor som konsument skall presentera för slutanvändaren (användare/patient).
T.ex. Om producerande system skickar 5 frågor skall konsumerande system presentera 5 frågor för slutanvändaren (användare/patient).
Konsumerande system skall följa den metadata som styr utformningen och grafiska presentationen av frågor.
T.ex. om producerande system skickar metadata för inmatningstypen ”checkbox” skall konsumerande system presentera en checkbox.
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
| ”Vilka avtal/kontrakt bör upprättas mellan de olika aktörerna (e-tjänst mellanhänder, huvudman och invånaren)?” | En tydlig systemkartläggning kan belysa och bearbetas med hjälp av verkliga och hypotetiska case och scenarier. När en e-tjänst funnits under en period kan inventering av befintliga avtal också ge en bättre bild av vilka kontrakt som upplevs som nödvändiga och användbara. Den nationella arkitekturen, landstingsgemensamma ramavtal och strukturer, referensarkitektur kommer att underlätta integration och gemensam utveckling samt underlätta för regelverksansvariga. |
| ”Hur länge får information lagras i ett formulär, hur länge bör ett pågående formulär få vara aktivt d.v.s. vara temporärt.” | Frågeställningen påverkar kraven som en vårdgivare måste ställa på den tekniska lösningen och kan kräva att den tekniska lösningen antingen uppfyller krav som ställs på journalsystem, alternativt innehåller stöd för export av information från formulärtjänst till journal på ett sätt som uppfyller särskilda informationssäkerhetskrav. Normalt sätt kan detta hanteras med utgångspunkten att själva formulärtjänsten inte innehåller lagring av känsliga personuppgifter. |
| ”Vem äger och kan ta betalt för en formulärtjänst?”, ”Vem äger informationen i tjänsten?” | Dessa frågeställningar påverkar ingångsvillkoren för hur en e-tjänstelösning introduceras inom en sjukvårdshuvudmans område och medför t ex att man när en medborgare använder en tjänst tillser att den som äger tjänsten i förhållandet med invånaren (t ex en vårdgivare) har säkrat med slutanvändarna att informationen kan utnyttjas för ytterligare ändamål som t ex statistik, forskning. Normalt sätt kan detta hanteras genom att man har väl utvecklade avtal med slutanvändarna, t ex villkorstexter integrerade i de olika tjänstekomponenterna som användarna godkänner när man har börjat använda tjänsten, och att man med policies, ramavtal och anslutningsavtal reglerar från sjukvårdshuvudmannens sida vad som skall gälla. |
| ”På vilket sätt bör en användares (patients) avslutade formulär vara tillgängligt? Måste man kunna se det som en historik över ifyllda formulär?” | Denna frågeställning påverkar hur en personuppgiftsansvarig vårdgivare skall se på formulärhanteringen på verksamhetsnivå och kan kräva att verksamheterna har särskilda rutiner för journalföring, gallring och arkivering. Normalt sätt kan detta hanteras genom att personuppgiftsansvarig vårdgivare har ett särskilt system för kartläggning av befintliga register (jfr PUH-registret inom SLL där också ett Arkiv och biobankscentrum finns som erbjuder tjänster för förvaring och långtidslagring av information och råd och stöd i arkiv- och dokumenthanteringsfrågor). |
| ”Kan olika vårdgivare ta del av information från samma patient?” | Denna frågeställning påverkar frågor om sammanhållen journalföring och avtal mellan vårdgivare om personuppgiftsbiträden, direktåtkomst, personuppgiftsombud m.m. och kan kräva att den som tillhandahåller en formulärtjänst har kartlagt alla personuppgiftsflöden. Normalt sätt kan detta hanteras genom att själva formulärtjänsten inte möjliggör att olika vårdgivare har access till ”varandras” patientuppgifter, istället styrs accessmatriser och behörigheter på verksamhetsnivå. |
| ”Kan patienter dela med sig av informationen i formulärtjänsten till handläggare inom socialtjänsten?” | Det pågår utredningar för att förbättra tillgång till personuppgifter inom och mellan hälso- och sjukvården och socialtjänsten som skall förbättra och förenkla möjligheterna för aktörer i e-hälsa att utbyta information. Dessa frågeställningar påverkar avtal mellan invånare och den som tillhandahåller en tjänst, t ex en för att en vårdgivare skall kunna säkerställa att patienten har en privat sfär för hantering av sina patientuppgifter som inte faller inom vårdgivarens ansvar för offentlig handling och sekretess. |
| ”Har en användare rätt att få ett avslutat formulär raderat? Vilka verksamhetsregler skall tillämpas på formulären? Vilka regelverk kan styra patientens möjlighet att radera ett formulär?” | Denna frågeställning påverkar avtal mellan vårdgivare, verksamheter, tjänsteleverantörer, patienter m.fl. och kan kräva att tjänsten både i användargränssnitt och avtal tydliggör vad som är patientens egna uppgifter som patienten kan bestämma skall raderas (jfr patientens skrivyta), vad som är journaluppgifter eller administrativa uppgifter som vårdgivare äger (jfr uppgifter som skall journalföras eller som ingår i administrationsgränssnitt). Normalt sätt kan detta hanteras genom att formulärtjänster delas upp i tydliga deltjänster så att inte sammanblandning mellan olika krav och regelverk behöver hanteras (ett normalfall skulle vara att separera information som skall journalföras från allmän användarinformation eller rent administrativa uppgifter). |
| ”Vilka olika typer av formulär kan aktualiseras och vilka olika generella regelverk behövs? På vilket sätt är dess typer kopplade till verksamhetsprocesser och hur styr det regelverken?” | Formulär kan t ex hjälpa till vid förnyande av recept, dialog om provresultat eller för att inhämta hälsodeklaration. Vilka frågeställningar som är aktuella påverkar sjukvårdshuvudmannens krav på hur eTjänster integreras i verksamhetsprocesser och lokala regelverk. I upphandlingsunderlag kan krav på att olika tjänster tillhandahålls ställas och även generella policys kan skapas för att styra upp hanteringen, t ex med etiska riktlinjer kring hur patientuppgifter får användas för forskning och marknadsföring. Graden av integration med verksamhetsprocesser påverkar hur integrerad eTjänsten skall ses med vårdtjänster i övrigt vilket får påverkan på patientsäkerhetsfrågor, ansvarsfrågor m.m. |
| ”Hur skall ansvarsgränser dras mellan aktörer? Systemkrav?” | För att denna frågeställning skall kunna bearbetas behövs tydlig systemkartläggning som sedan kan belysas och bearbetas med hjälp verkliga och hypotetiska case och scenarier. |
| ”Vem är ansvarig för helheten? Styrmedel?” | Med utgångspunkt i de avgränsningar och delar som beskrivits i en systemkartläggning kan styrmedel diskuteras, t ex vad gäller: / - Policys / - Ersättningsmodeller / - Regelverk / - Avtal / - Författningskrav / Ansvar mellan beställare och utförare kan regleras avtalas med e-tjänster som en integrerad del. Nationella strukturer kan utformas och regleras. |
| ”Vem är ansvarig inför patienten? Informationskrav” | Ett vanligt sätt att beskriva begreppet personlig integritet i samband med informationshantering är att den enskilde skall kunna kontrollera spridningen av uppgifter om sig själv eller ha en rätt att bestämma vilka uppgifter om sig själv som han eller hon vill dela med sig till andra. Med utgångspunkt i de avgränsningar och delar som beskrivits i en systemkartläggning kan informationssäkerhetsfrågor diskuteras konkret, t ex vad gäller: / - Integritet / - Sekretess / - Offentlighet / - Informationssäkerhet / - Informationsklassning / - Integritetsfilter / - Informationssäkerhet |
| ”Vart vänder sig patienten vid fel/missnöje?” | Utgångspunkten är att eHälsotjänsterna är en integrerad del i hälso- och sjukvården. Det bör då alltid finnas en ansvarig vårdgivare som en missnöjd patient kan vända sig till. Invånare utan patientrelation bör kunna vända sig till en representant för sjukvårdshuvudmannen, t ex utsedd en funktion för e-tjänsten – besvara formulär. |

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
Inga övriga krav finns.

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara följdeffekter av programmeringsfel eller att meddelandeformatet är felaktigt. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
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
(FormTemplateType) | Mall innehåller formulärinformation och dess frågor och svarsalternativ. |
| Mall info (FormTemplateInfoType) | Mall info innehåller ett urval av mallens information. |
| Formulär 
(FormType) | Formulär innehåller grundläggande information och egenskaper kopplade till ett skapat formulär. |
| Frågesida
(PageType) | En sida innehåller en till många block. En (1) är ett sätt att gruppera ett formulär. |
| Frågegruppering/block 
(QuestionBlockType) | Frågegruppering/Frågeblocket innehåller en gruppering av frågor som skall presenteras för invånaren/användaren. |
| Mall för frågegruppering/block 
(TemplateQuestionBlockType) | Mall för Frågegruppering/Frågeblocket innehåller en gruppering av frågor som skall presenteras för invånaren/användaren. |
| Malldelning
(TemplatePropagateType) | Innehåller information om mallen delas. |
| Frågor
(QuestionType) | Innehåller detaljerad information om en fråga. |
| Mall för frågor
(TemplateQuestionType) | Mall för en fråga. |
| Svarsalternativ 
(AnswerAlternativeType) | Innehåller en frågas svarsalternativ. |
| Svar
(AnswerType) | Innehåller svaret på en fråga. |
| Status
(AnswerStatusType) | Statusobjekt. Innehåller statusinformation kopplat till en operation. |
| Kod
(CodeType) | Objekt för kodverk och kodvärde. Används för att konfigurera specifikt kodverk+kod (T.ex. Beskriva typ av formulär AUDIT-C, PHQ-9, ASRS-Screening, EQ-5D, CGI-S, MINI. Eller fältvärden definierade med SNOMED-CT) |
| Frågerelation
(QuestionSuperiorType) | Objekt för att beskriva en relation till en fråga eller svarsalternativ. |
| Valideringsobjekt
(ValidationEventType) | Objekt för att beskriva valideringsevent och anpassad text för detta. |
| Media
(MediaType) | Objekt för att beskriva media. |
| GridConfig
(GridConfigType) | Objekt för att definiera en ”grid” eller matris/tabell. |
| GridValue
(GridValueType) | Objekt för att definiera var en fråga skall placeras i ”grid”. |
| Resultat
(CalculationOutcomeType) | Resultat beräknat utifrån en beräkningsformel kopplad till de svar invånaren fyllt i |
| Beräkningsformel
(CalculationFormulaType) | Beräkningsformel som baserat på formulärsvaren genererar ett resultat |
| Aktör
(ActorType) | Representerar den typ av användare som utför formulärifyllnaden. Aktören kan vara invånaren/patienten själv, d v s den invånare/patient som formuläret avser, aktören kan vara en vårdnadshavare, ställföreträdare eller annat legalt ombud alternativt vara vårdpersonal hos som företräder invånaren/patienten. 
I fallet vårdpersonal ska vårdgivaren (organisationen) förmedlas. |

### Klasser och attribut V-MIM

#### Klass Formulär (FormType)
Klassen Formulär innehåller grundläggande information samt formulärets egenskaper.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| Enhets-id vårdgivare (healthcare_ CareGiver) | Enhets-id vårdgivare (healthcare_ CareGiver) | Ansvarig vårdgivare (huvudman). / T.ex. Landsting | II | 0..1 | Hsa-id |  | Informationsresurs | Vårdgivare id | N/A |
| Enhets-id ansvarig / (healthcare_ MedUnit) | Enhets-id ansvarig / (healthcare_ MedUnit) | Medicinsk ansvarig klinik/vårdcentral eller motsvarande. / T.ex. Medicinklinik | II | 0..1 | Hsa-id |  | Informationsresurs | vårdenhet id | N/A |
| Enhets-id / (healthcare_facility_CareUnit) | Enhets-id / (healthcare_facility_CareUnit) | Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. / T.ex. Den avdelning som äger formuläret: se2321000016-1hz3 | II | 1 | Hsa-id |  | Informationsresurs | vårdenhet id | N/A |
| Enhetsnamn / (healthcare_facility_CareUnitName) | Enhetsnamn / (healthcare_facility_CareUnitName) | Vårdenhetens namn. / T.ex. Testvårdcentral A, Medicinmottagningen USÖ | TXT | 1 |  |  | Informationsresurs | Vårdenhet namnx | N/A |
| (healthcare_systemID) | (healthcare_systemID) | Id för att identifiera mottagande system. / T.ex. Ett hsa-id uttaget för en instans av ett journalsystem. | II | 0..1 | Hsa-id |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Hälsoärende-id / (clinicalProcessInterestId) | Hälsoärende-id / (clinicalProcessInterestId) | HSA-id för framställarens enhet/process + unik identifierare.
Globalt/nationellt hälsoärende ID. Hälsoärende är ett begrepp för det som håller samman information i en kärnprocess för en vård- och omsorgstagare, tvärs över organisatoriska enhetsgränser. | II | 0..1 | ID |  | Informationsresrus | vårdärende id | N/A |
| Status / (formStatus) | Status / (formStatus) | Formulärets status. Ett avslutat besvarat formulär kan visas i ”läs läge” för patienten. | KTOV | 1 | KV Form Status / COMPLETED = Avslutad
ONGOING = Pågående, frågor har temporärsparats
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (formText) | (formText) | Unik text för Formulär. Använd t.ex. tjänsten "CreateFormRequest" för att bifoga en unik text för formuläret. T.ex. "Hälsoundersökning inför besök X". | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (formID) | (formID) | Formulärets unika ID (Sätts av formulärmotorn id/GUID). / T.ex. MHV1 har FormID = 3B2DF0C0-BC22-11DE-823D-00155D316606 / Måste genereras slumpmässigt för att vara unikt. | II | 1 |  | Globally unique identifier (GUID) | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| patient id / (SubjectOfCare) | patient id / (SubjectOfCare) | Patienten formuläret avser. Personnummer format yyyymmddnnnn. / T.ex. 191212121212 | II | 1 |  |  | Patient | Person_id | N/A |
| (expireDate) | (expireDate) | Formulärets giltighetstid. Indikerar att formuläret kan fyllas i fram till om med angivet datum. / T.ex. 20121101 | TXT | 0..1 | ISO 8601:2004 ÅÅÅÅMMDD
(yyyyMMdd) |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (createdDateTime) | (createdDateTime) | Datum när användaren/patienten skapade formuläret. / T.ex. 2012-11-01 kl 13:05:00  20121101T130500 | TXT | 1 | ISO 8601:2004 ÅÅÅÅMMDDTttmmss
(yyyyMMddThhmmss) |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (lastSavedDate) | (lastSavedDate) | Datum för senaste temporärsparning (användare/patientens). / T.ex. 2012-11-01 kl 13:05:00  20121101T130500 | TXT | 0..1 | ISO 8601:2004 / ÅÅÅÅMMDDTttmmss
(yyyyMMddThhmmss) |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (keepUntil) | (keepUntil) | Datum för hur länge ett formulär skall lagras hos producent. Det är personuppgiftsansvariges (PuA) ansvar att gallra formulär i producentsystemet. Tomt indikerar tillsvidare. | TXT | 0..1 | ISO 8601:2004 / ÅÅÅÅMMDD |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Formulärmall/id / (formTemplate) | Formulärmall/id / (formTemplate) | Koppling till klass för formulärmall. | II | 1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett formulär(Form) tillhör formulärmall (FormTemplateType) | Ett formulär(Form) tillhör formulärmall (FormTemplateType) | Ett formulär(Form) tillhör formulärmall (FormTemplateType) |  |  |  |  |  |  |  |

#### Klass Formulärmall (FormTemplateInfoType)
Objektet innehåller översiktlig mallinformation för ett formulär.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (anonymousForm) | (anonymousForm) | Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. / Värden: / True = Tillåter anonym användning. "SubjectOfCare" får inte användas. / False = Tillåter inte anonym användning. "SubjectOfCare" är obligatorisk attribut. / T.ex. Om ”true” blir subjectOfcare obligatoriskt. | S/F |  | True = Anonymt formulär / False = Ej anonymt formulär |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (category) | (category) | Formulärets kategori / T.ex. Anmälan, registrering, hälsodeklaration | KTOV | 1 | KV Formulärkategori | Definierar formulärets typ | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| Code/id / (code) | Code/id / (code) | Koppling till klass för code. Används för att beskriva t.ex. formulärinstrument. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (formCompleteText) | (formCompleteText) | Text som visas för invånaren när formuläret är besvarat. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (publishStatus) | (publishStatus) | Mallen status. | KTOV | 1 | KV Publicerings status |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (templateId) | (templateId) | Typ av formulär. Kodverk för standardiserade id för formulärtyper. / T.ex. Mödrahälsovårdsjournal 1 - MHV1. | KTOV | 1 | KV Malltyp. | Standard saknas | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknar i V-TIM 2.2 |
| (templateVersion) | (templateVersion) | Mallens version | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Obligatoriskt / (mandatory) | Obligatoriskt / (mandatory) | Indikerar om formuläret är obligatoriskt att fylla i av användaren. / T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. | S/F | 1 | True = obligatoriskt / False = Frivilligt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| Språk / (language) | Språk / (language) | Beskriver vilket språk som används i formuläret. / T.ex. swe eller eng. | KTOV | 1 | KV Språk. | Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Kv språk |
| Rubrik / (formTitle) | Rubrik / (formTitle) | Mallens/formulärets rubrik. Används på formulärets introduktionssida. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Mallens namn / (formName) | Mallens namn / (formName) | Mallens namn. / T.ex. Hälsodeklaration Mödravård | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Formulärbeskrivning (description) | Formulärbeskrivning (description) | Formulärets beskrivning och instruktioner. / T.ex. Formuläret skall besvaras innan du besöker mottagningen. | TXT | 1..0 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Informations URL / (informationURL) | Informations URL / (informationURL) | URL till ytterligare/relevant information. | URL | 0..1 |  | Länk till publik information utan krav på autentisering. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
|  |  |  |  |  |  |  |  |  |  |
| Villkor / (term) | Villkor / (term) | Villkor kopplade till formuläret. / T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras. | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (maxNumberOfPages) | (maxNumberOfPages) | Beskriver hur många ”sidor” formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (minNumberOfPages) | (minNumberOfPages) | Beskriver hur många ”sidor” formuläret minst kan innehålla. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (maxNumberOfQuestion) | (maxNumberOfQuestion) | Beskriver hur många frågor formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (minNumberOfQuestion) | (minNumberOfQuestion) | Beskriver hur många frågor formuläret som minst kan innehåller. | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| media/id / (media) | media/id / (media) | Mediaobjekt som skall visas på formulärets introduktionssida. | II | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärmall kan ha ett mediaobjekt. | En formulärmall kan ha ett mediaobjekt. | En formulärmall kan ha ett mediaobjekt. |  |  |  |  |  |  |  |

#### Klass Formulärmall (FormTemplateType)
Klassen Formulärmall innehåller grundläggande information om formuläret.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (anonymousForm) | (anonymousForm) | Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. / Värden: / True = Tillåter anonym användning. "SubjectOfCare" får inte användas. / False = Tillåter inte anonym användning. "SubjectOfCare" är obligatorisk attribut. / T.ex. Om ”true” blir subjectOfcare obligatoriskt. | S/F |  | True = Anonymt formulär / False = Ej anonymt formulär |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (category) | (category) | Formulärets kategori / T.ex. Anmälan, registrering, hälsodeklaration | KTOV | 1 | KV Formulärkategori | Definierar formulärets typ | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (publishStatus) | (publishStatus) | Mallen status. | KTOV | 1 | KV Publicerings status |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (templateId) | (templateId) | Typ av formulär. Kodverk för standardiserade id för formulärtyper. / T.ex. Mödrahälsovårdsjournal 1 - MHV1. | KTOV | 1 | KV Malltyp. | Standard saknas | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| Mall delning/id / (templatePropagate) | Mall delning/id / (templatePropagate) | Indikerar om mallen skall delas (standardiserad). | II | 0..* | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (templateVersion) | (templateVersion) | Mallens version | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Obligatoriskt / (mandatory) | Obligatoriskt / (mandatory) | Indikerar om formuläret är obligatoriskt att fylla i av användaren. / T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. | S/F | 1 | True = obligatoriskt / False = Frivilligt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| Språk / (language) | Språk / (language) | Beskriver vilket språk som används i formuläret. / T.ex. swe eller eng. | KTOV | 1 | KV Språk. | Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Kv språk |
| Rubrik / (formTitle) | Rubrik / (formTitle) | Mallens/formulärets rubrik. Används på formulärets introduktionssida. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Mallens namn / (formName) | Mallens namn / (formName) | Mallens namn. / T.ex. Hälsodeklaration Mödravård | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Formulärbeskrivning (description) | Formulärbeskrivning (description) | Formulärets beskrivning och instruktioner. / T.ex. Formuläret skall besvaras innan du besöker mottagningen. | TXT | 1..0 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Formulärbeskrivning för personal (descriptionInternal) | Formulärbeskrivning för personal (descriptionInternal) | Formulärets beskrivning och instruktioner. Avsedd för personal. | TXT | 1..0 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (formCompleteText) | (formCompleteText) | Informationstext vid avslutat och sparat formulär. |  |  |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Informations URL / (informationURL) | Informations URL / (informationURL) | URL till ytterligare/relevant information. | URL | 0..1 |  | Länk till publik information utan krav på autentisering. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Villkor / (term) | Villkor / (term) | Villkor kopplade till formuläret. / T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras. | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (maxNumberOfPages) | (maxNumberOfPages) | Beskriver hur många ”sidor” formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (minNumberOfPages) | (minNumberOfPages) | Beskriver hur många ”sidor” formuläret minst kan innehålla. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (maxNumberOfQuestion) | (maxNumberOfQuestion) | Beskriver hur många frågor formuläret maximalt kan innehåller. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (minNumberOfQuestion) | (minNumberOfQuestion) | Beskriver hur många frågor formuläret som minst kan innehåller. | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (healthCareFacilityUnit) | (healthCareFacilityUnit) | Mallens ägare. | II | 1 | Hsa-id |  | Vård och omsorgsutövare | enhet id | N/A |
| Sida/id / (pages) | Sida/id / (pages) | Koppling till klass för sida. | II | 0..* | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| media/id / (media) | media/id / (media) | Mediaobjekt som skall visas på formulärets introduktionssida. | II | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärmall (FormTemplateType) har en till många sidor. Sidorna representeras genom typen TemplateRoutedPageType som förutom sidans design även kan hålla regler för vilka sidor som ska visas beroende på svaren. | En formulärmall (FormTemplateType) har en till många sidor. Sidorna representeras genom typen TemplateRoutedPageType som förutom sidans design även kan hålla regler för vilka sidor som ska visas beroende på svaren. | En formulärmall (FormTemplateType) har en till många sidor. Sidorna representeras genom typen TemplateRoutedPageType som förutom sidans design även kan hålla regler för vilka sidor som ska visas beroende på svaren. |  |  |  |  |  |  |  |

#### Klass Regelbaserad formulärsida (TemplateRoutedPageType)
Objektet används för att genom logik kunna styra vilka sidor som ska visas baserat på invånares svar i sidan.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (page) | (page) | Mall för sidan | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (routing) | (routing) | Attributet routing innehåller en lista med möjliga vägval i form av möjliga sidor (pagenumber) och en lista med kriterium för vägvalet. Det frivilliga attributet routing är av typen TemplateRoutingType som i sin tur innehåller listan med vägvalen | TemplateRouteType | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En regelbaserad formulärsida (TemplateRoutedPageType) innehåller det frivilliga attributet routing (TemplateRouteType) som i sin tur har noll till flera vägval (TemplateRouteType) | En regelbaserad formulärsida (TemplateRoutedPageType) innehåller det frivilliga attributet routing (TemplateRouteType) som i sin tur har noll till flera vägval (TemplateRouteType) | En regelbaserad formulärsida (TemplateRoutedPageType) innehåller det frivilliga attributet routing (TemplateRouteType) som i sin tur har noll till flera vägval (TemplateRouteType) |  |  |  |  |  |  |  |

#### Klass Lista med vägval (TemplateRoutingType)
Objektet används för att genom logik kunna styra vilka sidor som ska visas baserat på invånares svar i sidan.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (routes) | (routes) | Vägval | TemplateRouteType | 1..* |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Listan med vägval innehåller ett eller flera vägval, vardera representerat av attributet TemplateRouteType. | Listan med vägval innehåller ett eller flera vägval, vardera representerat av attributet TemplateRouteType. | Listan med vägval innehåller ett eller flera vägval, vardera representerat av attributet TemplateRouteType. |  |  |  |  |  |  |  |

#### Klass Lista med vägval (TemplateRouteType)
Objektet används för att skapa regler som gäller för att aktivera vägvalet till en sida.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (pageNumber) | (pageNumber) | Sidonummer | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| rules | rules | Lista med regler för att sidan ”pageNumber” ska aktiveras | TemplateRouteType | 0..* |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Listan med vägval innehåller ett eller flera vägval, vardera representerat av attributet TemplateRouteType. | Listan med vägval innehåller ett eller flera vägval, vardera representerat av attributet TemplateRouteType. | Listan med vägval innehåller ett eller flera vägval, vardera representerat av attributet TemplateRouteType. |  |  |  |  |  |  |  |

#### Klass Kriterier för vägvalet för en sida (TemplateRuleType)
Objektet används för att skapa regler som gäller för att aktivera vägvalet till en sida.

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (blockNumber) | Nummer på ett block (gruppering) med frågor | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionNumber) | Frågans nummer. Numret giltigt inom blocket. | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (operator) / Villkor | Villkor för att regeln ska gälla | OperatorType | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |

#### Klass Formulärsida (TemplatePageType)
Objektet utgör mall för en sida (PageType)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (pageNumber) | (pageNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Rubrik / (subject) | Rubrik / (subject) | Sidans rubrik. / T.ex Medicin. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Beskrivning / (description) | Beskrivning / (description) | Beskrivande text. / Stöder formatet ”DocBook”. Se separat kapitel under Formatregler / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan formateras enligt DocBook. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Frågegruppering/id / (questionBlocks) | Frågegruppering/id / (questionBlocks) | Koppling till klass för frågegruppering. | II | 1..* | Länk till array av objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (informationURL) | (informationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Media / (media) | Media / (media) | Koppling till klass för media. | MediaType | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärsida (PageType) är har noll till flera frågegrupperingar (TemplateQuestionBlockType) | En formulärsida (PageType) är har noll till flera frågegrupperingar (TemplateQuestionBlockType) | En formulärsida (PageType) är har noll till flera frågegrupperingar (TemplateQuestionBlockType) |  |  |  |  |  |  |  |

#### Klass Formulärsida (PageType)
Objektet innehåller en till många frågegrupperingar.  En sida är ett sätt att dela upp/gruppera ett formulär.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (pageNumber) | (pageNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Rubrik / (subject) | Rubrik / (subject) | Sidans rubrik. / T.ex Medicin. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Beskrivning / (description) | Beskrivning / (description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (informationURL) | (informationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (lastPage) | (lastPage) | Indikerar om ytterligare sidor. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. | S/F | 1 | S = Indikerar att detta är det sista sidan. / F= Indikerar att ytterligare sidor. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| Frågor/id / (questionBlocks) | Frågor/id / (questionBlocks) | Koppling till klass för Block. | II | 1..* | Länk till array av objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Media / (media) | Media / (media) | Koppling till klass för media. | MediaType | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärsida (PageType) har noll till flera Block (QuestionBlockType) | En formulärsida (PageType) har noll till flera Block (QuestionBlockType) | En formulärsida (PageType) har noll till flera Block (QuestionBlockType) |  |  |  |  |  |  |  |

#### Klass Frågegrupperingsmall (TemplateQuestionBlockType)
Objektet utgör mall för en frågegruppering (QuestionBlockType)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (blockNumber) | (blockNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Rubrik / (subject) | Rubrik / (subject) | Blockets rubrik. / T.ex Medicin. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Beskrivning / (description) | Beskrivning / (description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (informationURL) | (informationURL) | URL till hjälpsida/mer information. | TXT | 0..1 | (InformationURL) |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (numberOfQuestions) | (numberOfQuestions) | Antal frågor tillhörande blocket. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| gridConfig/id / (gridConfig) | gridConfig/id / (gridConfig) | Koppling till klass för gridkonfigurering. | II / (GridConfigType) | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Frågor/id / (questions) | Frågor/id / (questions) | Koppling till klass för frågor. | II | 1..* | Länk till lista av objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En frågegrupperingsmall (TemplateQuestionBlockType) är har noll till flera Frågor (TemplateQuestionType) | En frågegrupperingsmall (TemplateQuestionBlockType) är har noll till flera Frågor (TemplateQuestionType) | En frågegrupperingsmall (TemplateQuestionBlockType) är har noll till flera Frågor (TemplateQuestionType) |  |  |  |  |  |  |  |
| En frågegrupperingsmall (TemplateQuestionBlockType) är har noll till flera gridConfig (GridConfigType) | En frågegrupperingsmall (TemplateQuestionBlockType) är har noll till flera gridConfig (GridConfigType) | En frågegrupperingsmall (TemplateQuestionBlockType) är har noll till flera gridConfig (GridConfigType) |  |  |  |  |  |  |  |

#### Klass Frågegruppering (QuestionBlockType)
Objektet innehåller ett block fråga och dess svarsalternativ.  Ett block representerar en grupp av frågor. Grupperingen kan styras av vägskäl i frågehierarkin alternativt lämplig gruppering på grund av mängden frågor.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (blockNumber) | (blockNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. / T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Rubrik / (subject) | Rubrik / (subject) | Blockets rubrik. / T.ex Medicin. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Beskrivning / (description) | Beskrivning / (description) | Beskrivande text. / Stöder kodverk ”DocBook” Se tidbokningskontraktet!! / T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (informationURL) | (informationURL) | URL till hjälpsida/mer information. | TXT | 0..1 | (InformationURL) |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (numberOfQuestions) | (numberOfQuestions) | Antal frågor tillhörande blocket. / T.ex. 10 | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| gridConfig/id / (gridConfig) | gridConfig/id / (gridConfig) | Koppling till klass för gridkonfigurering. | II | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Frågor/id / (questionId) | Frågor/id / (questionId) | Koppling till klass för frågor. | II | 1..* | Länk till lista av objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionBlockType) är har noll till flera Frågor (QuestionType) | En formulärfråga(QuestionBlockType) är har noll till flera Frågor (QuestionType) | En formulärfråga(QuestionBlockType) är har noll till flera Frågor (QuestionType) |  |  |  |  |  |  |  |
| En formulärfråga(QuestionBlockType) är har noll till flera gridConfig (GridConfigType) | En formulärfråga(QuestionBlockType) är har noll till flera gridConfig (GridConfigType) | En formulärfråga(QuestionBlockType) är har noll till flera gridConfig (GridConfigType) |  |  |  |  |  |  |  |

#### Klass Formulärfråga mall (TemplateQuestionType)
Objektet utgör mall för en fråga (QuestionType)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (informationURL) | (informationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (subject) | (subject) | Frågans rubrik. / T.ex Ange din blodgrupp. | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (description) | (description) | Frågans beskrivande text eller instruktion till användaren/patient. / Stöder formatet ”DocBook” / Se kapitel DocBook | TXT | 1..0 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionId) | (questionId) | Frågans unika id. (Producentens unika id) | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (input) | (input) | Beskriver frågans inmatningstyp. / T.ex. radio(enkelvärde), checkbox(multivärde) eller fritext. | KTOV | 1 | KV Inmatningstyp |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (mandatory) | (mandatory) | Indikerar om frågan är obligatorisk. | S/F | 1 | True = obligatorisk fråga / False = Frivillig fråga |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (maxNumberOfChoices) | (maxNumberOfChoices) | Indikerar maximalt antal värden som användaren får välja vid checkbox/multivärde. / Värdet ska vara mindre än eller lika med antal totala val. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (minNumberOfChoices) | (minNumberOfChoices) | Indikerar min. antal värden som användaren får välja vid checkbox/multivärde. Värdet måste vara större än 0 om mandatory = true | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (inputUnit) | (inputUnit) | Typ av enhet. / T.ex. kg, m | KTOV | 0..1 | KV enhet |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Kv enhet |
| (answerMax) | (answerMax) | Specificerar maxvärde för inmatning. (Gäller typ: number, date) / AnswerMax ska vara större än 0 samt större än motsvarande answerMin värde. / T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter. | VÄ | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerMin) | (answerMin) | Specificerar minvärde för inmatning. / (Gäller typ: number, date) / AnswerMin ska vara mindre än motsvarande answerMax värde | VÄ | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerMaxLenght) | (answerMaxLenght) | Specificerar maxvärdelängd för inmatning. / (Gäller typ: text) / T.ex: En inmatning (text) får inte vara större än 100 tecken. | VÄ | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerPattern) | (answerPattern) | Inmatningsvalidering / (Regular expresson, gäller typ: text). / T.ex: pattern="[A-z]{3}" tillåter endast 3 teckan A-z. | TXT | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerStep) | (answerStep) | Specificerar giltiga intervall för inmatning. / (Gäller typ: number, range, date, datetime, datetime-local, month, time och week). / Används i kombination med answerMin och answerMax. / Om ett värde är angivet  för / answerStep skall värdet vara större än 0 samt mindre än answerMax-answeMin. / T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 
35-40. | VÄ | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionAlign) | (questionAlign) | Presentationsrekommendation för fråga och svarsalternativ. / left / right / Center / vertical: Fråga och svarsalternativ presenteras i vertikalt. T.ex. inmatning placeras under rubrik. / horizontal: Fråga och svarsalternativ presenteras i horisontalt. T.ex. inmatning placeras bredvid varandra. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Code/id / (code) | Code/id / (code) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för en fråga. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Svarsalternativ/id / (answerAlternatives) | Svarsalternativ/id / (answerAlternatives) | Koppling till klass för svarsalternativ. | II | 0..* | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Media/id / (media) | Media/id / (media) | Koppling till klass för media. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| ValidationEvent/id / (validationsEvents) | ValidationEvent/id / (validationsEvents) | Koppling till klass för validerings events. | II | 0..* | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| GridValue/id / (gridValue) | GridValue/id / (gridValue) | Koppling till klass för ”grid” värden. | II | 0..1 | Länk till objekt. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| QuestionSuperior/id / (questionSuperior) | QuestionSuperior/id / (questionSuperior) | Koppling till klass för kopplade frågor. | II | 0..1 | Länk till objekt. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionNumber) | (questionNumber) | Löpnummer för frågan inom formuläret | VÄ | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerMinLabel) | (answerMinLabel) | Text för att indikera/förklara vad lägsta värdet betyder. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerMaxLabel) | (answerMaxLabel) | Text för att indikera/förklara vad högsta värdet betyder | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerPlaceHolder) | (answerPlaceHolder) | Attributet ger möjlighet att förmedla en hint eller ett exempelvärde som ska motsvara det förväntade inmatningsvärdet. Jmf HTML placeholder attribut . | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionType) är har noll till flera svarsalternativ (AnswerAlternativeType) | En formulärfråga(QuestionType) är har noll till flera svarsalternativ (AnswerAlternativeType) | En formulärfråga(QuestionType) är har noll till flera svarsalternativ (AnswerAlternativeType) |  |  |  |  |  |  |  |
| En formulärfråga (QuestionType) har noll till flera svar (AnswerType) | En formulärfråga (QuestionType) har noll till flera svar (AnswerType) | En formulärfråga (QuestionType) har noll till flera svar (AnswerType) |  |  |  |  |  |  |  |
| En Formulärfråga (QuestionType) har noll till ett kodverk (CodeType) | En Formulärfråga (QuestionType) har noll till ett kodverk (CodeType) | En Formulärfråga (QuestionType) har noll till ett kodverk (CodeType) |  |  |  |  |  |  |  |
| En Formulärfråga (QuestionType) har noll till ett gridvalue (GridValueType) | En Formulärfråga (QuestionType) har noll till ett gridvalue (GridValueType) | En Formulärfråga (QuestionType) har noll till ett gridvalue (GridValueType) |  |  |  |  |  |  |  |
| En Formulärfråga (QuestionType) har noll till ett questionsuperior (QuestionSuperiorType) | En Formulärfråga (QuestionType) har noll till ett questionsuperior (QuestionSuperiorType) | En Formulärfråga (QuestionType) har noll till ett questionsuperior (QuestionSuperiorType) |  |  |  |  |  |  |  |

#### Klass Formulärfråga (QuestionType)
Objektet innehåller en fråga samt metadata.
Exempel:
”Vilken är din favoritfärg?”

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (informationURL) | (informationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (subject) | (subject) | Frågans rubrik. / T.ex Ange din blodgrupp. | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (description) | (description) | Frågans beskrivande text eller instruktion till användaren/patient. / Stöder kodverk ”DocBook” / Se kapitel DocBooks. | TXT | 1..0 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (input) | (input) | Beskriver frågans inmatningstyp. / T.ex. radio(enkelvärde), checkbox(multivärde) eller fritext. | KTOV | 1 | KV Inmatningstyp |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (mandatory) | (mandatory) | Indikerar om frågan är obligatorisk. | S/F | 1 | True = obligatorisk fråga / False = Frivillig fråga |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (maxNumberOfChoices) | (maxNumberOfChoices) | Indikerar max antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (minNumberOfChoices) | (minNumberOfChoices) | Indikerar min. antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren. / Kan användas för att validera inmatning av konsument. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (inputUnit) | (inputUnit) | Typ av enhet. / T.ex. kg, m | KTOV | 0..1 | KV enhet |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Kv enhet |
| (answerMax) | (answerMax) | Specificerar maxvärde för inmatning. (Gäller typ: number, date) / T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerMin) | (answerMin) | Specificerar minvärde för inmatning. / (Gäller typ: number, date) | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerMaxLenght) | (answerMaxLenght) | Specificerar maxvärdelängd för inmatning. / (Gäller typ: number) / T.ex: En inmatning (text) får inte vara större än 100 tecken. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerPattern) | (answerPattern) | Inmatningsvalidering / (Regular expresson). / T.ex: pattern="[A-z]{3}" tillåter endast 3 teckan A-z. | TXT | 0..1 |  | Kan valideras av konsumerandesystem. | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (answerStep) | (answerStep) | Specificerar giltiga intervall för inmatning. / (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) / T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 
35-40. | VÄ | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionAlign) | (questionAlign) | Presentationsrekommendation för fråga och svarsalternativ. / left / right / Center / vertical: Fråga och svarsalternativ presenteras i vertikalt. T.ex. inmatning placeras under rubrik. / horizontal: Fråga och svarsalternativ presenteras i horisontalt. T.ex. inmatning placeras bredvid varandra. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Code/id / (codeType) | Code/id / (codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för en fråga. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Svarsalternativ/id / (answerAlternative) | Svarsalternativ/id / (answerAlternative) | Koppling till klass för svarsalternativ. | II | 0..* | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Media/id / (media) | Media/id / (media) | Koppling till klass för media. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| ValidationEvent/id / (validationEvents) | ValidationEvent/id / (validationEvents) | Koppling till klass för validerings events. | II | 0..* | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| GridValue/id / (gridValue) | GridValue/id / (gridValue) | Koppling till klass för ”grid” värden. | II | 0..1 | Länk till objekt. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| QuestionSuperior/id / (questionSuperior) | QuestionSuperior/id / (questionSuperior) | Koppling till klass för kopplade frågor. | II | 0..1 | Länk till objekt. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionId) | (questionId) | Frågans unika id. (Producentens unika id) | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionType) är har noll till flera svarsalternativ (AnswerAlternativeType) | En formulärfråga(QuestionType) är har noll till flera svarsalternativ (AnswerAlternativeType) | En formulärfråga(QuestionType) är har noll till flera svarsalternativ (AnswerAlternativeType) |  |  |  |  |  |  |  |
| En formulärfråga (QuestionType) har noll till flera svar (AnswerType) | En formulärfråga (QuestionType) har noll till flera svar (AnswerType) | En formulärfråga (QuestionType) har noll till flera svar (AnswerType) |  |  |  |  |  |  |  |
| En Formulärfråga (QuestionType) har noll till ett kodverk (CodeType) | En Formulärfråga (QuestionType) har noll till ett kodverk (CodeType) | En Formulärfråga (QuestionType) har noll till ett kodverk (CodeType) |  |  |  |  |  |  |  |
| En Formulärfråga (QuestionType) har noll till ett gridvalue (GridValueType) | En Formulärfråga (QuestionType) har noll till ett gridvalue (GridValueType) | En Formulärfråga (QuestionType) har noll till ett gridvalue (GridValueType) |  |  |  |  |  |  |  |
| En Formulärfråga (QuestionType) har noll till ett questionsuperior (QuestionSuperiorType) | En Formulärfråga (QuestionType) har noll till ett questionsuperior (QuestionSuperiorType) | En Formulärfråga (QuestionType) har noll till ett questionsuperior (QuestionSuperiorType) |  |  |  |  |  |  |  |

#### Klass Svarsalternativ (AnswerAlternativeType)
Objektet innehåller de svarsalternativen som skall presenteras för användaren. För varje svarsalternativ finns ett objekt. Nedanstående exempel kräver tre objekt.
Exempel:
InputType = checkbox (multivärde)
☐ Blå
☐ Gul
☐ Röd

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| answerAlternativeNumber | answerAlternativeNumber | Svarsalternativets id. Id:t består av ett index, från 1 och uppåt. Id:t räknas upp från 1 för varje fråga (QuestionType). | INT | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |  |
| alternativeValue | alternativeValue | Valbart svarsalternativ. | TXT | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| answerHelp | answerHelp | Hjälptext till svarsalternativet. (placeholder) | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Code/id / (codeType) | Code/id / (codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för ett svarsalternativ. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Media/id / (MediaType) | Media/id / (MediaType) | Koppling till klass för media. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett svarsalternativ(AnswerAlternativeType) har en formulärfråga (QuestionType) | Ett svarsalternativ(AnswerAlternativeType) har en formulärfråga (QuestionType) | Ett svarsalternativ(AnswerAlternativeType) har en formulärfråga (QuestionType) |  |  |  |  |  |  |  |

#### Klass Svar (AnswerType)
Objektet innehåller patientens/användarens svar på en fråga.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (value) | (value) | Patientens/användarens svar. | ANY | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (valueID) | (valueID) | ID på frågan | II | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Statuskod/id / (answerStatus) | Statuskod/id / (answerStatus) | Koppling till klass för statuskod. | II | 0..1 | Länk till objekt |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett svar(AnswerType) har en formulärfråga (QuestionType) | Ett svar(AnswerType) har en formulärfråga (QuestionType) | Ett svar(AnswerType) har en formulärfråga (QuestionType) |  |  |  |  |  |  |  |
| Ett svar(AnswerType) har noll eller en statuskod (AnswerStatusType) | Ett svar(AnswerType) har noll eller en statuskod (AnswerStatusType) | Ett svar(AnswerType) har noll eller en statuskod (AnswerStatusType) |  |  |  |  |  |  |  |

#### Klass Svarssida (PageAnswerType)
Objektet innehåller patientens/användarens svar på frågor i en sida.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (pageNumber) | (pageNumber) | Sidonummer. | VÄ | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (questionAnswerBlocks) | (questionAnswerBlocks) | Lista med en eller flera grupper/block med frågor | QuestionBlockAnswerType | 1..* |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En sida innehåller en lista med grupper/block av frågor (QuestionBlockAnswerTyep) | En sida innehåller en lista med grupper/block av frågor (QuestionBlockAnswerTyep) | En sida innehåller en lista med grupper/block av frågor (QuestionBlockAnswerTyep) |  |  |  |  |  |  |  |

#### Klass anropsbekräftelse (AnswerStatus)
Objekt innehåller statuskod och meddelande.

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (resultCode) | Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod | KTOV | 0..1 | KV Statuskod |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (resultCodeText) | Felmeddelande, förklarande text. Vid INFO eller ERROR. / T.ex. INFO – Medtag legitimation. | TXT | 0..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |

#### Klass Frågerelation (QuestionSuperior)
Objekt innehåller information om beroende till överordnade frågor eller svarsalternativ finns.

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (superiorAnswerAlternativeNumbers) | Indikerar att frågan är beroende av att ett specifikt svarsalternativ är besvarat. / T.ex. Frågan skall endast visa om invånaren har svarat ”Ja” på en fråga. | VÄ | 0..* |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (superiorQuestionNumber) | Indikerar att frågan är beroende av att en  specifikt fråga är besvarad. | TXT | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |

#### Klass kodverk (Code)
Objekt innehåller definition av kodverk/kod. Klassen kan användas för att kodverk/kod för en fråga/svarsalternativ eller ett formulärinstrument (exempelvis EQ-5D).
Om ”code” används på formulärnivå avses ett standardinstrument. Prefixet 1177 Innebär att instrumentet är etablerat inom 1177 konceptet.
Ex:

| 1177.forms.audit-c / 1177.forms.eq-5d / 1177.forms.phq-9 |
| :--- |
Om ”code” används på fråga eller svarsalternativ avses ett kodsystem som avspeglar fråga och svarsalternativ.
Ex:
ICD-10(Diagnos kod)
KVÅ (Operations kod)
SNOMED-CT.

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (codeValue) | Kod som används (Kodverk). | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| (codeSystem) | Identifierar vilket kodverk som används. | TXT | 1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |

#### Klass Malldelning (TemplatePropagate)
Objekt för att definiera om mallen är regional/nationell. En standardiserad mall kan användas regionalt eller nationellt. mall kan delas definieras global (kan). Attributet countycode styr mallens tillgänglighet. ISO 3166-2:SEObjekt  information om mallen delas med.innehåller definition av kodverk/kod.

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (countycode) | Avgränsande fält. Om Propagate "true" kan mallen delas inom en till flera länskoder. / Om attributet är tomt delas mallen utan avgränsning. / Avgränsningen (länskod) gäller för inom det län verksamheten verkar inom (som vill använda mallen). | KTOV | 0..* | KV Länskod. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Kv län |
| (propagate) | Attribut för att indikera att mallen är global. | S/F | 1 | S = Mallen delas (t.ex är nationell). / F = Mallen delas inte. |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |

#### Klass validering (ValidationEventType)
Objekt innehåller valideringsmeddelanden kopplade till en valideringshändelse. Om valideringsmeddelanden finns skall dessa visas för slutanvändaren vid valideringsfel. Det finns följande valideringsalternativ kopplade till frågor.
ÖVERSIKT

| ValidationEvent | Text | TextArea | Radio | CheckBox | Select | Number | Date / Time / Month / Week | Range | Matrix / Radio | Matrix / checkbox | Matrix / Text | Scale |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| answerMin |  |  |  |  |  | X | X | X |  |  |  |  |
| answerMax |  |  |  |  |  | X | X | X |  |  |  |  |
| answerPattern | X | X | X | X | X | X | X | X | X | X | X | X |
| inputUnit | X |  |  |  |  |  |  |  |  |  |  |  |
| mandatory | X | X | X | X | X | X | X | X | X | X | X | X |
| maxNumberOfChoices |  |  |  | X | X |  |  |  |  | X |  |  |
| minNumberOfChoices |  |  |  | X | X |  |  |  |  | X |  |  |

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| (event) | Valideringshändelse. / Ex: ”mandatory” indikerar att det finns en valideringstext för ett obligatoriskt fält. | TXT | 1..1 | KV Valideringshändelse |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 |
| (text) | Valideringstext för valideringshändelse.. / Ex: ”Fältet x är obligatoriskt” | TXT | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |

#### Klass Svar på formulärförfrågan (FormRequestResponseType)
Objektet returneras till anropande system vid "createFormRequest" (Formulärbegäran). Anropande system får ett unika ID per formulärbegäran.
ÖVERSIKT

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| clinicalProcessInterestId | Unikt id för relaterat hälsoärende. | ClinicalProcessInterestIdType / (String) | 0..1 |  |  |  |  |  |
| formId | Unikt id för formulärinstansen | FormIDType / (String) | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| healthcare_facility_CareUnit | HSAId för den vårdenhet som erbjuder formuläret | HsaIdType / (String) | 1..1 |  |  | Vård- och omsorgsutövare | enhet id | N/A |
| subjectOfCare | Invånares/patients personnummer. / Svaret innehåller ett personnummer i det fallet där det utpekade formuläret inte är ett ”anonymt” formulär. | SubjectOfCareIdType / (String) | 0..1 |  |  | Patient | person-id | N/A |

#### Klass Resultat (CalculationOutcomeType)
Objektet används för att hålla resultat som beräknats, baserat på formulärsvar. Resultatet beräknas genom en tillhörande definierad beräkningsregel/formel (CalculationFormulaType)
ÖVERSIKT

| Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| outcome | Beräknat resultat/värde. | VÄ | 0..1 |  |  |  |  |  |
| calculationId | Unikt id för resultatet | II | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| subject | Rubrik för det beräknade värdet | TXT | 1..1 |  |  |  |  |  |
| descriptionCareActor | Beskrivande text ämnad för vårdpesonal | TXT | 0..1 |  |  |  |  |  |
| descriptionSubjectOfCare | Beskrivande text ämnad för invånaren (eller den aktör som på uppdrag av invånaren fyller i formuläret) | TXT | 0..1 |  |  |  |  |  |
| approvedForSubjectOfCare | Flagga för att visa om resultatet ska/får visas för invånare. Ett utelämnat attribut betyder approvedForSubjectOfCare = TRUE | BOOL | 0..1 |  |  |  |  |  |
| errorMessage | Felmeddelande om något fel har uppstått vid beräkning, medför att outcome utelämnas | TXT | 0..1 |  |  |  |  |  |

#### Klass Beräkningsformel (CalculationFormulaType)
Objektet används för att hålla en beräkningsformel, uttryckt i skript.
ÖVERSIKT

| Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| calculationId | Unikt id för resultatet | II | 1..1 |  |  | Saknas i V-TIM 2.2 | Saknas i V-TIM 2.2 | N/A |
| subject | Rubrik för det beräknade värdet | TXT | 1..1 |  |  |  |  |  |
| descriptionCareActor | Beskrivande text ämnad för vårdpesonal | TXT | 0..1 |  |  |  |  |  |
| descriptionSubjectOfCare | Beskrivande text ämnad för invånaren (eller den aktör som på uppdrag av invånaren fyller i formuläret) | TXT | 0..1 |  |  |  |  |  |
| approvedForSubjectOfCare | Flagga för att visa om resultatet ska/får visas för invånare. Ett utelämnat attribut betyder approvedForSubjectOfCare = TRUE | BOOL | 0..1 |  |  |  |  |  |
| type | Skriptprogrammeringsspråk | TXT | 0..1 |  |  |  |  |  |
| license | Licenstext | TXT | 0..1 |  |  |  |  |  |
| formula | Skriptet | TXT | 1..1 |  |  |  |  |  |

#### Klass Aktör (ActorType)
Representerar den typ av användare som utför formulärifyllnaden. Aktören kan vara invånaren/patienten själv, d v s den invånare/patient som formuläret avser, aktören kan vara en vårdnadshavare, ställföreträdare eller annat legalt ombud alternativt vara vårdpersonal hos vårdgivare som företräder invånaren/patienten. I fallet vårdpersonal ska vårdgivaren (organisationen) identifieras.

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 | Mappning V-TIM 2.2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd 
/ ev. begränsningar | Beslutsregler och kommentar | Klass i V-TIM | Attribut i V-TIM | Kodverk i V-TIM |
| Id för aktören / (actorId) | Beroende på typ av aktör kan id vara ett personnummer/samordningsnummer eller ett Hsa-id. | II | 1 | Hsa-id eller personnummer/samordningsnummer |  | Informationsresurs / Patient | Vårdgivare id / person-id | N/A |
| Aktörstyp / (actorType) | Typ av aktör kan vara invånare/patient, ombud (vårdnadshavare eller annat legalt ombud) eller vårdpersonal. / CITIZEN = invånare/patient
GUARDIAN = Ombud (vårdnadshavare eller annat legalt ombud) / CAREGIVER = vårdgivare | II | 0..1 | CITIZEN / GUARDIAN / CAREGIVER |  | N/A | N/A | N/A |

### Terminologier, kodverk och identifierare (t/k/i)
Terminologier, kodverk och indentifikationssystem som hanteras i informationsutbytet inom formulärtjänst.

| Namn | Syfte | Innehåll. språk | Föreskrift, standard, internationellt kodverk | Fastställt av | OID-nummer och ägaren av OID-numret | Ägare/förvaltare, länkar och revideringsprocess | Återfinns i Klass / attribut | Ev begränsningar |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| KV Formulärkategori | Kodverk för formulärkategori | Kodverk saknas / Exempel / Anmälan / Registrering / Deklaration |  |  |  |  |  |  |
| KV Malltyp | Kodverk för malltyp | Kodverk saknas / Exempel / Mödrahälsovårdsjournal 1 - MHV1 |  |  |  |  |  |  |
| KV Språk | Kodverk för formulärspråk. |  | Kv språk | CeHis | 1.2.752.129.2.2.1.9 | Sveriges Kommuner och Landsting |  |  |
| KV Inmatningstyp | Kodverk för inmatningstyp / (*) | Följande typer stödjs. / Inmatning kan vara av följande huvudtyper: / Enkelvärde / multivärde / fritext / IngetVärde (none) / Exempel på inmatningstyper: / text / textarea / checkbox / radio / select / number / URL / date and time / date / month / week / time / local date and time / range / image / OBSERVERA: input type ska anges med gemener.
Ex: “number”, “time” etc. |  | W3C * | Version HTML5 | W3C * |  |  |
| KV Form Status | Kodverk för formulärets status | COMPLETED = Skickat / ONGOING = Pågående, svar har temporärsparats / PENDING_COMPLETION = Pågående, svarr har temporärsparats. Alla frågor är besvarade (färdigt ej skickat). |  |  |  |  |  |  |
| KV Statuskod | Kodverk för logisk felhantering | OK - Transaktion utförd / INFO - Transaktion utförd med kommentar. / ERROR - Transaktion ej genomförd |  |  |  |  |  |  |
| KV enhet | Kodverk för måttenheter | Grundenheter samt härledda SI-enheter beskrivs med dess beteckning. / T.ex. km, m, cm, kg, mm Hg etc | Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26) |  |  |  |  |  |
| KV Länskod | Kodverk för länskod, | Kodverk för länskod. | Länskod enligt SCB |  | 1.2.752.129.2.2.1.18 | Sveriges Kommuner och Landsting |  |  |
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

#### DocBook
I vissa element i SOAP-meddelandet har konsumenten/producenten möjlighet att ange texten i det standardiserade layout-formatet ”DocBook” version 5.0 (Oasis standard). Konsumenten måste då transformera texten till ett presentationsformat så som XHTML eller PDF. Det kan t.ex. ske med hjälp av de XSLT-baserade transformeringsskript som tillhandahålls på DocBooks hemsida: http://docbook.org/tdg5/en/html/.
Texten i elementet ska vara i s.k. ”entity encoding” så att DocBook-elementen inte uppfattas som del av SOAP-meddelandets XML-struktur när meddelandet tas emot av konsumenten. Konsumenten behöver sedan återskapa ursprunglig XML från innehållet i elementet. Det finns många exempel på open-source-bibliotek som kan användas av producenten för att göra ”entity encoding” och av konsumenten för att återställa till XML. Ett exempel är Apache Commons Lang StringEscapeUtils: http://commons.apache.org/proper/commons-lang/javadocs/api-2.1/org/apache/commons/lang/StringEscapeUtils.html (se metoderna escapeXml respektive unescapeXml).
Vilka Docbook-element som är tillåtna i respektive element i SOAP-meddelandet framgår av reglerna för det aktuella tjänstekontraktet.
Exempel på DocBook:
<?xml version="1.0"?>
<article>
<info>
<title>...</title>
</info>
<para> ... </para>
<para> ... </para>
<section>
<title>...</title>
<para> ... </para>
<para>
<ulink url="http://example.com"> ... </ulink>
</para>
</section>
<section>
<title>...</title>
<itemizedlist>
<listitem> ... </listitem>
<listitem> ... </listitem>
<listitem> ... </listitem>
</itemizedlist>
</section>
<bibliography> ... </bibliography>
</article>
För ovanstående DocBook-exempel ska alltså elementet i SOAP-meddelandet innehålla en version som är ”entity encoded” enligt följande:
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;article&gt;
&lt;info&gt;
&lt;title&gt;...&lt;/title&gt;
&lt;/info&gt;
&lt;para&gt; ... &lt;/para&gt;
&lt;para&gt; ... &lt;/para&gt;
&lt;section&gt;
&lt;title&gt;...&lt;/title&gt;
&lt;para&gt; ... &lt;/para&gt;
&lt;para&gt;
&lt;ulink url=&quot;http://example.com&quot;&gt; ... &lt;/ulink&gt;
&lt;/para&gt;
&lt;/section&gt;
&lt;section&gt;
&lt;title&gt;...&lt;/title&gt;
&lt;itemizedlist&gt;
&lt;listitem&gt; ... &lt;/listitem&gt;
&lt;listitem&gt; ... &lt;/listitem&gt;
&lt;listitem&gt; ... &lt;/listitem&gt;
&lt;/itemizedlist&gt;
&lt;/section&gt;
&lt;bibliography&gt; ... &lt;/bibliography&gt;
&lt;/article&gt;
Konsumenten kan t.ex. använda något av tillgängliga verktyg för att generera RTF, HTML eller PDF från innehållet i elementet (efter att det återställts till ursprunglig XML-syntax).
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt ska ha en (1..1) egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

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

## Tjänstekontrakt

### Tjänstekontrakt GetFormTemplates
Tjänst för att hämta tillgängliga formulärmallar för invånare. Tjänsten används för att lista de formulärmalar som invånaren kan använda för att skapa formulär.
Tjänsten returnerar formulärmallar baserat på olika parametrar.
Vårdenhets hsa-id.
Personnummer.
Indikerar att producerande system kan presentera formulär anpassat till användaren.
Lista med id på befintliga formulärmallar.
Indikerar att producerandesystem skall filtrera ut endast de formulärmallar i begäran om dessaa finns tillgängliga.
Hälsoärende.
Indikerar att producerande system skall visa formulär kopplade till hälsoärende.
Tjänst används för att:
Hämta och lista formulärmallar som användaren kan välja att använda/fylla i.
Hämta specifika formulärmallar, utifrån en lista med mall-id  som användaren skall fylla i.
Hämta formulärmallar som användaren skall använda som resultat av en vårdprocess/vårdaktivitet.

#### Version
2.0

#### Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). / T.ex. se2321000016-1hz3 | 1..1 |
| PublishedStatus |  | Indikerar vilken status en mall skall ha. | 0..* |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| TemplateIds |  | Typ av formulärmall. Kodverk. Om denna inte anges skall formulärtjänsten som default returnera ALLA tillgängliga formulärmallar för medborgaren. | 0..* |
| ClinicalProcessInterestIds |  | Hälsoärenden. | 0..* |
| Svar |  |  |  |
| FormTemplate |  | Objekt FormTemplateType. | 0..* |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet
Personnummer (subjectOfCare).
Hälsoärenden (ClinicalProcessInterestIds). Formulär relaterade till ett eller flera hälsoärenden.
Formulärtyp (TemplateIds).

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Null/tomt indikerar att det inte finns något formulär för angivna sökparametrar.

#### Tjänsteinteraktion
GetFormTemplatesInteraction

### Tjänstekontrakt CreateForm
Tjänsten används för att skapa och initiera/starta ett formulär.
Tjänsten anropas när användaren vill:
Starta/skapa ett nytt formulär.
En ”CreateForm” kan hämta nödvändiga parametrar från tjänsten GetFormTemplates eller från en alternativ källa.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
|  |  |  |  |
| Healthcare_Facility_CareUnit | HsaIdType | Hsa-Id (Vårdenhet/enhets-id). / T.ex. se2321000016-1hz3 | 1..1 |
| SubjectOfCare | SubjectOfCareType | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn). Konsument ska kontrollera attributet ”anonymousForm” för den specifika formulärmallen innan. Om Formulärmallen är definierad för att besvaras anonymt ska konsument inte skicka med SubjectOfCare, annars måste fältet vara med. | 0..1 |
| TemplateId | TemplateIdType | Mallid. | 1..1 |
| TemplateVersion | Integer | Mallens version. Utelämnas denna parameter skall producerande system använda den senaste versionen. | 0..1 |
| ClinicalProcessInterestId | ClinicalProcessInterestIdType / (string) | Hälsoärende id. Parameter indikerar att formuläret ingår i ett Hälsoärende. | 0..1 |
| Actor | ActorType | Aktör som skapar formuläret. Aktören kan vara invånaren/patienten själv, vårdnadshavare som fyller i formuläret åt sitt barn eller vårdpersonal hos vårdgivare som företräder patienten | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form | FormType | Objekt CreateFormResponseType | 1..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan använda följande parametrar.
Filtreringsprioritet
Personnummer (subjectOfCare)
Personnummer indikerar starkt autentiserad invånare.
Tomt fält indikerar anonym användare.
Hälsoärende (ClinicalProcessInterestId)
Indikerar att formuläret skall kopplas till ett hälsoärende.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Formulärets (Form, FormTemplate) sida med frågor (Page) skall av konsumerande system(e-tjänst) presenteras för invånaren utan uppdelning.
Vid komplexa formulär med många frågor bör frågor delas upp i flera sidor (Page).

#### Tjänsteinteraktion
CreateFormInteraction

### Tjänstekontrakt GetForms
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

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). / T.ex. se2321000016-1hz3. Konsument ska säkerställa att konsument endast anropar med HSAId:n som motsvarar organisationer som konsument har avtal med (PuB-avtal). Alternativt om det är dess egna information som hämtas. | 0..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| TemplateIds |  | Ett unikt id för en formulärtyp/formulärmall. | 0..* |
| ClinicalProcessInterestIds |  | Hälsoärende ID | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| Formulär 
(Form) | FormsType | Objekt GetFormsResponse | 0..* |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet
Healthcare_Facility_CareUnit
Personnummer (subjectOfCare)
Hälsoärende (ClinicalProcessInterestIds)
Formulärtyp (TemplateIds)
Flera villkor kan anges.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Formulär som returneras kan ha följande status:
ONGOING = Pågående, frågor har temporärsparats
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade.
COMPLETED =  Formulär kan endast visas i ”läsläge”.

#### Tjänsteinteraktion
GetFormsInteraction

### Tjänstekontrakt GetForm
Tjänsten används för att hämta ett specifikt formulär. Nödvändiga parametrar kan hämtas från tjänsten GetForms(GetFormsInteraction) alternativt notifiering.
Tjänsten anropas när:
En invånare vill återuppta ett formulär (ONGOING).
En invånare vill se en sammanställning av ifyllt formulär. (PENDING_COMPLETE).
Ett vårdsystem skall hämta ett ifyllt, avslutat formulär (COMPLETED).
FormID kan t.ex. hämtas via
GetFormsInteraction.
Notifiering via ProcessNotification.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form | FormType | Objekt FormResponseType | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Om formuläret är uppdelat i sidor (Page) skall det sista ifyllda sidan i sekvensen returneras.
COMPLETED =  Avslutat. Formuläret är besvarat och avslutat av invånaren. Konsumerande system (e-tjänst) kan endast visas formulär i ”läsläge”.
ONGOING = Pågående, frågor har temporärsparats. Producenten skall returnera det sista/senaste Page i sekvensen(currentPage).
PENDING_COMPLETION = Invånaren har besvarat(och temporärsparats) formulärets samtliga frågor. Formuläret byter status till COMPLETED genom att uppdateras via tjänsten ”SaveForm”.
Om formulär saknas returneras ett SOAP exception.

#### Tjänsteinteraktion
GetFormInteraction

### Tjänstekontrakt GetFormQuestionPage
Tjänsten används för att hoppa/navigera framåt eller bakåt i ett formulär.
Tjänsten anropas när användaren vill:
Hoppa framåt eller bakåt bland besvarade och sparade frågor.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| pageNumber |  | Nummer på sidan som navigering utgår ifrån. | 1..1 |
| Direction |  | Kodverk. FORWARD, BACK | 1..1 |
| subjectOfCare |  | Invånarens personnummer. | 0..1 |
| Svar |  |  |  |
| Form |  | Objekt FormType | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Konsumenten kan endast hoppa till en gruppering(FormType.currentPage) med sparade frågor.
Direction ”BACK” är inte tillåtet om objektet ”PageNumber” är 1.
Direction ”FORWARD” är inte tillåtet om objektets LastPage(PageType) är sant (true).
Anges ”PageNumber = 0” och ”direction = FORWARD” för att gå till första sidan.
Anges ”PageNumber = 0” och ”direction = BACK” för att gå till sista sidan.
Vid ovanstående fel genereras ett exception.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
GetFormQuestionPageInteraction

### Tjänstekontrakt SaveFormPage
Tjänsten används för att spara invånarens besvarade frågor. Tjänsten används under pågående formulärsession.
E-tjänsten (konsumerande system) skickar invånarens svar med ”PageAnswers”.
Formulärmotor (producerande system) returnerar nästa sida med frågor.
Om parametern ”temporarySave” anges kommer formulärmotorn.
Spara formulärvärden som skickas in.
Validering av formulärdata skall ej göras.
Det Form och Page som skickades in skall returneras.
Formulärmotorn skall inte skicka med nästa sida (page).
Vid valideringsfel signaleras fel via ”ResultCode” och ”PageAnswer” returneras. ”AnswerStatus” (i AnswerType) kommer innehålla felindikering samt feltext.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| PageAnswers |  | Objekt PageAnswerType. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn). Konsument ska kontrollera attributet ”anonymousForm” för den specifika formulärmallen innan. Om Formulärmallen är definierad för att besvaras anonymt ska konsument inte skicka med SubjectOfCare, annars måste fältet vara med. | 0..1 |
| temporarySave |  | Parameter för att indikera temporärsparning. / True = temporär / False = normal hantering / Utelämnad parameter = normal hantering. | 0..1 |
| Actor | ActorType | Aktör som skapar formuläret. Aktören kan vara invånaren/patienten själv, vårdnadshavare som fyller i formuläret åt sitt barn eller vårdpersonal hos vårdgivare som företräder patienten | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form |  | Objekt FormType. | 0..1 |
| comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |
| ResultCode |  | Objekt StatusType. | 1..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Endast formulär som har FormStatus ”ONGOING” kan använda denna tjänst.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Attributet ”LastPage” = sant (Objekt PageType) indikerar att detta är det sista frågesida.
Förklaring:
Status = ”ERROR”
Vid  SaveFormPage skall producerandesystem validera begäran. Vid valideringsfel skall producerande (formulärmotorn) skicka objekt (FormType) tillbaka till konsumerande (e-tjänst) system.   Objektet (AnswerStatusType) ”form.currentPage.questionBlocks.questions.answers.answerStatus” används för att markera fält som innehåller fel.  Producerande system presenterar dessa för användaren för åtgärd.
Status = ”OK”
Vid godkänd begäran returneras validerade frågor/svar. Null ”form” bedöms formuläret färdigifyllt. Detta har föregåtts av ”LastPage” sant i objektet PageType.

#### Tjänsteinteraktion
SaveFormAnswerPageInteraction

### Tjänstekontrakt SaveForm
Tjänsten används för att indikera/signalera att invånarens formulär är färdigt ifyllt och skall avslutas/stängas.
Exempel spara och avsluta formulär:
Konsumerandesystem(e-tjänst) frågar användaren (i grafiskt gränssnitt) om formuläret skall avslutas.
Konsumerandesystem(e-tjänst) hämtar en sammanställning (formulär, sida, frågor, svar) via tjänst GetForm.
Användaren/patienten granskar och godkänner formuläret.
Konsumerandesystem avslutar formuläret (på invånarens begäran). Anropar SaveForm.
Producerande system validerar begäran och avslutar formulär.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID | FormIdType | Formulärets ID. | 1..1 |
| SubjectOfCare | SubjectOfCareIdType / (string) | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn). Konsument ska kontrollera attributet ”anonymousForm” för den specifika formulärmallen innan. Om Formulärmallen är definierad för att besvaras anonymt ska konsument inte skicka med SubjectOfCare, annars måste fältet vara med. | 0..1 |
| Actor | ActorType | Aktör som skapar formuläret. Aktören kan vara invånaren/patienten själv, vårdnadshavare som fyller i formuläret åt sitt barn eller vårdpersonal hos vårdgivare som företräder patienten | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.
Endast formulär som har FormStatus ”PENDING_COMPLETE” kan använda tjänsten.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Vid  SaveForm skall producerandesystem validera begäran. Vid valideringsfel meddelas användaren fel via ”resultCode”.

#### Tjänsteinteraktion
SaveFormInteraction

### Tjänstekontrakt CancelForm
Tjänsten används för att avbryta/radera formulär. Tjänsten användas av tjänstekonsument (e-tjänst eller verksamhetssystem).
Pågående (ONGOING, PENDING_COMPLETION) formulär kan närsomhelst raderas på användarens begäran.
Ett avslutat formulär (SaveForm har anropats) behöver inte automatiskt raderas. Anropet skall i detta fall ses som en begäran om makulering.
Lokala verksamhetsregler i producerande system gäller.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| subjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn). Konsument ska kontrollera attributet ”anonymousForm” för den specifika formulärmallen innan. Om Formulärmallen är definierad för att besvaras anonymt ska konsument inte skicka med SubjectOfCare, annars måste fältet vara med. | 0..1 |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Objekt för att signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Vid CancelForm skall producerandesystem validera begäran. Vid valideringsfel meddelas användaren fel via ”resultCode”. Eventuellt felmeddelande presenteras för användaren.

#### Tjänsteinteraktion
CancelFormInteraction

### Tjänstekontrakt CreateFormRequest
Tjänsten används av ett system (Verksamhetssystem) för att skapa en begäran om formulär(formulärbegäran), d.v.s. att en patient skall fylla i t.ex. en hälsodeklaration. Formulärmotorn ansvarar för att skapa ett unikt id (FormID) för formulärbegäran.
Begäran (CreateFormRequest) om formulär instruerar Formulärmotorn (tjänsteproducent) att notifiera e-tjänst för besvarande av formulär.
Tjänsten används för att begära ett formulär från formulärmotorn.
Vårdsystemet skall använda ”FormID” för att identifiera sin patients formulär i sin vårdprocess.
System (e-tjänst för besvara formulär) som prenumererar på händelsen kan t.ex. ge användaren/patienten tillgång till en e-tjänst för att besvara/fylla i formuläret (Hälsodeklarationen).

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formRequests | FormRequestType | Objekt FormRequestType. Objektet innehåller information för att skapa en formulärbegäran. | 1..* |
| formRequests.healthcare_ CareGiver | HsaIdType / (String) | Hsa-id vårdgivare (informationsägare). | 0..1 |
| formRequests.healthcare_ MedUnit | HsaIdType / (String) | Hsa-id medicinskt ansvarig (informationsägare). | 0..1 |
| formRequests.healthcare_Facility_CareUnit | HsaIdType / (String) | Hsa-id vårdenhet (informationsägare). | 1..1 |
| formRequests.healthcare_systemID | HsaIdType / (String) | Hsa-id vårdsystem. | 0..1 |
| formRequests.subjectOfCare | SubjectOfCareType / (String) | Personnummer patient/invånare. / - Utelämnas parameter hanteras formulär som anonymt. | 0..1 |
| formRequests.templateId | TemplateIdType / (String) | Formulärmall id. | 1..1 |
| formRequests.templateVersion | int | Formulärmall version. | 0..1 |
| formRequests.clinicalProcessInterestId | ClinicalProcesInterestIdType / (String) | Hälsoärende id. | 0..1 |
| formRequests.formText | (String) | Formulärtext för formulärbegäran. | 0..1 |
| formRequests.expireDate | String | Datum för att reglera hur länge patient/invånaren kan besvara formulär. | 1..1 |
| formRequests.keepUntil | String | Datum för hur läng formulär kommer lagras innan gallring/arkivering. / Det är personuppgiftsansvariges (PuA) ansvar att gallra formulär i producentsystemet. Tomt indikerar tillsvidare. | 1..1 |
| Svar |  |  |  |
| formRequestResponses | FormRequestResponseType | Objekt FormRequestResponseType. | 0..* |
| formRequestResponses.clinicalProcessInterestId | ClinicalProcesInterestIdType / (String) | Hälsoärende id. | 0..1 |
| formRequestResponses.formId | FormIdType / (String) | Det skapade formulärets unika id, sätts av producenten | 1..1 |
| formRequestResponses.healthcare_Facility_CareUnit | HsaIdType / (String) | Hsa-id vårdenhet (informationsägare). | 1..1 |
| formRequestResponses.subjectOfCare | SubjectOfCareType / (String) | Personnummer patient/invånare. | 0..1 |
| comment | String | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |
| resultCode | ResultCodeEnum | Objekt för att signalera status på operationen (gick det bra/uppstod fel). / Möjliga värden är: / [OK\|ERROR\|INFO] / OK = Lyckat anrop / INFO = Anropet lyckades men det finns information som behöver förmedlas till aktören/invånaren, exempelvis ”medtag legitimation vid besöket”. / ERROR = Transaktionen misslyckades p g a logiskt fel | 1..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Formulärmotorn returnerar respektive formulärbegärans unika id (formID) för det formulär som lyckades skapas.

#### Tjänsteinteraktion
CreateFormRequestInteraction

### Tjänstekontrakt GetFormTemplate
Tjänsten används av ett system(t.ex. Verksamhetssystem) för att hämta en formulärmall från tjänsteproducent (t.ex. Invånartjänsters Formulärmotor). Formulärmallar adresseras med formulär mall id och version.
Tjänsten används för att hämta en malla från formulärmotorn.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility_CareUnit |  | Vårdenhetens hsa-id (ägaren av formulärmall) | 0..1 |
| templateId |  | Mallens id. | 0..1 |
| templateVersion |  | Mallens version. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| FormTemplates |  | Objekt FormTemplateType (Formulärmallar) | 0..* |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.
Utlämnas ”healthcare_facility_CareUnit” är ”templateId” obligatorisk.
Samtliga mallar (templateId) skall returneras.
Utelämnas ”templateId” är ”healthcare_facility_CareUnit” obligatorisk.
Vårdenhetens samtliga mallar skall returneras.
Utelämnas ”templateVersion” skall samtliga versioner returneras (ej arkiverade mallar).

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
GetFormTemplateInteraction

### Tjänstekontrakt SaveFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att spara en formulärmall

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formTemplate |  | Objektet innehåller formulärmallen. | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| Comment |  | Kommentar. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
SaveFormTemplateInteraction

### Tjänstekontrakt DeleteFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att makulera en formulärmall. För att anropet ska accepteras av producent får inga formulärinstanser vara aktiva baserade på mallen samt att mallen har blivit arkiverad.

#### Version
1.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| templateId | String | Unikt id för formulärmallen. | 1..1 |
| templateVersion | integer | Version av formulärmall som ska makuleras | 1..1 |
| healthCareFacilityUnit | HsaiIdType | HSAId för den vårdenhet som är ägare till formulärmallen | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| resultText |  | Kommentar. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
DeleteFormTemplateInteraction
