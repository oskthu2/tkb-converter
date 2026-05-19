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

