# Händelsekod - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Händelsekod**

## CodeSystem: Händelsekod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/handelskod-cs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:HandelskodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodsystem för händelsetyper i CertificateStatusUpdateForCare enligt clinicalprocess:healthcond:certificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Händelsekod — ValueSet](ValueSet-handelskod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "handelskod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/handelskod-cs",
  "version" : "4.1-RC1",
  "name" : "HandelskodCS",
  "title" : "Händelsekod",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodsystem för händelsetyper i CertificateStatusUpdateForCare enligt clinicalprocess:healthcond:certificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "SKAPAT",
    "display" : "SKAPAT",
    "definition" : "Intygsutkast skapat"
  },
  {
    "code" : "ANDRAT",
    "display" : "ANDRAT",
    "definition" : "Intygsutkast ändrat"
  },
  {
    "code" : "KFSIGN",
    "display" : "KFSIGN",
    "definition" : "Intyg klart för signering"
  },
  {
    "code" : "SIGNAT",
    "display" : "SIGNAT",
    "definition" : "Intyg signerat"
  },
  {
    "code" : "SKICKAT",
    "display" : "SKICKAT",
    "definition" : "Intyg skickat till intygsmottagare"
  },
  {
    "code" : "MAKULERAT",
    "display" : "MAKULERAT",
    "definition" : "Intyg makulerat"
  },
  {
    "code" : "NYFRFM",
    "display" : "NYFRFM",
    "definition" : "Ny fråga från intygsmottagare"
  },
  {
    "code" : "HANFRFM",
    "display" : "HANFRFM",
    "definition" : "Fråga från intygsmottagare hanterad"
  },
  {
    "code" : "SVARFM",
    "display" : "SVARFM",
    "definition" : "Svar skickat till intygsmottagare"
  },
  {
    "code" : "NYSVFM",
    "display" : "NYSVFM",
    "definition" : "Nytt svar från intygsmottagare"
  },
  {
    "code" : "HANSVFM",
    "display" : "HANSVFM",
    "definition" : "Svar från intygsmottagare hanterat"
  },
  {
    "code" : "NYFRFV",
    "display" : "NYFRFV",
    "definition" : "Ny fråga från vården"
  },
  {
    "code" : "HANFRFV",
    "display" : "HANFRFV",
    "definition" : "Fråga från vården hanterad"
  },
  {
    "code" : "SVARFV",
    "display" : "SVARFV",
    "definition" : "Svar skickat från vården"
  },
  {
    "code" : "NYSVFV",
    "display" : "NYSVFV",
    "definition" : "Nytt svar från vården"
  },
  {
    "code" : "HANSVFV",
    "display" : "HANSVFV",
    "definition" : "Svar från vården hanterat"
  }]
}

```
