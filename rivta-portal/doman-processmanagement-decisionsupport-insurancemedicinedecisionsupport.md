# processmanagement:decisionsupport:insurancemedicinedecisionsupport - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **processmanagement:decisionsupport:insurancemedicinedecisionsupport**

## processmanagement:decisionsupport:insurancemedicinedecisionsupport

Syftet med denna tjänstedomän är att effektivisera processen kring sjukskrivningsbedömningar. Detta åstadkoms genom att domänen gör grundläggande information för sjukskrivningsbedömningar tillgänglig på ett strukturerat sätt, så att dessa kan integreras i informationssystem. Tjänstekontrakten inom domänen hanterar informationsflöden som kan; ge vägledning om vilka informationsmängder som är av vikt vid en sjukskrivningsbedömning, ge beslutsunderlag för sjukskrivningsbedömning baserat på de värden som anges, samt att ge övrig information om en diagnos som inte är kopplad till sjukskrivningsbedömningen - men som kan vara till stöd i sjukskrivningsprocessen.

* Svenskt kortnamn: Svenskt namn
  * försäkringsmedicinskt beslutsstöd: operativ processtyrning:beslutsstöd:försäkringsmedicinskt beslutsstöd
* Svenskt kortnamn: Typ
  * försäkringsmedicinskt beslutsstöd: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * försäkringsmedicinskt beslutsstöd: [TKB_processmanagement_decisionsupport_insurancemedicinedecisio](https://oskthu2.github.io/tkb-converter/TKB_processmanagement_decisionsupport_insurancemedicinedecisio/index.html)
* Svenskt kortnamn: Källkod
  * försäkringsmedicinskt beslutsstöd: [Bitbucket](https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src)
* Svenskt kortnamn: Ärenden
  * försäkringsmedicinskt beslutsstöd: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetDiagnosInformation | 1.0 | rivtabp21 | `urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1:rivtabp21` |
| GetFmb | 1.0 | rivtabp21 | `urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1:rivtabp21` |
| GetVersions | 1.0 | rivtabp21 | `urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0 | TKB, AB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/AL T-granskning processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.doc)[Arkitektur & Regelverk: Informatik: Underkänd](http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/VIS-granskning processmanagement.decisionsupport.insurancemedicinedecisionsupport.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/VIS-granskning processmanagement.decisionsupport.insurancemedicinedecisionsupport.docx) | [zip](http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/ServiceContracts_processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0) |
| trunk | AB, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

