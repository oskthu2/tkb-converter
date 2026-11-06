## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

| Informationsklass | Innehåller information om |
| :--- | :--- |
| Mall<br/>(FormTemplate) | Mall innehåller formulärinformation och dess frågor och svarsalternativ. |
| Mall info<br/>(FormTemplateInfo) | Mall info innehåller ett urval av mallens information. |
| Formulär<br/>(Form) | Formulär innehåller grundläggande information och egenskaper kopplade till ett skapat formulär. |
| Frågesida<br/>(Page) | En sida innehåller en till många block. En(1) är ett sätt att gruppera ett formulär. |
| Frågegruppering/block<br/>(QuestionBlock) | Frågegruppering/Frågeblocket innehåller en gruppering av frågor som skall presenteras för invånaren/användaren. |
| Mall för frågegruppering/block<br/>(TemplateQuestionBlock) | Mall för Frågegruppering/Frågeblocket innehåller en gruppering av frågor som skall presenteras för invånaren/användaren. |
| Malldelning<br/>(TemplatePropagate) | Innehåller information om mallen delas. |
| Frågor<br/>(Question) | Innehåller detaljerad information om en fråga. |
| Mall för frågor<br/>(TemplateQuestion) | Mall för en fråga. |
| Svarsalternativ<br/>(AnswerAlternative) | Innehåller en frågas svarsalternativ. |
| Svar<br/>(Answer) | Innehåller svaret på en fråga. |
| Status<br/>(answerStatus) | Statusobjekt. Innehåller statusinformation kopplat till en operation. |
| Kode<br/>(code) | Objekt för kodverk och kodvärde. Används för att konfigurera specifikt kodverk+kod (T.ex. Beskriva typ av formulär AUDIT-C, PHQ-9, ASRS-Screening, EQ-5D, CGI-S, MINI. Eller fältvärden definierade med SNOMED-CT) |
| Frågerelation<br/>(QuestionSuperior) | Objekt för att beskriva en relation till en fråga eller svarsalternativ. |
| Valideringsobjekt<br/>(ValidationEvent) | Objekt för att beskriva valideringsevent och anpassad text för detta. |
| Media<br/>(media) | Objekt för att beskriva media. |
| GridConfig<br/>(gridconfig) | Objekt för att definiera en ”grid” eller matris/tabell. |
| GridValue<br/>gridvalue | Objekt för att definiera var en fråga skall placeras i ”grid”. |

### Klasser och attribut V-MIM

