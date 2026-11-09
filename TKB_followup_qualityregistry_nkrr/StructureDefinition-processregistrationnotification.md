# ProcessRegistrationNotification - followup: qualityregistry: nkrr v1.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRegistrationNotification**

## Logical Model: ProcessRegistrationNotification 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:ProcessRegistrationNotification |
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
  "version" : "1.0",
  "name" : "ProcessRegistrationNotification",
  "title" : "ProcessRegistrationNotification",
  "status" : "active",
  "date" : "2026-11-09T03:33:19+00:00",
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
      "short" : "referenceId",
      "definition" : "Identifierare som kan lämnas som referens.\n\nSka specificeras och hanteras enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret.",
      "comment" : "TKB-fält: `referenceId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification.result",
      "path" : "processregistrationnotification.result",
      "short" : "result",
      "definition" : "Information om mottagningen av notifieringen lyckades.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/ResultType"
      }]
    }]
  }
}

```
