# GetAllHealthcareFacilities — Request - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllHealthcareFacilities — Request**

## Logical Model: GetAllHealthcareFacilities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallhealthcarefacilities-request | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetAllHealthcareFacilitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAllHealthcareFacilities. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getallhealthcarefacilities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallhealthcarefacilities-request.csv), [Excel](StructureDefinition-getallhealthcarefacilities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallhealthcarefacilities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallhealthcarefacilities-request",
  "version" : "1.1",
  "name" : "GetAllHealthcareFacilitiesRequest",
  "title" : "GetAllHealthcareFacilities — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAllHealthcareFacilities.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallhealthcarefacilities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallhealthcarefacilities-request",
      "path" : "getallhealthcarefacilities-request",
      "short" : "GetAllHealthcareFacilities — Request",
      "definition" : "Logisk modell för requestparametrar i GetAllHealthcareFacilities."
    },
    {
      "id" : "getallhealthcarefacilities-request.healthcare-facility",
      "path" : "getallhealthcarefacilities-request.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet (kallande organisation).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getallhealthcarefacilities-request.subject-of-care",
      "path" : "getallhealthcarefacilities-request.subject_of_care",
      "short" : "Personnummer enl. yyyymmddxxxx",
      "definition" : "Personnummer för invånaren. Kan användas för att filtrera svar per invånare.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallhealthcarefacilities-request.bookingId",
      "path" : "getallhealthcarefacilities-request.bookingId",
      "short" : "Internt bokningsid",
      "definition" : "Internt bokningsid. Obligatoriskt när förfrågan gäller ombokning.\nKardinalitet: Valfri (villkorlig: obligatorisk vid ombokning).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
