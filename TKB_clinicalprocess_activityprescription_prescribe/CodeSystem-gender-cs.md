# Gender — Kön - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gender — Kön**

## CodeSystem: Gender — Kön 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/gender | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:GenderCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för patientens kön. Används i PatientInformation-typen i GetMedicationDispenseAuthorizations och RegisterMedicationDispenseAuthorization. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Gender — ValueSet](ValueSet-gender-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gender-cs",
  "url" : "https://fhir.inera.se/CodeSystem/gender",
  "version" : "2",
  "name" : "GenderCS",
  "title" : "Gender — Kön",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för patientens kön. Används i PatientInformation-typen i GetMedicationDispenseAuthorizations och RegisterMedicationDispenseAuthorization.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "Male",
    "display" : "Male",
    "definition" : "Man."
  },
  {
    "code" : "Female",
    "display" : "Female",
    "definition" : "Kvinna."
  },
  {
    "code" : "Unspecified",
    "display" : "Unspecified",
    "definition" : "Ej angivet."
  }]
}

```
