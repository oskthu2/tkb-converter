# Scope - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Scope**

## CodeSystem: Scope 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/scope-cs | *Version*:1.0.1 |
| Active as of 2026-09-09 | *Computable Name*:ScopeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Omfånget/tillämpningsområde på intyget. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Scope — ValueSet](ValueSet-scope-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "scope-cs",
  "url" : "https://fhir.inera.se/CodeSystem/scope-cs",
  "version" : "1.0.1",
  "name" : "ScopeCS",
  "title" : "Scope",
  "status" : "active",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Omfånget/tillämpningsområde på intyget.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "NationalLevel",
    "display" : "NationalLevel",
    "definition" : "Intyget gäller på nationell nivå."
  }]
}

```
