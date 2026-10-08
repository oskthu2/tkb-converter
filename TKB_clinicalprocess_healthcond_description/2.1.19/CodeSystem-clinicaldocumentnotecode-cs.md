# KV Anteckningstyp - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KV Anteckningstyp**

## CodeSystem: KV Anteckningstyp 

| | |
| :--- | :--- |
| *Official URL*:urn:oid:1.2.752.129.2.2.2.11 | *Version*:2.1.19 |
| Active as of 2026-10-08 | *Computable Name*:ClinicalDocumentNoteCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av hälso- och sjukvårdsdokument enligt KV Anteckningstyp (OID 1.2.752.129.2.2.2.11), med de värden som är tillåtna i ClinicalDocumentNoteCodeEnum i domänschemat 2.1. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KV Anteckningstyp — ValueSet](ValueSet-clinicaldocumentnotecode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "clinicaldocumentnotecode-cs",
  "url" : "urn:oid:1.2.752.129.2.2.2.11",
  "version" : "2.1.19",
  "name" : "ClinicalDocumentNoteCodeCS",
  "title" : "KV Anteckningstyp",
  "status" : "active",
  "date" : "2026-10-08T18:09:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av hälso- och sjukvårdsdokument enligt KV Anteckningstyp (OID 1.2.752.129.2.2.2.11), med de värden som är tillåtna i ClinicalDocumentNoteCodeEnum i domänschemat 2.1.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "utr",
    "display" : "Utredning"
  },
  {
    "code" : "atb",
    "display" : "Åtgärd/Behandling"
  },
  {
    "code" : "sam",
    "display" : "Sammanfattning"
  },
  {
    "code" : "sao",
    "display" : "Samordning"
  },
  {
    "code" : "ins",
    "display" : "Inskrivning"
  },
  {
    "code" : "slu",
    "display" : "Slutanteckning"
  },
  {
    "code" : "auf",
    "display" : "Anteckning utan fysiskt möte"
  },
  {
    "code" : "sva",
    "display" : "Slutenvårdsanteckning"
  },
  {
    "code" : "bes",
    "display" : "Besöksanteckning"
  }]
}

```
