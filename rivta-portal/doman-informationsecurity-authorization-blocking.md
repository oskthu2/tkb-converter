# informationsecurity:authorization:blocking - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **informationsecurity:authorization:blocking**

## informationsecurity:authorization:blocking

Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare. Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ. *OBSERVERA: I releasepaketet nedan finns testsviter för två av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”

* Svenskt kortnamn: Svenskt namn
  * spärrhantering: infrastruktur:säkerhetstjänster:spärrhantering
* Svenskt kortnamn: Typ
  * spärrhantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * spärrhantering: [TKB_informationsecurity_authorization_blocking](https://oskthu2.github.io/tkb-converter/TKB_informationsecurity_authorization_blocking/index.html)
* Svenskt kortnamn: Källkod
  * spärrhantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelTemporaryExtendedRevoke | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevoke:4:rivtabp21` |
| CheckBlocks | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:CheckBlocks:4:rivtabp21` |
| DeleteExtendedBlock | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlock:4:rivtabp21` |
| GetBlocks | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:GetBlocks:4:rivtabp21` |
| GetBlocksForQualityRegistry | 1.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:GetBlocksForQualityRegistry:1:rivtabp21` |
| GetExtendedBlocksForPatient | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatient:4:rivtabp21` |
| GetPatientIds | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:GetPatientIds:4:rivtabp21` |
| RegisterBlock | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RegisterBlock:4:rivtabp21` |
| RegisterBlockForQualityRegistry | 1.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RegisterBlockForQualityRegistry:1:rivtabp21` |
| RegisterExtendedBlock | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlock:4:rivtabp21` |
| RegisterTemporaryExtendedRevoke | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryExtendedRevoke:4:rivtabp21` |
| RegisterTemporaryRevoke | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevoke:4:rivtabp21` |
| RemoveBlockForQualityRegistry | 1.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RemoveBlockForQualityRegistry:1:rivtabp21` |
| RevokeExtendedBlock | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlock:4:rivtabp21` |
| UnregisterBlock | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:UnregisterBlock:4:rivtabp21` |
| UnregisterTemporaryRevoke | 4.0 | rivtabp21 | `urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevoke:4:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 4.0.3 | AB, TKB, IS | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/T-granskning -  informationsecurity_authorization_blocking_4.0.3.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/VIS_granskning - informationsecurity_authorization_blocking_4.0.3.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/VIS_granskning - informationsecurity_authorization_blocking_4.0.3.docx) | [zip](http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/ServiceContracts_informationsecurity_authorization_blocking_4.0.3.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.3) |
| 4.0.1 | AB, IS, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.1/T-Granskning-riv.informationsecurity.authorization.blocking_4_0_1.docx) | [zip](http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.1/ServiceContracts_informationsecurity_authorization_blocking_4.0.1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.1) |
| trunk |  |  |  |

[← Alla tjänstedomäner](tjanstedomaner.md)