#### Klass Formulär (Form)
Klassen Formulär innehåller grundläggande information samt formulärets egenskaper.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar | i VTIM |  |  |
| Enhets-id vårdgivare (healthcare_ CareGiver) | Enhets-id vårdgivare (healthcare_ CareGiver) | Ansvarig vårdgivare (huvudman).<br/>T.ex. Landsting | II | 0..1 | Hsa-id |  |  |  |  |
| Enhets-id ansvarig<br/>(healthcare_ MedUnit) | Enhets-id ansvarig<br/>(healthcare_ MedUnit) | Medicinsk ansvarig klinik/vårdcentral eller motsvarande.<br/>T.ex. Medicinklinik | II | 0..1 | Hsa-id |  |  |  |  |
| Enhets-id<br/>(healthcare_facility_CareUnit) | Enhets-id<br/>(healthcare_facility_CareUnit) | Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning.<br/>T.ex. Den avdelning som äger formuläret: se2321000016-1hz3 | II | 1 | Hsa-id |  |  |  |  |
| Enhetsnamn<br/>(healthcare_facility_CareUnitName) | Enhetsnamn<br/>(healthcare_facility_CareUnitName) | Vårdenhetens namn.<br/>T.ex. Testvårdcentral A, Medicinmottagningen USÖ | TXT | 1 |  |  |  |  |  |
| (healthcare_systemID) | (healthcare_systemID) | Id för att identifiera mottagande system.<br/>T.ex. Ett hsa-id uttaget för en instans av ett journalsystem. | II | 0..1 | Hsa-id |  |  |  |  |
| Hälsoärende-id<br/>(ClinicalProcessInterestId) | Hälsoärende-id<br/>(ClinicalProcessInterestId) | HSA-id för framställarens enhet/process + unik identifierare.<br/>Globalt/nationellt hälsoärende ID. Hälsoärende är ett begrepp för det som håller samman information i en kärnprocess för en vård- och omsorgstagare, tvärs över organisatoriska enhetsgränser. | II | 0..1 | ID |  |  |  |  |
| Status<br/>(FormStatus) | Status<br/>(FormStatus) | Formulärets status. Ett avslutat besvarat formulär kan visas i ”läs läge” för patienten. | KTOV | 1 | KV Form Status<br/>COMPLETED = Avslutad<br/>ONGOING = Pågående, frågor har temporärsparats<br/>PENDING_COMPLETION = Pågående, frågor har temporärsparats. Alla frågor är besvarade. |  |  |  |  |
| (FormText) | (FormText) | Unik text för Formulär. Använd t.ex. tjänsten "CreateFormRequest" för att bifoga en unik text för formuläret. T.ex. "Hälsoundersökning inför besök X". | TXT | 0..1 |  |  |  |  |  |
| (FormID) | (FormID) | Formulärets unika ID (Sätts av formulärmotorn id/GUID).<br/>T.ex. MHV1 har FormID = 3B2DF0C0-BC22-11DE-823D-00155D316606<br/>Måste genereras slumpmässigt för att vara unikt. | II | 1 |  | Globally unique identifier (GUID) |  |  |  |
| Patient id<br/>(SubjectOfCare) | Patient id<br/>(SubjectOfCare) | Patienten formuläret avser. Personnummer format yyyymmddnnnn.<br/>T.ex. 191212121212 | II | 1 |  |  |  |  |  |
| (ExpireDate) | (ExpireDate) | Formulärets giltighetstid. Indikerar att formuläret kan fyllas i fram till om med angivet datum.<br/>T.ex. 20121101 | TXT | 0..1 | ISO 8601:2004 ÅÅÅÅMMDD<br/>(yyyyMMdd) |  |  |  |  |
| (CreatedDateTime) | (CreatedDateTime) | Datum när användaren/patienten skapade formuläret.<br/>T.ex. 2012-11-01 kl 13:05:00  20121101T130500 | TXT | 1 | ISO 8601:2004 ÅÅÅÅMMDDTttmmss<br/>(yyyyMMddThhmmss) |  |  |  |  |
| (LastSavedDate) | (LastSavedDate) | Datum för senaste temporärsparning (användare/patientens).<br/>T.ex. 2012-11-01 kl 13:05:00  20121101T130500 | TXT | 0..1 | ISO 8601:2004<br/>ÅÅÅÅMMDDTttmmss<br/>(yyyyMMddThhmmss) |  |  |  |  |
| (KeepUntil) | (KeepUntil) | Datum för hur länge källsystemet kommer lagra formuläret. Tomt indikerar tillsvidare. | TXT | 0..1 | ISO 8601:2004<br/>ÅÅÅÅMMDD |  |  |  |  |
| Formulärmall/id<br/>(FormTemplate) | Formulärmall/id<br/>(FormTemplate) | Koppling till klass för formulärmall. | II | 1 | Länk till objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett formulär(Form) tillhör formulärmall (FormTemplate) | Ett formulär(Form) tillhör formulärmall (FormTemplate) | Ett formulär(Form) tillhör formulärmall (FormTemplate) |  |  |  |  |  |  |  |

