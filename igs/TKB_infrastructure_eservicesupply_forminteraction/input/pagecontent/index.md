# infrastructure: eservicesupply: forminteraction

## Översikt

FHIR Implementation Guide för tjänstedomänen **infrastructure: eservicesupply: forminteraction** version 2.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen definierar tjänstekontrakt för formulärinteraktion mellan patient/invånare och vårdverksamhet,
alternativt mellan patient-e-tjänst och verksamhetssystem. Tjänstedomänens tjänstekontrakt möjliggör
en vård-initierad process för formulärbegäran gentemot identifierad invånare eller patient.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetFormTemplates](7-tjanstekontrakt.html#getformtemplates) | 2.0 | Hämta tillgängliga formulärmallar för invånare |
| [CreateForm](7-tjanstekontrakt.html#createform) | 2.1 | Skapa och initiera/starta ett formulär |
| [GetForms](7-tjanstekontrakt.html#getforms) | 2.0 | Lista alla pågående/avslutade formulär |
| [GetForm](7-tjanstekontrakt.html#getform) | 2.1 | Hämta ett specifikt formulär |
| [GetFormQuestionPage](7-tjanstekontrakt.html#getformquestionpage) | 2.0 | Navigera framåt eller bakåt i ett formulär |
| [SaveFormPage](7-tjanstekontrakt.html#saveformpage) | 2.1 | Spara invånarens besvarade frågor |
| [SaveForm](7-tjanstekontrakt.html#saveform) | 2.1 | Avsluta/stänga ett ifyllt formulär |
| [CancelForm](7-tjanstekontrakt.html#cancelform) | 2.0 | Avbryta/radera ett formulär |
| [CreateFormRequest](7-tjanstekontrakt.html#createformrequest) | 2.0 | Skapa en begäran om formulär (formulärbegäran) |
| [GetFormTemplate](7-tjanstekontrakt.html#getformtemplate) | 2.1 | Hämta en formulärmall |
| [SaveFormTemplate](7-tjanstekontrakt.html#saveformtemplate) | 2.1 | Spara en formulärmall |
| [DeleteFormTemplate](7-tjanstekontrakt.html#deleteformtemplate) | 1.0 | Makulera en formulärmall |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
