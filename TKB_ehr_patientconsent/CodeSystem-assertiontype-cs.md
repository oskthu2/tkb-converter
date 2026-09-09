# AssertionType - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssertionType**

## CodeSystem: AssertionType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/assertiontype-cs | *Version*:1.0.1 |
| Active as of 2026-09-09 | *Computable Name*:AssertionTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av intyg som ger direktåtkomst till information från andra vårdgivare enligt PDL. Kan vara patientens samtycke eller nödsituation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AssertionType — ValueSet](ValueSet-assertiontype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "assertiontype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/assertiontype-cs",
  "version" : "1.0.1",
  "name" : "AssertionTypeCS",
  "title" : "AssertionType",
  "status" : "active",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av intyg som ger direktåtkomst till information från andra vårdgivare enligt PDL. Kan vara patientens samtycke eller nödsituation.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Consent",
    "display" : "Consent",
    "definition" : "Patienten/Företrädaren har givit sitt samtycke."
  },
  {
    "code" : "Emergency",
    "display" : "Emergency",
    "definition" : "Nödsituation föreligger. Patientens samtycke kunde ej inhämtas."
  }]
}

```
