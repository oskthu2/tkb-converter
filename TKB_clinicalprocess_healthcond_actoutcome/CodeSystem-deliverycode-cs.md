# DeliveryCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeliveryCode**

## CodeSystem: DeliveryCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/deliverycode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:DeliveryCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för förlossningssätt (DeliveryCodeEnum). Används i GetMaternityMedicalHistory. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DeliveryCode — ValueSet](ValueSet-deliverycode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "deliverycode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/deliverycode",
  "version" : "4.2.2",
  "name" : "DeliveryCodeCS",
  "title" : "DeliveryCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för förlossningssätt (DeliveryCodeEnum). Används i GetMaternityMedicalHistory.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "0",
    "display" : "Ej angivet",
    "definition" : "Förlossningssätt ej angivet"
  },
  {
    "code" : "1",
    "display" : "X-gravid",
    "definition" : "X-gravid"
  },
  {
    "code" : "2",
    "display" : "Spontan abort",
    "definition" : "Spontan abort"
  },
  {
    "code" : "4",
    "display" : "Dödfött",
    "definition" : "Dödfött barn"
  },
  {
    "code" : "5",
    "display" : "Levande fött",
    "definition" : "Levande fött barn"
  }]
}

```
