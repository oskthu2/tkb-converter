# SexCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SexCode**

## CodeSystem: SexCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/sexcode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:SexCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för kön (SexCodeEnum). Används i GetMaternityMedicalHistory för barnets kön. OBS: Överväg att använda HL7 AdministrativeGender istället. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SexCode — ValueSet](ValueSet-sexcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sexcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/sexcode",
  "version" : "4.2.2",
  "name" : "SexCodeCS",
  "title" : "SexCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för kön (SexCodeEnum). Används i GetMaternityMedicalHistory för barnets kön. OBS: Överväg att använda HL7 AdministrativeGender istället.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "Okänt",
    "definition" : "Kön okänt"
  },
  {
    "code" : "1",
    "display" : "Man",
    "definition" : "Man"
  },
  {
    "code" : "2",
    "display" : "Kvinna",
    "definition" : "Kvinna"
  },
  {
    "code" : "9",
    "display" : "Ej tillämpligt",
    "definition" : "Kön ej tillämpligt"
  }]
}

```
