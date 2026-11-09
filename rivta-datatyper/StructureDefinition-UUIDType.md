# UUIDType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UUIDType**

## Data Type Profile: UUIDType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/UUIDType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:UUIDType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. (xs:simpleType, restriktion av xs:string.) 

**Usages:**

* This Primitive Type Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-UUIDType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-UUIDType.csv), [Excel](StructureDefinition-UUIDType.xlsx), [Schematron](StructureDefinition-UUIDType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "UUIDType",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/UUIDType",
  "version" : "1.0.0",
  "name" : "UUIDType",
  "title" : "UUIDType",
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
  "description" : "Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. (xs:simpleType, restriktion av xs:string.)",
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
        "key" : "rivta-uuidtype-pattern",
        "severity" : "error",
        "human" : "UUIDType ska följa mönstret i schemat: [A-Fa-f0-9]{32}|(\\{|\\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(\\}|\\))?",
        "expression" : "matches('^(?:(?:[A-Fa-f0-9]{32}|(\\\\{|\\\\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(\\\\}|\\\\))?))$')",
        "source" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/UUIDType"
      }]
    }]
  }
}

```
