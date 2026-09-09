# GetListingTypes — Request - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingTypes — Request**

## Logical Model: GetListingTypes — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlistingtypes-request | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetListingTypesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetListingTypes (Visa listningstyp). (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getlistingtypes-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingtypes-request.csv), [Excel](StructureDefinition-getlistingtypes-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingtypes-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlistingtypes-request",
  "version" : "1.0.0",
  "name" : "GetListingTypesRequest",
  "title" : "GetListingTypes — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:48:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetListingTypes (Visa listningstyp).\n(RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlistingtypes-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingtypes-request",
      "path" : "getlistingtypes-request",
      "short" : "GetListingTypes — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetListingTypes (Visa listningstyp).\n(RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1)."
    },
    {
      "id" : "getlistingtypes-request.personId",
      "path" : "getlistingtypes-request.personId",
      "short" : "PersonID för den person vars möjliga listningstyper önskas",
      "definition" : "Anger person ID som det önskas möjliga typer av listningar för.\nPattern: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
