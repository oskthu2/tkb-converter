# PrescriptionStatus - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrescriptionStatus**

## CodeSystem: PrescriptionStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/prescriptionstatus | *Version*:2.2.1 |
| Active as of 2026-09-09 | *Computable Name*:PrescriptionStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för ordinationsstatus i GetMedicationHistory. Anger om en ordination är aktiv eller inaktiv. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PrescriptionStatus — ValueSet](ValueSet-prescriptionstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prescriptionstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/prescriptionstatus",
  "version" : "2.2.1",
  "name" : "PrescriptionStatusCS",
  "title" : "PrescriptionStatus",
  "status" : "active",
  "date" : "2026-09-09T16:42:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för ordinationsstatus i GetMedicationHistory. Anger om en ordination är aktiv eller inaktiv.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Active",
    "display" : "Aktiv",
    "definition" : "Aktiv ordination — den sista i sin ordinationskedja. Representerar gällande behandling."
  },
  {
    "code" : "Inactive",
    "display" : "Inaktiv",
    "definition" : "Inaktiv ordination — inte den sista i sin ordinationskedja. Historisk ordination."
  }]
}

```
