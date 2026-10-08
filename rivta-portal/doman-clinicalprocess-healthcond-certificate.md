# clinicalprocess:healthcond:certificate - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **clinicalprocess:healthcond:certificate**

## clinicalprocess:healthcond:certificate

Domänens syfte är att möjliggöra elektronisk hantering av intyg, samt att göra det möjligt för intygsutfärdare och intygsmottagare att kommunicera i arbetet med ett intyg. De informationsflöden som stöds av domänen kan delas in i tre olika perspektiv: Det första är informationsöverföring mellan ett vårdinformationssystem (journalsystem) och en intygsapplikation, vilket gör det möjligt för hälso- och sjukvårdspersonal att hantera delar av intygsutfärdandeprocessen i det system där de huvudsakligen arbetar. Det andra är informationsöverföring mellan en intygsapplikation och en central intygstjänst, vilket möjliggör vidare användning av elektroniska intyg såsom elektronisk överföring till intygsmottagare, åtkomst till elektroniska intyg för patienter, statistikbearbetning, och användning för uppföljning. Det tredje är informationsöverföring mellan en central intygstjänst och system som tillhör intygsmottagare.

* Svenskt kortnamn: Svenskt namn
  * Intygshantering: vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering
* Svenskt kortnamn: Typ
  * Intygshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * Intygshantering: [TKB_clinicalprocess_healthcond_certificate](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_certificate/index.html)
* Svenskt kortnamn: Källkod
  * Intygshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src)
* Svenskt kortnamn: Ärenden
  * Intygshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CertificateStatusUpdateForCare | 3.2 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:3:rivtabp21` |
| CertificateStatusUpdateForCare | 2.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:2:rivtabp21` |
| CertificateStatusUpdateForCare | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:1:rivtabp21` |
| CreateDraftCertificate | 3.3 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3:rivtabp21` |
| CreateDraftCertificate | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:2:rivtabp21` |
| CreateDraftCertificate | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:1:rivtabp21` |
| GetCertificate | 2.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2:rivtabp21` |
| GetCertificate | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:1:rivtabp21` |
| ListCertificatesForCare | 3.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3:rivtabp21` |
| ListCertificatesForCare | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:2:rivtabp21` |
| ListCertificatesForCare | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:1:rivtabp21` |
| ListCertificatesForCareWithQA | 3.3 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3:rivtabp21` |
| ListCertificatesForCareWithQA | 2.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:2:rivtabp21` |
| ListCertificatesForCareWithQA | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:1:rivtabp21` |
| ListCertificatesForCitizen | 4.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:4:rivtabp21` |
| ListCertificatesForCitizen | 3.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:3:rivtabp21` |
| ListCertificatesForCitizen | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:2:rivtabp21` |
| ListCertificatesForCitizen | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:1:rivtabp21` |
| ListSickLeavesForCare | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1:rivtabp21` |
| RegisterCertificate | 3.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3:rivtabp21` |
| RegisterCertificate | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:2:rivtabp21` |
| RegisterCertificate | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:1:rivtabp21` |
| RevokeCertificate | 2.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2:rivtabp21` |
| RevokeCertificate | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:1:rivtabp21` |
| SendCertificateToRecipient | 2.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2:rivtabp21` |
| SendCertificateToRecipient | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:1:rivtabp21` |
| SendMessageToCare | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:2:rivtabp21` |
| SendMessageToCare | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:1:rivtabp21` |
| SendMessageToRecipient | 2.1 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SendMessageToRecipient:2:rivtabp21` |
| SendMessageToRecipient | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SendMessageToRecipient:1:rivtabp21` |
| SetCertificateStatus | 2.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:2:rivtabp21` |
| SetCertificateStatus | 1.0 | rivtabp21 | `urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 4.0.5 | AB, TKB, IS | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/T-granskning_clinicalprocess_healthcond_certificate_4.0.5.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/VIS_granskning_clinicalprocess.healthcond.certificate_4.0.5.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/VIS_granskning_clinicalprocess.healthcond.certificate_4.0.5.docx) | [zip](http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/ServiceContracts_clinicalprocess_healthcond_certificate_4.0.5.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.0.5) |
| 4.0.4 | AB, IS, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.4/T-granskning_clinicalprocess_healthcond_certificate_4.0.4.dotx) | [zip](http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.4/ServiceContracts_clinicalprocess_healthcond_certificate_4.0.4.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.0.4) |
| trunk | AB, IS, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

