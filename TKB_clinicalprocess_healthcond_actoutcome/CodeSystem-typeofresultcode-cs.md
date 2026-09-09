# TypeOfResultCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfResultCode**

## CodeSystem: TypeOfResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofresultcode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:TypeOfResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av resultat (TypeOfResultCodeEnum). Används i GetImagingOutcome och GetReferralOutcome. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfResultCode — ValueSet](ValueSet-typeofresultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofresultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofresultcode",
  "version" : "4.2.2",
  "name" : "TypeOfResultCodeCS",
  "title" : "TypeOfResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av resultat (TypeOfResultCodeEnum). Används i GetImagingOutcome och GetReferralOutcome.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "PREL",
    "display" : "Preliminärsvar",
    "definition" : "Preliminärt svar"
  },
  {
    "code" : "DEF",
    "display" : "Definitivsvar",
    "definition" : "Definitivt svar"
  },
  {
    "code" : "TILL",
    "display" : "Tilläggssvar",
    "definition" : "Tilläggssvar"
  }]
}

```
