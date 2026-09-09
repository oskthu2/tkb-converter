# Artifacts Summary - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CancelForm](StructureDefinition-cancelform.md) | Logisk modell för tjänstekontraktet CancelForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CancelForm:2). Representerar responsens informationsstruktur — signalerar om avbrytningen lyckades. |
| [CancelForm — Request](StructureDefinition-cancelform-request.md) | Logisk modell för requestparametrar i CancelForm. |
| [CreateForm](StructureDefinition-createform.md) | Logisk modell för tjänstekontraktet CreateForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateForm:2). Representerar responsens informationsstruktur — returnerar ett skapat och initierat formulär. |
| [CreateForm — Request](StructureDefinition-createform-request.md) | Logisk modell för requestparametrar i CreateForm. |
| [CreateFormRequest](StructureDefinition-createformrequest.md) | Logisk modell för tjänstekontraktet CreateFormRequest (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateFormRequest:2). Representerar responsens informationsstruktur — returnerar skapade formulärbegärans unika id:n. |
| [CreateFormRequest — Request](StructureDefinition-createformrequest-request.md) | Logisk modell för requestparametrar i CreateFormRequest. |
| [GetForm](StructureDefinition-getform.md) | Logisk modell för tjänstekontraktet GetForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForm:2). Representerar responsens informationsstruktur — returnerar ett specifikt formulär med aktuell sida. |
| [GetForm — Request](StructureDefinition-getform-request.md) | Logisk modell för requestparametrar i GetForm. |
| [GetFormQuestionPage](StructureDefinition-getformquestionpage.md) | Logisk modell för tjänstekontraktet GetFormQuestionPage (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2). Representerar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering. |
| [GetFormQuestionPage — Request](StructureDefinition-getformquestionpage-request.md) | Logisk modell för requestparametrar i GetFormQuestionPage. |
| [GetFormTemplate](StructureDefinition-getformtemplate.md) | Logisk modell för tjänstekontraktet GetFormTemplate (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplate:2). Representerar responsens informationsstruktur — returnerar en eller flera formulärmallar. |
| [GetFormTemplate — Request](StructureDefinition-getformtemplate-request.md) | Logisk modell för requestparametrar i GetFormTemplate. |
| [GetFormTemplates](StructureDefinition-getformtemplates.md) | Logisk modell för tjänstekontraktet GetFormTemplates (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplates:2). Representerar responsens informationsstruktur — returnerar tillgängliga formulärmallar för invånare. |
| [GetFormTemplates — Request](StructureDefinition-getformtemplates-request.md) | Logisk modell för requestparametrar i GetFormTemplates. |
| [GetForms](StructureDefinition-getforms.md) | Logisk modell för tjänstekontraktet GetForms (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2). Representerar responsens informationsstruktur — returnerar lista med pågående/avslutade formulär. |
| [GetForms — Request](StructureDefinition-getforms-request.md) | Logisk modell för requestparametrar i GetForms. |
| [SaveForm](StructureDefinition-saveform.md) | Logisk modell för tjänstekontraktet SaveForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveForm:2). Representerar responsens informationsstruktur — signalerar om formuläravslutet lyckades. |
| [SaveForm — Request](StructureDefinition-saveform-request.md) | Logisk modell för requestparametrar i SaveForm. |
| [SaveFormPage](StructureDefinition-saveformpage.md) | Logisk modell för tjänstekontraktet SaveFormPage (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormPage:2). Representerar responsens informationsstruktur — returnerar nästa sida med frågor, eller felindikation. |
| [SaveFormPage — Request](StructureDefinition-saveformpage-request.md) | Logisk modell för requestparametrar i SaveFormPage. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [KV Form Status — ValueSet](ValueSet-formstatus-vs.md) | Tillåtna värden för formulärstatus (formStatus) enligt KV Form Status. |
| [KV Formulärkategori — ValueSet](ValueSet-formcategory-vs.md) | Tillåtna värden för formulärkategori (category) enligt KV Formulärkategori. |
| [KV Navigeringsriktning — ValueSet](ValueSet-questionnavigationdirection-vs.md) | Tillåtna värden för navigeringsriktning (Direction) vid GetFormQuestionPage. |
| [KV Publiceringsstatus — ValueSet](ValueSet-publishstatus-vs.md) | Tillåtna värden för publiceringsstatus (publishStatus) för formulärmallar. |
| [KV Resultatkod — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna värden för resultatkod i formulärinteraktionstjänsterna. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [KV Form Status](CodeSystem-formstatus-cs.md) | Kodverk för formulärets status. Definierar i vilken fas ett formulär befinner sig. |
| [KV Formulärkategori](CodeSystem-formcategory-cs.md) | Kodverk för formulärkategori. Definierar formulärets typ. |
| [KV Navigeringsriktning](CodeSystem-questionnavigationdirection-cs.md) | Kodverk för navigeringsriktning vid GetFormQuestionPage — anger om användaren navigerar framåt eller bakåt i ett formulär. |
| [KV Publiceringsstatus](CodeSystem-publishstatus-cs.md) | Kodverk för publiceringsstatus för formulärmallar. |
| [KV Resultatkod](CodeSystem-resultcode-cs.md) | Kodverk för resultatkod — anger status på en operation i formulärinteraktionstjänsterna. |

