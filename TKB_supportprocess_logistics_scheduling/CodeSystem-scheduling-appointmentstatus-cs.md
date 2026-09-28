# Bokningens tillstånd (AppointmentStatus) - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bokningens tillstånd (AppointmentStatus)**

## CodeSystem: Bokningens tillstånd (AppointmentStatus) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/scheduling-appointmentstatus-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:AppointmentStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för AppointmentStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.3.4 (GetAppointment, appointment.status). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Bokningens tillstånd (AppointmentStatus)](ValueSet-scheduling-appointmentstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "scheduling-appointmentstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/scheduling-appointmentstatus-cs",
  "version" : "2.0.0",
  "name" : "AppointmentStatusCS",
  "title" : "Bokningens tillstånd (AppointmentStatus)",
  "status" : "active",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för AppointmentStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.3.4 (GetAppointment, appointment.status).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "confirmed",
    "display" : "Bekräftad",
    "definition" : "Bokningen är bekräftad av patienten (TKB skriver confirm)"
  },
  {
    "code" : "preliminary",
    "display" : "Preliminär",
    "definition" : "Bokningen är ännu inte bekräftad av patienten"
  }]
}

```
