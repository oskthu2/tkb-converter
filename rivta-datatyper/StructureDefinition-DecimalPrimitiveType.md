# DecimalPrimitiveType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DecimalPrimitiveType**

## Data Type Profile: DecimalPrimitiveType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DecimalPrimitiveType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:DecimalPrimitiveType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Decimaltal som bevarar signifikanta avslutande nollor. (xs:simpleType, restriktion av xs:string.) 

**Usages:**

* Use this Primitive Type Profile: [PQIntervalType](StructureDefinition-PQIntervalType.md) and [PQType](StructureDefinition-PQType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-DecimalPrimitiveType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DecimalPrimitiveType.csv), [Excel](StructureDefinition-DecimalPrimitiveType.xlsx), [Schematron](StructureDefinition-DecimalPrimitiveType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DecimalPrimitiveType",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DecimalPrimitiveType",
  "version" : "1.0.0",
  "name" : "DecimalPrimitiveType",
  "title" : "DecimalPrimitiveType",
  "status" : "active",
  "date" : "2026-11-09T03:12:38+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Decimaltal som bevarar signifikanta avslutande nollor. (xs:simpleType, restriktion av xs:string.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
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
        "key" : "rivta-decimalprimitivetype-pattern",
        "severity" : "error",
        "human" : "DecimalPrimitiveType ska följa mönstret i schemat: -?(0|[1-9][0-9]*)((\\.|,)[0-9]+)?([eE][+-]?[0-9]+)?",
        "expression" : "matches('^(?:(?:-?(0|[1-9][0-9]*)((\\\\.|,)[0-9]+)?([eE][+-]?[0-9]+)?))$')",
        "source" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DecimalPrimitiveType"
      }]
    }]
  }
}

```
