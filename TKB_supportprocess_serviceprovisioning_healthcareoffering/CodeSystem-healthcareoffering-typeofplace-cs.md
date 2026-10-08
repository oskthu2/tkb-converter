# Typ av plats (TypeOfPlace) - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av plats (TypeOfPlace)**

## CodeSystem: Typ av plats (TypeOfPlace) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/healthcareoffering-typeofplace-cs | *Version*:3.0.0 |
| Active as of 2026-10-08 | *Computable Name*:TypeOfPlaceCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfPlaceEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, typeOfPlace). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av plats (TypeOfPlace)](ValueSet-healthcareoffering-typeofplace-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "healthcareoffering-typeofplace-cs",
  "url" : "https://fhir.inera.se/CodeSystem/healthcareoffering-typeofplace-cs",
  "version" : "3.0.0",
  "name" : "TypeOfPlaceCS",
  "title" : "Typ av plats (TypeOfPlace)",
  "status" : "active",
  "date" : "2026-10-08T18:58:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfPlaceEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, typeOfPlace).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "ALL",
    "display" : "Alla",
    "definition" : "Både fysisk och virtuell plats."
  },
  {
    "code" : "PHYSICAL",
    "display" : "Fysisk",
    "definition" : "Endast fysisk plats."
  },
  {
    "code" : "VIRTUAL",
    "display" : "Virtuell",
    "definition" : "Endast virtuell plats."
  }]
}

```
