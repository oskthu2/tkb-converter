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
