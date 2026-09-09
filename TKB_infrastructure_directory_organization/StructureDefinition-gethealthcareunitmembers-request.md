# GetHealthCareUnitMembers — Request - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitMembers — Request**

## Logical Model: GetHealthCareUnitMembers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitmembers-request | *Version*:5 |
| Draft as of 2026-09-09 | *Computable Name*:GetHealthCareUnitMembersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHealthCareUnitMembers (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitmembers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitmembers-request.csv), [Excel](StructureDefinition-gethealthcareunitmembers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitmembers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitmembers-request",
  "version" : "5",
  "name" : "GetHealthCareUnitMembersRequest",
  "title" : "GetHealthCareUnitMembers — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:00:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHealthCareUnitMembers (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitmembers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitmembers-request",
      "path" : "gethealthcareunitmembers-request",
      "short" : "GetHealthCareUnitMembers — Request",
      "definition" : "Logisk modell för requestparametrar i GetHealthCareUnitMembers (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2)."
    },
    {
      "id" : "gethealthcareunitmembers-request.healthCareUnitHsaId",
      "path" : "gethealthcareunitmembers-request.healthCareUnitHsaId",
      "short" : "HSA-id för vårdenhet enligt PDL. Ref. hsaIdentity [R5].",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers-request.searchBase",
      "path" : "gethealthcareunitmembers-request.searchBase",
      "short" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "definition" : "DN-format. Obs: kopplade enheter söks alltid med sökbas c=se.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers-request.includeFeignedObject",
      "path" : "gethealthcareunitmembers-request.includeFeignedObject",
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
