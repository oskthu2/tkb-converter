# SetMedicationListReviewNeeded - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetMedicationListReviewNeeded**

## Logical Model: SetMedicationListReviewNeeded 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewneeded | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:SetMedicationListReviewNeeded |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SetMedicationListReviewNeeded (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewNeeded:1). Representerar responsens informationsstruktur. Används för att markera att en läkemedelslista behöver granskas. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-setmedicationlistreviewneeded.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setmedicationlistreviewneeded.csv), [Excel](StructureDefinition-setmedicationlistreviewneeded.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setmedicationlistreviewneeded",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewneeded",
  "version" : "2",
  "name" : "SetMedicationListReviewNeeded",
  "title" : "SetMedicationListReviewNeeded",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SetMedicationListReviewNeeded\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewNeeded:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att markera att en läkemedelslista behöver granskas.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/setmedicationlistreviewneeded",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setmedicationlistreviewneeded",
      "path" : "setmedicationlistreviewneeded",
      "short" : "SetMedicationListReviewNeeded",
      "definition" : "Logisk modell för tjänstekontraktet SetMedicationListReviewNeeded\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewNeeded:1).\nRepresenterar responsens informationsstruktur.\nAnvänds för att markera att en läkemedelslista behöver granskas."
    },
    {
      "id" : "setmedicationlistreviewneeded.medicationListVersion",
      "path" : "setmedicationlistreviewneeded.medicationListVersion",
      "short" : "Ny version av läkemedelslistan efter markering",
      "definition" : "Ny version av läkemedelslistan efter markering",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "setmedicationlistreviewneeded.result",
      "path" : "setmedicationlistreviewneeded.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "setmedicationlistreviewneeded.result.resultCode",
      "path" : "setmedicationlistreviewneeded.result.resultCode",
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
      "id" : "setmedicationlistreviewneeded.result.errorCode",
      "path" : "setmedicationlistreviewneeded.result.errorCode",
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
      "id" : "setmedicationlistreviewneeded.result.logId",
      "path" : "setmedicationlistreviewneeded.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "setmedicationlistreviewneeded.result.message",
      "path" : "setmedicationlistreviewneeded.result.message",
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
