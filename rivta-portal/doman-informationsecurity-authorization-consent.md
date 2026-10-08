# informationsecurity:authorization:consent - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **informationsecurity:authorization:consent**

## informationsecurity:authorization:consent

För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke. Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa. *OBSERVERA: I releasepaketet nedan finns testsviter för tre av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”

* Svenskt kortnamn: Svenskt namn
  * samtyckestjänst: informationssäkerhet:säkerhetstjänster:samtyckestjänst
* Svenskt kortnamn: Typ
  * samtyckestjänst: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * samtyckestjänst: [TKB_informationsecurity_authorization_consent](https://oskthu2.github.io/tkb-converter/TKB_informationsecurity_authorization_consent/index.html)
* Svenskt kortnamn: Källkod
  * samtyckestjänst: [Bitbucket](https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelExtendedConsent | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:CancelExtendedConsent:2:rivtabp21` |
| CheckConsent | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:CheckConsent:2:rivtabp21` |
| DeleteExtendedConsent | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsent:2:rivtabp21` |
| GetConsentsForCareProvider | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProvider:2:rivtabp21` |
| GetConsentsForPatient | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:GetConsentsForPatient:2:rivtabp21` |
| GetExtendedConsentsForPatient | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatient:2:rivtabp21` |
| RegisterExtendedConsent | 2.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsent:2:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 2.0.2 | IS, AB, TKB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/VIS_granskning - informationsecurity_authorization_consent_2.0.2.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/VIS_granskning - informationsecurity_authorization_consent_2.0.2.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/T-granskning -  informationsecurity.authorization.consent 2.0.2.docx) | [zip](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/ServiceContracts_informationsecurity_authorization_consent_2.0.2.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0.2) |
| 2.0 | AB, IS, TKB, TKB | [Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/VIS_granskning_informationsecurity_authorization_consent_2.0.docx)[Arkitektur & Regelverk: Säkerhet: Delvis Godkänd](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/VIS_granskning_informationsecurity_authorization_consent_2.0.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/T-granskning - informationsecurity_authorization_consent_2.0.docx) | [zip](http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/ServiceContracts_informationsecurity_authorization_consent_2.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0) |
| trunk |  |  |  |

[← Alla tjänstedomäner](tjanstedomaner.md)

