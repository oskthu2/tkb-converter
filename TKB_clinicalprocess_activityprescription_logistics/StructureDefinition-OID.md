# OID - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OID**

## Data Type Profile: OID 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/OID | *Version*: |
| Draft as of 2026-11-09 | *Computable Name*:OID |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
OID (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetDispensedDrugs — Request](StructureDefinition-getdispenseddrugs-request.md), [GetDispensedDrugs](StructureDefinition-getdispenseddrugs.md), [PrintListOfDispensedDrugs — Request](StructureDefinition-printlistofdispenseddrugs-request.md) and [PrintListOfDispensedDrugs](StructureDefinition-printlistofdispenseddrugs.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-logistics|current/StructureDefinition/StructureDefinition-OID.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OID.csv), [Excel](StructureDefinition-OID.xlsx), [Schematron](StructureDefinition-OID.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OID",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/OID",
  "name" : "OID",
  "title" : "OID",
  "status" : "draft",
  "date" : "2026-11-09T03:16:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "OID (xs:simpleType i domänens schema.)",
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
        "key" : "local-oid-pattern",
        "severity" : "error",
        "human" : "OID ska följa mönstret i schemat: [0-9][0-9.]*",
        "expression" : "matches('^(?:(?:[0-9][0-9.]*))$')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/OID"
      }]
    }]
  }
}

```
