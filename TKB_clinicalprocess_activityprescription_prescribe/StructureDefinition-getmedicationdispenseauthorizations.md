# GetMedicationDispenseAuthorizations - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMedicationDispenseAuthorizations**

## Logical Model: GetMedicationDispenseAuthorizations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationdispenseauthorizations | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:GetMedicationDispenseAuthorizations |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2). Representerar responsens informationsstruktur — expedieringsunderlag per patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getmedicationdispenseauthorizations.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmedicationdispenseauthorizations.csv), [Excel](StructureDefinition-getmedicationdispenseauthorizations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmedicationdispenseauthorizations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationdispenseauthorizations",
  "version" : "2",
  "name" : "GetMedicationDispenseAuthorizations",
  "title" : "GetMedicationDispenseAuthorizations",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2).\nRepresenterar responsens informationsstruktur — expedieringsunderlag per patient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationdispenseauthorizations",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmedicationdispenseauthorizations",
      "path" : "getmedicationdispenseauthorizations",
      "short" : "GetMedicationDispenseAuthorizations",
      "definition" : "Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2).\nRepresenterar responsens informationsstruktur — expedieringsunderlag per patient."
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase",
      "short" : "Expedieringsärende",
      "definition" : "En eller flera expedieringsärenden för patienten.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseCaseId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseCaseId",
      "short" : "Unikt id för expedieringsärendet",
      "definition" : "Unikt id för expedieringsärendet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization",
      "short" : "Expedieringsunderlag",
      "definition" : "Expedieringsunderlag",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.dispenseAuthorizationId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.dispenseAuthorizationId",
      "short" : "Unikt id för expedieringsunderlaget",
      "definition" : "Unikt id för expedieringsunderlaget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.dispenseAuthorizationStatus",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.dispenseAuthorizationStatus",
      "short" : "Status: ATTACHED eller NOT_ATTACHED",
      "definition" : "Status: ATTACHED eller NOT_ATTACHED",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/dispenseauthorizationstatus-vs"
      }
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.medicationInformation",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.medicationInformation",
      "short" : "Läkemedelsinformation",
      "definition" : "Läkemedelsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.registrationData",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.registrationData",
      "short" : "Registreringsdata",
      "definition" : "Registreringsdata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.startTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.startTime",
      "short" : "Giltighetsdatum från",
      "definition" : "Giltighetsdatum från",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.endTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorization.endTime",
      "short" : "Giltighetsdatum till",
      "definition" : "Giltighetsdatum till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result",
      "path" : "getmedicationdispenseauthorizations.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.resultCode",
      "path" : "getmedicationdispenseauthorizations.result.resultCode",
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
      "id" : "getmedicationdispenseauthorizations.result.errorCode",
      "path" : "getmedicationdispenseauthorizations.result.errorCode",
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
      "id" : "getmedicationdispenseauthorizations.result.logId",
      "path" : "getmedicationdispenseauthorizations.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.message",
      "path" : "getmedicationdispenseauthorizations.result.message",
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
