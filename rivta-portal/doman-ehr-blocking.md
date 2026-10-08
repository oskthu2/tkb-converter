# ehr:blocking - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **ehr:blocking**

## ehr:blocking

OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: spärrhantering - informationsecurity:authorization:blocking Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare. Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ.

* Svenskt kortnamn: Svenskt namn
  * spärrhantering: infrastruktur:säkerhetstjänster:spärrhantering
* Svenskt kortnamn: Typ
  * spärrhantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * spärrhantering: [TKB_ehr_blocking](https://oskthu2.github.io/tkb-converter/TKB_ehr_blocking/index.html)
* Svenskt kortnamn: Källkod
  * spärrhantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.ehr.blocking/src)
* Svenskt kortnamn: Ärenden
  * spärrhantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.ehr.blocking/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelTemporaryExtendedRevoke | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevoke:2:rivtabp21` |
| CheckBlocks | 3.0 | rivtabp21 | `urn:riv:ehr:blocking:accesscontrol:CheckBlocks:3:rivtabp21` |
| CheckBlocks | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:accesscontrol:CheckBlocks:2:rivtabp21` |
| DeleteExtendedBlock | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:DeleteExtendedBlock:2:rivtabp21` |
| GetAllBlocks | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:querying:GetAllBlocks:2:rivtabp21` |
| GetAllBlocksForPatient | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:querying:GetAllBlocksForPatient:2:rivtabp21` |
| GetBlocks | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:querying:GetBlocks:2:rivtabp21` |
| GetBlocksForPatient | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:querying:GetBlocksForPatient:2:rivtabp21` |
| GetExtendedBlocksForPatient | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatient:2:rivtabp21` |
| GetPatientIds | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:GetPatientIds:2:rivtabp21` |
| RegisterBlock | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:synchronization:RegisterBlock:2:rivtabp21` |
| RegisterExtendedBlock | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:RegisterExtendedBlock:2:rivtabp21` |
| RegisterTemporaryExtendedRevoke | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevoke:2:rivtabp21` |
| RegisterTemporaryRevoke | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevoke:2:rivtabp21` |
| RevokeExtendedBlock | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:administration:RevokeExtendedBlock:2:rivtabp21` |
| UnregisterBlock | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:synchronization:UnregisterBlock:2:rivtabp21` |
| UnregisterTemporaryRevoke | 2.0 | rivtabp21 | `urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevoke:2:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 3.2.2 | AB, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//ehr_blocking/3.2.2/T-granskning - ehr_blocking_3.2.2.docx) | [zip](http://rivta.se/downloads//ehr_blocking/3.2.2/ServiceContracts_ehr_blocking_3.2.2.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_3.2.2) |
| 2.0 |  | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads/ehr_blocking/2.0/ServiceContracts_ehr_blocking_2.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_2.0) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

