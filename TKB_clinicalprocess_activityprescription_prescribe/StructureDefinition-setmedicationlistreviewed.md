# SetMedicationListReviewed - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetMedicationListReviewed**

## Logical Model: SetMedicationListReviewed 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewed | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:SetMedicationListReviewed |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SetMedicationListReviewed (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1). Representerar responsens informationsstruktur. Används för att markera att en läkemedelslista är genomgången (läkemedelsavstämning). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-setmedicationlistreviewed.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setmedicationlistreviewed.csv), [Excel](StructureDefinition-setmedicationlistreviewed.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setmedicationlistreviewed",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewed",
  "version" : "2",
  "name" : "SetMedicationListReviewed",
  "title" : "SetMedicationListReviewed",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SetMedicationListReviewed\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att markera att en läkemedelslista är genomgången (läkemedelsavstämning).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewed",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setmedicationlistreviewed",
      "path" : "setmedicationlistreviewed",
      "short" : "SetMedicationListReviewed",
      "definition" : "Logisk modell för tjänstekontraktet SetMedicationListReviewed\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att markera att en läkemedelslista är genomgången (läkemedelsavstämning)."
    },
    {
      "id" : "setmedicationlistreviewed.medicationListVersion",
      "path" : "setmedicationlistreviewed.medicationListVersion",
      "short" : "Ny version av läkemedelslistan efter markering",
      "definition" : "Ny version av läkemedelslistan efter markering",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result",
      "path" : "setmedicationlistreviewed.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.resultCode",
      "path" : "setmedicationlistreviewed.result.resultCode",
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
      "id" : "setmedicationlistreviewed.result.errorCode",
      "path" : "setmedicationlistreviewed.result.errorCode",
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
      "id" : "setmedicationlistreviewed.result.logId",
      "path" : "setmedicationlistreviewed.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setmedicationlistreviewed.result.message",
      "path" : "setmedicationlistreviewed.result.message",
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
