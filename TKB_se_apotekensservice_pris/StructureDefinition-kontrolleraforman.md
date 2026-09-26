# KontrolleraForman — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontrolleraForman — Response**

## Logical Model: KontrolleraForman — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kontrolleraforman | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KontrolleraForman |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i KontrolleraForman (urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-kontrolleraforman.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontrolleraforman.csv), [Excel](StructureDefinition-kontrolleraforman.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontrolleraforman",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kontrolleraforman",
  "version" : "2.0.0",
  "name" : "KontrolleraForman",
  "title" : "KontrolleraForman — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i KontrolleraForman\n(urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kontrolleraforman",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontrolleraforman",
      "path" : "kontrolleraforman",
      "short" : "KontrolleraForman — Response",
      "definition" : "Logisk modell för svaret i KontrolleraForman\n(urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanResponseType)."
    },
    {
      "id" : "kontrolleraforman.formansLista",
      "path" : "kontrolleraforman.formansLista",
      "short" : "formansLista",
      "definition" : "Lista med förmånskoder per artikel.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontrolleraforman.formansLista.formanskod",
      "path" : "kontrolleraforman.formansLista.formanskod",
      "short" : "formanskod",
      "definition" : "Förmånskod R, U, L, eller F",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrolleraforman.formansLista.formansInfoId",
      "path" : "kontrolleraforman.formansLista.formansInfoId",
      "short" : "formansInfoId",
      "definition" : "Id som representerar det id som var satt i motsvarande ArtikelIdentiteterTo. Det vill säga antingen GTIN, Förpackningsid eller Varunr beroende på vad som frågats efter. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