#### Klass Formulärmall (FormTemplateInfo)
Objektet innehåller översiktlig mallinformation för ett formulär.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (AnonymousForm) | (AnonymousForm) | Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret.<br/>Värden:<br/>True = Tillåter anonym användning. "SubjectOfCare" får inte användas.<br/>False = Tillåter inte anonym användning. "SubjectOfCare" är obligatorisk attribut.<br/>T.ex. Om ”true” blir subjectOfcare obligatoriskt. | S/F |  | True = Anonymt formulär<br/>False = Ej anonymt formulär |  |  |  |  |
| (Category) | (Category) | Formulärets kategori<br/>T.ex. Anmälan, registrering, hälsodeklaration | KTOV | 1 | KV Formulärkategori | Definierar formulärets typ |  |  |  |
| Code/id<br/>(Code) | Code/id<br/>(Code) | Koppling till klass för code. Används för att beskriva t.ex. formulärinstrument. | II | 0..1 | Länk till objekt |  |  |  |  |
| (FormCompleteText) | (FormCompleteText) | Text som visas för invånaren när formuläret är besvarat. | TXT | 0..1 |  |  |  |  |  |
| (PublishStatus) | (PublishStatus) | Mallen status. | KTOV | 1 | KV Publicerings status |  |  |  |  |
| (TemplateId) | (TemplateId) | Typ av formulär. Kodverk för standardiserade id för formulärtyper.<br/>T.ex. Mödrahälsovårdsjournal 1 - MHV1. | KTOV | 1 | KV Malltyp. | Standard saknas |  |  |  |
| (templateVersion) | (templateVersion) | Mallens version | VÄ | 1 |  |  |  |  |  |
| Obligatoriskt<br/>(Mandatory) | Obligatoriskt<br/>(Mandatory) | Indikerar om formuläret är obligatoriskt att fylla i av användaren.<br/>T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. | S/F | 1 | True = obligatoriskt<br/>False = Frivilligt |  |  |  |  |
| Språk (Language) | Språk (Language) | Beskriver vilket språk som används i formuläret.<br/>T.ex. s eller en. | KTOV | 1 | KV Språk. | Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005 |  |  |  |
| Rubrik<br/>(FormTitle) | Rubrik<br/>(FormTitle) | Mallens/formulärets rubrik. Används på formulärets introduktionssida. | TXT | 0..1 |  |  |  |  |  |
| Mallens namn<br/>(FormName) | Mallens namn<br/>(FormName) | Mallens namn.<br/>T.ex. Hälsodeklaration Mödravård | TXT | 1 |  |  |  |  |  |
| Formulärbeskrivning (Description) | Formulärbeskrivning (Description) | Formulärets beskrivning och instruktioner.<br/>T.ex. Formuläret skall besvaras innan du besöker mottagningen. | TXT | 1..0 |  |  |  |  |  |
| Informations URL<br/>(InformationURL) | Informations URL<br/>(InformationURL) | URL till ytterligare/relevant information. | URL | 0..1 |  | Länk till publik information utan krav på autentisering. |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Villkor<br/>(Term) | Villkor<br/>(Term) | Villkor kopplade till formuläret.<br/>T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras. | TXT | 1 |  |  |  |  |  |
| (MaxNumberOfPages) | (MaxNumberOfPages) | Beskriver hur många ”sidor” formuläret maximalt kan innehåller.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfPages) | (MinNumberOfPages) | Beskriver hur många ”sidor” formuläret minst kan innehålla.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MaxNumberOfQuestion) | (MaxNumberOfQuestion) | Beskriver hur många frågor formuläret maximalt kan innehåller.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfQuestion) | (MinNumberOfQuestion) | Beskriver hur många frågor formuläret som minst kan innehåller. | VÄ | 1 |  |  |  |  |  |
| (media/id) | (media/id) | Mediaobjekt som skall visas på formulärets introduktionssida. | II | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärmall kan ha ett media objekt. | En formulärmall kan ha ett media objekt. | En formulärmall kan ha ett media objekt. |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
Klass Formulärmall (FormTemplate)
Klassen Formulär innehåller grundläggande information om formuläret.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (anonymousForm) | (anonymousForm) | Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret.<br/>Värden:<br/>True = Tillåter anonym användning. "SubjectOfCare" får inte användas.<br/>False = Tillåter inte anonym användning. "SubjectOfCare" är obligatorisk attribut.<br/>T.ex. Om ”true” blir subjectOfcare obligatoriskt. | S/F |  | True = Anonymt formulär<br/>False = Ej anonymt formulär |  |  |  |  |
| (Category) | (Category) | Formulärets kategori<br/>T.ex. Anmälan, registrering, hälsodeklaration | KTOV | 1 | KV Formulärkategori | Definierar formulärets typ |  |  |  |
| (PublishStatus) | (PublishStatus) | Mallen status. | KTOV | 1 | KV Publicerings status |  |  |  |  |
| (TemplateId) | (TemplateId) | Typ av formulär. Kodverk för standardiserade id för formulärtyper.<br/>T.ex. Mödrahälsovårdsjournal 1 - MHV1. | KTOV | 1 | KV Malltyp. | Standard saknas |  |  |  |
| Mall delning/id<br/>(templatePropagate) | Mall delning/id<br/>(templatePropagate) | Indikerar om mallen skall delas (standardiserad). | II | 0..* | Länk till objekt |  |  |  |  |
| (templateVersion) | (templateVersion) | Mallens version | VÄ | 1 |  |  |  |  |  |
| Obligatoriskt<br/>(Mandatory) | Obligatoriskt<br/>(Mandatory) | Indikerar om formuläret är obligatoriskt att fylla i av användaren.<br/>T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. | S/F | 1 | True = obligatoriskt<br/>False = Frivilligt |  |  |  |  |
| Språk (Language) | Språk (Language) | Beskriver vilket språk som används i formuläret.<br/>T.ex. s eller en. | KTOV | 1 |  |  |  |  |  |
| Rubrik<br/>(FormTitle) | Rubrik<br/>(FormTitle) | Mallens/formulärets rubrik. Används på formulärets introduktionssida. | TXT | 0..1 |  |  |  |  |  |
| Mallens namn<br/>(FormName) | Mallens namn<br/>(FormName) | Mallens namn.<br/>T.ex. Hälsodeklaration Mödravård | TXT | 1 |  |  |  |  |  |
| Formulärbeskrivning (Description) | Formulärbeskrivning (Description) | Formulärets beskrivning och instruktioner.<br/>T.ex. Formuläret skall besvaras innan du besöker mottagningen. | TXT | 1..0 |  |  |  |  |  |
| Formulärbeskrivning för personal (DescriptionInternal) | Formulärbeskrivning för personal (DescriptionInternal) | Formulärets beskrivning och instruktioner. Avsedd för personal. | TXT | 1..0 |  |  |  |  |  |
| (FormCompleteText) | (FormCompleteText) | Informationstext vid avslutat och sparat formulär. |  |  |  |  |  |  |  |
| Informations URL<br/>(InformationURL) | Informations URL<br/>(InformationURL) | URL till ytterligare/relevant information. | URL | 0..1 |  | Länk till publik information utan krav på autentisering. |  |  |  |
| Villkor<br/>(Term) | Villkor<br/>(Term) | Villkor kopplade till formuläret.<br/>T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras. | TXT | 1 |  |  |  |  |  |
| (MaxNumberOfPages) | (MaxNumberOfPages) | Beskriver hur många ”sidor” formuläret maximalt kan innehåller.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfPages) | (MinNumberOfPages) | Beskriver hur många ”sidor” formuläret minst kan innehålla.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MaxNumberOfQuestion) | (MaxNumberOfQuestion) | Beskriver hur många frågor formuläret maximalt kan innehåller.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| (MinNumberOfQuestion) | (MinNumberOfQuestion) | Beskriver hur många frågor formuläret som minst kan innehåller. | VÄ | 1 |  |  |  |  |  |
| (healthCareFacilityUnit) | (healthCareFacilityUnit) | Mallens ägare. | II | 1 | Hsa-id |  |  |  |  |
| Sida/id<br/>(pages) | Sida/id<br/>(pages) | Koppling till klass för sida. | II | 0..* | Länk till objekt |  |  |  |  |
| (media/id) | (media/id) | Mediaobjekt som skall visas på formulärets introduktionssida. | II | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärmall (FormTemplate) har en till många sidor (TemplatePage) | En formulärmall (FormTemplate) har en till många sidor (TemplatePage) | En formulärmall (FormTemplate) har en till många sidor (TemplatePage) |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Formulärsida (TemplatePage)
Objektet utgör mall för en sida (Page)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (PageNumber) | (PageNumber) | Grupperingsbegrepp  av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret.<br/>T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik<br/>(Subject) | Rubrik<br/>(Subject) | Sidans rubrik.<br/>T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning<br/>(Description) | Beskrivning<br/>(Description) | Beskrivande text.<br/>Stöder kodverk ”DocBook” Se tidbokningskontraktet!!<br/>T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| Frågegruppering/id<br/>(TemplateQuestionBlock) | Frågegruppering/id<br/>(TemplateQuestionBlock) | Koppling till klass för frågegruppering. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärsida(Page) är har noll till flera frågegrupperingar (TemplateQuestionBlock) | En formulärsida(Page) är har noll till flera frågegrupperingar (TemplateQuestionBlock) | En formulärsida(Page) är har noll till flera frågegrupperingar (TemplateQuestionBlock) |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Formulärsida (Page)
Objektet innehåller en till många frågegrupperingar.  En sida är ett sätt att dela upp/gruppera ett formulär.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (PageNumber) | (PageNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret.<br/>T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik<br/>(Subject) | Rubrik<br/>(Subject) | Sidans rubrik.<br/>T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning<br/>(Description) | Beskrivning<br/>(Description) | Beskrivande text.<br/>Stöder kodverk ”DocBook” Se tidbokningskontraktet!!<br/>T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  |  |  |  |
| (LastPage) | (LastPage) | Indikerar om ytterligare sidor. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. | S/F | 1 | S = Indikerar att detta är det sista sidan.<br/>F= Indikerar att ytterligare sidor. |  |  |  |  |
| Frågor/id<br/>(QuestionBlock) | Frågor/id<br/>(QuestionBlock) | Koppling till klass för Block. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärsida(Page) är har noll till flera Block (QuestionBlock) | En formulärsida(Page) är har noll till flera Block (QuestionBlock) | En formulärsida(Page) är har noll till flera Block (QuestionBlock) |  |  |  |  |  |  |  |

#### Klass Frågegrupperingsmall (TemplateQuestionBlock)
Objektet utgör mall för en frågegruppering (QuestionBlock)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (BlockNumber) | (BlockNumber) | Grupperingsbegrepp  av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret.<br/>T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik<br/>(Subject) | Rubrik<br/>(Subject) | Blockets rubrik.<br/>T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning<br/>(Description) | Beskrivning<br/>(Description) | Beskrivande text.<br/>Stöder kodverk ”DocBook” Se tidbokningskontraktet!!<br/>T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 | (InformationURL) |  |  |  |  |
| (NumberOfQuestions) | (NumberOfQuestions) | Antal frågor tillhörande blocket.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| gridConfig/id | gridConfig/id | Koppling till klass för gridkonfigurering. | II | 0..1 |  |  |  |  |  |
| Frågor/id<br/>(QuestionId) | Frågor/id<br/>(QuestionId) | Koppling till klass för frågor. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) |  |  |  |  |  |  |  |
| En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) |  |  |  |  |  |  |  |

