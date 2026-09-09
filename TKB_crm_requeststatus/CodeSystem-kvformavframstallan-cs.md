# Kv Form av framställan - crm: requeststatus v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kv Form av framställan**

## CodeSystem: Kv Form av framställan 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/kvformavframstallan-cs | *Version*:2.0.1 |
| Active as of 2026-09-09 | *Computable Name*:KvFormAvFramstallanCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk Kv Form av framställan — anger medium/form för en remiss/framställan. OID: 1.2.752.129.2.2.2.7. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kv Form av framställan — ValueSet](ValueSet-kvformavframstallan-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "kvformavframstallan-cs",
  "url" : "https://fhir.inera.se/CodeSystem/kvformavframstallan-cs",
  "version" : "2.0.1",
  "name" : "KvFormAvFramstallanCS",
  "title" : "Kv Form av framställan",
  "status" : "active",
  "date" : "2026-09-09T16:49:32+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk Kv Form av framställan — anger medium/form för en remiss/framställan. OID: 1.2.752.129.2.2.2.7.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "3",
    "display" : "skriftligt elektroniskt",
    "definition" : "Skriftligt elektroniskt"
  },
  {
    "code" : "4",
    "display" : "skriftligt papper",
    "definition" : "Skriftligt papper"
  }]
}

```
