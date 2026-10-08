# infrastructure:eservicesupply:forminteraction - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **infrastructure:eservicesupply:forminteraction**

## infrastructure:eservicesupply:forminteraction

Formulärtjänsten möjliggör hantering av formulärinformation mellan olika aktörer. Tjänstekontraktet möjliggör insamling av olika typer av formulärinformation. Tjänstekonsument och tjänsteproducent kan använda tjänstekontraktet på olika sätt och i olika steg i sina processer. Exempel: * En vårdaktivitet kräver en hälsodeklaration. * Ett vårdbesök föranleder en registreringsblankett * En behandling kräver uppföljning + Biverkningsregistrering + Effektmätning av behandling * Informationsinsamling under begäran och bedömning av vårdbegäran. Denna domän hette tidigare infrastructure:supportservices:forminteraction.

* Svenskt kortnamn: Svenskt namn
  * formulärhantering: infrastruktur:etjänsteförsörjning:formulärhantering
* Svenskt kortnamn: Typ
  * formulärhantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * formulärhantering: [TKB_infrastructure_eservicesupply_forminteraction](https://oskthu2.github.io/tkb-converter/TKB_infrastructure_eservicesupply_forminteraction/index.html)
* Svenskt kortnamn: Källkod
  * formulärhantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src)
* Svenskt kortnamn: Ärenden
  * formulärhantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/issues)
* Svenskt kortnamn: Informationssida
  * formulärhantering: [Confluence](https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/wiki/)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelForm | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:CancelForm:2:rivtabp21` |
| CreateForm | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:CreateForm:2:rivtabp21` |
| CreateFormRequest | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:CreateFormRequest:2:rivtabp21` |
| DeleteFormTemplate | 1.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:DeleteFormTemplate:1:rivtabp21` |
| GetForm | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:GetForm:2:rivtabp21` |
| GetFormQuestionPage | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2:rivtabp21` |
| GetForms | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2:rivtabp21` |
| GetFormTemplate | 2.1 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplate:2:rivtabp21` |
| GetFormTemplates | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplates:2:rivtabp21` |
| SaveForm | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:SaveForm:2:rivtabp21` |
| SaveFormPage | 2.0 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormPage:2:rivtabp21` |
| SaveFormTemplate | 2.1 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormTemplate:2:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 2.0 | TKB, AB | [Arkitektur & Regelverk: Säkerhet: Delvis Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/VIS_granskning_infrastructure_eservicesupply_forminteraction_2.0.docx)[Arkitektur & Regelverk: Informatik: Underkänd](http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/VIS_granskning_infrastructure_eservicesupply_forminteraction_2.0.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/T-granskning - infrastructure_eservicesupply_forminteraction_2.0.docx) | [zip](http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/ServiceContracts_infrastructure_eservicesupply_forminteraction_2.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src/2.0) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

