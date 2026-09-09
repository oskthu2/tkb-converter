# DispensedDrugsTypeOfResponse — Svarstyp - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DispensedDrugsTypeOfResponse — Svarstyp**

## CodeSystem: DispensedDrugsTypeOfResponse — Svarstyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dispenseddrugstypeofresponse | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:DispensedDrugsTypeOfResponseCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för önskad svarstyp i GetDispensedDrugs: strukturerad text, multimedia eller båda. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DispensedDrugsTypeOfResponse — ValueSet](ValueSet-dispenseddrugstypeofresponse-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dispenseddrugstypeofresponse-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dispenseddrugstypeofresponse",
  "version" : "2",
  "name" : "DispensedDrugsTypeOfResponseCS",
  "title" : "DispensedDrugsTypeOfResponse — Svarstyp",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för önskad svarstyp i GetDispensedDrugs: strukturerad text, multimedia eller båda.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "TEXT",
    "display" : "TEXT",
    "definition" : "Strukturerad information (text)."
  },
  {
    "code" : "MULTIMEDIA",
    "display" : "MULTIMEDIA",
    "definition" : "Multimedia-format."
  },
  {
    "code" : "BOTH",
    "display" : "BOTH",
    "definition" : "Både strukturerad text och multimedia."
  }]
}

```
