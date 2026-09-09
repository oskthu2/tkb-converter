# CheckPatientRelation — Request - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckPatientRelation — Request**

## Logical Model: CheckPatientRelation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/checkpatientrelation-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:CheckPatientRelationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CheckPatientRelation. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-checkpatientrelation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkpatientrelation-request.csv), [Excel](StructureDefinition-checkpatientrelation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkpatientrelation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/checkpatientrelation-request",
  "version" : "1.0.1",
  "name" : "CheckPatientRelationRequest",
  "title" : "CheckPatientRelation — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CheckPatientRelation.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/checkpatientrelation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkpatientrelation-request",
      "path" : "checkpatientrelation-request",
      "short" : "CheckPatientRelation — Request",
      "definition" : "Logisk modell för requestparametrar i CheckPatientRelation."
    },
    {
      "id" : "checkpatientrelation-request.accessingActor",
      "path" : "checkpatientrelation-request.accessingActor",
      "short" : "Representerar den aktör/person som önskar åtkomst till informationen",
      "definition" : "Identifierar medarbetaren vars patientrelation kontrolleras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkpatientrelation-request.accessingActor.employeeId",
      "path" : "checkpatientrelation-request.accessingActor.employeeId",
      "short" : "Id för medarbetaren/personen (HSA-id)",
      "definition" : "Id för medarbetaren/personen (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "checkpatientrelation-request.accessingActor.careProviderId",
      "path" : "checkpatientrelation-request.accessingActor.careProviderId",
      "short" : "Id på medarbetarens vårdgivare (HSA-id)",
      "definition" : "Id på medarbetarens vårdgivare (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "checkpatientrelation-request.accessingActor.careUnitId",
      "path" : "checkpatientrelation-request.accessingActor.careUnitId",
      "short" : "Id på medarbetarens vårdenhet (HSA-id)",
      "definition" : "Id på medarbetarens vårdenhet (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "checkpatientrelation-request.patientId",
      "path" : "checkpatientrelation-request.patientId",
      "short" : "Patientens personnummer alternativt samordningsnummer (max 12 tecken)",
      "definition" : "Personnummer eller samordningsnummer för den patient vars information aktören önskar åtkomst till.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
