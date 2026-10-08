# infrastructure:eservicesupply:patientportal - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **infrastructure:eservicesupply:patientportal**

## infrastructure:eservicesupply:patientportal

Syftet med denna tjänstedomän är att göra det möjligt för vården att skicka meddelande till invånare som är användare av invånarportal. Tjänstekontrakten gör det möjligt att dels kontrollera om en individ är användare av en portal, och dels att skicka själva meddelandet.

* Svenskt kortnamn: Svenskt namn
  * patientportal: infrastruktur:etjänsteförsörjning:patientportal
* Svenskt kortnamn: Typ
  * patientportal: Applikationsspecifik tjänstedomän
* Svenskt kortnamn: FHIR IG
  * patientportal: Ingen FHIR IG ännu
* Svenskt kortnamn: Källkod
  * patientportal: [Bitbucket](https://bitbucket.org/rivta-domains/riv-application.infrastructure.eservicesupply.patientportal/src)
* Svenskt kortnamn: Ärenden
  * patientportal: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv-application.infrastructure.eservicesupply.patientportal/issues?status=new&status=open)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| AddMessage | 2.0 | rivtabp21 | `urn:riv-application:infrastructure:eservicesupply:patientportal:AddMessage:2:rivtabp21` |
| AddMessageToPatientPortalInbox | 1.1 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:patientportal:AddMessageToPatientPortalInbox:1:rivtabp21` |
| GetMessageThreadStatus | 2.0 | rivtabp21 | `urn:riv-application:infrastructure:eservicesupply:patientportal:GetMessageThreadStatus:2:rivtabp21` |
| IsActiveUser | 2.0 | rivtabp21 | `urn:riv-application:infrastructure:eservicesupply:patientportal:IsActiveUser:2:rivtabp21` |
| IsActiveUser | 1.1 | rivtabp21 | `urn:riv:infrastructure:eservicesupply:patientportal:IsActiveUser:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 2.0 | TKB, AB | [Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/2.0/VIS_granskning - infrastructure_eservicesupply_patientportal_2.0.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/2.0/T-granskning -  infrastructure_eservicesupply_patientportal_2.0.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/2.0/VIS_granskning - infrastructure_eservicesupply_patientportal_2.0.docx) | [zip](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/2.0/ServiceContracts_infrastructure_eservicesupply_patientportal_2.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv-application.infrastructure.eservicesupply.patientportal/src/2.0) |
| 1.1 | TKB, AB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/1.1/VIS_granskningsmall_infrastructure_eservicesupply_patientportal_1.1.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/1.1/T-granskning - riv.infrastructure.eservicesupply.patientportal 1.1.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/1.1/VIS_granskningsmall_infrastructure_eservicesupply_patientportal_1.1.docx) | [zip](http://rivta.se/downloads//infrastructure_eservicesupply_patientportal/1.1/ServiceContracts_infrastructure_eservicesupply_patientportal_1.1 (1).zip)·[källkod](https://bitbucket.org/rivta-domains/riv-application.infrastructure.eservicesupply.patientportal/src/1.1) |
| trunk | AB, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv-application.infrastructure.eservicesupply.patientportal/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

