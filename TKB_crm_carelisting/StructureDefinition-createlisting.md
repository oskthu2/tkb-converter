# CreateListing - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateListing**

## Logical Model: CreateListing 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:CreateListing |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval) (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1). Representerar responsens informationsstruktur. Skapar en ny listning — kopplar ett personId till en vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-createlisting.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createlisting.csv), [Excel](StructureDefinition-createlisting.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createlisting",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting",
  "version" : "1.0",
  "name" : "CreateListing",
  "title" : "CreateListing",
  "status" : "active",
  "date" : "2026-11-09T03:25:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval)\n(RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).\nRepresenterar responsens informationsstruktur.\nSkapar en ny listning — kopplar ett personId till en vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createlisting",
      "path" : "createlisting",
      "short" : "CreateListing",
      "definition" : "Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval)\n(RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).\nRepresenterar responsens informationsstruktur.\nSkapar en ny listning — kopplar ett personId till en vårdenhet."
    },
    {
      "id" : "createlisting.success",
      "path" : "createlisting.success",
      "short" : "success",
      "definition" : "True om listningen genomfördes framgångsrikt, annars false. False indikerar att användaren behöver prova ett annat alternativ.",
      "comment" : "TKB-fält: `success` (`boolean`, kardinalitet 1..1).\n\n**Modellanteckning:** True if the requested listing was successfully completed, else false. False indicates that the user needs to try another option for listing.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "createlisting.comment",
      "path" : "createlisting.comment",
      "short" : "Information som kompletterar angiven status.",
      "definition" : "Information som kompletterar angiven status.",
      "comment" : "TKB-fält: `comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting.systemCode",
      "path" : "createlisting.systemCode",
      "short" : "systemCode",
      "definition" : "Kod från underliggande listningssystem för felsökningsändamål. Konsumenten får inte binda logik till dessa koder.",
      "comment" : "TKB-fält: `systemCode` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Kod från underliggande listningssystem, i syfte att användas i dialog med respektive listningssystems förvaltning. Tjänstekonsumenten får inte binda logik till värden på dessa koder.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
