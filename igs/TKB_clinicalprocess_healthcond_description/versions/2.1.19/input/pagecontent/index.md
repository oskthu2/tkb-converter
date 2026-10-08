# clinicalprocess: healthcond: description 2.1

<!-- tkb-version -->
**TKB-version:** 2.1.19 · **IG-version:** 2.1.19 · **Källa:** Bitbucket-tagg `2.1.19` · **Andra huvudversioner:** [3.0.6](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_description/index.html)
<!-- /tkb-version -->

<div class="alert alert-warning" role="alert" markdown="1">
**Äldre huvudversion.** Detta är TKB 2.1 (Bitbucket-taggen 2.1.19, dokumentversion 2.1.18). Den senaste huvudversionen, 3.0, finns på [clinicalprocess: healthcond: description](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_description/index.html).
</div>

## Översikt

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: healthcond: description** version 2.1.19.
Genererad från Ineras tjänstekontraktsbeskrivning (TKB) i Bitbucket-taggen `2.1.19`. Själva TKB-dokumentet i taggen är märkt version 2.1.18 (ARK_0015, 2023-02-03): taggen 2.1.19 skiljer sig från taggen 2.1.18 bara i testsviterna och i självdeklarationerna SjD_TP för GetAlertInformation och GetCareDocumentation, så TKB-texten och scheman är desamma som i 2.1.18.

Domänen hanterar information som beskriver patientens hälsotillstånd, till exempel vårdanteckningar, diagnoser, uppmärksamhetsinformation och funktionsstatus. Tjänstekontrakten är baserade på RIVTA 2.1 och reglerade genom arkitekturella beslut. Tjänstekontraktsbeskrivningen är en kravspecifikation som fungerar som ett teknikneutralt, formellt regelverk för tjänstekonsumenter och tjänsteproducenter.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning | Logiska modeller |
|----------|---------|-------------|------------------|
| [GetCareDocumentation](7-tjanstekontrakt.html#getcaredocumentation) | 2.1 | Returnerar hälso- och sjukvårdsdokument (journalanteckningar) för en patient | [Svar](StructureDefinition-getcaredocumentation.html), [begäran](StructureDefinition-getcaredocumentation-request.html) |
| [GetDiagnosis](7-tjanstekontrakt.html#getdiagnosis) | 2.0 | Returnerar registrerade diagnoser för en patient | [Svar](StructureDefinition-getdiagnosis.html), [begäran](StructureDefinition-getdiagnosis-request.html) |
| [GetAlertInformation](7-tjanstekontrakt.html#getalertinformation) | 2.0 | Returnerar uppmärksamhetsinformation för en patient | [Svar](StructureDefinition-getalertinformation.html), [begäran](StructureDefinition-getalertinformation-request.html) |
| [GetFunctionalStatus](7-tjanstekontrakt.html#getfunctionalstatus) | 2.0 | Returnerar dokumenterade bedömningar av funktionsnedsättningar och/eller aktivitetsförmåga | [Svar](StructureDefinition-getfunctionalstatus.html), [begäran](StructureDefinition-getfunctionalstatus-request.html) |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Gemensamma informationskomponenter](5-gemensamma-informationskomponenter.html)
* [6 Tjänstedomänens meddelandemodeller](6-tjanstedomanens-meddelandemodeller.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Bilaga Mappningar](8-bilaga-mappningar.html)
* [Artefakter](artifacts.html)
