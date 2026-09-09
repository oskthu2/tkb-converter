# RevokeMedicationDispenseAuthorization - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeMedicationDispenseAuthorization**

## Logical Model: RevokeMedicationDispenseAuthorization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokemedicationdispenseauthorization | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:RevokeMedicationDispenseAuthorization |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-revokemedicationdispenseauthorization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokemedicationdispenseauthorization.csv), [Excel](StructureDefinition-revokemedicationdispenseauthorization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokemedicationdispenseauthorization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokemedicationdispenseauthorization",
  "version" : "2",
  "name" : "RevokeMedicationDispenseAuthorization",
  "title" : "RevokeMedicationDispenseAuthorization",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokemedicationdispenseauthorization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokemedicationdispenseauthorization",
      "path" : "revokemedicationdispenseauthorization",
      "short" : "RevokeMedicationDispenseAuthorization",
      "definition" : "Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "revokemedicationdispenseauthorization.result",
      "path" : "revokemedicationdispenseauthorization.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokemedicationdispenseauthorization.result.resultCode",
      "path" : "revokemedicationdispenseauthorization.result.resultCode",
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
      "id" : "revokemedicationdispenseauthorization.result.errorCode",
      "path" : "revokemedicationdispenseauthorization.result.errorCode",
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
      "id" : "revokemedicationdispenseauthorization.result.logId",
      "path" : "revokemedicationdispenseauthorization.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokemedicationdispenseauthorization.result.message",
      "path" : "revokemedicationdispenseauthorization.result.message",
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
