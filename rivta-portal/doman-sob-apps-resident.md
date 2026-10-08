# sob:apps:resident - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **sob:apps:resident**

## sob:apps:resident

Tjänstedomänen gör invånarens pågående behandlingsplaner tillgängliga i Stöd- och benhandlingsplattformen. Tjänstedomänens syfte är att erbjuda möjlighet för tredjeparts-applikationsutvecklare att bygga alternativa användargränssnitt mot Stöd- och behandlingsplattformen, till exempel mot mobila enheter. Tjänstekontrakten inom domänen stödjer endast invånarens ingång, d.v.s att invånare kan komma åt sina egna pågående behandlingsplaner. Invånare kan tack vare tjänstekontrakten få en överblick över behandlingsplanen, svara på formulärfrågor samt möjlighet att kommunicera via en meddelandefunktion med ansvarig behandlare.

* Svenskt kortnamn: Svenskt namn
  * API för sob-tjänsten: vård- och omsorg kärnprocess: hantera aktiviteter: stöd och behandling
* Svenskt kortnamn: Typ
  * API för sob-tjänsten: Applikationsspecifik tjänstedomän
* Svenskt kortnamn: FHIR IG
  * API för sob-tjänsten: Ingen FHIR IG ännu
* Svenskt kortnamn: Källkod
  * API för sob-tjänsten: [Bitbucket](https://bitbucket.org/rivta-domains/riv-application.sob.apps.resident/src)
* Svenskt kortnamn: Ärenden
  * API för sob-tjänsten: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv-application.sob.apps.resident/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CreateConversation | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:CreateConversation:1:rivtabp21` |
| CreateLinkedForm | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:CreateLinkedForm:1:rivtabp21` |
| CreateMessage | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:CreateMessage:1:rivtabp21` |
| GetConversations | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetConversations:1:rivtabp21` |
| GetNotifications | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetNotifications:1:rivtabp21` |
| GetOperationalInformation | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetOperationalInformation:1:rivtabp21` |
| GetPendingConsents | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetPendingConsents:1:rivtabp21` |
| GetProcess | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetProcess:1:rivtabp21` |
| GetProcesses | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetProcesses:1:rivtabp21` |
| GetStep | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:GetStep:1:rivtabp21` |
| IgnoreForm | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:IgnoreForm:1:rivtabp21` |
| SetConsent | 1.0 | rivtabp21 | `urn:riv-application:sob:apps:resident:SetConsent:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0_RC3 | IS, AB, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//sob_apps_resident/1.0_RC3/T-granskning sob_apps_resident_1.0_RC3.docx) | [zip](http://rivta.se/downloads//sob_apps_resident/1.0_RC3/ServiceContracts_sob_apps_resident_1.0_RC3.zip)·[källkod](https://bitbucket.org/rivta-domains/riv-application.sob.apps.resident/src/1.0_RC3) |
| 1.0 | AB, IS, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//sob_apps_resident/1.0/T-granskning - riv-application_sob_apps_resident - 1.0.docx) | [zip](http://rivta.se/downloads//sob_apps_resident/1.0/ServiceContracts_sob_apps_resident_1.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv-application.sob.apps.resident/src/1.0) |
| trunk |  |  | [källkod](https://bitbucket.org/rivta-domains/riv-application.sob.apps.resident/src) |

[← Alla tjänstedomäner](tjanstedomaner.md)

