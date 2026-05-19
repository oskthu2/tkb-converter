## Tjänstekontrakt

### GetFormTemplates
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
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3 | 1..1 |
| PublishedStatus |  | Indikerar vilken status en mall skall ha. | 0..* |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). FormTemplate attributet "anonymousForm" styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt. | 0..1 |
| TemplateIds |  | Typ av formulärmall. Kodverk. Om denna inte anges skall formulärtjänsten som default returnera ALLA tillgängliga formulärmallar för medborgaren. | 0..* |
| ClinicalProcessInterestIds |  | Hälsoärenden. | 0..* |
| Svar |  |  |  |
| FormTemplate |  | Objekt FormTemplateType. | 0..* |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan begära filtrerade svar med följande parametrar.
Filtreringsprioritet:
Personnummer (subjectOfCare).
Hälsoärenden (ClinicalProcessInterestIds). Formulär relaterade till ett eller flera hälsoärenden.
Formulärtyp (TemplateIds).

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.
Null/tomt indikerar att det inte finns något formulär för angivna sökparametrar.

#### Tjänsteinteraktion
GetFormTemplatesInteraction

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormTemplatesInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormTemplatesInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetFormTemplatesResponder_2.0.xsd](files/schema/GetFormTemplatesResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getformtemplates](StructureDefinition-getformtemplates.html)
* **Logisk modell (request):** [StructureDefinition/getformtemplates-request](StructureDefinition-getformtemplates-request.html)

---

### CreateForm
Tjänsten används för att skapa och initiera/starta ett formulär.
Tjänsten anropas när användaren vill:
Starta/skapa ett nytt formulär.
En "CreateForm" kan hämta nödvändiga parametrar från tjänsten GetFormTemplates eller från en alternativ källa.

#### Version
2.1

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Healthcare_Facility_CareUnit | HsaIdType | Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3 | 1..1 |
| SubjectOfCare | SubjectOfCareType | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). Konsument ska kontrollera attributet "anonymousForm" för den specifika formulärmallen innan. Om Formulärmallen är definierad för att besvaras anonymt ska konsument inte skicka med SubjectOfCare, annars måste fältet vara med. | 0..1 |
| TemplateId | TemplateIdType | Mallid. | 1..1 |
| TemplateVersion | Integer | Mallens version. Utelämnas denna parameter skall producerande system använda den senaste versionen. | 0..1 |
| ClinicalProcessInterestId | ClinicalProcessInterestIdType (string) | Hälsoärende id. Parameter indikerar att formuläret ingår i ett Hälsoärende. | 0..1 |
| Actor | ActorType | Aktör som skapar formuläret. Aktören kan vara invånaren/patienten själv, vårdnadshavare som fyller i formuläret åt sitt barn eller vårdpersonal hos vårdgivare som företräder patienten | 0..1 |
| Svar |  |  |  |
| Form | FormType | Objekt CreateFormResponseType | 1..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan. Anropande system kan använda följande parametrar.
Filtreringsprioritet:
Personnummer (subjectOfCare) — Personnummer indikerar starkt autentiserad invånare. Tomt fält indikerar anonym användare.
Hälsoärende (ClinicalProcessInterestId) — Indikerar att formuläret skall kopplas till ett hälsoärende.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran. Formulärets (Form, FormTemplate) sida med frågor (Page) skall av konsumerande system (e-tjänst) presenteras för invånaren utan uppdelning.
Vid komplexa formulär med många frågor bör frågor delas upp i flera sidor (Page).

