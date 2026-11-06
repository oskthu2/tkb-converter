# CVType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CVType**

## Logical Model: CVType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:CVType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Referens till ett begrepp i ett externt kodverk. (xs:complexType.) 

**Usages:**

* Use this Logical Model: [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.md) and [LegalAuthenticatorType](StructureDefinition-LegalAuthenticatorType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-CVType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CVType.csv), [Excel](StructureDefinition-CVType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CVType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType",
  "version" : "1.0.0",
  "name" : "CVType",
  "title" : "CVType",
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
  "description" : "Referens till ett begrepp i ett externt kodverk. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "CVType",
      "path" : "CVType",
      "short" : "CVType",
      "definition" : "Referens till ett begrepp i ett externt kodverk. (xs:complexType.)"
    },
    {
      "id" : "CVType.code",
      "path" : "CVType.code",
      "short" : "code",
      "definition" : "Koden i kodverket. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CVType.codeSystem",
      "path" : "CVType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kodverkets OID. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CVType.codeSystemName",
      "path" : "CVType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "Kodverkets namn i klartext. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CVType.codeSystemVersion",
      "path" : "CVType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "Kodverkets version. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CVType.displayName",
      "path" : "CVType.displayName",
      "short" : "displayName",
      "definition" : "Kodens klartext enligt kodverket. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CVType.originalText",
      "path" : "CVType.originalText",
      "short" : "originalText",
      "definition" : "Fritext när begreppet inte kan anges som kod (då anges inte code och codeSystem). Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
