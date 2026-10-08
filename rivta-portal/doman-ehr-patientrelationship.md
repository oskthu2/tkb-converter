# ehr:patientrelationship - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **ehr:patientrelationship**

## ehr:patientrelationship

Patientrelationshantering registrerar och lagrar information om relationer mellan personal och patient. Tjänstekontrakten för Patientrelationshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" patientrelationer, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Tjänstekontrakten specificerar bland annat hur patientrelationsunderlag ska hämtas ut för intern kontroll av patientrelation i vårdsystemet, hur anrop från ett vårdsystem ska göras för att kontrollera om patientrelation finns eller inte, och för att kunna ge patienten en sammanställd lista av dennes alla patientrelationer som finns registrerade hos vårdgivaren. 

* Svenskt kortnamn: Svenskt namn
  * patientrelationshantering: infrastruktur:säkerhetstjänster:patientrelationshantering
* Svenskt kortnamn: Typ
  * patientrelationshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * patientrelationshantering: [TKB_ehr_patientrelationship](https://oskthu2.github.io/tkb-converter/TKB_ehr_patientrelationship/index.html)
* Svenskt kortnamn: Källkod
  * patientrelationshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src)
* Svenskt kortnamn: Ärenden
  * patientrelationshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelExtendedPatientRelation | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelation:1:rivtabp21` |
| CheckPatientRelation | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelation:1:rivtabp21` |
| DeleteExtendedPatientRelation | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelation:1:rivtabp21` |
| GetExtendedPatientRelationsForPatient | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatient:1:rivtabp21` |
| GetPatientRelationsForCareProvider | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProvider:1:rivtabp21` |
| GetPatientRelationsForPatient | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatient:1:rivtabp21` |
| RegisterExtendedPatientRelation | 1.0 | rivtabp21 | `urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelation:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0.1 | AB, TKB | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads/ehr_patientrelationship/1.0.1/ServiceContracts_ehr_patientrelationship_1.0.1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src/ehr_patientrelationship_1.0.1_RC1) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

