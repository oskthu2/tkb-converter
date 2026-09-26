# SokVardandeEnhet — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SokVardandeEnhet — Response**

## Logical Model: SokVardandeEnhet — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/sokvardandeenhet | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:SokVardandeEnhet |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SokVardandeEnhet (urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-sokvardandeenhet.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sokvardandeenhet.csv), [Excel](StructureDefinition-sokvardandeenhet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sokvardandeenhet",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/sokvardandeenhet",
  "version" : "1.1.0",
  "name" : "SokVardandeEnhet",
  "title" : "SokVardandeEnhet — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SokVardandeEnhet\n(urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/sokvardandeenhet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sokvardandeenhet",
      "path" : "sokvardandeenhet",
      "short" : "SokVardandeEnhet — Response",
      "definition" : "Logisk modell för svaret i SokVardandeEnhet\n(urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetResponseType)."
    },
    {
      "id" : "sokvardandeenhet.resultatkod",
      "path" : "sokvardandeenhet.resultatkod",
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
      "id" : "sokvardandeenhet.meddelandetext",
      "path" : "sokvardandeenhet.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet.meddelandeid",
      "path" : "sokvardandeenhet.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "sokvardandeenhet.dosaktor",
      "path" : "sokvardandeenhet.dosaktor",
      "short" : "dosaktor",
      "definition" : "dosaktor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet.VardandeEnhet",
      "path" : "sokvardandeenhet.VardandeEnhet",
      "short" : "VardandeEnhet",
      "definition" : "VardandeEnhet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sokvardandeenhet.VardandeEnhet.vardandeenhetid",
      "path" : "sokvardandeenhet.VardandeEnhet.vardandeenhetid",
      "short" : "vardandeenhetid",
      "definition" : "vardandeenhetid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet.VardandeEnhet.vardandeenhetnamn",
      "path" : "sokvardandeenhet.VardandeEnhet.vardandeenhetnamn",
      "short" : "vardandeenhetnamn",
      "definition" : "vardandeenhetnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet.VardandeEnhet.vardandeenhetpostort",
      "path" : "sokvardandeenhet.VardandeEnhet.vardandeenhetpostort",
      "short" : "vardandeenhetpostort",
      "definition" : "vardandeenhetpostort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet.VardandeEnhet.glnkod",
      "path" : "sokvardandeenhet.VardandeEnhet.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
