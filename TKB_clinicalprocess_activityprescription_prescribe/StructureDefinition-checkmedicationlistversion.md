# CheckMedicationListVersion - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckMedicationListVersion**

## Logical Model: CheckMedicationListVersion 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/checkmedicationlistversion | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:CheckMedicationListVersion |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CheckMedicationListVersion (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1). Representerar responsens informationsstruktur. Används för att kontrollera om en given läkemedelslisteversion är aktuell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-checkmedicationlistversion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkmedicationlistversion.csv), [Excel](StructureDefinition-checkmedicationlistversion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkmedicationlistversion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/checkmedicationlistversion",
  "version" : "2",
  "name" : "CheckMedicationListVersion",
  "title" : "CheckMedicationListVersion",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CheckMedicationListVersion\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att kontrollera om en given läkemedelslisteversion är aktuell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/checkmedicationlistversion",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkmedicationlistversion",
      "path" : "checkmedicationlistversion",
      "short" : "CheckMedicationListVersion",
      "definition" : "Logisk modell för tjänstekontraktet CheckMedicationListVersion\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att kontrollera om en given läkemedelslisteversion är aktuell."
    },
    {
      "id" : "checkmedicationlistversion.isCurrentVersion",
      "path" : "checkmedicationlistversion.isCurrentVersion",
      "short" : "Sant om angiven version är den senaste versionen av läkemedelslistan",
      "definition" : "Sant om angiven version är den senaste versionen av läkemedelslistan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "checkmedicationlistversion.result",
      "path" : "checkmedicationlistversion.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkmedicationlistversion.result.resultCode",
      "path" : "checkmedicationlistversion.result.resultCode",
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
      "id" : "checkmedicationlistversion.result.errorCode",
      "path" : "checkmedicationlistversion.result.errorCode",
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
      "id" : "checkmedicationlistversion.result.subcode",
      "path" : "checkmedicationlistversion.result.subcode",
      "short" : "Subkod (inga subkoder specificerade i v1.0)",
      "definition" : "Subkod (inga subkoder specificerade i v1.0)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkmedicationlistversion.result.logId",
      "path" : "checkmedicationlistversion.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkmedicationlistversion.result.message",
      "path" : "checkmedicationlistversion.result.message",
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
