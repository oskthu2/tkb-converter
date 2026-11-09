# DT - population: residentmaster v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DT**

## Data Type Profile: DT 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/DT | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:DT |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
DT (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [LookupResidentForFullProfile — Request](StructureDefinition-lookupresidentforfullprofile-request.md) and [LookupResidentForFullProfile](StructureDefinition-lookupresidentforfullprofile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.population-residentmaster|current/StructureDefinition/StructureDefinition-DT.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DT.csv), [Excel](StructureDefinition-DT.xlsx), [Schematron](StructureDefinition-DT.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DT",
  "url" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/DT",
  "name" : "DT",
  "title" : "DT",
  "status" : "active",
  "date" : "2026-11-09T03:46:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "DT (xs:simpleType i domänens schema.)",
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
        "key" : "local-dt-pattern",
        "severity" : "error",
        "human" : "DT ska följa mönstret i schemat: [1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})",
        "expression" : "matches('^(?:(?:[1-9]{1}[0-9]{3}(0[1-9]{1}|1[0-2]{1})([0-2]{1}[0-9]{1}|3[0-1]{1})))$')",
        "source" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/DT"
      }]
    }]
  }
}

```
