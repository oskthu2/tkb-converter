# GetExtendedPatientRelationsForPatient — Request - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedPatientRelationsForPatient — Request**

## Logical Model: GetExtendedPatientRelationsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getextendedpatientrelationsforpatient-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetExtendedPatientRelationsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetExtendedPatientRelationsForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-getextendedpatientrelationsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedpatientrelationsforpatient-request.csv), [Excel](StructureDefinition-getextendedpatientrelationsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedpatientrelationsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getextendedpatientrelationsforpatient-request",
  "version" : "1.0.1",
  "name" : "GetExtendedPatientRelationsForPatientRequest",
  "title" : "GetExtendedPatientRelationsForPatient — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetExtendedPatientRelationsForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getextendedpatientrelationsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedpatientrelationsforpatient-request",
      "path" : "getextendedpatientrelationsforpatient-request",
      "short" : "GetExtendedPatientRelationsForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetExtendedPatientRelationsForPatient."
    },
    {
      "id" : "getextendedpatientrelationsforpatient-request.careProviderId",
      "path" : "getextendedpatientrelationsforpatient-request.careProviderId",
      "short" : "HSA-id på den vårdgivare vars patientrelationer skall hämtas",
      "definition" : "HSA-id på den vårdgivare vars patientrelationer skall hämtas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient-request.patientId",
      "path" : "getextendedpatientrelationsforpatient-request.patientId",
      "short" : "Patientens personnummer alternativt samordningsnummer (max 12 tecken)",
      "definition" : "Patientens personnummer alternativt samordningsnummer (max 12 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient-request.getCancelledFlag",
      "path" : "getextendedpatientrelationsforpatient-request.getCancelledFlag",
      "short" : "Flagga som avgör om ogiltiga patientrelationer (makulerade, återkallade, utgångna) skall returneras",
      "definition" : "Flagga som avgör om ogiltiga patientrelationer (makulerade, återkallade, utgångna) skall returneras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
