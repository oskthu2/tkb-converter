# GetCommissionMembers — Request - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionMembers — Request**

## Logical Model: GetCommissionMembers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembers-request | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetCommissionMembersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetCommissionMembers (urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-getcommissionmembers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionmembers-request.csv), [Excel](StructureDefinition-getcommissionmembers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionmembers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembers-request",
  "version" : "2.0.0-rc1",
  "name" : "GetCommissionMembersRequest",
  "title" : "GetCommissionMembers — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:22:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetCommissionMembers\n(urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getcommissionmembers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionmembers-request",
      "path" : "getcommissionmembers-request",
      "short" : "GetCommissionMembers — Request",
      "definition" : "Logisk modell för begäran i GetCommissionMembers\n(urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getcommissionmembers-request.logicalAddress",
      "path" : "getcommissionmembers-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The HSA-id of the source system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers-request.healthCareUnitHsaId",
      "path" : "getcommissionmembers-request.healthCareUnitHsaId",
      "short" : "healthCareUnitHsaId",
      "definition" : "healthCareUnitHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers-request.commissionPurpose",
      "path" : "getcommissionmembers-request.commissionPurpose",
      "short" : "commissionPurpose",
      "definition" : "commissionPurpose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers-request.commissionRights",
      "path" : "getcommissionmembers-request.commissionRights",
      "short" : "commissionRights",
      "definition" : "commissionRights",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers-request.healthCareProfessionalLicense",
      "path" : "getcommissionmembers-request.healthCareProfessionalLicense",
      "short" : "healthCareProfessionalLicense",
      "definition" : "healthCareProfessionalLicense",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers-request.searchBase",
      "path" : "getcommissionmembers-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembers-request.includeFeignedObject",
      "path" : "getcommissionmembers-request.includeFeignedObject",
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
