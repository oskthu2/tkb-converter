# HOSP Operation - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HOSP Operation**

## CodeSystem: HOSP Operation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/hosp-operation-cs | *Version*:2.4.4 |
| Active as of 2026-09-09 | *Computable Name*:HospOperationCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för operation i HandleHospCertificationPerson. Anger om en person ska läggas till eller tas bort från utlämningsförfrågningar av HOSP-information. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HOSP Operation — ValueSet](ValueSet-hosp-operation-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hosp-operation-cs",
  "url" : "https://fhir.inera.se/CodeSystem/hosp-operation-cs",
  "version" : "2.4.4",
  "name" : "HospOperationCS",
  "title" : "HOSP Operation",
  "status" : "active",
  "date" : "2026-09-09T16:58:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för operation i HandleHospCertificationPerson. Anger om en person ska läggas till eller tas bort från utlämningsförfrågningar av HOSP-information.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "add",
    "display" : "add",
    "definition" : "Lägg till personen i kommande utlämningsförfrågningar"
  },
  {
    "code" : "remove",
    "display" : "remove",
    "definition" : "Ta bort personen från kommande utlämningsförfrågningar"
  }]
}

```
