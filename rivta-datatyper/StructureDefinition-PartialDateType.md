# PartialDateType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PartialDateType**

## Logical Model: PartialDateType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:PartialDateType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Datum med variabel noggrannhet. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-PartialDateType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PartialDateType.csv), [Excel](StructureDefinition-PartialDateType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PartialDateType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateType",
  "version" : "1.0.0",
  "name" : "PartialDateType",
  "title" : "PartialDateType",
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
  "description" : "Datum med variabel noggrannhet. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PartialDateType",
      "path" : "PartialDateType",
      "short" : "PartialDateType",
      "definition" : "Datum med variabel noggrannhet. (xs:complexType.)"
    },
    {
      "id" : "PartialDateType.format",
      "path" : "PartialDateType.format",
      "short" : "format",
      "definition" : "Anger noggrannheten i value: YYYY, YYYYMM eller YYYYMMDD. Typ i schemat: DateTypeFormatEnum. Kodverket (DateTypeFormatEnum) definieras i respektive domänschema.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PartialDateType.value",
      "path" : "PartialDateType.value",
      "short" : "value",
      "definition" : "Datumvärdet med den noggrannhet som format anger. Typ i schemat: PartialDateValueType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateValueType"]
      }]
    }]
  }
}

```
