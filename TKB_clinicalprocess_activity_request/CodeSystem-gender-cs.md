# codeForGenderType - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **codeForGenderType**

## CodeSystem: codeForGenderType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/gender-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:GenderCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Administrativt kön, Skatteverket OID 1.2.752.129.2.2.1.1 (codes_2.2.xsd codeForGenderType_values). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [codeForGenderType](ValueSet-gender-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gender-cs",
  "url" : "https://fhir.inera.se/CodeSystem/gender-cs",
  "version" : "2.2.0",
  "name" : "GenderCS",
  "title" : "codeForGenderType",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Administrativt kön, Skatteverket OID 1.2.752.129.2.2.1.1 (codes_2.2.xsd codeForGenderType_values).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "Okänt"
  },
  {
    "code" : "1",
    "display" : "Man"
  },
  {
    "code" : "2",
    "display" : "Kvinna"
  },
  {
    "code" : "9",
    "display" : "Ej tillämpligt"
  }]
}

```
