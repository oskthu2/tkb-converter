# Dosunderlagets status - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosunderlagets status**

## CodeSystem: Dosunderlagets status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/axs-dosunderlagstatus-cs | *Version*:7.0.0 |
| Active as of 2026-09-26 | *Computable Name*:DosunderlagStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Status för dosunderlaget enligt dokumentationen av dosunderlagStatus i HamtaPatientInfoResponder_6.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Dosunderlagets status](ValueSet-axs-dosunderlagstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "axs-dosunderlagstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/axs-dosunderlagstatus-cs",
  "version" : "7.0.0",
  "name" : "DosunderlagStatusCS",
  "title" : "Dosunderlagets status",
  "status" : "active",
  "date" : "2026-09-26T19:42:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Status för dosunderlaget enligt dokumentationen av dosunderlagStatus i HamtaPatientInfoResponder_6.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "500",
    "display" : "Ej godkänt"
  },
  {
    "code" : "510",
    "display" : "Godkänt"
  },
  {
    "code" : "520",
    "display" : "Avregistrerat"
  }]
}

```