#### Klass Frågegruppering (QuestionBlock)
Objektet innehåller ett block fråga och dess svarsalternativ.  Ett block representerar en grupp av frågor. Grupperingen kan styras av vägskäl i fråge hierarkin alternativt lämplig gruppering på grund av mängden frågor.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (BlockNumber) | (BlockNumber) | Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret.<br/>T.ex Fråga nummer 1 (av 10). | VÄ | 1 |  |  |  |  |  |
| Rubrik<br/>(Subject) | Rubrik<br/>(Subject) | Blockets rubrik.<br/>T.ex Medicin. | TXT | 0..1 |  |  |  |  |  |
| Beskrivning<br/>(Description) | Beskrivning<br/>(Description) | Beskrivande text.<br/>Stöder kodverk ”DocBook” Se tidbokningskontraktet!!<br/>T.ex här skall du lämna information kring din medicinering. | TXT | 0..1 | Text kan kodas enligt DocBook. |  |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 | (InformationURL) |  |  |  |  |
| (NumberOfQuestions) | (NumberOfQuestions) | Antal frågor tillhörande blocket.<br/>T.ex. 10 | VÄ | 1 |  |  |  |  |  |
| gridConfig/id | gridConfig/id | Koppling till klass för gridkonfigurering. | II | 0..1 |  |  |  |  |  |
| Frågor/id<br/>(QuestionId) | Frågor/id<br/>(QuestionId) | Koppling till klass för frågor. | II | 1..* | Länk till array av objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) | En formulärfråga(QuestionBlock) är har noll till flera Frågor (Question) |  |  |  |  |  |  |  |
| En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) | En formulärfråga(QuestionBlock) är har noll till flera gridConfig (gridConfig) |  |  |  |  |  |  |  |

