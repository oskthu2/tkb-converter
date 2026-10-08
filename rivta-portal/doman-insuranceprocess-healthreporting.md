# insuranceprocess:healthreporting - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **insuranceprocess:healthreporting**

## insuranceprocess:healthreporting

Denna tjänstedomän syftar till att hantera vårdgivarperspektivet på sjukskrivningsprocessen för en individ. Tjänstekontrakten inom domänen hanterar vårdens, Försäkringskassans och invånarens behov av e-tjänster för hantering av läkarintyg (Blankett FK 7263). Dessutom hanteras stödprocesser för ärendehantering kring ett läkarintyg sk frågor och svar. Även processer för att hantera frågor i svar från Försäkringskassan till vårdens sk ärendelåda ingår.

* Svenskt kortnamn: Svenskt namn
  * intygshantering: vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering
* Svenskt kortnamn: Typ
  * intygshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * intygshantering: [TKB_insuranceprocess_healthreporting](https://oskthu2.github.io/tkb-converter/TKB_insuranceprocess_healthreporting/index.html)
* Svenskt kortnamn: Källkod
  * intygshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src)
* Svenskt kortnamn: Ärenden
  * intygshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| DeleteAnswers | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1:rivtabp20` |
| DeleteQuestions | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1:rivtabp20` |
| FindAllAnswers | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1:rivtabp20` |
| FindAllQuestions | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1:rivtabp20` |
| GetCertificate | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:GetCertificate:1:rivtabp20` |
| ListCertificates | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:ListCertificates:1:rivtabp20` |
| ReceiveMedicalCertificateAnswer | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1:rivtabp20` |
| ReceiveMedicalCertificateQuestion | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1:rivtabp20` |
| RegisterMedicalCertificate | 3.1 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3:rivtabp20` |
| RevokeMedicalCertificate | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1:rivtabp20` |
| SendMedicalCertificate | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1:rivtabp20` |
| SendMedicalCertificateAnswer | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1:rivtabp20` |
| SendMedicalCertificateQuestion | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1:rivtabp20` |
| SetCertificateStatus | 1.0 | rivtabp20 | `urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1:rivtabp20` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 3.1.1 | AB, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads/insuranceprocess_healthreporting/3.1.1/AL-T Granskning av insuranceprocess_healthreporting_3.1.1_RC2.docx) | [zip](http://rivta.se/downloads/insuranceprocess_healthreporting/3.1.1/ServiceContracts_insuranceprocess_healthreporting_3.1.1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/insuranceprocess_healthreporting_3.1.1) |
| 3.0.0 | TKB | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads/insuranceprocess_healthreporting/3.0.0/Servicecontracts_insuranceprocess_healthreporting_3.0.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/TD_3_0_0_R) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

