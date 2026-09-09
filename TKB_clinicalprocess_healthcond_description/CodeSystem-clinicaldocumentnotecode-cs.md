# KV Anteckningstyp - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KV Anteckningstyp**

## CodeSystem: KV Anteckningstyp 

| | |
| :--- | :--- |
| *Official URL*:urn:oid:1.2.752.129.2.2.2.11 | *Version*:3.0.5 |
| Active as of 2026-09-09 | *Computable Name*:ClinicalDocumentNoteCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av journalanteckning enligt KV Anteckningstyp. OID: 1.2.752.129.2.2.2.11. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KV Anteckningstyp — ValueSet](ValueSet-clinicaldocumentnotecode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "clinicaldocumentnotecode-cs",
  "url" : "urn:oid:1.2.752.129.2.2.2.11",
  "version" : "3.0.5",
  "name" : "ClinicalDocumentNoteCodeCS",
  "title" : "KV Anteckningstyp",
  "status" : "active",
  "date" : "2026-09-09T16:47:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av journalanteckning enligt KV Anteckningstyp. OID: 1.2.752.129.2.2.2.11.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "utr",
    "display" : "utr",
    "definition" : "Utredning"
  },
  {
    "code" : "atb",
    "display" : "atb",
    "definition" : "Åtgärd/Behandling"
  },
  {
    "code" : "sam",
    "display" : "sam",
    "definition" : "Sammanfattning"
  },
  {
    "code" : "sao",
    "display" : "sao",
    "definition" : "Samordning"
  },
  {
    "code" : "ins",
    "display" : "ins",
    "definition" : "Inskrivning"
  },
  {
    "code" : "slu",
    "display" : "slu",
    "definition" : "Slutanteckning"
  },
  {
    "code" : "auf",
    "display" : "auf",
    "definition" : "Anteckning utan fysiskt möte"
  },
  {
    "code" : "sva",
    "display" : "sva",
    "definition" : "Slutenvårdsanteckning"
  },
  {
    "code" : "bes",
    "display" : "bes",
    "definition" : "Besöksanteckning"
  }]
}

```
