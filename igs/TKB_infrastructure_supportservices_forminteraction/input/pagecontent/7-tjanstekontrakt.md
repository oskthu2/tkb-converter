## Tjänstekontrakt

### GetFormTemplates
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

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
Healthcare_Facility_CareUnit[1..1]
PublishedStatus [0..*]
SubjectOfCare [0..1]
TemplateId [0..*]
ClinicalProcessInterestId [0..*]
Response
FormsTemplatesType [0..*]

##### Begäran (Request) och Svar (Response)

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

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet
Personnummer (subjectOfCare).
Hälsoärende (ClinicalProcessInterestId). Formulär relaterade till ett eller flera hälsoärenden.
Formulärtyp (TemplateId).

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Null/tomt indikerar att det inte finns något formulär för angivna sökparametrar.

#### Tjänsteinteraktion
GetFormTempatesInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormTemplatesInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormTemplatesInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [GetFormTemplatesResponder_2.0.xsd](files/schema/GetFormTemplatesResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getformtemplates](StructureDefinition-getformtemplates.html)
* **Logisk modell (request):** [StructureDefinition/getformtemplates-request](StructureDefinition-getformtemplates-request.html)

### CreateForm
Tjänsten används för att skapa och initiera/starta ett formulär.
Tjänsten anropas när användaren vill:
Starta/skapa ett nytt formulär.
En ”CreateForm” kan hämta nödvändiga parametrar från tjänsten GetFormTemplates eller från en alternativ källa som engagemangsindex.

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
Healthcare_Facility_CareUnit [1..1]
SubjectOfCare [0..1]
TemplateId [1..1]
TemplateVersion [0..1]
ClinicalProcessInterestId [0..1]
Response
Form [1..1]

##### Begäran (Request) och Svar (Response)

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

