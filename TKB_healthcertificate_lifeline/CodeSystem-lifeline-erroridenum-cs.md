# Feltyp - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Feltyp**

## CodeSystem: Feltyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lifeline-erroridenum-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:ErrorIdEnumCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ErrorIdEnumType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Feltyp](ValueSet-lifeline-erroridenum-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lifeline-erroridenum-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lifeline-erroridenum-cs",
  "version" : "1.0.0",
  "name" : "ErrorIdEnumCS",
  "title" : "Feltyp",
  "status" : "active",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ErrorIdEnumType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR"
  },
  {
    "code" : "TRANSFORMATION_ERROR",
    "display" : "TRANSFORMATION_ERROR"
  },
  {
    "code" : "APPLICATION_ERROR",
    "display" : "APPLICATION_ERROR"
  },
  {
    "code" : "TECHNICAL_ERROR",
    "display" : "TECHNICAL_ERROR"
  }]
}

```
