# Typ av telekommunikation (patient) - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av telekommunikation (patient)**

## CodeSystem: Typ av telekommunikation (patient) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeoftelecompatient-cs | *Version*:1.0.0 |
| Active as of 2026-09-28 | *Computable Name*:TypeOfTelecomPatientCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfTelecomPatientEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekom_typ_13_v1.1 (1.2.752.129.2.2.1.30). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av telekommunikation (patient)](ValueSet-masterdata-citizen-patient-typeoftelecompatient-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeoftelecompatient-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeoftelecompatient-cs",
  "version" : "1.0.0",
  "name" : "TypeOfTelecomPatientCS",
  "title" : "Typ av telekommunikation (patient)",
  "status" : "active",
  "date" : "2026-09-28T09:13:45+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfTelecomPatientEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekom_typ_13_v1.1 (1.2.752.129.2.2.1.30).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "telefon"
  },
  {
    "code" : "2",
    "display" : "fax"
  },
  {
    "code" : "3",
    "display" : "mobiltelefon"
  },
  {
    "code" : "4",
    "display" : "personsökare"
  },
  {
    "code" : "5",
    "display" : "epost"
  }]
}

```
