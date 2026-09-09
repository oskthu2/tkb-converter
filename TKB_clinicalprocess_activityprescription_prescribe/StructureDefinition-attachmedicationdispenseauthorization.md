# AttachMedicationDispenseAuthorization - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AttachMedicationDispenseAuthorization**

## Logical Model: AttachMedicationDispenseAuthorization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/attachmedicationdispenseauthorization | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:AttachMedicationDispenseAuthorization |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet AttachMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:AttachMedicationDispenseAuthorization:2). Representerar responsens informationsstruktur — kopplar ett expedieringsunderlag till en ordination. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-attachmedicationdispenseauthorization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-attachmedicationdispenseauthorization.csv), [Excel](StructureDefinition-attachmedicationdispenseauthorization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "attachmedicationdispenseauthorization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/attachmedicationdispenseauthorization",
  "version" : "2",
  "name" : "AttachMedicationDispenseAuthorization",
  "title" : "AttachMedicationDispenseAuthorization",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet AttachMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:AttachMedicationDispenseAuthorization:2).\nRepresenterar responsens informationsstruktur — kopplar ett expedieringsunderlag till en ordination.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/attachmedicationdispenseauthorization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "attachmedicationdispenseauthorization",
      "path" : "attachmedicationdispenseauthorization",
      "short" : "AttachMedicationDispenseAuthorization",
      "definition" : "Logisk modell för tjänstekontraktet AttachMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:AttachMedicationDispenseAuthorization:2).\nRepresenterar responsens informationsstruktur — kopplar ett expedieringsunderlag till en ordination."
    },
    {
      "id" : "attachmedicationdispenseauthorization.result",
      "path" : "attachmedicationdispenseauthorization.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "attachmedicationdispenseauthorization.result.resultCode",
      "path" : "attachmedicationdispenseauthorization.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "attachmedicationdispenseauthorization.result.errorCode",
      "path" : "attachmedicationdispenseauthorization.result.errorCode",
      "short" : "Felkod",
      "definition" : "Felkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "attachmedicationdispenseauthorization.result.logId",
      "path" : "attachmedicationdispenseauthorization.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "attachmedicationdispenseauthorization.result.message",
      "path" : "attachmedicationdispenseauthorization.result.message",
      "short" : "Beskrivande text",
      "definition" : "Beskrivande text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
