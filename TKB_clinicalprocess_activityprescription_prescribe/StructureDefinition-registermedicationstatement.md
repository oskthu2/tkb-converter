# RegisterMedicationStatement - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationStatement**

## Logical Model: RegisterMedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterMedicationStatement |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterMedicationStatement (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1). Representerar responsens informationsstruktur. RegisterMedicationStatement används för att registrera egenmedicinering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationstatement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationstatement.csv), [Excel](StructureDefinition-registermedicationstatement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationstatement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement",
  "version" : "2",
  "name" : "RegisterMedicationStatement",
  "title" : "RegisterMedicationStatement",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterMedicationStatement\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1).\nRepresenterar responsens informationsstruktur.\nRegisterMedicationStatement används för att registrera egenmedicinering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationstatement",
      "path" : "registermedicationstatement",
      "short" : "RegisterMedicationStatement",
      "definition" : "Logisk modell för tjänstekontraktet RegisterMedicationStatement\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1).\nRepresenterar responsens informationsstruktur.\nRegisterMedicationStatement används för att registrera egenmedicinering."
    },
    {
      "id" : "registermedicationstatement.medicationStatement",
      "path" : "registermedicationstatement.medicationStatement",
      "short" : "Registrerade egenmediciningar",
      "definition" : "Registrerade egenmediciningar",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData",
      "path" : "registermedicationstatement.medicationStatement.registrationData",
      "short" : "Registreringsdata",
      "definition" : "Registreringsdata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData.registrationDataId",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registrationDataId",
      "short" : "Systeminternt id tilldelat av producenten",
      "definition" : "Systeminternt id tilldelat av producenten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy",
      "short" : "Den som registrerade",
      "definition" : "Den som registrerade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData.registrationTime",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registrationTime",
      "short" : "Registreringstidpunkt",
      "definition" : "Registreringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.medicationInformation",
      "path" : "registermedicationstatement.medicationStatement.medicationInformation",
      "short" : "Läkemedelsinformation för egenmedicineringen",
      "definition" : "Läkemedelsinformation för egenmedicineringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.startTime",
      "path" : "registermedicationstatement.medicationStatement.startTime",
      "short" : "Startdatum för egenmedicineringen",
      "definition" : "Startdatum för egenmedicineringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.endTime",
      "path" : "registermedicationstatement.medicationStatement.endTime",
      "short" : "Slutdatum för egenmedicineringen",
      "definition" : "Slutdatum för egenmedicineringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationstatement.result",
      "path" : "registermedicationstatement.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationstatement.result.resultCode",
      "path" : "registermedicationstatement.result.resultCode",
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
      "id" : "registermedicationstatement.result.errorCode",
      "path" : "registermedicationstatement.result.errorCode",
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
      "id" : "registermedicationstatement.result.logId",
      "path" : "registermedicationstatement.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.result.message",
      "path" : "registermedicationstatement.result.message",
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
