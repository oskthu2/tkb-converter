# LFConsent — Samtyckestyp - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LFConsent — Samtyckestyp**

## CodeSystem: LFConsent — Samtyckestyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lfconsent | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:LFConsentCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av samtycke för åtkomst till läkemedelsförteckning (LF). Används i GetDispensedDrugsConsent/RegisterDispensedDrugsConsent. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LFConsent — ValueSet](ValueSet-lfconsent-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lfconsent-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lfconsent",
  "version" : "2",
  "name" : "LFConsentCS",
  "title" : "LFConsent — Samtyckestyp",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av samtycke för åtkomst till läkemedelsförteckning (LF). Används i GetDispensedDrugsConsent/RegisterDispensedDrugsConsent.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "ONETIME_CONSENT",
    "display" : "ONETIME_CONSENT",
    "definition" : "Engångssamtycke."
  },
  {
    "code" : "CONSENT",
    "display" : "CONSENT",
    "definition" : "Tillsvidaresamtycke registrerat hos EHM."
  },
  {
    "code" : "EMERGENCY",
    "display" : "EMERGENCY",
    "definition" : "Nödåtgärd, emergency."
  }]
}

```
