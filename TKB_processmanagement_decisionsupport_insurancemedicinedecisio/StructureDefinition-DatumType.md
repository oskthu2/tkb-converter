# DatumType - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DatumType**

## Data Type Profile: DatumType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/DatumType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:DatumType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Daum värdet är en sträng på formatet "ÅÅÅÅ-MM-DD" som matchar begränsad ISO 8601. Tid samt tidszon skall ej anges (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetDiagnosInformation](StructureDefinition-getdiagnosinformation.md) and [GetFmb](StructureDefinition-getfmb.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-DatumType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DatumType.csv), [Excel](StructureDefinition-DatumType.xlsx), [Schematron](StructureDefinition-DatumType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DatumType",
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/DatumType",
  "name" : "DatumType",
  "title" : "DatumType",
  "status" : "active",
  "date" : "2026-11-09T03:46:58+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Daum värdet är en sträng på formatet \"ÅÅÅÅ-MM-DD\" som matchar begränsad ISO 8601. Tid samt tidszon skall ej anges (xs:simpleType i domänens schema.)",
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
        "key" : "local-datumtype-pattern",
        "severity" : "error",
        "human" : "DatumType ska följa mönstret i schemat: [1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))",
        "expression" : "matches('^(?:(?:[1-2][0-9]{3,3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))))$')",
        "source" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/DatumType"
      }]
    }]
  }
}

```
