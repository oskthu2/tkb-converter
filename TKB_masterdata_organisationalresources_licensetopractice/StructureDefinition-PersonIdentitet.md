# PersonIdentitet - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PersonIdentitet**

## Data Type Profile: PersonIdentitet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PersonIdentitet | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:PersonIdentitet |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
PersonIdentitet (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetHospPersonForIVO — Request](StructureDefinition-gethosppersonforivo-request.md), [GetHospPersonForIVO](StructureDefinition-gethosppersonforivo.md), [GetHospPersonForPublicHealthcare — Request](StructureDefinition-gethosppersonforpublichealthcare-request.md) and [GetHospPersonForPublicHealthcare](StructureDefinition-gethosppersonforpublichealthcare.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-organisationalresources-licensetopractice|current/StructureDefinition/StructureDefinition-PersonIdentitet.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonIdentitet.csv), [Excel](StructureDefinition-PersonIdentitet.xlsx), [Schematron](StructureDefinition-PersonIdentitet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonIdentitet",
  "url" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PersonIdentitet",
  "name" : "PersonIdentitet",
  "title" : "PersonIdentitet",
  "status" : "active",
  "date" : "2026-11-09T03:45:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "PersonIdentitet (xs:simpleType i domänens schema.)",
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
        "key" : "local-personidentitet-pattern",
        "severity" : "error",
        "human" : "PersonIdentitet ska följa mönstret i schemat: \\d{12}",
        "expression" : "matches('^(?:(?:\\\\d{12}))$')",
        "source" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PersonIdentitet"
      }]
    }]
  }
}

```
