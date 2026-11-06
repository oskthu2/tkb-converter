# MultimediaType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MultimediaType**

## Logical Model: MultimediaType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/MultimediaType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:MultimediaType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Multimediaobjekt som binärdata eller extern referens. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-MultimediaType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MultimediaType.csv), [Excel](StructureDefinition-MultimediaType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MultimediaType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/MultimediaType",
  "version" : "1.0.0",
  "name" : "MultimediaType",
  "title" : "MultimediaType",
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
  "description" : "Multimediaobjekt som binärdata eller extern referens. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/MultimediaType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MultimediaType",
      "path" : "MultimediaType",
      "short" : "MultimediaType",
      "definition" : "Multimediaobjekt som binärdata eller extern referens. (xs:complexType.)"
    },
    {
      "id" : "MultimediaType.id",
      "path" : "MultimediaType.id",
      "short" : "id",
      "definition" : "Objektets id. Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MultimediaType.mediaType",
      "path" : "MultimediaType.mediaType",
      "short" : "mediaType",
      "definition" : "Objektets MIME-typ. Typ i schemat: MediaTypeEnum. Kodverket (MediaTypeEnum) definieras i respektive domänschema.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "MultimediaType.value",
      "path" : "MultimediaType.value",
      "short" : "value",
      "definition" : "Objektet som binärdata (base64). Anges om reference inte anges. Typ i schemat: base64Binary.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "MultimediaType.reference",
      "path" : "MultimediaType.reference",
      "short" : "reference",
      "definition" : "Referens (URL) till objektet. Anges om value inte anges. Typ i schemat: anyURI.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
