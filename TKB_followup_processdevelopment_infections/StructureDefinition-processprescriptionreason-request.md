# ProcessPrescriptionReason — Request - followup: processdevelopment: infections v1.0.2-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessPrescriptionReason — Request**

## Logical Model: ProcessPrescriptionReason — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processprescriptionreason-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ProcessPrescriptionReasonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet ProcessPrescriptionReason (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1). Registrerar en ordinationsorsak med information om patient, organisatorisk enhet, eventuellt aktivitet, ordination och ordinerad substans. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-processprescriptionreason-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processprescriptionreason-request.csv), [Excel](StructureDefinition-processprescriptionreason-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processprescriptionreason-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processprescriptionreason-request",
  "version" : "1.0",
  "name" : "ProcessPrescriptionReasonRequest",
  "title" : "ProcessPrescriptionReason — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:32:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessPrescriptionReason\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1).\nRegistrerar en ordinationsorsak med information om patient, organisatorisk enhet,\neventuellt aktivitet, ordination och ordinerad substans.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processprescriptionreason-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processprescriptionreason-request",
      "path" : "processprescriptionreason-request",
      "short" : "ProcessPrescriptionReason — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessPrescriptionReason\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1).\nRegistrerar en ordinationsorsak med information om patient, organisatorisk enhet,\neventuellt aktivitet, ordination och ordinerad substans."
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason",
      "path" : "processprescriptionreason-request.prescriptionReason",
      "short" : "PrescriptionReasonType",
      "definition" : "prescriptionReason",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionCareUnitId",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionCareUnitId",
      "short" : "prescriptionCareUnitId",
      "definition" : "Medicinskt ansvarig för ordinationsmoment.",
      "comment" : "TKB-fält: `prescriptionCareUnitId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionReasonCareUnitId",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionReasonCareUnitId",
      "short" : "prescriptionReasonCareUnitId",
      "definition" : "Medicinskt ansvarig för ordinationsorsak",
      "comment" : "TKB-fält: `prescriptionReasonCareUnitId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionTime",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionTime",
      "short" : "prescriptionTime",
      "definition" : "Tidpunkt då registreringen av ordinationsorsaken gjordes.\n\nI de fall en ordination finns anges här\n\nI annat fall lämnas detta fält tomt.",
      "comment" : "TKB-fält: `prescriptionTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionReasonTime",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionReasonTime",
      "short" : "prescriptionReasonTime",
      "definition" : "Tidpunkt för ordinationen.",
      "comment" : "TKB-fält: `prescriptionReasonTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionLocationId",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionLocationId",
      "short" : "prescriptionLocationId",
      "definition" : "Registreringsenhet för ordinationsmoment.",
      "comment" : "TKB-fält: `prescriptionLocationId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionReasonLocationId",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionReasonLocationId",
      "short" : "prescriptionReasonLocationId",
      "definition" : "Registreringsenhet för ordinationsorsak",
      "comment" : "TKB-fält: `prescriptionReasonLocationId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.activityCode",
      "path" : "processprescriptionreason-request.prescriptionReason.activityCode",
      "short" : "activityCode",
      "definition" : "Information om en aktivitet som är relevant att registrera.\n\nKodverk: KVÅ, SnomedCT, IV Annan",
      "comment" : "TKB-fält: `activityCode` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.activityId",
      "path" : "processprescriptionreason-request.prescriptionReason.activityId",
      "short" : "activityId",
      "definition" : "Unik identifierare för aktivitet",
      "comment" : "TKB-fält: `activityId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.conditionId",
      "path" : "processprescriptionreason-request.prescriptionReason.conditionId",
      "short" : "conditionId",
      "definition" : "Id för patientens diagnos",
      "comment" : "TKB-fält: `conditionId` (`IIType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.conditionCode",
      "path" : "processprescriptionreason-request.prescriptionReason.conditionCode",
      "short" : "conditionCode",
      "definition" : "Anger koden och klartext för patientens diagnos\n\nKodverk: SnomedCT, IV Annan, KSH97",
      "comment" : "TKB-fält: `conditionCode` (`CVType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.source",
      "path" : "processprescriptionreason-request.prescriptionReason.source",
      "short" : "source",
      "definition" : "Kod och klartext som anger hur infektionen uppstått. Anger om det är samhälls- eller vårdförvärvad infektion eller ej infektion (vid förebyggande profylax)\n\nKodverk: IV Smittväg",
      "comment" : "TKB-fält: `source` (`CVType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.prescriptionId",
      "path" : "processprescriptionreason-request.prescriptionReason.prescriptionId",
      "short" : "prescriptionId",
      "definition" : "Unik identifierare för ordinationen",
      "comment" : "TKB-fält: `prescriptionId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.substanceCode",
      "path" : "processprescriptionreason-request.prescriptionReason.substanceCode",
      "short" : "substanceCode",
      "definition" : "Hanterar information kring en läkemedelssubstans som är del av en läkemedelsordination\n\nKodverk: ATC",
      "comment" : "TKB-fält: `substanceCode` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.patient",
      "path" : "processprescriptionreason-request.prescriptionReason.patient",
      "short" : "PatientType",
      "definition" : "Patientuppgifter",
      "comment" : "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.patient.id",
      "path" : "processprescriptionreason-request.prescriptionReason.patient.id",
      "short" : "id",
      "definition" : "id",
      "comment" : "TKB-fält: `patient.id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.patient.birthTime",
      "path" : "processprescriptionreason-request.prescriptionReason.patient.birthTime",
      "short" : "birthTime",
      "definition" : "Patientens födelseår. Anges enligt ÅÅÅÅMMDD, ÅÅÅÅMM eller ÅÅÅÅ",
      "comment" : "TKB-fält: `patient.birthtime` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "processprescriptionreason-request.prescriptionReason.patient.gender",
      "path" : "processprescriptionreason-request.prescriptionReason.patient.gender",
      "short" : "gender",
      "definition" : "Kod och klartext som anger patientens kön",
      "comment" : "TKB-fält: `patient.gender` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    }]
  }
}

```
