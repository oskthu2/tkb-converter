# GetHealthCareUnit — Request - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnit — Request**

## Logical Model: GetHealthCareUnit — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunit-request | *Version*:5 |
| Draft as of 2026-09-09 | *Computable Name*:GetHealthCareUnitRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHealthCareUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareunit-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunit-request.csv), [Excel](StructureDefinition-gethealthcareunit-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunit-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunit-request",
  "version" : "5",
  "name" : "GetHealthCareUnitRequest",
  "title" : "GetHealthCareUnit — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:00:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHealthCareUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunit-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunit-request",
      "path" : "gethealthcareunit-request",
      "short" : "GetHealthCareUnit — Request",
      "definition" : "Logisk modell för requestparametrar i GetHealthCareUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2)."
    },
    {
      "id" : "gethealthcareunit-request.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunit-request.healthCareUnitMemberHsaId",
      "short" : "HSA-id för en enhet eller funktion som är kopplad till en vårdenhet enligt PDL.",
      "definition" : "Ref. HSA-id (hsaIdentity) i Informationsspecifikationen [R5].\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit-request.searchBase",
      "path" : "gethealthcareunit-request.searchBase",
      "short" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "definition" : "DN-format (Distinguished Name).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit-request.includeFeignedObject",
      "path" : "gethealthcareunit-request.includeFeignedObject",
      "short" : "true: om metoden ska leverera svar med fingerade objekt.",
      "definition" : "Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
