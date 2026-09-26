# SokVardandeEnhet — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SokVardandeEnhet — Request**

## Logical Model: SokVardandeEnhet — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/sokvardandeenhet-request | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:SokVardandeEnhetRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SokVardandeEnhet (urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-sokvardandeenhet-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sokvardandeenhet-request.csv), [Excel](StructureDefinition-sokvardandeenhet-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sokvardandeenhet-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/sokvardandeenhet-request",
  "version" : "1.1.0",
  "name" : "SokVardandeEnhetRequest",
  "title" : "SokVardandeEnhet — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SokVardandeEnhet\n(urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/sokvardandeenhet-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sokvardandeenhet-request",
      "path" : "sokvardandeenhet-request",
      "short" : "SokVardandeEnhet — Request",
      "definition" : "Logisk modell för begäran i SokVardandeEnhet\n(urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "sokvardandeenhet-request.logicalAddress",
      "path" : "sokvardandeenhet-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sokvardandeenhet-request.glnkod",
      "path" : "sokvardandeenhet-request.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet-request.dosaktor",
      "path" : "sokvardandeenhet-request.dosaktor",
      "short" : "dosaktor",
      "definition" : "dosaktor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet-request.vardandeenhetnamn",
      "path" : "sokvardandeenhet-request.vardandeenhetnamn",
      "short" : "vardandeenhetnamn",
      "definition" : "vardandeenhetnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokvardandeenhet-request.vardandeenhetort",
      "path" : "sokvardandeenhet-request.vardandeenhetort",
      "short" : "vardandeenhetort",
      "definition" : "vardandeenhetort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
