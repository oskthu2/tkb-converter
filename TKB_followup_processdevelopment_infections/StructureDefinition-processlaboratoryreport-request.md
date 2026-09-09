# ProcessLaboratoryReport — Request - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessLaboratoryReport — Request**

## Logical Model: ProcessLaboratoryReport — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processlaboratoryreport-request | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:ProcessLaboratoryReportRequest |
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
  "version" : "1.0.2",
  "name" : "ProcessLaboratoryReportRequest",
  "title" : "ProcessLaboratoryReport — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
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
      "id" : "processlaboratoryreport-request.orgUnitId",
      "path" : "processlaboratoryreport-request.orgUnitId",
      "short" : "Beställande enhet (HSA-id)",
      "definition" : "Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id\nOID för HSA-id: 1.2.752.129.2.1.4.1\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.reportId",
      "path" : "processlaboratoryreport-request.reportId",
      "short" : "Laboratoriesvars-id",
      "definition" : "Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id\nNationell OID för lokala ID:n: 1.2.752.129.2.1.2.1\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.testTime",
      "path" : "processlaboratoryreport-request.testTime",
      "short" : "Provtagningstidpunkt (YYYYMMDDhhmmss)",
      "definition" : "Informationsspecifikation: Provtagning.provtagningstidpunkt\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.observationTime",
      "path" : "processlaboratoryreport-request.observationTime",
      "short" : "Observationstidpunkt (YYYYMMDDhhmmss)",
      "definition" : "Informationsspecifikation: Mikrobiologiskt fynd.observationstidpunkt\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.findingCode",
      "path" : "processlaboratoryreport-request.findingCode",
      "short" : "Agenskod för mikrobiologiskt fynd",
      "definition" : "Informationsspecifikation: Mikrobiologiskt fynd.agenskod\nKodverk: NPU\nMöjliga koder: ATCC09689 (Clostridium difficile)\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patient",
      "path" : "processlaboratoryreport-request.patient",
      "short" : "Patientuppgifter",
      "definition" : "Informationsspecifikation: Patient\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patient.patientId",
      "path" : "processlaboratoryreport-request.patient.patientId",
      "short" : "Patientens identifierare",
      "definition" : "Patientens identifierare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patient.birthTime",
      "path" : "processlaboratoryreport-request.patient.birthTime",
      "short" : "Patientens födelseår",
      "definition" : "Patientens födelseår",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patient.gender",
      "path" : "processlaboratoryreport-request.patient.gender",
      "short" : "Patientens kön",
      "definition" : "Kodverk KV Kön, OID: 1.2.752.129.2.2.1.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
