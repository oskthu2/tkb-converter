# GetListingCounty — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingCounty — Response**

## Logical Model: GetListingCounty — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingcounty | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:GetListingCounty |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetListingCounty (urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlistingcounty.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingcounty.csv), [Excel](StructureDefinition-getlistingcounty.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingcounty",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingcounty",
  "version" : "2.0",
  "name" : "GetListingCounty",
  "title" : "GetListingCounty — Response",
  "status" : "active",
  "date" : "2026-10-08T18:55:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetListingCounty\n(urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingcounty",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingcounty",
      "path" : "getlistingcounty",
      "short" : "GetListingCounty — Response",
      "definition" : "Logisk modell för svaret i GetListingCounty\n(urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyResponseType)."
    },
    {
      "id" : "getlistingcounty.listingCounties",
      "path" : "getlistingcounty.listingCounties",
      "short" : "listingCounties",
      "definition" : "listingCounties",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlistingcounty.listingCounties.root",
      "path" : "getlistingcounty.listingCounties.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingcounty.listingCounties.iIExtension",
      "path" : "getlistingcounty.listingCounties.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingcounty.resultCode",
      "path" : "getlistingcounty.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-resultcode-vs"
      }
    },
    {
      "id" : "getlistingcounty.resultText",
      "path" : "getlistingcounty.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
