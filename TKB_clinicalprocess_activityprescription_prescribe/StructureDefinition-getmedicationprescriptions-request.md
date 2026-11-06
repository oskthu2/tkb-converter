# GetMedicationPrescriptions — Request - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMedicationPrescriptions — Request**

## Logical Model: GetMedicationPrescriptions — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationprescriptions-request | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetMedicationPrescriptionsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetMedicationPrescriptions. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getmedicationprescriptions-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmedicationprescriptions-request.csv), [Excel](StructureDefinition-getmedicationprescriptions-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmedicationprescriptions-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationprescriptions-request",
  "version" : "2.0",
  "name" : "GetMedicationPrescriptionsRequest",
  "title" : "GetMedicationPrescriptions — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:01:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetMedicationPrescriptions.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationprescriptions-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmedicationprescriptions-request",
      "path" : "getmedicationprescriptions-request",
      "short" : "GetMedicationPrescriptions — Request",
      "definition" : "Logisk modell för requestparametrar i GetMedicationPrescriptions."
    },
    {
      "id" : "getmedicationprescriptions-request.patientId",
      "path" : "getmedicationprescriptions-request.patientId",
      "short" : "Person- eller samordningsnummer",
      "definition" : "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `patientId` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.medicationPrescriptionSequenceId",
      "path" : "getmedicationprescriptions-request.medicationPrescriptionSequenceId",
      "short" : "Filter: unikt id för läkemedelsbehandlingen",
      "definition" : "Unikt id för Läkemedelsbehandlingen.\n\nSkapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationPrescriptionSequenceId*` (`Identifier`, kardinalitet 0..*).\n\n**Modellanteckning:** Om angivet returneras bara dessa behandlingssekvenser. Kan anges som lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.includeMedicalDispenseAuthorizations",
      "path" : "getmedicationprescriptions-request.includeMedicalDispenseAuthorizations",
      "short" : "Inkludera expedieringsunderlag i svaret",
      "definition" : "Inkludera expedieringsunderlag eller ej i svaret.",
      "comment" : "TKB-fält: `includeMedicalDispenseAuthorizations` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.medicationStatus",
      "path" : "getmedicationprescriptions-request.medicationStatus",
      "short" : "Filtrera på status",
      "definition" : "Inkludera enligt status enligt http://www.hl7.org/FHIR/medication-prescription-status.html",
      "comment" : "TKB-fält: `medicationStatus` (`code`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.medicationListVersion",
      "path" : "getmedicationprescriptions-request.medicationListVersion",
      "short" : "Specifik version av läkemedelslistan",
      "definition" : "Version på patientens samlade läkemedelslista.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.currentVersion",
      "path" : "getmedicationprescriptions-request.currentVersion",
      "short" : "Hämta senaste version",
      "definition" : "Sätts till true om \"senaste version\" skall returneras.\n\nSenaste version av en Läkmedelsbehandling omfattar det senaste hela beslutet dvs läkemedelsordinationen.",
      "comment" : "TKB-fält: `currentVersion*` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.validTimePeriod",
      "path" : "getmedicationprescriptions-request.validTimePeriod",
      "short" : "Tidsperiod för giltiga ordinationer",
      "definition" : "Tidsperiod för giltiga ordinationer",
      "comment" : "TKB-fält: `validTimePeriod*` (`DateTimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.validTimePeriod.start",
      "path" : "getmedicationprescriptions-request.validTimePeriod.start",
      "short" : "Från-datum",
      "definition" : "Från-datum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.validTimePeriod.end",
      "path" : "getmedicationprescriptions-request.validTimePeriod.end",
      "short" : "Till-datum",
      "definition" : "Till-datum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationprescriptions-request.registrationTime",
      "path" : "getmedicationprescriptions-request.registrationTime",
      "short" : "Hämta listan som den såg ut vid angiven tidpunkt (point-in-time)",
      "definition" : "Hämtar listan med Medications såsom den såg ut vid angiven registreringstidpunkt.",
      "comment" : "TKB-fält: `registrationTime*` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