#### Klass Formulärfråga mall (TemplateQuestion)
Objektet utgör mall för en fråga (Question)

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  |  |  |  |
| (Subject) | (Subject) | Frågans rubrik.<br/>T.ex Ange din blodgrupp. | TXT | 1 |  |  |  |  |  |
| (Description) | (Description) | Frågans beskrivande text eller instruktion till användaren/patient.<br/>Stöder kodverk ”DocBook” Se tidbokningskontraktet!! | TXT | 1..0 |  |  |  |  |  |
| (FormId) | (FormId) | Frågans unika id. (Producentens unika id) | TXT | 1 |  |  |  |  |  |
| (input) | (input) | Beskriver frågans inmatningstyp.<br/>T.ex. radio(enkelvärde), checkbox(multivärde) eller fritext. | KTOV | 1 | KV Inmatningstyp |  |  |  |  |
| (Mandatory) | (Mandatory) | Indikerar om frågan är obligatorisk. | S/F | 1 | True = obligatorisk fråga<br/>False = Frivillig fråga |  |  |  |  |
| (MaxNumberOfChoices) | (MaxNumberOfChoices) | Indikerar max antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren.<br/>Kan användas för att validera inmatning av konsument. |  |  |  |
| (MinNumberOfChoices) | (MinNumberOfChoices) | Indikerar min. antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren.<br/>Kan användas för att validera inmatning av konsument. |  |  |  |
| (InputUnit) | (InputUnit) | Typ av enhet.<br/>T.ex. kg, m | KTOV | 0..1 | KV enhet |  |  |  |  |
| (AnswerMax) | (AnswerMax) | Specificerar maxvärde för inmatning. (Gäller typ: number, date)<br/>T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMin) | (AnswerMin) | Specificerar minvärde för inmatning.<br/>(Gäller typ: number, date) | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMaxLenght) | (AnswerMaxLenght) | Specificerar maxvärdelängd för inmatning.<br/>(Gäller typ: number)<br/>T.ex: En inmatning (text) får inte vara större än 100 tecken. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerPattern) | (AnswerPattern) | Inmatningsvalidering<br/>(Regular expresson).<br/>T.ex: pattern="[A-z]{3}" tillåter endast 3 teckan A-z. | TXT | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerStep) | (AnswerStep) | Specificerar giltiga intervall för inmatning.<br/>(Gäller typ: number, range, date, datetime, datetime-local, month, time och week)<br/>T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur<br/>35-40. | VÄ | 0..1 |  |  |  |  |  |
| (questionAlign) | (questionAlign) | Presentationsrekommendation för fråga och svarsalternativ.<br/>left<br/>right<br/>Center<br/>vertical: Fråga och svarsalternativ presenteras i vertikalt. T.ex. inmatning placeras under rubrik.<br/>horizontal: Fråga och svarsalternativ presenteras i horisontalt. T.ex. inmatning placeras bredvid varandra. | TXT | 0..1 |  |  |  |  |  |
| Code/id<br/>(codeType) | Code/id<br/>(codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för en fråga. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  |  |  |  |
| Svarsalternativ/id<br/>(AnswerAlternative) | Svarsalternativ/id<br/>(AnswerAlternative) | Koppling till klass för svarsalternativ. | II | 0..* | Länk till objekt |  |  |  |  |
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

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (InformationURL) | (InformationURL) | URL till hjälpsida/mer information. | TXT | 0..1 |  |  |  |  |  |
| (Subject) | (Subject) | Frågans rubrik.<br/>T.ex Ange din blodgrupp. | TXT | 1 |  |  |  |  |  |
| (Description) | (Description) | Frågans beskrivande text eller instruktion till användaren/patient.<br/>Stöder kodverk ”DocBook” Se tidbokningskontraktet!! | TXT | 1..0 |  |  |  |  |  |
| (FormId) | (FormId) | Frågans unika id. (Producentens unika id) | TXT | 1 |  |  |  |  |  |
| (input) | (input) | Beskriver frågans inmatningstyp.<br/>T.ex. radio(enkelvärde), checkbox(multivärde) eller fritext. | KTOV | 1 | KV Inmatningstyp |  |  |  |  |
| (Mandatory) | (Mandatory) | Indikerar om frågan är obligatorisk. | S/F | 1 | True = obligatorisk fråga<br/>False = Frivillig fråga |  |  |  |  |
| (MaxNumberOfChoices) | (MaxNumberOfChoices) | Indikerar max antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren.<br/>Kan användas för att validera inmatning av konsument. |  |  |  |
| (MinNumberOfChoices) | (MinNumberOfChoices) | Indikerar min. antal värden som användaren får välja vid  checkbox/multivärde. | VÄ | 0..1 |  | Information till användaren.<br/>Kan användas för att validera inmatning av konsument. |  |  |  |
| (InputUnit) | (InputUnit) | Typ av enhet.<br/>T.ex. kg, m | KTOV | 0..1 | KV enhet |  |  |  |  |
| (AnswerMax) | (AnswerMax) | Specificerar maxvärde för inmatning. (Gäller typ: number, date)<br/>T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMin) | (AnswerMin) | Specificerar minvärde för inmatning.<br/>(Gäller typ: number, date) | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerMaxLenght) | (AnswerMaxLenght) | Specificerar maxvärdelängd för inmatning.<br/>(Gäller typ: number)<br/>T.ex: En inmatning (text) får inte vara större än 100 tecken. | VÅ | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerPattern) | (AnswerPattern) | Inmatningsvalidering<br/>(Regular expresson).<br/>T.ex: pattern="[A-z]{3}" tillåter endast 3 teckan A-z. | TXT | 0..1 |  | Kan valideras av konsumerandesystem. |  |  |  |
| (AnswerStep) | (AnswerStep) | Specificerar giltiga intervall för inmatning.<br/>(Gäller typ: number, range, date, datetime, datetime-local, month, time och week)<br/>T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur<br/>35-40. | VÄ | 0..1 |  |  |  |  |  |
| (questionAlign) | (questionAlign) | Presentationsrekommendation för fråga och svarsalternativ.<br/>left<br/>right<br/>Center<br/>vertical: Fråga och svarsalternativ presenteras i vertikalt. T.ex. inmatning placeras under rubrik.<br/>horizontal: Fråga och svarsalternativ presenteras i horisontalt. T.ex. inmatning placeras bredvid varandra. | TXT | 0..1 |  |  |  |  |  |
| Code/id<br/>(codeType) | Code/id<br/>(codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för en fråga. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  |  |  |  |
| Svarsalternativ/id<br/>(AnswerAlternative) | Svarsalternativ/id<br/>(AnswerAlternative) | Koppling till klass för svarsalternativ. | II | 0..* | Länk till objekt |  |  |  |  |
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

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (InputUnit) | (InputUnit) | Typ av enhet.<br/>T.ex. kg, m | KTOV | 0..1 | KV enhet |  |  |  |  |
| (AlternativeValue) | (AlternativeValue) | Valbart svarsalternativ. | ANY | 1..* |  |  |  |  |  |
| (answerHelp) | (answerHelp) | Hjälptext till svarsalternativet. (placeholder) | TXT | 0..1 |  |  |  |  |  |
| (AlternativID) | (AlternativID) | Svarsalternativets id. | II | 1 |  |  |  |  |  |
| Code/id<br/>(codeType) | Code/id<br/>(codeType) | Koppling till klass för kodverk. Används för att beskriva kod/kodverk för ett svarsalternativ. T.ex. SNOMED-CT kod. | II | 0..1 | Länk till objekt |  |  |  |  |
| Medi/id | Medi/id | Koppling till klass för media. | II | 0..1 | Länk till objekt |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett svarsalternativ(AnswerAlternative) har en formulärfråga (Question) | Ett svarsalternativ(AnswerAlternative) har en formulärfråga (Question) | Ett svarsalternativ(AnswerAlternative) har en formulärfråga (Question) |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Svar (Answer)
Objektet innehåller patientens/användarens svar på en fråga.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (Value) | (Value) | Patientens/användarens svar. | ANY | 1 |  |  |  |  |  |
| (ValueID) | (ValueID) | ID på frågan | II | 1 |  |  |  |  |  |
| Statuskod/id<br/>(Status/id) | Statuskod/id<br/>(Status/id) | Koppling till klass för statuskod. | II | 0..1 | Länk till objekt |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
| Ett svar(Answer) har en formulärfråga (Question) | Ett svar(Answer) har en formulärfråga (Question) | Ett svar(Answer) har en formulärfråga (Question) |  |  |  |  |  |  |  |
| Ett svar(Answer) har noll eller en statuskod (Status) | Ett svar(Answer) har noll eller en statuskod (Status) | Ett svar(Answer) har noll eller en statuskod (Status) |  |  |  |  |  |  |  |

#### Klass anropsbekräftelse (AnswerStatus)
Objekt innehåller statuskod och meddelande.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (resultCode) | (resultCode) | Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod | KTOV | 0..1 | KV Statuskod |  |  |  |  |
| (resultCodeText) | (resultCodeText) | Felmeddelande, förklarande text. Vid INFO eller ERROR.<br/>T.ex. INFO – Medtag legitimation. | TXT | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Frågerelation (QuestionSuperior)
Objekt innehåller information om beroende till överordnade frågor eller svarsalternativ finns.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (superiorAnswerAlternativeNumber) | (superiorAnswerAlternativeNumber) | Indikerar att frågan är beroende av att ett specifikt svarsalternativ är besvarat.<br/>T.ex. Frågan skall endast visa om invånaren har svarat ”Ja” på en fråga. | TXT | 0..1 |  |  |  |  |  |
| (superiorQuestionNumber) | (superiorQuestionNumber) | Indikerar att frågan är beroende av att en  specifikt fråga är besvarad. | TXT | 0..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass kodverk (Code)
Objekt innehåller definition av kodverk/kod. Klassen kan användas för att kodverk/kod för en fråga/svarsalternativ eller ett formulär instrument (EQ-5D).
Om ”code” används på formulärnivå avses ett standardinstrument. Prefixet 1177 Innebär att instrumentet är etablerat inom 1177 konceptet.
Ex:

| 1177.forms.audit-c<br/>1177.forms.eq-5d<br/>1177.forms.phq-9 |
| :--- |
Om ”code” används på fråga eller svarsalternativ avses ett kodsystem som avspeglar fråga och svarsalternativ.
Ex
ICD-10(Diagnos kod)
KVÅ (Operations kod)
SNOMED-CT.
Separat dokumentation kring fastställda mallar/instrument kommer publiceras under ”/riv/infrastructure//forminteraction/trunk/docs/mallar”.

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (codeValue) | (codeValue) | Kod som används (Kodverk). | TXT | 1 |  |  |  |  |  |
| (codeSystem) | (codeSystem) | Identifierar vilket kodverk som används. | TXT | 1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

#### Klass Malldelning (TemplatePropagate)
Objekt för att definiera om mallen är regional/nationell. En standardiserad mall kan användas regionalt eller nationellt. mall kan delas definieras global (kan). Attributet countycode styr mallens tillgänglighet. ISO 3166-2:SEObjekt  information om mallen delas med.innehåller definition av kodverk/kod.
Ex:

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (countycode) | (countycode) | Avgränsande fält. Om Propagate "true" kan mallen delas inom en till flera länskoder.<br/>Om attributet är tomt delas mallen utan avgränsning.<br/>Avgränsningen (länskod) gäller för inom det län verksamheten (hsa-id) verkar inom (som vill använda mallen). | KTOV | 0..* | KV Länskod. |  |  |  |  |
| (propagate) | (propagate) | Attribut för att indikera att mallen är global. | S/F | 1 | S = Mallen delas (t.ex är nationell).<br/>F = Mallen delas inte. |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |

#### Klass validering (validationEvent)
Objekt innehåller valideringsmeddelanden kopplade till en valideringshändelse. Det finns följande validerings alternativ koppla de till frågor. Om validationEvent finns skall dessa visas för slutanvändaren vid valideringsfel.
ÖVERSIKT

| Validerings event | Text | TextArea | Radio | CheckBox | Select | Number | Date<br/>Time<br/>Month<br/>Week | Range | Matrix<br/>Radio | Matrix<br/>checkbox | Matrix<br/>Text | Scale |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| answerMin |  |  |  |  |  | X | X | X |  |  |  |  |
| answerMax |  |  |  |  |  | X | X | X |  |  |  |  |
| answerPattern | X | X | X | X | X | X | X | X | X | X | X | X |
| inputUnit | X |  |  |  |  |  |  |  |  |  |  |  |
| mandatory | X | X | X | X | X | X | X | X | X | X | X | X |
| maxNumberOfChoices |  |  |  | X | X |  |  |  |  | X |  |  |
| minNumberOfChoices |  |  |  | X | X |  |  |  |  | X |  |  |

| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Attribut | Attribut | Beskrivning | Format | Mult | Kodverk/värdemängd<br/>/ ev. begränsningar | Beslutsregler och kommentar |  |  |  |
| (event) | (event) | Valideringshändelse.<br/>Ex: ”mandatory” indikerar att det finns en valideringstext för ett obligatoriskt fält. | TXT | 1..1 | KV Valideringshändelse |  |  |  |  |
| (text) | (text) | Valideringstext för valideringshändelse..<br/>Ex: ”Fältet x är obligatoriskt” | TXT | 1..1 |  |  |  |  |  |
| Associationer | Associationer | Associationer | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel | Beslutsregel |  |
|  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |

### Terminologier, kodverk och identifierare (t/k/i)
Terminologier, kodverk och indentifikationssystem som hanteras i informationsutbytet inom formulärtjänst.

| Namn | Syfte | Innehåll. språk | Föreskrift, standard, internationellt kodverk | Fastställt av | OID-nummer och ägaren av OID-numret | Ägare/förvaltare, länkar och revideringsprocess | Återfinns i Klass<br/>attribut | Ev begränsningar |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| KV Formulärkategori | Kodverk för formulärkategori | Kodverk saknas<br/>Exempel<br/>Anmälan<br/>Registrering<br/>Deklaration |  |  |  |  |  |  |
| KV Malltyp | Kodverk för malltyp | Kodverk saknas<br/>Exempel<br/>Mödrahälsovårdsjournal 1 - MHV1 |  |  |  |  |  |  |
| KV Språk | Kodverk för formulärspråk. |  |  | CeHis | 1.2.752.129.2.2.1.9 | Sveriges Kommuner och Landsting |  |  |
| KV Inmatningstyp | Kodverk för inmatningstyp | Följande typer stödjs.<br/>Inmatning kan vara av följande huvudtyper:<br/>Enkelvärde<br/>Multivärde<br/>Fritext<br/>Exempel på inmatningstyper:<br/>Text<br/>textarea<br/>Checkbox<br/>Radio<br/>Select<br/>SelectMultiple<br/>Number<br/>URL<br/>Date and time<br/>Date<br/>Month<br/>Week<br/>Time<br/>Local date and time<br/>Range<br/>Image<br/>MatrixText<br/>MatrixRadio<br/>MatrixCheckbox<br/>MatrixMulti<br/>Scale |  | W3C * | Version HTML5 | W3C * |  |  |
| KV Form Status | Kodverk för formulärets status | COMPLETED = Skickat<br/>ONGOING = Pågående, svar har temporärsparats<br/>PENDING_COMPLETION = Pågående, svarr har temporärsparats. Alla frågor är besvarade (färdigt ej skickat). |  |  |  |  |  |  |
| KV Statuskod | Kodverk för logisk felhantering | OK - Transaktion utförd<br/>INFO - Transaktion utförd med kommentar.<br/>ERROR - Transaktion ej genomförd |  |  |  |  |  |  |
| KV enhet | Kodverk för måttenheter | Grundenheter samt härledda SI-enheter beskrivs med dess beteckning.<br/>T.ex. km, m, cm, kg, mm Hg etc | Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26) |  |  |  |  |  |
| KV Länskod | Kodverk för länskod, | Kodverk för länskod. | Länskod enligt SCB |  |  |  |  |  |
| KV valideringshändelse | Kodverk för formulärvalideringshändelser. | Gilgitga värden<br/>mandatory<br/>answerMax<br/>answerMin<br/>answerMaxLength answerPattern<br/>maxNumberOfChoises minNumberOfChoises answerSuperior |  |  |  |  |  |  |
| KV Publicerings status |  | Unpublished<br/>Pending<br/>Published<br/>Archived |  |  |  |  |  |  |
* http://www.w3.org/TR/html5/the-input-element.html#attr-input-type

### Formatregler

#### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601:2004-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDTttmmss”, vilket motsvara den ISO 8601:2004-kompatibla formatbeskrivningen ”YYYYMMDDTttmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

