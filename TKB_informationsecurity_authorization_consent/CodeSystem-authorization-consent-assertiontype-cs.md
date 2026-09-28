# AssertionType - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssertionType**

## CodeSystem: AssertionType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/authorization-consent-assertiontype-cs | *Version*:2.0.4 |
| Active as of 2026-09-28 | *Computable Name*:AssertionTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för AssertionTypeType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AssertionType](ValueSet-authorization-consent-assertiontype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "authorization-consent-assertiontype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/authorization-consent-assertiontype-cs",
  "version" : "2.0.4",
  "name" : "AssertionTypeCS",
  "title" : "AssertionType",
  "status" : "active",
  "date" : "2026-09-28T09:03:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för AssertionTypeType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Consent",
    "display" : "Consent"
  },
  {
    "code" : "Emergency",
    "display" : "Emergency"
  }]
}

```
