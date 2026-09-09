# Amne - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Amne**

## CodeSystem: Amne 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/amne-cs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:AmneCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för ämne i fråge/svar-interaktionerna i tjänstedomänen insuranceprocess:healthreporting. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Amne — ValueSet](ValueSet-amne-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "amne-cs",
  "url" : "https://fhir.inera.se/CodeSystem/amne-cs",
  "version" : "3.1.0",
  "name" : "AmneCS",
  "title" : "Amne",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för ämne i fråge/svar-interaktionerna i tjänstedomänen insuranceprocess:healthreporting.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "KOMPLETTERING",
    "display" : "Komplettering",
    "definition" : "Fråga om komplettering av läkarintyg"
  },
  {
    "code" : "PAMINNELSE",
    "display" : "Påminnelse",
    "definition" : "Påminnelse om tidigare ställd fråga"
  },
  {
    "code" : "OVRIGT",
    "display" : "Övrigt",
    "definition" : "Övriga ärenden"
  }]
}

```
