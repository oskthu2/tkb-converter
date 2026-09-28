# clinicalprocess: activity: request — Remisshantering

## Översikt

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: activity: request** ("Remisshantering") version 2.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller tjänster för att hantera remissprocessen nationellt och lokalt, mellan och inom vårdgivare, från remiss till svar. I denna domänversion avser remiss en så kallad allmänremiss.

RIV-TA namnrymd: `urn:riv:clinicalprocess:activity:request`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessRequest](7-tjanstekontrakt.html#processrequest) | 2.2 | Skickar en remiss från remittent till remissmottagare |
| [ProcessRequestConfirmation](7-tjanstekontrakt.html#processrequestconfirmation) | 2.2 | Skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten |
| [ProcessRequestOutcome](7-tjanstekontrakt.html#processrequestoutcome) | 2.2 | Skickar delsvar, preliminärt svar eller slutsvar till remittenten |

Alla tre kontrakten skickar information (push). Den logiska modellen för respektive kontrakt beskriver därför begäran, och svaret beskrivs av den gemensamma modellen [ProcessResult](StructureDefinition-process-result.html).

**Källa:** TKB-dokumentet (`TKB_clinicalprocess_activity_request.docx`, version 2.2 fastställd 2026-04-22) från Bitbucket `rivta-domains/riv.clinicalprocess.activity.request`, tagg `2.2`. Brödtexten i avsnitt 2 och 7 anger fortfarande version 2.1; revisionshistoriken och scheman anger 2.2.

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
