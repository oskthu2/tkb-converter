# UnregisterBlock - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnregisterBlock**

## Logical Model: UnregisterBlock 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregisterblock | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:UnregisterBlock |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet UnregisterBlock (RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2). Avregistrerar en spärr från nationell spärrtjänst. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-unregisterblock.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-unregisterblock.csv), [Excel](StructureDefinition-unregisterblock.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "unregisterblock",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregisterblock",
  "version" : "3.2.2",
  "name" : "UnregisterBlock",
  "title" : "UnregisterBlock",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet UnregisterBlock\n(RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2).\nAvregistrerar en spärr från nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregisterblock",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "unregisterblock",
      "path" : "unregisterblock",
      "short" : "UnregisterBlock",
      "definition" : "Logisk modell för tjänstekontraktet UnregisterBlock\n(RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2).\nAvregistrerar en spärr från nationell spärrtjänst.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "unregisterblock.result",
      "path" : "unregisterblock.result",
      "short" : "Resultat av avregistreringen",
      "definition" : "Resultat av avregistreringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unregisterblock.result.resultCode",
      "path" : "unregisterblock.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "unregisterblock.result.resultText",
      "path" : "unregisterblock.result.resultText",
      "short" : "Beskrivande text till svarskoden",
      "definition" : "Beskrivande text till svarskoden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
