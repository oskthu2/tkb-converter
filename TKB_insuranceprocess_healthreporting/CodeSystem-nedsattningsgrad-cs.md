# Nedsattningsgrad - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nedsattningsgrad**

## CodeSystem: Nedsattningsgrad 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/nedsattningsgrad-cs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:NedsattningsgradCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för grad av arbetsförmågenedsättning i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263 Fält 8b). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Nedsattningsgrad — ValueSet](ValueSet-nedsattningsgrad-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nedsattningsgrad-cs",
  "url" : "https://fhir.inera.se/CodeSystem/nedsattningsgrad-cs",
  "version" : "3.1.0",
  "name" : "NedsattningsgradCS",
  "title" : "Nedsattningsgrad",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för grad av arbetsförmågenedsättning i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263 Fält 8b).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "NEDSATT_MED_1_4",
    "display" : "Nedsatt med 1/4",
    "definition" : "Arbetsförmågan är nedsatt med en fjärdedel"
  },
  {
    "code" : "NEDSATT_MED_1_2",
    "display" : "Nedsatt med hälften",
    "definition" : "Arbetsförmågan är nedsatt med hälften"
  },
  {
    "code" : "NEDSATT_MED_3_4",
    "display" : "Nedsatt med 3/4",
    "definition" : "Arbetsförmågan är nedsatt med tre fjärdedelar"
  },
  {
    "code" : "HELT_NEDSATT",
    "display" : "Helt nedsatt",
    "definition" : "Arbetsförmågan är helt nedsatt"
  }]
}

```
