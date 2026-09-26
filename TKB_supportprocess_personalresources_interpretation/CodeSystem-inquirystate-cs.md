# InquiryStateEnum - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InquiryStateEnum**

## CodeSystem: InquiryStateEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/inquirystate-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:InquiryStateCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Status för förfrågan. Enligt supportprocess_personalresources_interpretation_1.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [InquiryStateEnum](ValueSet-inquirystate-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "inquirystate-cs",
  "url" : "https://fhir.inera.se/CodeSystem/inquirystate-cs",
  "version" : "1.0.0",
  "name" : "InquiryStateCS",
  "title" : "InquiryStateEnum",
  "status" : "active",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Status för förfrågan. Enligt supportprocess_personalresources_interpretation_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "NotAnswered",
    "display" : "NotAnswered"
  },
  {
    "code" : "Booked",
    "display" : "Booked"
  },
  {
    "code" : "Rejected",
    "display" : "Rejected"
  },
  {
    "code" : "Timeout",
    "display" : "Timeout"
  },
  {
    "code" : "CanceledByInitiator",
    "display" : "CanceledByInitiator"
  },
  {
    "code" : "Accepted",
    "display" : "Accepted"
  },
  {
    "code" : "LostBeforeAnswer",
    "display" : "LostBeforeAnswer"
  },
  {
    "code" : "LostAccepted",
    "display" : "LostAccepted"
  },
  {
    "code" : "Invalid",
    "display" : "Invalid"
  }]
}

```