#### Tjänsteinteraktion
CreateFormInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CreateFormInteraction_2.1_RIVTABP21.wsdl](files/wsdl/CreateFormInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [CreateFormResponder_2.1.xsd](files/schema/CreateFormResponder_2.1.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/createform](StructureDefinition-createform.html)
* **Logisk modell (request):** [StructureDefinition/createform-request](StructureDefinition-createform-request.html)

---

### GetForms
Tjänsten används för att lista alla pågående/avslutade formulär.
Tjänsten returnerar formulär baserat på olika parametrar.
Vårdenhets hsa-id, Personnummer, Formulärtyp och Hälsoärende.
Formulär kan ha följande status:
ONGOING = Formulär skapat/formulärbegäran skapad. Pågående, frågor har temporärsparats.
PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade.
COMPLETED = Avslutad.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Healthcare_Facility_CareUnit |  | Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3. Konsument ska säkerställa att konsument endast anropar med HSAId:n som motsvarar organisationer som konsument har avtal med (PuB-avtal). | 0..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). | 0..1 |
| TemplateIds |  | Ett unikt id för en formulärtyp/formulärmall. | 0..* |
| ClinicalProcessInterestIds |  | Hälsoärende ID | 0..* |
| Svar |  |  |  |
| Formulär (Form) | FormsType | Objekt GetFormsResponse | 0..* |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran. Filtreringsprioritet: Healthcare_Facility_CareUnit, Personnummer (subjectOfCare), Hälsoärende (ClinicalProcessInterestIds), Formulärtyp (TemplateIds). Flera villkor kan anges.

##### Svar
Formulär som returneras kan ha status: ONGOING, PENDING_COMPLETION eller COMPLETED.

#### Tjänsteinteraktion
GetFormsInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetFormsInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormsInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetFormsResponder_2.0.xsd](files/schema/GetFormsResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getforms](StructureDefinition-getforms.html)
* **Logisk modell (request):** [StructureDefinition/getforms-request](StructureDefinition-getforms-request.html)

---

### GetForm
Tjänsten används för att hämta ett specifikt formulär. Nödvändiga parametrar kan hämtas från tjänsten GetForms (GetFormsInteraction) alternativt notifiering.
Tjänsten anropas när:
En invånare vill återuppta ett formulär (ONGOING).
En invånare vill se en sammanställning av ifyllt formulär (PENDING_COMPLETE).
Ett vårdsystem skall hämta ett ifyllt, avslutat formulär (COMPLETED).

#### Version
2.1

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Ett unikt id (GUID) för ett formulär. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). | 0..1 |
| Svar |  |  |  |
| Form | FormType | Objekt FormResponseType | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran. Om formuläret är uppdelat i sidor (Page) skall det sista ifyllda sidan i sekvensen returneras.

##### Svar
COMPLETED = Avslutat. Formuläret är besvarat och avslutat av invånaren. Kan endast visas i "läsläge".
ONGOING = Pågående. Producenten skall returnera det sista/senaste Page i sekvensen (currentPage).
PENDING_COMPLETION = Invånaren har besvarat formulärets samtliga frågor. Formuläret byter status till COMPLETED via tjänsten SaveForm.
Om formulär saknas returneras ett SOAP exception.

#### Tjänsteinteraktion
GetFormInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetFormInteraction_2.1_RIVTABP21.wsdl](files/wsdl/GetFormInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetFormResponder_2.1.xsd](files/schema/GetFormResponder_2.1.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getform](StructureDefinition-getform.html)
* **Logisk modell (request):** [StructureDefinition/getform-request](StructureDefinition-getform-request.html)

---

### GetFormQuestionPage
Tjänsten används för att hoppa/navigera framåt eller bakåt i ett formulär.
Tjänsten anropas när användaren vill hoppa framåt eller bakåt bland besvarade och sparade frågor.

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
Tjänsteproducenten validerar begäran. Konsumenten kan endast hoppa till en gruppering (FormType.currentPage) med sparade frågor.
Direction "BACK" är inte tillåtet om objektet "PageNumber" är 1.
Direction "FORWARD" är inte tillåtet om objektets LastPage (PageType) är sant (true).
Anges "PageNumber = 0" och "direction = FORWARD" för att gå till första sidan.
Anges "PageNumber = 0" och "direction = BACK" för att gå till sista sidan.
Vid ovanstående fel genereras ett exception.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
GetFormQuestionPageInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetFormQuestionPageInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetFormQuestionPageInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetFormQuestionPageResponder_2.0.xsd](files/schema/GetFormQuestionPageResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getformquestionpage](StructureDefinition-getformquestionpage.html)
* **Logisk modell (request):** [StructureDefinition/getformquestionpage-request](StructureDefinition-getformquestionpage-request.html)
* **ValueSet (Direction):** [ValueSet/questionnavigationdirection-vs](ValueSet-questionnavigationdirection-vs.html)

