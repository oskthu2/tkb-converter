# ReferralOutcomeTypeCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReferralOutcomeTypeCode**

## CodeSystem: ReferralOutcomeTypeCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/referraloutcometypecode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:ReferralOutcomeTypeCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av remissvar (ReferralOutcomeTypeCodeEnum). Används i GetReferralOutcome. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralOutcomeTypeCode — ValueSet](ValueSet-referraloutcometypecode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "referraloutcometypecode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/referraloutcometypecode",
  "version" : "4.2.2",
  "name" : "ReferralOutcomeTypeCodeCS",
  "title" : "ReferralOutcomeTypeCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av remissvar (ReferralOutcomeTypeCodeEnum). Används i GetReferralOutcome.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "SS",
    "display" : "Slutsvar på remissfråga",
    "definition" : "Slutsvar på remissfråga"
  },
  {
    "code" : "SR",
    "display" : "Svar på remissfråga",
    "definition" : "Svar på remissfråga"
  }]
}

```
