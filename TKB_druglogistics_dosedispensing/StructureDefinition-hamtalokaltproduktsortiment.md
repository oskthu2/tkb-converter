# HamtaLokaltProduktsortiment — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaLokaltProduktsortiment — Response**

## Logical Model: HamtaLokaltProduktsortiment — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtalokaltproduktsortiment | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaLokaltProduktsortiment |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaLokaltProduktsortiment (urn:riv:druglogistics:dosedispensing:HamtaLokaltProduktsortimentResponder:1, HamtaLokaltProduktsortimentResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-hamtalokaltproduktsortiment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtalokaltproduktsortiment.csv), [Excel](StructureDefinition-hamtalokaltproduktsortiment.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtalokaltproduktsortiment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtalokaltproduktsortiment",
  "version" : "1.1.0",
  "name" : "HamtaLokaltProduktsortiment",
  "title" : "HamtaLokaltProduktsortiment — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaLokaltProduktsortiment\n(urn:riv:druglogistics:dosedispensing:HamtaLokaltProduktsortimentResponder:1, HamtaLokaltProduktsortimentResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtalokaltproduktsortiment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtalokaltproduktsortiment",
      "path" : "hamtalokaltproduktsortiment",
      "short" : "HamtaLokaltProduktsortiment — Response",
      "definition" : "Logisk modell för svaret i HamtaLokaltProduktsortiment\n(urn:riv:druglogistics:dosedispensing:HamtaLokaltProduktsortimentResponder:1, HamtaLokaltProduktsortimentResponseType)."
    },
    {
      "id" : "hamtalokaltproduktsortiment.resultatkod",
      "path" : "hamtalokaltproduktsortiment.resultatkod",
      "short" : "resultatkod",
      "definition" : "resultatkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-resultatkod-vs"
      }
    },
    {
      "id" : "hamtalokaltproduktsortiment.meddelandetext",
      "path" : "hamtalokaltproduktsortiment.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtalokaltproduktsortiment.meddelandeid",
      "path" : "hamtalokaltproduktsortiment.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtalokaltproduktsortiment.dosaktor",
      "path" : "hamtalokaltproduktsortiment.dosaktor",
      "short" : "dosaktor",
      "definition" : "dosaktor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtalokaltproduktsortiment.Produktsortiment",
      "path" : "hamtalokaltproduktsortiment.Produktsortiment",
      "short" : "Produktsortiment",
      "definition" : "Produktsortiment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtalokaltproduktsortiment.Produktsortiment.nplid",
      "path" : "hamtalokaltproduktsortiment.Produktsortiment.nplid",
      "short" : "nplid",
      "definition" : "nplid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtalokaltproduktsortiment.Produktsortiment.nplpackid",
      "path" : "hamtalokaltproduktsortiment.Produktsortiment.nplpackid",
      "short" : "nplpackid",
      "definition" : "nplpackid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtalokaltproduktsortiment.Produktsortiment.glnkod",
      "path" : "hamtalokaltproduktsortiment.Produktsortiment.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
