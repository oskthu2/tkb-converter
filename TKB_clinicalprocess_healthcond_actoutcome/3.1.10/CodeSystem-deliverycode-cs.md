# DeliveryCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeliveryCode**

## CodeSystem: DeliveryCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/deliverycode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:DeliveryCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Förlossningsutfall (DeliveryCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DeliveryCode — ValueSet](ValueSet-deliverycode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "deliverycode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/deliverycode",
  "version" : "3.1.10",
  "name" : "DeliveryCodeCS",
  "title" : "DeliveryCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Förlossningsutfall (DeliveryCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "0",
    "display" : "Ej angivet"
  },
  {
    "code" : "1",
    "display" : "X-gravid"
  },
  {
    "code" : "2",
    "display" : "Spontan abort"
  },
  {
    "code" : "4",
    "display" : "Dödfött"
  },
  {
    "code" : "5",
    "display" : "Levande fött"
  }]
}

```
