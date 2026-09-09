# GetPatientRelationsForPatient — Request - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientRelationsForPatient — Request**

## Logical Model: GetPatientRelationsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforpatient-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetPatientRelationsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetPatientRelationsForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-getpatientrelationsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientrelationsforpatient-request.csv), [Excel](StructureDefinition-getpatientrelationsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientrelationsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforpatient-request",
  "version" : "1.0.1",
  "name" : "GetPatientRelationsForPatientRequest",
  "title" : "GetPatientRelationsForPatient — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetPatientRelationsForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientrelationsforpatient-request",
      "path" : "getpatientrelationsforpatient-request",
      "short" : "GetPatientRelationsForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetPatientRelationsForPatient."
    },
    {
      "id" : "getpatientrelationsforpatient-request.careProviderId",
      "path" : "getpatientrelationsforpatient-request.careProviderId",
      "short" : "HSA-id på den vårdgivare vars patientrelationer skall hämtas",
      "definition" : "Obligatorisk. Identifierar den vårdgivare som patientrelationsinformationen gäller för.\nsystem = urn:oid:1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient-request.patientId",
      "path" : "getpatientrelationsforpatient-request.patientId",
      "short" : "Patientens personnummer alternativt samordningsnummer (max 12 tecken)",
      "definition" : "Obligatorisk. Personnummer eller samordningsnummer för den patient vars patientrelationer skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
