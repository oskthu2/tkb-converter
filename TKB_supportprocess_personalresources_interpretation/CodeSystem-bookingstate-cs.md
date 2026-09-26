# BookingStateEnum - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BookingStateEnum**

## CodeSystem: BookingStateEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/bookingstate-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:BookingStateCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Status för beställning. Enligt supportprocess_personalresources_interpretation_1.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BookingStateEnum](ValueSet-bookingstate-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bookingstate-cs",
  "url" : "https://fhir.inera.se/CodeSystem/bookingstate-cs",
  "version" : "1.0.0",
  "name" : "BookingStateCS",
  "title" : "BookingStateEnum",
  "status" : "active",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Status för beställning. Enligt supportprocess_personalresources_interpretation_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "New",
    "display" : "New"
  },
  {
    "code" : "AssociationBooked",
    "display" : "AssociationBooked"
  },
  {
    "code" : "Canceled",
    "display" : "Canceled"
  },
  {
    "code" : "Acknowledged",
    "display" : "Acknowledged"
  },
  {
    "code" : "AutomaticallyAcknowledged",
    "display" : "AutomaticallyAcknowledged"
  },
  {
    "code" : "AllDeclined",
    "display" : "AllDeclined"
  },
  {
    "code" : "AcceptedByAtLeastOne",
    "display" : "AcceptedByAtLeastOne"
  },
  {
    "code" : "LateCanceled",
    "display" : "LateCanceled"
  },
  {
    "code" : "Invalid",
    "display" : "Invalid"
  }]
}

```
