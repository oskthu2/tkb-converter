# RegisterMedicationDispenseAuthorization - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationDispenseAuthorization**

## Logical Model: RegisterMedicationDispenseAuthorization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationdispenseauthorization | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterMedicationDispenseAuthorization |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationdispenseauthorization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationdispenseauthorization.csv), [Excel](StructureDefinition-registermedicationdispenseauthorization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationdispenseauthorization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationdispenseauthorization",
  "version" : "2",
  "name" : "RegisterMedicationDispenseAuthorization",
  "title" : "RegisterMedicationDispenseAuthorization",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationdispenseauthorization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationdispenseauthorization",
      "path" : "registermedicationdispenseauthorization",
      "short" : "RegisterMedicationDispenseAuthorization",
      "definition" : "Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registermedicationdispenseauthorization.dispenseAuthorizationId",
      "path" : "registermedicationdispenseauthorization.dispenseAuthorizationId",
      "short" : "Tilldelat unikt id för expedieringsunderlaget",
      "definition" : "Tilldelat unikt id för expedieringsunderlaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseCaseId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseCaseId",
      "short" : "Tilldelat unikt id för expedieringsärendet",
      "definition" : "Tilldelat unikt id för expedieringsärendet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result",
      "path" : "registermedicationdispenseauthorization.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.resultCode",
      "path" : "registermedicationdispenseauthorization.result.resultCode",
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
      "id" : "registermedicationdispenseauthorization.result.errorCode",
      "path" : "registermedicationdispenseauthorization.result.errorCode",
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
      "id" : "registermedicationdispenseauthorization.result.logId",
      "path" : "registermedicationdispenseauthorization.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.message",
      "path" : "registermedicationdispenseauthorization.result.message",
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
