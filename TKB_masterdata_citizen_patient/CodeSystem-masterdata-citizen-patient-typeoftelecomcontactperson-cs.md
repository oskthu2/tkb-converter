# Typ av telekommunikation (kontaktperson) - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av telekommunikation (kontaktperson)**

## CodeSystem: Typ av telekommunikation (kontaktperson) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeoftelecomcontactperson-cs | *Version*:1.0.0 |
| Active as of 2026-09-28 | *Computable Name*:TypeOfTelecomContactPersonCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfTelecomContactPersonEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekom_typ_13_v1.1 (1.2.752.129.2.2.1.30). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av telekommunikation (kontaktperson)](ValueSet-masterdata-citizen-patient-typeoftelecomcontactperson-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeoftelecomcontactperson-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeoftelecomcontactperson-cs",
  "version" : "1.0.0",
  "name" : "TypeOfTelecomContactPersonCS",
  "title" : "Typ av telekommunikation (kontaktperson)",
  "status" : "active",
  "date" : "2026-09-28T09:13:45+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfTelecomContactPersonEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekom_typ_13_v1.1 (1.2.752.129.2.2.1.30).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
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
  }]
}

```
