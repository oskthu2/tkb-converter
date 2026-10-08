# ehr:patientconsent - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **ehr:patientconsent**

## ehr:patientconsent

OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: samtyckestjänst - informationsecurity:authorization:consent För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke. Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa.

* Svenskt kortnamn: Svenskt namn
  * samtyckeshantering: infrastruktur:säkerhetstjänster:samtyckeshantering
* Svenskt kortnamn: Typ
  * samtyckeshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * samtyckeshantering: [TKB_ehr_patientconsent](https://oskthu2.github.io/tkb-converter/TKB_ehr_patientconsent/index.html)
* Svenskt kortnamn: Källkod
  * samtyckeshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src)
* Svenskt kortnamn: Ärenden
  * samtyckeshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelExtendedConsent | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:administration:CancelExtendedConsent:1:rivtabp21` |
| CheckConsent | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:accesscontrol:CheckConsent:1:rivtabp21` |
| DeleteExtendedConsent | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:administration:DeleteExtendedConsent:1:rivtabp21` |
| GetConsentsForCareProvider | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:querying:GetConsentsForCareProvider:1:rivtabp21` |
| GetConsentsForPatient | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:querying:GetConsentsForPatient:1:rivtabp21` |
| GetExtendedConsentsForPatient | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatient:1:rivtabp21` |
| RegisterExtendedConsent | 1.0 | rivtabp21 | `urn:riv:ehr:patientconsent:administration:RegisterExtendedConsent:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0.1 | TKB, AB | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads/ehr_patientconsent/1.0.1/ServiceContracts_ehr_patientconsent_1_0_1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/ehr_patientconsent_1.0.1_RC1) |
| trunk | AB, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

