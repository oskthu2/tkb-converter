# DeleteLaboratoryReport — Request - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteLaboratoryReport — Request**

## Logical Model: DeleteLaboratoryReport — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletelaboratoryreport-request | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteLaboratoryReportRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet DeleteLaboratoryReport (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1). Raderar information som tidigare registrerats via ProcessLaboratoryReport. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-deletelaboratoryreport-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletelaboratoryreport-request.csv), [Excel](StructureDefinition-deletelaboratoryreport-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletelaboratoryreport-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletelaboratoryreport-request",
  "version" : "1.0.2",
  "name" : "DeleteLaboratoryReportRequest",
  "title" : "DeleteLaboratoryReport — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteLaboratoryReport\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1).\nRaderar information som tidigare registrerats via ProcessLaboratoryReport.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletelaboratoryreport-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletelaboratoryreport-request",
      "path" : "deletelaboratoryreport-request",
      "short" : "DeleteLaboratoryReport — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteLaboratoryReport\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1).\nRaderar information som tidigare registrerats via ProcessLaboratoryReport."
    },
    {
      "id" : "deletelaboratoryreport-request.laboratoryReportId",
      "path" : "deletelaboratoryreport-request.laboratoryReportId",
      "short" : "Svars-id för det laboratoriesvar som ska raderas",
      "definition" : "Informationsspecifikation: Laboratoriesvar.svars-id\nNationell OID för lokala ID:n: 1.2.752.129.2.1.2.1\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