---

### SaveFormPage
Tjänsten används för att spara invånarens besvarade frågor. Tjänsten används under pågående formulärsession.
E-tjänsten (konsumerande system) skickar invånarens svar med "PageAnswers". Formulärmotor (producerande system) returnerar nästa sida med frågor.
Om parametern "temporarySave" anges kommer formulärmotorn spara formulärvärden som skickas in (utan validering) och returnera samma Form och Page.

#### Version
2.1

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| PageAnswers |  | Objekt PageAnswerType. | 1..1 |
| SubjectOfCare |  | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). | 0..1 |
| temporarySave |  | Parameter för att indikera temporärsparning. True = temporär, False = normal hantering, Utelämnad = normal hantering. | 0..1 |
| Actor | ActorType | Aktör som skapar formuläret. Aktören kan vara invånaren/patienten själv, vårdnadshavare eller vårdpersonal. | 0..1 |
| Svar |  |  |  |
| Form |  | Objekt FormType. | 0..1 |
| comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |
| ResultCode |  | Objekt StatusType. | 1..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran. Endast formulär som har FormStatus "ONGOING" kan använda denna tjänst.

##### Svar
Attributet "LastPage" = sant (Objekt PageType) indikerar att detta är det sista frågesida.
Status = "ERROR": Vid valideringsfel skall producerande system (formulärmotorn) skicka objekt (FormType) tillbaka och markera felaktiga fält via AnswerStatusType.
Status = "OK": Vid godkänd begäran returneras validerade frågor/svar. Null "form" bedöms formuläret färdigifyllt.

#### Tjänsteinteraktion
SaveFormAnswerPageInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [SaveFormPageInteraction_2.1_RIVTABP21.wsdl](files/wsdl/SaveFormPageInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [SaveFormPageResponder_2.1.xsd](files/schema/SaveFormPageResponder_2.1.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/saveformpage](StructureDefinition-saveformpage.html)
* **Logisk modell (request):** [StructureDefinition/saveformpage-request](StructureDefinition-saveformpage-request.html)

---

### SaveForm
Tjänsten används för att indikera/signalera att invånarens formulär är färdigt ifyllt och skall avslutas/stängas.
Konsumerandesystem (e-tjänst) hämtar en sammanställning via GetForm, användaren/patienten granskar och godkänner, sedan anropas SaveForm för att avsluta formuläret.

#### Version
2.1

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID | FormIdType | Formulärets ID. | 1..1 |
| SubjectOfCare | SubjectOfCareIdType (string) | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). | 0..1 |
| Actor | ActorType | Aktör som skapar formuläret. Aktören kan vara invånaren/patienten själv, vårdnadshavare eller vårdpersonal. | 0..1 |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran. Endast formulär som har FormStatus "PENDING_COMPLETE" kan använda tjänsten.

##### Svar
Vid valideringsfel meddelas användaren fel via "resultCode".

#### Tjänsteinteraktion
SaveFormInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [SaveFormInteraction_2.1_RIVTABP21.wsdl](files/wsdl/SaveFormInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [SaveFormResponder_2.1.xsd](files/schema/SaveFormResponder_2.1.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/saveform](StructureDefinition-saveform.html)
* **Logisk modell (request):** [StructureDefinition/saveform-request](StructureDefinition-saveform-request.html)
* **CodeSystem (ResultCode):** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet (ResultCode):** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

---

### CancelForm
Tjänsten används för att avbryta/radera formulär. Tjänsten används av tjänstekonsument (e-tjänst eller verksamhetssystem).
Pågående (ONGOING, PENDING_COMPLETION) formulär kan närsomhelst raderas på användarens begäran.
Ett avslutat formulär (SaveForm har anropats) behöver inte automatiskt raderas. Anropet skall i detta fall ses som en begäran om makulering. Lokala verksamhetsregler i producerande system gäller.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| FormID |  | Formulärets unika id. | 1..1 |
| subjectOfCare |  | Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). | 0..1 |
| Svar |  |  |  |
| ResultCode | ResultCodeEnumType | Objekt för att signalera status på operationen (gick det bra/uppstod fel). | 1..1 |
| Comment |  | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran.

