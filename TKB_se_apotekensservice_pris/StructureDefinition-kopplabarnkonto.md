# KopplaBarnKonto — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KopplaBarnKonto — Response**

## Logical Model: KopplaBarnKonto — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kopplabarnkonto | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KopplaBarnKonto |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i KopplaBarnKonto (urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-kopplabarnkonto.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kopplabarnkonto.csv), [Excel](StructureDefinition-kopplabarnkonto.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kopplabarnkonto",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kopplabarnkonto",
  "version" : "2.0.0",
  "name" : "KopplaBarnKonto",
  "title" : "KopplaBarnKonto — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i KopplaBarnKonto\n(urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kopplabarnkonto",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kopplabarnkonto",
      "path" : "kopplabarnkonto",
      "short" : "KopplaBarnKonto — Response",
      "definition" : "Logisk modell för svaret i KopplaBarnKonto\n(urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoResponseType)."
    },
    {
      "id" : "kopplabarnkonto.kopplaBarnKontoStatus",
      "path" : "kopplabarnkonto.kopplaBarnKontoStatus",
      "short" : "kopplaBarnKontoStatus",
      "definition" : "Status för koppling av barnkonto Möjliga värden är: 1 - Anslutning OK. 2 - Omkoppling OK. 3 - Frikoppling OK. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
