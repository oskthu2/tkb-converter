# ProcessRegistrationNotification - followup: qualityregistry: nkrr v1.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRegistrationNotification**

## Logical Model: ProcessRegistrationNotification 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification | *Version*:1.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:ProcessRegistrationNotification |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ProcessRegistrationNotification (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-qualityregistry-nkrr|current/StructureDefinition/StructureDefinition-processregistrationnotification.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processregistrationnotification.csv), [Excel](StructureDefinition-processregistrationnotification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processregistrationnotification",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification",
  "version" : "1.2.2",
  "name" : "ProcessRegistrationNotification",
  "title" : "ProcessRegistrationNotification",
  "status" : "draft",
  "date" : "2026-09-09T16:57:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ProcessRegistrationNotification\n(RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processregistrationnotification",
      "path" : "processregistrationnotification",
      "short" : "ProcessRegistrationNotification",
      "definition" : "Logisk modell för tjänstekontraktet ProcessRegistrationNotification\n(RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "processregistrationnotification.referenceId",
      "path" : "processregistrationnotification.referenceId",
      "short" : "Identifierare som kan lämnas som referens",
      "definition" : "Identifierare som kan lämnas som referens.\nSka specificeras och hanteras enligt den informationsspecifikation som kvalitetsregistret\ntillhandahåller för att beskriva hanteringen av notifiering till registret.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification.result",
      "path" : "processregistrationnotification.result",
      "short" : "Information om mottagningen av notifieringen lyckades",
      "definition" : "Information om mottagningen av notifieringen lyckades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processregistrationnotification.result.resultCode",
      "path" : "processregistrationnotification.result.resultCode",
      "short" : "Anger resultatet av notifieringen",
      "definition" : "Anger resultatet av notifieringen. Kan endast vara OK, INFO eller ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "processregistrationnotification.result.resultText",
      "path" : "processregistrationnotification.result.resultText",
      "short" : "En beskrivande text som kan anges vid INFO eller ERROR",
      "definition" : "En beskrivande text som kan anges vid INFO eller ERROR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
