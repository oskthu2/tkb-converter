# PersonIdType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PersonIdType**

## Logical Model: PersonIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:PersonIdType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Identifierare för en person och typ av identifierare. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-PersonIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonIdType.csv), [Excel](StructureDefinition-PersonIdType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonIdType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType",
  "version" : "1.0.0",
  "name" : "PersonIdType",
  "title" : "PersonIdType",
  "status" : "active",
  "date" : "2026-11-06T20:56:47+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Identifierare för en person och typ av identifierare. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PersonIdType",
      "path" : "PersonIdType",
      "short" : "PersonIdType",
      "definition" : "Identifierare för en person och typ av identifierare. (xs:complexType.)"
    },
    {
      "id" : "PersonIdType.id",
      "path" : "PersonIdType.id",
      "short" : "id",
      "definition" : "Personidentifieraren, t.ex. ett personnummer (ÅÅÅÅMMDDNNNN). Typ i schemat: string.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PersonIdType.type",
      "path" : "PersonIdType.type",
      "short" : "type",
      "definition" : "OID för typ av identifierare, t.ex. 1.2.752.129.2.1.3.1 (personnummer) eller 1.2.752.129.2.1.3.3 (samordningsnummer). Typ i schemat: string.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
