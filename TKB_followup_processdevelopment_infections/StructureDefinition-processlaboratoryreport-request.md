# ProcessLaboratoryReport — Request - followup: processdevelopment: infections v1.0.2-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessLaboratoryReport — Request**

## Logical Model: ProcessLaboratoryReport — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processlaboratoryreport-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ProcessLaboratoryReportRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet ProcessLaboratoryReport (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1). Registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-processlaboratoryreport-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processlaboratoryreport-request.csv), [Excel](StructureDefinition-processlaboratoryreport-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processlaboratoryreport-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processlaboratoryreport-request",
  "version" : "1.0",
  "name" : "ProcessLaboratoryReportRequest",
  "title" : "ProcessLaboratoryReport — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:32:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessLaboratoryReport\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1).\nRegistrerar ett nytt laboratoriesvar med tillhörande information om patient,\nbeställande enhet, provtagningstidpunkt och agensförekomst.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processlaboratoryreport-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processlaboratoryreport-request",
      "path" : "processlaboratoryreport-request",
      "short" : "ProcessLaboratoryReport — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessLaboratoryReport\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1).\nRegistrerar ett nytt laboratoriesvar med tillhörande information om patient,\nbeställande enhet, provtagningstidpunkt och agensförekomst."
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport",
      "path" : "processlaboratoryreport-request.laboratoryReport",
      "short" : "LaboratoryReportType",
      "definition" : "laboratoryReport",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.orgUnitId",
      "path" : "processlaboratoryreport-request.laboratoryReport.orgUnitId",
      "short" : "orgUnitId",
      "definition" : "Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id",
      "comment" : "TKB-fält: `orgUnitId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.reportId",
      "path" : "processlaboratoryreport-request.laboratoryReport.reportId",
      "short" : "reportId",
      "definition" : "Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id",
      "comment" : "TKB-fält: `reportId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.testTime",
      "path" : "processlaboratoryreport-request.laboratoryReport.testTime",
      "short" : "testTime",
      "definition" : "Informationsspecifikation: Provtagning.provtagningstidpunkt",
      "comment" : "TKB-fält: `testTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.observationTime",
      "path" : "processlaboratoryreport-request.laboratoryReport.observationTime",
      "short" : "observationTime",
      "definition" : "Informationsspecifikation: Mikrobiologiskt fynd.observationstidpunkt",
      "comment" : "TKB-fält: `observationTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.findingCode",
      "path" : "processlaboratoryreport-request.laboratoryReport.findingCode",
      "short" : "findingCode",
      "definition" : "Informationsspecifikation: Mikrobiologiskt fynd.agenskod\n\nKodverk: NPU\n\nMöjliga koder: ATCC09689 (Clostridium difficile)",
      "comment" : "TKB-fält: `findingCode` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.patient",
      "path" : "processlaboratoryreport-request.laboratoryReport.patient",
      "short" : "PatientType",
      "definition" : "Informationsspecifikation: Patient",
      "comment" : "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.patient.id",
      "path" : "processlaboratoryreport-request.laboratoryReport.patient.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.patient.birthTime",
      "path" : "processlaboratoryreport-request.laboratoryReport.patient.birthTime",
      "short" : "birthTime",
      "definition" : "birthTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "processlaboratoryreport-request.laboratoryReport.patient.gender",
      "path" : "processlaboratoryreport-request.laboratoryReport.patient.gender",
      "short" : "gender",
      "definition" : "gender",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    }]
  }
}

```
