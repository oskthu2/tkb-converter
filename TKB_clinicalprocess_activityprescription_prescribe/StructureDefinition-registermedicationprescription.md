# RegisterMedicationPrescription - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationPrescription**

## Logical Model: RegisterMedicationPrescription 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:RegisterMedicationPrescription |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterMedicationPrescription (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationPrescription:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationprescription.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationprescription.csv), [Excel](StructureDefinition-registermedicationprescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationprescription",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription",
  "version" : "2.0",
  "name" : "RegisterMedicationPrescription",
  "title" : "RegisterMedicationPrescription",
  "status" : "draft",
  "date" : "2026-11-06T21:01:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterMedicationPrescription\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationPrescription:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationprescription",
      "path" : "registermedicationprescription",
      "short" : "RegisterMedicationPrescription",
      "definition" : "Logisk modell för tjänstekontraktet RegisterMedicationPrescription\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationPrescription:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registermedicationprescription.medicationListVersion",
      "path" : "registermedicationprescription.medicationListVersion",
      "short" : "Ny version på patientens samlade läkemedelslista efter registrering",
      "definition" : "Version på patientens samlade läkemedelslista.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription.medicationPrescriptionList",
      "path" : "registermedicationprescription.medicationPrescriptionList",
      "short" : "Ordinationslista",
      "definition" : "Övergripande objekt som håller ihop",
      "comment" : "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence",
      "path" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence",
      "short" : "Registrerade behandlingssekvenser",
      "definition" : "Registrerade behandlingssekvenser",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescriptionSequenceId",
      "path" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescriptionSequenceId",
      "short" : "Tilldelat unikt id för behandlingssekvensen",
      "definition" : "Tilldelat unikt id för behandlingssekvensen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription",
      "path" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription",
      "short" : "Registrerade ordinationer",
      "definition" : "Registrerade ordinationer",
      "comment" : "TKB-fält: `medicationPrescription` (`MedicationPrescription`, kardinalitet 1..1).\n\nObs: modellen anger 1..* där TKB:n anger 1..1.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.medicationPrescriptionId",
      "path" : "registermedicationprescription.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.medicationPrescriptionId",
      "short" : "Tilldelat unikt id för ordinationen",
      "definition" : "Tilldelat unikt id för ordinationen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription.result",
      "path" : "registermedicationprescription.result",
      "short" : "Resultat av begäran",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription.result.resultCode",
      "path" : "registermedicationprescription.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
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
      "id" : "registermedicationprescription.result.errorCode",
      "path" : "registermedicationprescription.result.errorCode",
      "short" : "Felkod",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).",
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
      "id" : "registermedicationprescription.result.logId",
      "path" : "registermedicationprescription.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription.result.message",
      "path" : "registermedicationprescription.result.message",
      "short" : "Beskrivande text",
      "definition" : "En beskrivande text som kan visas för användaren.",
      "comment" : "TKB-fält: `../message` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
