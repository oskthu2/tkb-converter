# itintegration:engagementindex - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **itintegration:engagementindex**

## itintegration:engagementindex

Engagemangsindex är en stödtjänst som används av en tjänsteplattform. Informationen i indexet syftar till att minimera antalet anrop som en tjänstekonsument behöver göra för att få information om en specifik patient. Från indexet får tjänstekonsumenten information om vilka tjänsteproducenter som har information om den specifika patienten. Det räcker därmed att tjänstekonsumenten anropar dessa istället för att anropa alla tjänsteproducenter och fråga vilka av dem som har information om den specifika patienten. Indexet i sig innehåller inte någon patientinformation.

* Svenskt kortnamn: Svenskt namn
  * engagemangsindex: infrastruktur:tjänsteförmedlingstjänster:engagemangsindex
* Svenskt kortnamn: Typ
  * engagemangsindex: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * engagemangsindex: [TKB_itintegration_engagementindex](https://oskthu2.github.io/tkb-converter/TKB_itintegration_engagementindex/index.html)
* Svenskt kortnamn: Källkod
  * engagemangsindex: [Bitbucket](https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src)
* Svenskt kortnamn: Ärenden
  * engagemangsindex: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| FindContent | 1.0 | rivtabp21 | `urn:riv:itintegration:engagementindex:FindContent:1:rivtabp21` |
| GetUpdates | 1.0 | rivtabp21 | `urn:riv:itintegration:engagementindex:GetUpdates:1:rivtabp21` |
| ProcessNotification | 1.0 | rivtabp21 | `urn:riv:itintegration:engagementindex:ProcessNotification:1:rivtabp21` |
| Update | 1.0 | rivtabp21 | `urn:riv:itintegration:engagementindex:Update:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0.6 | TKB, AB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//itintegration_engagementindex/1.0.6/T-granskning - itintegration_engagementindex_1.0.6.docx) | [zip](http://rivta.se/downloads//itintegration_engagementindex/1.0.6/ServiceContracts_itintegration_engagementindex_1.0.6.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/1.0.6) |
| 1.0.5 | TKB, AB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//itintegration_engagementindex/1.0.5/VIS_granskning_itintegration_engagementindex_1.0.1.docx)[Arkitektur & Regelverk: Informatik: Underkänd](http://rivta.se/downloads//itintegration_engagementindex/1.0.5/VIS_granskning_itintegration_engagementindex_1.0.1.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//itintegration_engagementindex/1.0.5/AL-T Granskning av itintegration_engagementindex_1.0.1_RC4.docx) | [zip](http://rivta.se/downloads//itintegration_engagementindex/1.0.5/ServiceContracts_itintegration_engagementindex_1.0.5.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/1.0.5) |
| 1.0.1 | AB, TKB | [Arkitektur & Regelverk: Informatik: Underkänd](http://rivta.se/downloads/itintegration_engagementindex/1.0.1/VIS_granskning_itintegration_engagementindex_1.0.1.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads/itintegration_engagementindex/1.0.1/AL-T Granskning av itintegration_engagementindex_1.0.1_RC4.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads/itintegration_engagementindex/1.0.1/VIS_granskning_itintegration_engagementindex_1.0.1.docx) | [zip](http://rivta.se/downloads/itintegration_engagementindex/1.0.1/ServiceContracts_itintegration_engagementindex_1.0.1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/itintegration_engagementindex_1.0.1) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

