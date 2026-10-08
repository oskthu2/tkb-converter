# ReferralOutcomeTypeCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReferralOutcomeTypeCode**

## CodeSystem: ReferralOutcomeTypeCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/referraloutcometypecode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:ReferralOutcomeTypeCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av remissvar (ReferralOutcomeTypeCodeEnum). Används i GetReferralOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralOutcomeTypeCode — ValueSet](ValueSet-referraloutcometypecode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "referraloutcometypecode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/referraloutcometypecode",
  "version" : "3.1.10",
  "name" : "ReferralOutcomeTypeCodeCS",
  "title" : "ReferralOutcomeTypeCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av remissvar (ReferralOutcomeTypeCodeEnum). Används i GetReferralOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "SS",
    "display" : "Slutsvar på remissfråga"
  },
  {
    "code" : "SR",
    "display" : "Svar på remissfråga"
  }]
}

```
