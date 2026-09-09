# TypeOfPrescription - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfPrescription**

## CodeSystem: TypeOfPrescription 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofprescription | *Version*:2.2.1 |
| Active as of 2026-09-09 | *Computable Name*:TypeOfPrescriptionCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för ordinationstyp i GetMedicationHistory. Anger om en ordination är en insättnings- eller utsättningsordination. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfPrescription — ValueSet](ValueSet-typeofprescription-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofprescription-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofprescription",
  "version" : "2.2.1",
  "name" : "TypeOfPrescriptionCS",
  "title" : "TypeOfPrescription",
  "status" : "active",
  "date" : "2026-09-09T16:42:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för ordinationstyp i GetMedicationHistory. Anger om en ordination är en insättnings- eller utsättningsordination.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "I",
    "display" : "Insättningsordination",
    "definition" : "Ordination som innebär att läkemedelsbehandling påbörjas"
  },
  {
    "code" : "U",
    "display" : "Utsättningsordination",
    "definition" : "Ordination som innebär att läkemedelsbehandling avslutas"
  }]
}

```
