# SearchBaseType - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchBaseType**

## Data Type Profile: SearchBaseType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/SearchBaseType | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:SearchBaseType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
SearchBaseType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetHsaPerson — Request](StructureDefinition-gethsaperson-request.md), [GetHsaUnit — Request](StructureDefinition-gethsaunit-request.md), [GetHsaUnitList — Request](StructureDefinition-gethsaunitlist-request.md), [GetMiuForPerson — Request](StructureDefinition-getmiuforperson-request.md) and [GetPersonsWithCommissionAtHealthCareUnit — Request](StructureDefinition-getpersonswithcommissionathealthcareunit-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-SearchBaseType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SearchBaseType.csv), [Excel](StructureDefinition-SearchBaseType.xlsx), [Schematron](StructureDefinition-SearchBaseType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SearchBaseType",
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/SearchBaseType",
  "name" : "SearchBaseType",
  "title" : "SearchBaseType",
  "status" : "draft",
  "date" : "2026-11-09T03:45:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "SearchBaseType (xs:simpleType i domänens schema.)",
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
        "key" : "local-searchbasetype-pattern",
        "severity" : "error",
        "human" : "SearchBaseType ska följa mönstret i schemat: ([OUDCNLoudcnl]{1,2}=[0-9\\p{L}\\p{Zs}\\-.]*,?)*",
        "expression" : "matches('^(?:(?:([OUDCNLoudcnl]{1,2}=[0-9\\\\p{L}\\\\p{Zs}\\\\-.]*,?)*))$')",
        "source" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/SearchBaseType"
      }]
    }]
  }
}

```
