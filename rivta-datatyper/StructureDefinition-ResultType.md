# ResultType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultType**

## Logical Model: ResultType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ResultType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:ResultType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Resultatkod och valfri text för logiska fel. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-ResultType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ResultType.csv), [Excel](StructureDefinition-ResultType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ResultType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ResultType",
  "version" : "1.0.0",
  "name" : "ResultType",
  "title" : "ResultType",
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
  "description" : "Resultatkod och valfri text för logiska fel. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ResultType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ResultType",
      "path" : "ResultType",
      "short" : "ResultType",
      "definition" : "Resultatkod och valfri text för logiska fel. (xs:complexType.)"
    },
    {
      "id" : "ResultType.resultCode",
      "path" : "ResultType.resultCode",
      "short" : "resultCode",
      "definition" : "Resultatkod: OK, INFO eller ERROR. Typ i schemat: ResultCodeEnum. Kodverket (ResultCodeEnum) definieras i respektive domänschema.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ResultType.resultText",
      "path" : "ResultType.resultText",
      "short" : "resultText",
      "definition" : "Förklarande text till resultatkoden. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
