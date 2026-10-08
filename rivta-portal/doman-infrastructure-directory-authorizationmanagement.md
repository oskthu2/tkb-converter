# infrastructure:directory:authorizationmanagement - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **infrastructure:directory:authorizationmanagement**

## infrastructure:directory:authorizationmanagement

Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrad och aktuell behörighetsgrundande information. Användningsområden utgörs främst av sökningar efter behörighetsgrundande egenskaper i form av information om personers uppdrag kopplade till organisation samt anställningsrelaterade och personliga egenskaper av betydelse för åtkomst till information, vilket ofta, men inte alltid, är relaterat till Patientdatalagen, PDL. 

* Svenskt kortnamn: Svenskt namn
  * behörighetshantering: infrastruktur:katalogtjänster:behörighetshantering
* Svenskt kortnamn: Typ
  * behörighetshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * behörighetshantering: [TKB_infrastructure_directory_authorizationmanagement](https://oskthu2.github.io/tkb-converter/TKB_infrastructure_directory_authorizationmanagement/index.html)
* Svenskt kortnamn: Källkod
  * behörighetshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src)
* Svenskt kortnamn: Ärenden
  * behörighetshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetAdminCredentialsForPerson | 2.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:2:rivtabp21` |
| GetAdminCredentialsForPerson | 1.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:1:rivtabp21` |
| GetAdminCredentialsForPersonIncludingProtectedPerson | 2.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:2:rivtabp21` |
| GetAdminCredentialsForPersonIncludingProtectedPerson | 1.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:1:rivtabp21` |
| GetCredentialsForPerson | 2.2 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPerson:2:rivtabp21` |
| GetCredentialsForPerson | 1.2 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPerson:1:rivtabp21` |
| GetCredentialsForPersonIncludingProtectedPerson | 2.2 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:2:rivtabp21` |
| GetCredentialsForPersonIncludingProtectedPerson | 1.2 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:1:rivtabp21` |
| GetHospCredentialsForPerson | 1.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetHospCredentialsForPerson:1:rivtabp21` |
| GetHospLastUpdate | 1.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetHospLastUpdate:1:rivtabp21` |
| GetPersonAuthorizedToSystem | 2.1 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetPersonAuthorizedToSystem:2:rivtabp21` |
| GetPersonAuthorizedToSystem | 1.1 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetPersonAuthorizedToSystem:1:rivtabp21` |
| GetPersonAuthorizedToSystemIncludingProtectedPerson | 2.1 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetPersonAuthorizedToSystemIncludingProtectedPerson:2:rivtabp21` |
| GetPersonAuthorizedToSystemIncludingProtectedPerson | 1.1 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:GetPersonAuthorizedToSystemIncludingProtectedPerson:1:rivtabp21` |
| HandleHospCertificationPerson | 1.0 | rivtabp21 | `urn:riv:infrastructure:directory:authorizationmanagement:HandleHospCertificationPerson:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 2.4 | AB, TKB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/VIS_granskning - infrastructure_directory_authorizationmanagement_2.4.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/T-granskning -   infrastructure_directory_authorizationmanagement_2.4.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/VIS_granskning - infrastructure_directory_authorizationmanagement_2.4.docx) | [zip](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/ServiceContracts_infrastructure_directory_authorizationmanagement_2.4.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.4) |
| 2.3 | TKB, AB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.3/T-granskning infrastructure_directory_authorizationmanagement_2.3.docx) | [zip](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.3/ServiceContracts_infrastructure_directory_authorizationmanagement_2.3.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.3) |
| 2.2 | AB, TKB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/VIS_granskning infrastructure_directory_authorizationmanagement_2.2.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/T-granskning infrastructure_directory_authorizationmanagement_2.2.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/VIS_granskning infrastructure_directory_authorizationmanagement_2.2.docx) | [zip](http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/ServiceContracts_infrastructure_directory_authorizationmanagement_2.2.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.2) |
| trunk | AB, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

