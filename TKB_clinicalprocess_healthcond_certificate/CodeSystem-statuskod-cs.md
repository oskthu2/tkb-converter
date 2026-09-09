# Statuskod - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statuskod**

## CodeSystem: Statuskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/statuskod-cs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:StatuskodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodsystem för intygsstatus i SetCertificateStatus och GetCertificate enligt clinicalprocess:healthcond:certificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Statuskod — ValueSet](ValueSet-statuskod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "statuskod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/statuskod-cs",
  "version" : "4.1-RC1",
  "name" : "StatuskodCS",
  "title" : "Statuskod",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodsystem för intygsstatus i SetCertificateStatus och GetCertificate enligt clinicalprocess:healthcond:certificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "SENT",
    "display" : "SENT",
    "definition" : "Intyget är skickat till angiven intygsmottagare"
  },
  {
    "code" : "RECEIV",
    "display" : "RECEIV",
    "definition" : "Intyget har mottagits av intygsmottagaren"
  },
  {
    "code" : "CANCEL",
    "display" : "CANCEL",
    "definition" : "Intyget är makulerat"
  },
  {
    "code" : "DELETED",
    "display" : "DELETED",
    "definition" : "Intyget är raderat av invånaren"
  },
  {
    "code" : "RESTOR",
    "display" : "RESTOR",
    "definition" : "Intyget är återställt från papperskorgen"
  }]
}

```