#### Regler

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


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [CreateFormInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CreateFormInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [CreateFormResponder_2.0.xsd](files/schema/CreateFormResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/createform](StructureDefinition-createform.html)
* **Logisk modell (request):** [StructureDefinition/createform-request](StructureDefinition-createform-request.html)

### GetForms
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

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
Healthcare_Facility_CareUnit [0..1]
SubjectOfCare [0..1]
TemplateId [0..*]
ClinicalProcessInterestId [0..*]
Response
Forms [0..*]

##### Begäran (Request) och Svar (Response)

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

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet
Healthcare_Facility_CareUnit
Personnummer (subjectOfCare)
Hälsoärende (ClinicalProcessInterestId)
Formulärtyp (TemplateId)
Flera villkor kan anges.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Formulär som returneras kan ha följande status:
ONGOING = Pågående, frågor har temporärsparats
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade.
COMPLETED =  Formulär kan endast visas i ”läsläge”.

#### Tjänsteinteraktion
GetFormsInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormsInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormsInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [GetFormsResponder_2.0.xsd](files/schema/GetFormsResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getforms](StructureDefinition-getforms.html)
* **Logisk modell (request):** [StructureDefinition/getforms-request](StructureDefinition-getforms-request.html)

### GetForm
Tjänsten används för att hämta ett specifikt formulär. Nödvändiga parametrar kan hämtas från tjänsten GetForms(GetFormsInteraction) alternativt engagemangsindex.
Tjänsten anropas när:
En invånare vill återuppta ett formulär (ONGOING).
En invånare vill se en sammanställning av ifyllt formulär. (PENDING_COMPLETE).
Ett vårdsystem skall hämta ett ifyllt, avslutat formulär (COMPLETED).
FormID kan t.ex. hämtas via
GetFormsInteraction.
Notifiering via Engagemangsindex.

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
FormID [1..1]
SubjectOfCare [0..1]
Response
Form [0..1]

##### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| Form | FormType | Objekt FormResponseType | 0..1 |

#### Regler

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


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [GetFormResponder_2.0.xsd](files/schema/GetFormResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getform](StructureDefinition-getform.html)
* **Logisk modell (request):** [StructureDefinition/getform-request](StructureDefinition-getform-request.html)

### GetFormQuestionPage
Tjänsten används för att hoppa/navigera framåt eller bakåt i ett formulär.
Tjänsten anropas när användaren vill:
Hoppa framåt eller bakåt bland besvarade och sparade frågor.

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
FormID [1..1]
pageNumber [1..1]
Direction [1..1]
subjectOfCare [0..1]
Response
Form [0..1]

##### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| pageNumber |  | Nummer på sidan som navigering utgår ifrån. | 1..1 |
| Direction |  | Kodverk. FORWARD, BACK | 1..1 |
| subjectOfCare |  | Invånarens personnummer. | 0..1 |
| Svar |  |  |  |
| Form |  | Objekt FormType | 0..1 |

#### Regler

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


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormQuestionPageInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormQuestionPageInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [GetFormQuestionPageResponder_2.0.xsd](files/schema/GetFormQuestionPageResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getformquestionpage](StructureDefinition-getformquestionpage.html)
* **Logisk modell (request):** [StructureDefinition/getformquestionpage-request](StructureDefinition-getformquestionpage-request.html)

### SaveFormPage
Tjänsten används för att spara invånarens besvarade frågor. Tjänsten används under pågående formulär session.
E-tjänsten (konsumerande system) sparar invånarens svar med ”PageAnswers”.
Formulärmotor (producerande system) returnerar nästa sida med frågor (nextPage).
Om parametern ”temporarySave” anges kommer formulärmotorn.
Spara formulärvärden som skickas in.
Validering av formulärdata skall ej göras.
Det Form och Page som skickades in skall returneras.
Formulärmotorn skall inte skicka med nästa sida (page).
Vid valideringsfel signaleras fel via ”ResultCode” och ”PageAnswer” returneras. ”AnswerStatus” (i AnswerType) kommer innehålla felindikering samt feltext.

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
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

##### Begäran (Request) och Svar (Response)

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

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Endast formulär som har FormStatus ”ONGOING” kan använda denna tjänst.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Attributet ”LastPage” = sant (Objekt PageType) indikerar att detta är det sista frågesida.
Förklaring:
Status = ”ERROR”
Vid  SaveFormPage skall producerandesystem validera begäran. Vid valideringsfel skall producerande (formulärmotorn) skicka objekt (FormType) tillbaka till konsumerande (e-tjänst) system.   Objektet ”form.currentPage.questionBlock.question.answer.answerStatus” används för att markera fält som innehåller fel.  Producerande system presenterar dessa för användaren för åtgärd.
Status = ”OK”
Vid godkänd begäran returneras validerade frågor/svar. Null ”form” bedöms formuläret färdigifyllt. Detta har föregåtts av ”LastPage” sant i objektet PageType.

#### Tjänsteinteraktion
SaveFormAnswerPageInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [SaveFormPageInteraction_2.0_RIVTABP21.wsdl](files/wsdl/SaveFormPageInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [SaveFormPageResponder_2.0.xsd](files/schema/SaveFormPageResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/saveformpage](StructureDefinition-saveformpage.html)
* **Logisk modell (request):** [StructureDefinition/saveformpage-request](StructureDefinition-saveformpage-request.html)

### SaveForm
Tjänsten används för att indikera/signalera att invånarens formulär är färdigt ifyllt och skall avslutas/stängas.
Exempel spara och avsluta formulär:
Konsumerandesystem(e-tjänst) frågar användaren (i grafiskt gränssnitt) om formuläret skall avslutas.
Konsumerandesystem(e-tjänst) hämtar en sammanställning (formulär, sida, frågor, svar) via tjänst GetForm.
Användaren/patienten granskar och godkänner formuläret.
Konsumerandesystem avslutar formuläret (på invånarens begäran). Anropar SaveForm.
Producerande system validerar begäran och avslutar formulär.

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
FormID [1..1]
SubjectOfCare [0..1]
Response
ResultCode [1..1]
Comment [0..1]

##### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets ID. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.
Endast formulär som har FormStatus ”PENDING_COMPLETE” kan använda tjänsten.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Vid  SaveForm skall producerandesystem validera begäran. Vid valideringsfel meddelas användaren fel via ”resultCode”.

#### Tjänsteinteraktion
SaveFormInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [SaveFormInteraction_2.0_RIVTABP21.wsdl](files/wsdl/SaveFormInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [SaveFormResponder_2.0.xsd](files/schema/SaveFormResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/saveform](StructureDefinition-saveform.html)
* **Logisk modell (request):** [StructureDefinition/saveform-request](StructureDefinition-saveform-request.html)

### CancelForm
Tjänsten används för att avbryta/radera formulär. Tjänsten användas av tjänsteproducent (e-tjänst eller verksamhetssystem).
Pågående (ONGOING, PENDING_COMPLETION) formulär kan raderas på användarens begäran.
Ett avslutat formulär (SaveForm har anropats) behöver inte automatiskt raderas. Anropet skall i detta fall ses som en begäran om radering.
Lokala verksamhetsregler gäller.

#### Frivillighet
Obligatoriskt

#### Version
2.0

#### Tjänstens signatur
Request
FormID [1..1]
subjectOfCare [0..1]
Response
ResultCode [1..1]
Comment [0..1]

##### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| subjectOfCare |  | Starkt autentiserad användares personnummer. / T.ex. 191212121212 (yyyymmddnnnn) / FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Objekt för att signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Vid CancelForm skall producerandesystem validera begäran. Vid valideringsfel meddelas användaren fel via ”resultCode”. Eventuellt felmeddelande presenteras för användaren.

#### Tjänsteinteraktion
CancelFormInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [CancelFormInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CancelFormInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [CancelFormResponder_2.0.xsd](files/schema/CancelFormResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/cancelform](StructureDefinition-cancelform.html)
* **Logisk modell (request):** [StructureDefinition/cancelform-request](StructureDefinition-cancelform-request.html)

### CreateFormRequest
Tjänsten används av ett system (Verksamhetssystem) för att skapa en begäran om formulär(formulärbegäran), d.v.s. att en patient skall fylla i t.ex. en hälsodeklaration. Formulärmotorn ansvarar för att skapa ett unikt id (FormID) för formulärbegäran.
Begäran (CreateFormRequest) om formulär instruerar Formulärmotorn (tjänsteproducent) att skapa en engagemangsindexpost (Update).
Tjänsten används för att begära ett formulär från formulärmotorn.
Formulärmotorn tar emot begäran och skapar en post i engagemangsindex (enligt specifikation avsnitt 2.1). Aktiviteten är nödvändig för att notifieringsflödet skall fungera.
Vårdsystemet skall använda ”FormID” för att identifiera sin patients formulär i sin vårdprocess.
System(Mina vårdkontakter) som prenumererar(Engagemangsindex) på händelsen kan t.ex. ge användaren/patienten tillgång till en e-tjänst för att besvara/fylla i formuläret (Hälsodeklarationen).

#### Frivillighet
Frivillig

#### Version
2.0

#### Tjänstens signatur
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

##### Begäran (Request) och Svar (Response)

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

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Formulärmotorn returnerar respektive formulärbegärans unika id (formID) för det formulär som lyckades skapas.

#### Tjänsteinteraktion
CreateFormRequestInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [CreateFormRequestInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CreateFormRequestInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [CreateFormRequestResponder_2.0.xsd](files/schema/CreateFormRequestResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/createformrequest](StructureDefinition-createformrequest.html)
* **Logisk modell (request):** [StructureDefinition/createformrequest-request](StructureDefinition-createformrequest-request.html)

### GetFormTemplate
Tjänsten används av ett system(t.ex. Verksamhetssystem) för att hämta en formulärmall från tjänsteproducent (t.ex. Invånartjänsters Formulärmotor). Formulärmallar adresseras med formulär mall id och version.
Tjänsten används för att hämta en malla från formulärmotorn.

#### Frivillighet
Frivillig

#### Version
2.0

#### Tjänstens signatur
Request
healthcare_facility_CareUnit [0..1]
templateId [0..1]
templateVersion [0..1]
Response
FormTemplates [0..*]
FormTemplateType

##### Begäran (Request) och Svar (Response)

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

#### Regler

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


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormTemplateInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormTemplateInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [GetFormTemplateResponder_2.0.xsd](files/schema/GetFormTemplateResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getformtemplate](StructureDefinition-getformtemplate.html)
* **Logisk modell (request):** [StructureDefinition/getformtemplate-request](StructureDefinition-getformtemplate-request.html)

### SaveFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att spara en

#### Frivillighet
Frivillig

#### Version
2.0

#### Tjänstens signatur
Request
formTemplate [1..1]
Response
FormTemplates [0..*]
FormTemplateType

##### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formTemplate |  | Objektet innehåller formulärmallen. | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| Comment |  | Kommentar. | 0..1 |

#### Regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
SaveFormTemplateInteraction


#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [SaveFormTemplateInteraction_2.0_RIVTABP21.wsdl](files/wsdl/SaveFormTemplateInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [infrastructure_supportservices_forminteraction_2.0.xsd](files/schema/infrastructure_supportservices_forminteraction_2.0.xsd) | Domänschema (delat) |
| [SaveFormTemplateResponder_2.0.xsd](files/schema/SaveFormTemplateResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/saveformtemplate](StructureDefinition-saveformtemplate.html)
* **Logisk modell (request):** [StructureDefinition/saveformtemplate-request](StructureDefinition-saveformtemplate-request.html)
