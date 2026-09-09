# Artifacts Summary - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CancelForm](StructureDefinition-cancelform.md) | Logisk modell för svar (response) i tjänstekontraktet CancelForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2). Bekräftar att formuläret har avbrutits och raderats. |
| [CancelForm — Request](StructureDefinition-cancelform-request.md) | Logisk modell för requestparametrar i CancelForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2). Avbryter och raderar ett pågående formulär. |
| [CreateForm](StructureDefinition-createform.md) | Logisk modell för svar (response) i tjänstekontraktet CreateForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2). Returnerar det skapade formuläret inkl. första sidan med frågor. |
| [CreateForm — Request](StructureDefinition-createform-request.md) | Logisk modell för requestparametrar i CreateForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2). Skapar och initierar/startar ett formulär. |
| [CreateFormRequest](StructureDefinition-createformrequest.md) | Logisk modell för svar (response) i tjänstekontraktet CreateFormRequest (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2). Bekräftar att formulärbegäran har registrerats. |
| [CreateFormRequest — Request](StructureDefinition-createformrequest-request.md) | Logisk modell för requestparametrar i CreateFormRequest (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2). Ett vårdsystem skapar en begäran om att patient skall fylla i ett formulär. Formulärmotor skapar ett formulär och skickar indexpost till engagemangsindex (categorization = FormCreated). |
| [GetForm](StructureDefinition-getform.md) | Logisk modell för svar (response) i tjänstekontraktet GetForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2). Returnerar ett specifikt formulär med aktuell sida och frågor. COMPLETED = Läsläge (komplett formulär returneras). ONGOING = Senaste/aktuella sida returneras. PENDING_COMPLETION = Senaste sida returneras. |
| [GetForm — Request](StructureDefinition-getform-request.md) | Logisk modell för requestparametrar i GetForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2). Hämtar ett specifikt formulär inkl. aktuell sida med frågor. |
| [GetFormQuestionPage](StructureDefinition-getformquestionpage.md) | Logisk modell för svar (response) i tjänstekontraktet GetFormQuestionPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2). Returnerar formuläret med den begärda sidan. |
| [GetFormQuestionPage — Request](StructureDefinition-getformquestionpage-request.md) | Logisk modell för requestparametrar i GetFormQuestionPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2). Hoppa/navigera framåt eller bakåt i ett formulär. |
| [GetFormTemplate](StructureDefinition-getformtemplate.md) | Logisk modell för svar (response) i tjänstekontraktet GetFormTemplate (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2). Returnerar komplett formulärmall inkl. alla sidor, frågegrupperingar och frågor. |
| [GetFormTemplate — Request](StructureDefinition-getformtemplate-request.md) | Logisk modell för requestparametrar i GetFormTemplate (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2). Hämtar en specifik formulärmall inkl. alla sidor och frågor. |
| [GetFormTemplates](StructureDefinition-getformtemplates.md) | Logisk modell för svar (response) i tjänstekontraktet GetFormTemplates (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2). Returnerar lista med tillgängliga formulärmallar. |
| [GetFormTemplates — Request](StructureDefinition-getformtemplates-request.md) | Logisk modell för requestparametrar i GetFormTemplates (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2). Tjänst för att hämta tillgängliga formulärmallar för invånare. |
| [GetForms](StructureDefinition-getforms.md) | Logisk modell för svar (response) i tjänstekontraktet GetForms (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2). Returnerar lista med formulär (summering, ej komplett formulär med frågor). |
| [GetForms — Request](StructureDefinition-getforms-request.md) | Logisk modell för requestparametrar i GetForms (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2). Hämtar alla pågående eller avslutade formulär för en invånare. |
| [SaveForm](StructureDefinition-saveform.md) | Logisk modell för svar (response) i tjänstekontraktet SaveForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2). Bekräftar att formuläret har avslutats och fått status COMPLETED. Formulärmotorn skickar notifiering till engagemangsindex (categorization = FormComplete). |
| [SaveForm — Request](StructureDefinition-saveform-request.md) | Logisk modell för requestparametrar i SaveForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2). Avslutar och sparar ett formulär. Formuläret byter status till COMPLETED. |
| [SaveFormPage](StructureDefinition-saveformpage.md) | Logisk modell för svar (response) i tjänstekontraktet SaveFormPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2). Returnerar nästa sida med frågor (eller samma sida vid temporarySave). Vid valideringsfel returneras felindikering via ResultCode och AnswerStatus. |
| [SaveFormPage — Request](StructureDefinition-saveformpage-request.md) | Logisk modell för requestparametrar i SaveFormPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2). Sparar invånarens besvarade frågor på en sida under pågående formulärsession. Om temporarySave anges: spara utan validering, returnera samma sida. |
| [SaveFormTemplate](StructureDefinition-saveformtemplate.md) | Logisk modell för svar (response) i tjänstekontraktet SaveFormTemplate (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2). Bekräftar att formulärmallen har sparats. |
| [SaveFormTemplate — Request](StructureDefinition-saveformtemplate-request.md) | Logisk modell för requestparametrar i SaveFormTemplate (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2). Sparar en formulärmall hos tjänsteproducenten. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FormCategory — ValueSet](ValueSet-formcategory-vs.md) | Tillåtna värden för formulärets kategori enligt KV Formulärkategori. |
| [FormStatus — ValueSet](ValueSet-formstatus-vs.md) | Tillåtna värden för formulärstatus enligt KV Form Status. |
| [PublishStatus — ValueSet](ValueSet-publishstatus-vs.md) | Tillåtna värden för mallens publiceringsstatus enligt KV Publicerings status. |
| [QuestionType — ValueSet](ValueSet-questiontype-vs.md) | Tillåtna värden för typ av fråga i formulär. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AnswerType](CodeSystem-answertype-cs.md) | Kodverk för typ av svar i ett formulär enligt infrastructure:supportservices:forminteraction v2.0. |
| [FormCategory](CodeSystem-formcategory-cs.md) | Kodverk för formulärets kategori (KV Formulärkategori) enligt infrastructure:supportservices:forminteraction v2.0. Definierar formulärets typ. |
| [FormStatus](CodeSystem-formstatus-cs.md) | Kodverk för formulärets status (KV Form Status) enligt infrastructure:supportservices:forminteraction v2.0. |
| [PublishStatus](CodeSystem-publishstatus-cs.md) | Kodverk för mallens publiceringsstatus (KV Publicerings status) enligt infrastructure:supportservices:forminteraction v2.0. |
| [QuestionType](CodeSystem-questiontype-cs.md) | Kodverk för typ av fråga (KV Frågetype) i ett formulär enligt infrastructure:supportservices:forminteraction v2.0. |