##### Svar
Vid valideringsfel meddelas användaren fel via "resultCode". Eventuellt felmeddelande presenteras för användaren.

#### Tjänsteinteraktion
CancelFormInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CancelFormInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CancelFormInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [CancelFormResponder_2.0.xsd](files/schema/CancelFormResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/cancelform](StructureDefinition-cancelform.html)
* **Logisk modell (request):** [StructureDefinition/cancelform-request](StructureDefinition-cancelform-request.html)

---

### CreateFormRequest
Tjänsten används av ett system (Verksamhetssystem) för att skapa en begäran om formulär (formulärbegäran), d.v.s. att en patient skall fylla i t.ex. en hälsodeklaration. Formulärmotorn ansvarar för att skapa ett unikt id (FormID) för formulärbegäran.
Begäran (CreateFormRequest) om formulär instruerar Formulärmotorn (tjänsteproducent) att notifiera e-tjänst för besvarande av formulär.

#### Version
2.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formRequests | FormRequestType | Objekt FormRequestType. Innehåller information för att skapa en formulärbegäran. | 1..* |
| formRequests.healthcare_CareGiver | HsaIdType (String) | Hsa-id vårdgivare (informationsägare). | 0..1 |
| formRequests.healthcare_MedUnit | HsaIdType (String) | Hsa-id medicinskt ansvarig (informationsägare). | 0..1 |
| formRequests.healthcare_Facility_CareUnit | HsaIdType (String) | Hsa-id vårdenhet (informationsägare). | 1..1 |
| formRequests.healthcare_systemID | HsaIdType (String) | Hsa-id vårdsystem. | 0..1 |
| formRequests.subjectOfCare | SubjectOfCareType (String) | Personnummer patient/invånare. Utelämnas parameter hanteras formulär som anonymt. | 0..1 |
| formRequests.templateId | TemplateIdType (String) | Formulärmall id. | 1..1 |
| formRequests.templateVersion | int | Formulärmall version. | 0..1 |
| formRequests.clinicalProcessInterestId | ClinicalProcesInterestIdType (String) | Hälsoärende id. | 0..1 |
| formRequests.formText | (String) | Formulärtext för formulärbegäran. | 0..1 |
| formRequests.expireDate | String | Datum för att reglera hur länge patient/invånaren kan besvara formulär. | 1..1 |
| formRequests.keepUntil | String | Datum för hur länge formulär kommer lagras innan gallring/arkivering. Tomt indikerar tillsvidare. | 1..1 |
| Svar |  |  |  |
| formRequestResponses | FormRequestResponseType | Objekt FormRequestResponseType. | 0..* |
| formRequestResponses.clinicalProcessInterestId | ClinicalProcesInterestIdType (String) | Hälsoärende id. | 0..1 |
| formRequestResponses.formId | FormIdType (String) | Det skapade formulärets unika id, sätts av producenten. | 1..1 |
| formRequestResponses.healthcare_Facility_CareUnit | HsaIdType (String) | Hsa-id vårdenhet (informationsägare). | 1..1 |
| formRequestResponses.subjectOfCare | SubjectOfCareType (String) | Personnummer patient/invånare. | 0..1 |
| comment | String | Attribut för felsignalering. Skall kunna visas för slutanvändaren. | 0..1 |
| resultCode | ResultCodeEnum | Möjliga värden: OK (lyckat anrop), INFO (anropet lyckades men info behöver förmedlas), ERROR (transaktion misslyckades p g a logiskt fel). | 1..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran. Formulärmotorn returnerar respektive formulärbegärans unika id (formID) för det formulär som lyckades skapas.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
CreateFormRequestInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CreateFormRequestInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CreateFormRequestInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [CreateFormRequestResponder_2.0.xsd](files/schema/CreateFormRequestResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/createformrequest](StructureDefinition-createformrequest.html)
* **Logisk modell (request):** [StructureDefinition/createformrequest-request](StructureDefinition-createformrequest-request.html)

