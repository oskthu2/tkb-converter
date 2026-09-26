# InquiryResponseAnswerEnum - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InquiryResponseAnswerEnum**

## CodeSystem: InquiryResponseAnswerEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/inquiryresponseanswer-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:InquiryResponseAnswerCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Svar på förfrågan. Enligt supportprocess_personalresources_interpretation_1.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [InquiryResponseAnswerEnum](ValueSet-inquiryresponseanswer-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "inquiryresponseanswer-cs",
  "url" : "https://fhir.inera.se/CodeSystem/inquiryresponseanswer-cs",
  "version" : "1.0.0",
  "name" : "InquiryResponseAnswerCS",
  "title" : "InquiryResponseAnswerEnum",
  "status" : "active",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Svar på förfrågan. Enligt supportprocess_personalresources_interpretation_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "Accept",
    "display" : "Accept"
  },
  {
    "code" : "AcceptWithException",
    "display" : "AcceptWithException"
  },
  {
    "code" : "Reject",
    "display" : "Reject"
  }]
}

```
