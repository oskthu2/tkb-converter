# ActorType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActorType**

## Logical Model: ActorType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ActorType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:ActorType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Medarbetare i vård och omsorg (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-ActorType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActorType.csv), [Excel](StructureDefinition-ActorType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActorType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ActorType",
  "version" : "1.0.0",
  "name" : "ActorType",
  "title" : "ActorType",
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
  "description" : "Medarbetare i vård och omsorg (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ActorType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ActorType",
      "path" : "ActorType",
      "short" : "ActorType",
      "definition" : "Medarbetare i vård och omsorg (xs:complexType.)"
    },
    {
      "id" : "ActorType.hsaId",
      "path" : "ActorType.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId Typ i schemat: HSAIdType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "ActorType.personName",
      "path" : "ActorType.personName",
      "short" : "personName",
      "definition" : "personName Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ActorType.personTelecom",
      "path" : "ActorType.personTelecom",
      "short" : "personTelecom",
      "definition" : "personTelecom Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ActorType.personEmail",
      "path" : "ActorType.personEmail",
      "short" : "personEmail",
      "definition" : "personEmail Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ActorType.personAddress",
      "path" : "ActorType.personAddress",
      "short" : "personAddress",
      "definition" : "personAddress Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
