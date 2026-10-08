# ErrorCodeEnum - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ErrorCodeEnum**

## CodeSystem: ErrorCodeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/errorcode-cs | *Version*:1.0.0-snapshot |
| Active as of 2026-10-08 | *Computable Name*:ErrorCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Felkod när resultCode är ERROR. Enligt supportprocess_personalresources_interpretation_1.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ErrorCodeEnum](ValueSet-errorcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "errorcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/errorcode-cs",
  "version" : "1.0.0-snapshot",
  "name" : "ErrorCodeCS",
  "title" : "ErrorCodeEnum",
  "status" : "active",
  "date" : "2026-10-08T18:57:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Felkod när resultCode är ERROR. Enligt supportprocess_personalresources_interpretation_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "UNSPECIFIED",
    "display" : "UNSPECIFIED"
  },
  {
    "code" : "INTERNAL_ERROR",
    "display" : "INTERNAL_ERROR"
  },
  {
    "code" : "AUTHENTICATION_ERROR",
    "display" : "AUTHENTICATION_ERROR"
  },
  {
    "code" : "DEPRECATED_OR_UNAVAILABLE",
    "display" : "DEPRECATED_OR_UNAVAILABLE"
  },
  {
    "code" : "NO_ITEMS_MATCHED",
    "display" : "NO_ITEMS_MATCHED"
  },
  {
    "code" : "EXPIRED",
    "display" : "EXPIRED"
  },
  {
    "code" : "ARGUMENT_NOT_VALID",
    "display" : "ARGUMENT_NOT_VALID"
  },
  {
    "code" : "ARGUMENT_NOT_VALID_IN_CONTEXT",
    "display" : "ARGUMENT_NOT_VALID_IN_CONTEXT"
  }]
}

```
