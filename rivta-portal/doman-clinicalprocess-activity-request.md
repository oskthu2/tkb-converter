# clinicalprocess:activity:request - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **clinicalprocess:activity:request**

## clinicalprocess:activity:request

Syftet med domänen är att hantera remissprocessen nationellt och lokalt, mellan och inom vårdgivare, från remiss till svar. Domänen innehåller specifikationer för att skicka och ta emot remisser, bekräftelser och svar samt tjänster för att leverera statusinformation för remisser.

* Svenskt kortnamn: Svenskt namn
  * remisshantering: vård- och omsorg kärnprocess:hantera aktiviteter:remisshantering
* Svenskt kortnamn: Typ
  * remisshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * remisshantering: [TKB_clinicalprocess_activity_request](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_activity_request/index.html)
* Svenskt kortnamn: Källkod
  * remisshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src)
* Svenskt kortnamn: Ärenden
  * remisshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetRequestInstruction | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:GetRequestInstruction:2:rivtabp21` |
| GetRequestStatus | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:GetRequestStatus:2:rivtabp21` |
| ProcessRequest | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:ProcessRequest:2:rivtabp21` |
| ProcessRequest | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:ProcessRequest:1:rivtabp21` |
| ProcessRequestConfirmation | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmation:2:rivtabp21` |
| ProcessRequestConfirmation | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmation:1:rivtabp21` |
| ProcessRequestOutcome | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:ProcessRequestOutcome:2:rivtabp21` |
| ProcessRequestOutcome | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:activity:request:ProcessRequestOutcome:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0.2 | TKB, AB, IS | [Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/VIS_granskning - clinicalprocess_activity_request_1.0.2.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/VIS_granskning - clinicalprocess_activity_request_1.0.2.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/T-granskning - clinicalprocess_activity_request_1.0.2 (1).docx) | [zip](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/ServiceContracts_clinicalprocess_activity_request_1.0.2.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/1.0.2) |
| 1.0.1 | TKB, IS, AB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/T-granskning -clinicalprocess_activity_request_1.0.1.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/VIS_granskning - clinicalprocess_activity_request_1.0.1.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/VIS_granskning - clinicalprocess_activity_request_1.0.1.docx) | [zip](http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/ServiceContracts_clinicalprocess_activity_request_1.0.1 (1).zip)·[källkod](https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/1.0.1) |
| trunk | IS, TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

