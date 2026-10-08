# SexCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SexCode**

## CodeSystem: SexCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/sexcode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:SexCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kön (SexCodeEnum), enligt TKB:n kodverk med OID 1.2.752.129.2.2.1.1. Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SexCode — ValueSet](ValueSet-sexcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sexcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/sexcode",
  "version" : "3.1.10",
  "name" : "SexCodeCS",
  "title" : "SexCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kön (SexCodeEnum), enligt TKB:n kodverk med OID 1.2.752.129.2.2.1.1. Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "okänt"
  },
  {
    "code" : "1",
    "display" : "man"
  },
  {
    "code" : "2",
    "display" : "kvinna"
  },
  {
    "code" : "9",
    "display" : "ej tillämpligt"
  }]
}

```
