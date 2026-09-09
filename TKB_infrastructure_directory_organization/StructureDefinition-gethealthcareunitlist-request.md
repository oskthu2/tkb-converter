# GetHealthCareUnitList — Request - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitList — Request**

## Logical Model: GetHealthCareUnitList — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitlist-request | *Version*:5 |
| Draft as of 2026-09-09 | *Computable Name*:GetHealthCareUnitListRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHealthCareUnitList (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitlist-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitlist-request.csv), [Excel](StructureDefinition-gethealthcareunitlist-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitlist-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitlist-request",
  "version" : "5",
  "name" : "GetHealthCareUnitListRequest",
  "title" : "GetHealthCareUnitList — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:00:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHealthCareUnitList (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitlist-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitlist-request",
      "path" : "gethealthcareunitlist-request",
      "short" : "GetHealthCareUnitList — Request",
      "definition" : "Logisk modell för requestparametrar i GetHealthCareUnitList (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2)."
    },
    {
      "id" : "gethealthcareunitlist-request.healthCareProviderHsaId",
      "path" : "gethealthcareunitlist-request.healthCareProviderHsaId",
      "short" : "Vårdgivarens HSA-id. Ref. hsaIdentity [R5].",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist-request.searchBase",
      "path" : "gethealthcareunitlist-request.searchBase",
      "short" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "definition" : "DN-format. Används för sökning av kopplad enhet, vårdenhet och vårdgivare.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist-request.includeFeignedObject",
      "path" : "gethealthcareunitlist-request.includeFeignedObject",
      "short" : "true: om metoden ska leverera svar med fingerade objekt.",
      "definition" : "Uteblivet värde tolkas som false.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
