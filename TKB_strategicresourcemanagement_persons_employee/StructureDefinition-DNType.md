# DNType - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNType**

## Data Type Profile: DNType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/DNType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:DNType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DNType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetCommissionMembers — Request](StructureDefinition-getcommissionmembers-request.md), [GetCommissionMembers — Response](StructureDefinition-getcommissionmembers.md), [GetCommissionMembersIncludingProtectedPerson — Request](StructureDefinition-getcommissionmembersincludingprotectedperson-request.md), [GetCommissionMembersIncludingProtectedPerson — Response](StructureDefinition-getcommissionmembersincludingprotectedperson.md)... Show 4 more, [GetEmployee — Request](StructureDefinition-getemployee-request.md), [GetEmployee — Response](StructureDefinition-getemployee.md), [GetEmployeeIncludingProtectedPerson — Request](StructureDefinition-getemployeeincludingprotectedperson-request.md) and [GetEmployeeIncludingProtectedPerson — Response](StructureDefinition-getemployeeincludingprotectedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-DNType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DNType.csv), [Excel](StructureDefinition-DNType.xlsx), [Schematron](StructureDefinition-DNType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DNType",
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/DNType",
  "name" : "DNType",
  "title" : "DNType",
  "status" : "draft",
  "date" : "2026-11-09T03:50:45+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "DNType (xs:simpleType i domänens schema.)",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "string",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/string",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "string",
      "path" : "string",
      "constraint" : [{
        "key" : "local-dntype-pattern",
        "severity" : "error",
        "human" : "DNType ska följa mönstret i schemat: ([OUDCNLoudcnl]{1,2}=[0-9\\p{L}\\p{Zs}\\-.]*,?)*",
        "expression" : "matches('^(?:(?:([OUDCNLoudcnl]{1,2}=[0-9\\\\p{L}\\\\p{Zs}\\\\-.]*,?)*))$')",
        "source" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/DNType"
      }]
    }]
  }
}

```
