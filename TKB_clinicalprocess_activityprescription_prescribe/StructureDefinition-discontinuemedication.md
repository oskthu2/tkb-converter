# DiscontinueMedication - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiscontinueMedication**

## Logical Model: DiscontinueMedication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:DiscontinueMedication |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DiscontinueMedication (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-discontinuemedication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-discontinuemedication.csv), [Excel](StructureDefinition-discontinuemedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "discontinuemedication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication",
  "version" : "2",
  "name" : "DiscontinueMedication",
  "title" : "DiscontinueMedication",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DiscontinueMedication\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "discontinuemedication",
      "path" : "discontinuemedication",
      "short" : "DiscontinueMedication",
      "definition" : "Logisk modell för tjänstekontraktet DiscontinueMedication\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "discontinuemedication.medicationListVersion",
      "path" : "discontinuemedication.medicationListVersion",
      "short" : "Ny version på patientens samlade läkemedelslista efter utsättning",
      "definition" : "Ny version på patientens samlade läkemedelslista efter utsättning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription",
      "path" : "discontinuemedication.medicationPrescription",
      "short" : "Den uppdaterade ordinationen med utsättningsinformation",
      "definition" : "Den uppdaterade ordinationen med utsättningsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medicationPrescriptionId",
      "path" : "discontinuemedication.medicationPrescription.medicationPrescriptionId",
      "short" : "Ordinationens unika id",
      "definition" : "Ordinationens unika id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.endTime",
      "path" : "discontinuemedication.medicationPrescription.endTime",
      "short" : "Utsättningstidpunkt (satt av producenten)",
      "definition" : "Utsättningstidpunkt (satt av producenten)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.revocation",
      "path" : "discontinuemedication.medicationPrescription.revocation",
      "short" : "Utsättningsinformation",
      "definition" : "Utsättningsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.revocation.revokedBy",
      "path" : "discontinuemedication.medicationPrescription.revocation.revokedBy",
      "short" : "Den som satt ut ordinationen",
      "definition" : "Den som satt ut ordinationen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.revocation.revocationReason",
      "path" : "discontinuemedication.medicationPrescription.revocation.revocationReason",
      "short" : "Orsak till utsättning",
      "definition" : "Orsak till utsättning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.revocation.revocationTime",
      "path" : "discontinuemedication.medicationPrescription.revocation.revocationTime",
      "short" : "Tidpunkt för utsättning",
      "definition" : "Tidpunkt för utsättning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "discontinuemedication.result",
      "path" : "discontinuemedication.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "discontinuemedication.result.resultCode",
      "path" : "discontinuemedication.result.resultCode",
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
      "id" : "discontinuemedication.result.errorCode",
      "path" : "discontinuemedication.result.errorCode",
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
      "id" : "discontinuemedication.result.logId",
      "path" : "discontinuemedication.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.result.message",
      "path" : "discontinuemedication.result.message",
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
