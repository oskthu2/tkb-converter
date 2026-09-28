# GetHealthCareUnitMembers — Request - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitMembers — Request**

## Logical Model: GetHealthCareUnitMembers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitmembers-request | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetHealthCareUnitMembersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetHealthCareUnitMembers (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitmembers-request.json)

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
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitmembers-request",
  "version" : "2.0.0-rc1",
  "name" : "GetHealthCareUnitMembersRequest",
  "title" : "GetHealthCareUnitMembers — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:21:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetHealthCareUnitMembers\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitmembers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitmembers-request",
      "path" : "gethealthcareunitmembers-request",
      "short" : "GetHealthCareUnitMembers — Request",
      "definition" : "Logisk modell för begäran i GetHealthCareUnitMembers\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gethealthcareunitmembers-request.logicalAddress",
      "path" : "gethealthcareunitmembers-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The HSA-id of the source system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers-request.healthCareUnitHsaId",
      "path" : "gethealthcareunitmembers-request.healthCareUnitHsaId",
      "short" : "healthCareUnitHsaId",
      "definition" : "healthCareUnitHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers-request.searchBase",
      "path" : "gethealthcareunitmembers-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers-request.includeFeignedObject",
      "path" : "gethealthcareunitmembers-request.includeFeignedObject",
      "short" : "includeFeignedObject",
      "definition" : "includeFeignedObject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
