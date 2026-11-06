# IIType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IIType**

## Logical Model: IIType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:IIType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Unik identifierare för ett objekt eller en entitet. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-IIType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IIType.csv), [Excel](StructureDefinition-IIType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IIType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType",
  "version" : "1.0.0",
  "name" : "IIType",
  "title" : "IIType",
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
  "description" : "Unik identifierare för ett objekt eller en entitet. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "IIType",
      "path" : "IIType",
      "short" : "IIType",
      "definition" : "Unik identifierare för ett objekt eller en entitet. (xs:complexType.)"
    },
    {
      "id" : "IIType.root",
      "path" : "IIType.root",
      "short" : "root",
      "definition" : "Identifierarens namnrymd, oftast ett OID (t.ex. 1.2.752.129.2.1.4.1 för HSA-id) eller ett UUID. Typ i schemat: string.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IIType.extension",
      "path" : "IIType.extension",
      "short" : "extension",
      "definition" : "Identifierarens värde inom namnrymden i root, t.ex. själva HSA-id:t. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
