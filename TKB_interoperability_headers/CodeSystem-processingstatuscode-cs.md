# ProcessingStatusCode - interoperability: headers — Gemensamma huvudelement v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessingStatusCode**

## CodeSystem: ProcessingStatusCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/processingstatuscode-cs | *Version*:1.1 |
| Active as of 2026-09-28 | *Computable Name*:ProcessingStatusCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk StatusCodeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Beskriver kvaliteten på de uppgifter som en aggregerande tjänst returnerat för en logisk adress. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ProcessingStatusCode — ValueSet](ValueSet-processingstatuscode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "processingstatuscode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/processingstatuscode-cs",
  "version" : "1.1",
  "name" : "ProcessingStatusCodeCS",
  "title" : "ProcessingStatusCode",
  "status" : "active",
  "date" : "2026-09-28T09:11:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk StatusCodeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Beskriver kvaliteten på de uppgifter som en aggregerande tjänst returnerat för en logisk adress.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "DataFromSource",
    "display" : "DataFromSource",
    "definition" : "Inga uppgifter fanns i cache; aktuella uppgifter hämtades från källsystemet."
  },
  {
    "code" : "DataFromCache",
    "display" : "DataFromCache",
    "definition" : "Aktuella uppgifter returnerades från cache; inget anrop gjordes till källsystemet."
  },
  {
    "code" : "DataFromCacheSynchFailed",
    "display" : "DataFromCacheSynchFailed",
    "definition" : "Nödvändig synkronisering med källsystemet misslyckades; eventuellt inaktuella uppgifter returnerades från cache."
  },
  {
    "code" : "NoDataSynchFailed",
    "display" : "NoDataSynchFailed",
    "definition" : "Inga uppgifter returnerades: inga uppgifter i cache och anropet till källsystemet misslyckades."
  }]
}

```
