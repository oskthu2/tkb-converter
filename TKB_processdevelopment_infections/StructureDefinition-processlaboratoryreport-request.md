# ProcessLaboratoryReport — Request - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessLaboratoryReport — Request**

## Logical Model: ProcessLaboratoryReport — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processlaboratoryreport-request | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:ProcessLaboratoryReportRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ProcessLaboratoryReport. Registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-processlaboratoryreport-request.json)

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
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processlaboratoryreport-request",
  "version" : "1.0.2",
  "name" : "ProcessLaboratoryReportRequest",
  "title" : "ProcessLaboratoryReport — Request",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ProcessLaboratoryReport. Registrerar\nett nytt laboratoriesvar med tillhörande information om patient, beställande\nenhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar\nkan uppdateras genom att ett nytt meddelande med samma svarsid skickas in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processlaboratoryreport-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processlaboratoryreport-request",
      "path" : "processlaboratoryreport-request",
      "short" : "ProcessLaboratoryReport — Request",
      "definition" : "Logisk modell för requestparametrar i ProcessLaboratoryReport. Registrerar\nett nytt laboratoriesvar med tillhörande information om patient, beställande\nenhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar\nkan uppdateras genom att ett nytt meddelande med samma svarsid skickas in."
    },
    {
      "id" : "processlaboratoryreport-request.logicalAddress",
      "path" : "processlaboratoryreport-request.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Logisk adress till tjänsteimplementationen. HSA-id för organisationspost\nmotsvarande vårdgivare i HSA-trädet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.reportId",
      "path" : "processlaboratoryreport-request.reportId",
      "short" : "Svars-id",
      "definition" : "RIV-specifikation: Laboratoriesvar.svars-id. HSA-id + Lokalt id (HSA-id\nför den enhet inom vilket aktuellt svars-id är unikt anges före det\nlokala id:t).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.samplingTime",
      "path" : "processlaboratoryreport-request.samplingTime",
      "short" : "Provtagningstidpunkt",
      "definition" : "RIV-specifikation: Provtagning.provtagningstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.careProviderId",
      "path" : "processlaboratoryreport-request.careProviderId",
      "short" : "Vårdgivare",
      "definition" : "HSA-id för aktuell vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.registeringUnitId",
      "path" : "processlaboratoryreport-request.registeringUnitId",
      "short" : "Registrerande enhet",
      "definition" : "RIV-specifikation: Laboratoriesvar.har beställande.Enhet.enhets-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.microbiologicalFinding",
      "path" : "processlaboratoryreport-request.microbiologicalFinding",
      "short" : "Mikrobiologiska fynd",
      "definition" : "Mikrobiologiska fynd",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.microbiologicalFinding.observationTime",
      "path" : "processlaboratoryreport-request.microbiologicalFinding.observationTime",
      "short" : "Observationstidpunkt",
      "definition" : "RIV-specifikation: Mikrobiologiskt fynd.observationstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.microbiologicalFinding.agentCode",
      "path" : "processlaboratoryreport-request.microbiologicalFinding.agentCode",
      "short" : "Agenskod",
      "definition" : "RIV-specifikation: Mikrobiologiskt fynd.agenskod.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.personIdIssuer",
      "path" : "processlaboratoryreport-request.personIdIssuer",
      "short" : "Utfärdare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Skatteverket\". För lokalt\nreservnummer: \"CeHis\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.personIdAssigner",
      "path" : "processlaboratoryreport-request.personIdAssigner",
      "short" : "Tilldelare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Folkbokföringen\". För lokalt\nreservnummer: HSA-id för den enhet inom vilket aktuellt reservnummer är\nunikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patientId",
      "path" : "processlaboratoryreport-request.patientId",
      "short" : "Patientens person-id",
      "definition" : "RIV-specifikation: Patient.person-id. system = OID för personnummer,\nnationellt reservnummer eller samordningsnummer (se personIdOid),\nvalue = själva numret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.personIdOid",
      "path" : "processlaboratoryreport-request.personIdOid",
      "short" : "OID för person-id",
      "definition" : "OID för personnummer, nationellt reservnummer eller samordningsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patientBirthTime",
      "path" : "processlaboratoryreport-request.patientBirthTime",
      "short" : "Patientens födelsetidpunkt",
      "definition" : "RIV-specifikation: Patient.födelsetidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processlaboratoryreport-request.patientGender",
      "path" : "processlaboratoryreport-request.patientGender",
      "short" : "Patientens kön",
      "definition" : "RIV-specifikation: Patient.kön. Kodverk anges externt i\nRIV-specifikation Infektionsverktyget.pdf — inte återgivet i TKB-texten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
