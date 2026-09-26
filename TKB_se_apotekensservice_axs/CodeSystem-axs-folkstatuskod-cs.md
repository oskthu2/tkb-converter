# Statuskod för person i FOLK - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statuskod för person i FOLK**

## CodeSystem: Statuskod för person i FOLK 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/axs-folkstatuskod-cs | *Version*:7.0.0 |
| Active as of 2026-09-26 | *Computable Name*:FolkStatusKodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Status på personen i FOLK, mappad från träffkoder i FOLK, enligt dokumentationen av statusKod i se.apotekensservice_axs_5.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Statuskod för person i FOLK](ValueSet-axs-folkstatuskod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "axs-folkstatuskod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/axs-folkstatuskod-cs",
  "version" : "7.0.0",
  "name" : "FolkStatusKodCS",
  "title" : "Statuskod för person i FOLK",
  "status" : "active",
  "date" : "2026-09-26T19:42:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Status på personen i FOLK, mappad från träffkoder i FOLK, enligt dokumentationen av statusKod i se.apotekensservice_axs_5.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "0",
    "display" : "Person finns i FOLK"
  },
  {
    "code" : "1",
    "display" : "Person finns ej i FOLK, underliggande system är ej tillgängligt"
  },
  {
    "code" : "2",
    "display" : "Person finns ej"
  },
  {
    "code" : "3",
    "display" : "Person sekretesskyddad"
  },
  {
    "code" : "4",
    "display" : "Person är avliden"
  },
  {
    "code" : "5",
    "display" : "Träffkod okänd"
  },
  {
    "code" : "6",
    "display" : "Testperson"
  }]
}

```
