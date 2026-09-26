# SkapaHkdbKonto — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaHkdbKonto — Response**

## Logical Model: SkapaHkdbKonto — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/skapahkdbkonto | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkapaHkdbKonto |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SkapaHkdbKonto (urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-skapahkdbkonto.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapahkdbkonto.csv), [Excel](StructureDefinition-skapahkdbkonto.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapahkdbkonto",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/skapahkdbkonto",
  "version" : "2.0.0",
  "name" : "SkapaHkdbKonto",
  "title" : "SkapaHkdbKonto — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SkapaHkdbKonto\n(urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/skapahkdbkonto",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapahkdbkonto",
      "path" : "skapahkdbkonto",
      "short" : "SkapaHkdbKonto — Response",
      "definition" : "Logisk modell för svaret i SkapaHkdbKonto\n(urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoResponseType)."
    },
    {
      "id" : "skapahkdbkonto.ansluten",
      "path" : "skapahkdbkonto.ansluten",
      "short" : "ansluten",
      "definition" : "Personens högkostnadsstatus. False - Konto ej skapat True - Konto skapat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
