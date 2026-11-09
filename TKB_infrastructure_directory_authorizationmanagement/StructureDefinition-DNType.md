# DNType - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNType**

## Data Type Profile: DNType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/DNType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:DNType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DNType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetAdminCredentialsForPerson — Request](StructureDefinition-getadmincredentialsforperson-request.md), [GetAdminCredentialsForPersonIncludingProtectedPerson — Request](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson-request.md), [GetCredentialsForPerson — Request](StructureDefinition-getcredentialsforperson-request.md) and [GetCredentialsForPersonIncludingProtectedPerson — Request](StructureDefinition-getcredentialsforpersonincludingprotectedperson-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-DNType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DNType.csv), [Excel](StructureDefinition-DNType.xlsx), [Schematron](StructureDefinition-DNType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DNType",
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/DNType",
  "name" : "DNType",
  "title" : "DNType",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
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
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/DNType"
      }]
    }]
  }
}

```
