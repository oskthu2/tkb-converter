# Typ av behörighetsbegränsning - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av behörighetsbegränsning**

## CodeSystem: Typ av behörighetsbegränsning 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typ-av-behorighetsbegransning-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:TypAvBehorighetsbegransningCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typer av behörighetsbegränsning för legitimerade yrken. OID: 1.2.752.116.3.1.5. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av behörighetsbegränsning — ValueSet](ValueSet-typ-av-behorighetsbegransning-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typ-av-behorighetsbegransning-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typ-av-behorighetsbegransning-cs",
  "version" : "2.0.0",
  "name" : "TypAvBehorighetsbegransningCS",
  "title" : "Typ av behörighetsbegränsning",
  "status" : "active",
  "date" : "2026-09-09T17:04:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typer av behörighetsbegränsning för legitimerade yrken. OID: 1.2.752.116.3.1.5.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "001",
    "display" : "001",
    "definition" : "Återkallad legitimation"
  },
  {
    "code" : "002",
    "display" : "002",
    "definition" : "Prövotid"
  },
  {
    "code" : "003",
    "display" : "003",
    "definition" : "Begränsad förskrivningsrätt"
  }]
}

```
