# Category - infrastructure: directory: synchronization v1.0.0-rc3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Category**

## CodeSystem: Category 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/directory-synchronization-category-cs | *Version*:1.0.0-rc3 |
| Active as of 2026-09-28 | *Computable Name*:CategoryCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för CategoryEnum i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Category](ValueSet-directory-synchronization-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "directory-synchronization-category-cs",
  "url" : "https://fhir.inera.se/CodeSystem/directory-synchronization-category-cs",
  "version" : "1.0.0-rc3",
  "name" : "CategoryCS",
  "title" : "Category",
  "status" : "active",
  "date" : "2026-09-28T09:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för CategoryEnum i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "CREATE",
    "display" : "CREATE"
  },
  {
    "code" : "UPDATE",
    "display" : "UPDATE"
  },
  {
    "code" : "DELETE",
    "display" : "DELETE"
  }]
}

```
