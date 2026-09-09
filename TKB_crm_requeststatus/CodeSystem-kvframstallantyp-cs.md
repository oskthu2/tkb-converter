# Kv framställantyp - crm: requeststatus v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kv framställantyp**

## CodeSystem: Kv framställantyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/kvframstallantyp-cs | *Version*:2.0.1 |
| Active as of 2026-09-09 | *Computable Name*:KvFramstallantypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk Kv framställantyp — anger typ av remiss/framställan. OID: 1.2.752.129.2.2.2.24. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kv framställantyp — ValueSet](ValueSet-kvframstallantyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "kvframstallantyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/kvframstallantyp-cs",
  "version" : "2.0.1",
  "name" : "KvFramstallantypCS",
  "title" : "Kv framställantyp",
  "status" : "active",
  "date" : "2026-09-09T16:49:32+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk Kv framställantyp — anger typ av remiss/framställan. OID: 1.2.752.129.2.2.2.24.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "1",
    "display" : "röntgenremiss",
    "definition" : "Röntgenremiss"
  },
  {
    "code" : "2",
    "display" : "labbremiss",
    "definition" : "Labbremiss"
  },
  {
    "code" : "4",
    "display" : "allmänremiss",
    "definition" : "Allmänremiss"
  }]
}

```
