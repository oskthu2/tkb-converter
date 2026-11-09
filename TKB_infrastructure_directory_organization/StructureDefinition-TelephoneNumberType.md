# TelephoneNumberType - infrastructure: directory: organization v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TelephoneNumberType**

## Data Type Profile: TelephoneNumberType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/TelephoneNumberType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:TelephoneNumberType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
TelephoneNumberType (xs:simpleType i domänens schema.) 

**Usages:**

* Use this Primitive Type Profile: [GetUnit](StructureDefinition-getunit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-TelephoneNumberType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TelephoneNumberType.csv), [Excel](StructureDefinition-TelephoneNumberType.xlsx), [Schematron](StructureDefinition-TelephoneNumberType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TelephoneNumberType",
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/TelephoneNumberType",
  "name" : "TelephoneNumberType",
  "title" : "TelephoneNumberType",
  "status" : "active",
  "date" : "2026-11-09T03:37:41+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "TelephoneNumberType (xs:simpleType i domänens schema.)",
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
        "key" : "local-telephonenumbertype-pattern",
        "severity" : "error",
        "human" : "TelephoneNumberType ska följa mönstret i schemat: ([+0123456789][0-9]*)",
        "expression" : "matches('^(?:(?:([+0123456789][0-9]*)))$')",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/TelephoneNumberType"
      }]
    }]
  }
}

```
