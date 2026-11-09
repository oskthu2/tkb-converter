# SubjectOfCareIdType - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SubjectOfCareIdType**

## Data Type Profile: SubjectOfCareIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/SubjectOfCareIdType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:SubjectOfCareIdType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Personnummer kan anges med eller utan sekelsiffror.Bindestreck är också valfritt (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [CreateListing — Request](StructureDefinition-createlisting-request.md), [GetListing — Request](StructureDefinition-getlisting-request.md), [GetListing](StructureDefinition-getlisting.md), [GetListingTypes — Request](StructureDefinition-getlistingtypes-request.md) and [GetPersonQueueStatus — Request](StructureDefinition-getpersonqueuestatus-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-SubjectOfCareIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SubjectOfCareIdType.csv), [Excel](StructureDefinition-SubjectOfCareIdType.xlsx), [Schematron](StructureDefinition-SubjectOfCareIdType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SubjectOfCareIdType",
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/SubjectOfCareIdType",
  "name" : "SubjectOfCareIdType",
  "title" : "SubjectOfCareIdType",
  "status" : "active",
  "date" : "2026-11-09T03:25:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Personnummer kan anges med eller utan sekelsiffror.Bindestreck är också valfritt (xs:simpleType i domänens schema.)",
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
        "key" : "local-subjectofcareidtype-pattern",
        "severity" : "error",
        "human" : "SubjectOfCareIdType ska följa mönstret i schemat: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}",
        "expression" : "matches('^(?:(?:(([1-9]\\\\d{7})|(\\\\d{6}))[\\\\-]?\\\\d{4}))$')",
        "source" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/SubjectOfCareIdType"
      }]
    }]
  }
}

```