---

### GetFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att hämta en formulärmall från tjänsteproducent (t.ex. Invånartjänsters Formulärmotor). Formulärmallar adresseras med formulär mall id och version.

#### Version
2.1

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility_CareUnit |  | Vårdenhetens hsa-id (ägaren av formulärmall) | 0..1 |
| templateId |  | Mallens id. | 0..1 |
| templateVersion |  | Mallens version. | 0..1 |
| Svar |  |  |  |
| FormTemplates |  | Objekt FormTemplateType (Formulärmallar) | 0..* |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran.
Utelämnas "healthcare_facility_CareUnit" är "templateId" obligatorisk — samtliga mallar (templateId) skall returneras.
Utelämnas "templateId" är "healthcare_facility_CareUnit" obligatorisk — vårdenhetens samtliga mallar skall returneras.
Utelämnas "templateVersion" skall samtliga versioner returneras (ej arkiverade mallar).

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
GetFormTemplateInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetFormTemplateInteraction_2.1_RIVTABP21.wsdl](files/wsdl/GetFormTemplateInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetFormTemplateResponder_2.1.xsd](files/schema/GetFormTemplateResponder_2.1.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getformtemplate](StructureDefinition-getformtemplate.html)
* **Logisk modell (request):** [StructureDefinition/getformtemplate-request](StructureDefinition-getformtemplate-request.html)

---

### SaveFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att spara en formulärmall.

#### Version
2.1

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formTemplate |  | Objektet innehåller formulärmallen. | 1..1 |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| Comment |  | Kommentar. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
SaveFormTemplateInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [SaveFormTemplateInteraction_2.1_RIVTABP21.wsdl](files/wsdl/SaveFormTemplateInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [SaveFormTemplateResponder_2.1.xsd](files/schema/SaveFormTemplateResponder_2.1.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/saveformtemplate](StructureDefinition-saveformtemplate.html)
* **Logisk modell (request):** [StructureDefinition/saveformtemplate-request](StructureDefinition-saveformtemplate-request.html)

---

### DeleteFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att makulera en formulärmall. För att anropet ska accepteras av producent får inga formulärinstanser vara aktiva baserade på mallen samt att mallen har blivit arkiverad.

#### Version
1.0

#### Fältregler

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| templateId | String | Unikt id för formulärmallen. | 1..1 |
| templateVersion | integer | Version av formulärmall som ska makuleras | 1..1 |
| healthCareFacilityUnit | HsaIdType | HSAId för den vårdenhet som är ägare till formulärmallen | 1..1 |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| resultText |  | Kommentar. | 0..1 |

#### Övriga regler

##### Begäran
Tjänsteproducenten validerar begäran.

##### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

#### Tjänsteinteraktion
DeleteFormTemplateInteraction

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteFormTemplateInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeleteFormTemplateInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [DeleteFormTemplateResponder_1.0.xsd](files/schema/DeleteFormTemplateResponder_1.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_eservicesupply_forminteraction_2.1.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1.xsd) | Domänschema (delat) |
| [infrastructure_eservicesupply_forminteraction_2.1_ext.xsd](files/schema/infrastructure_eservicesupply_forminteraction_2.1_ext.xsd) | Domänschema utökningar (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deleteformtemplate](StructureDefinition-deleteformtemplate.html)
* **Logisk modell (request):** [StructureDefinition/deleteformtemplate-request](StructureDefinition-deleteformtemplate-request.html)
