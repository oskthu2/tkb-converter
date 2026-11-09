# SubjectOfCareIdType - ehr:accesscontrol v1.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SubjectOfCareIdType**

## Data Type Profile: SubjectOfCareIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/SubjectOfCareIdType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:SubjectOfCareIdType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
SubjectOfCareIdType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [AssertCareEngagement — Request](StructureDefinition-assertcareengagement-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-accesscontrol|current/StructureDefinition/StructureDefinition-SubjectOfCareIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SubjectOfCareIdType.csv), [Excel](StructureDefinition-SubjectOfCareIdType.xlsx), [Schematron](StructureDefinition-SubjectOfCareIdType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SubjectOfCareIdType",
  "url" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/SubjectOfCareIdType",
  "name" : "SubjectOfCareIdType",
  "title" : "SubjectOfCareIdType",
  "status" : "active",
  "date" : "2026-11-09T03:28:00+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  },
  {
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "SubjectOfCareIdType (xs:simpleType i domänens schema.)",
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
        "human" : "SubjectOfCareIdType ska följa mönstret i schemat: [0-9]{8}[0-9pPtTfF][0-9]{3}",
        "expression" : "matches('^(?:(?:[0-9]{8}[0-9pPtTfF][0-9]{3}))$')",
        "source" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/SubjectOfCareIdType"
      }]
    }]
  }
}

```
