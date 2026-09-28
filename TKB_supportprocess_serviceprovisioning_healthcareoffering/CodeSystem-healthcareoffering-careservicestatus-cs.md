# Status för vård- och omsorgstjänst (CareServiceStatus) - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status för vård- och omsorgstjänst (CareServiceStatus)**

## CodeSystem: Status för vård- och omsorgstjänst (CareServiceStatus) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/healthcareoffering-careservicestatus-cs | *Version*:3.0.0 |
| Active as of 2026-09-28 | *Computable Name*:CareServiceStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för CareServiceStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, careServiceStatus). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Status för vård- och omsorgstjänst (CareServiceStatus)](ValueSet-healthcareoffering-careservicestatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "healthcareoffering-careservicestatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/healthcareoffering-careservicestatus-cs",
  "version" : "3.0.0",
  "name" : "CareServiceStatusCS",
  "title" : "Status för vård- och omsorgstjänst (CareServiceStatus)",
  "status" : "active",
  "date" : "2026-09-28T09:27:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för CareServiceStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, careServiceStatus).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "INACTIVE",
    "display" : "Inaktiv",
    "definition" : "Innan vård- och omsorgstjänsten är färdig att erbjudas."
  },
  {
    "code" : "ACTIVE",
    "display" : "Aktiv",
    "definition" : "Vård- och omsorgstjänsten är färdigbeskriven och kan erbjudas."
  },
  {
    "code" : "DEPRECATED",
    "display" : "Utgången",
    "definition" : "Vård- och omsorgstjänsten ska ej längre erbjudas."
  }]
}

```
