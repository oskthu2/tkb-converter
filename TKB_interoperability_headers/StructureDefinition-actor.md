# Actor - interoperability: headers — Gemensamma huvudelement v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Actor**

## Logical Model: Actor 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/interoperability-headers/StructureDefinition/actor | *Version*:1.1.0 |
| Active as of 2026-10-08 | *Computable Name*:Actor |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för det gemensamma huvudelementet Actor (RIV-TA urn:riv:interoperability:headers:1, element Actor av typen ActorType). Identifierar den aktör som ett anrop görs för räkning av, t.ex. invånaren själv eller ett ombud för invånaren. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.interoperability-headers|current/StructureDefinition/StructureDefinition-actor.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-actor.csv), [Excel](StructureDefinition-actor.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "actor",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/interoperability-headers/StructureDefinition/actor",
  "version" : "1.1.0",
  "name" : "Actor",
  "title" : "Actor",
  "status" : "active",
  "date" : "2026-10-08T18:39:09+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för det gemensamma huvudelementet Actor\n(RIV-TA urn:riv:interoperability:headers:1, element Actor av typen ActorType).\nIdentifierar den aktör som ett anrop görs för räkning av, t.ex. invånaren själv eller ett ombud för invånaren.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/interoperability-headers/StructureDefinition/actor",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "actor",
      "path" : "actor",
      "short" : "Actor",
      "definition" : "Logisk modell för det gemensamma huvudelementet Actor\n(RIV-TA urn:riv:interoperability:headers:1, element Actor av typen ActorType).\nIdentifierar den aktör som ett anrop görs för räkning av, t.ex. invånaren själv eller ett ombud för invånaren."
    },
    {
      "id" : "actor.actorId",
      "path" : "actor.actorId",
      "short" : "Aktörens identitet",
      "definition" : "XSD: actorId (ActorIdType, restriktion av xs:string). Obligatorisk.\nSchemat anger inget format; vilken identifierartyp som avses (t.ex. personnummer) är inte specificerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "actor.actorType",
      "path" : "actor.actorType",
      "short" : "Aktörens typ",
      "definition" : "XSD: actorType (ActorTypeEnum). Obligatorisk.\nsubject_of_care = invånaren/patienten själv, subject_of_care_agent = ombud för invånaren.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/interoperability-headers/ValueSet/actortype-vs"
      }
    }]
  }
}

```
