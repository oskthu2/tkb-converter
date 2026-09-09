# CancelExtendedPatientRelation - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelExtendedPatientRelation**

## Logical Model: CancelExtendedPatientRelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/cancelextendedpatientrelation | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:CancelExtendedPatientRelation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CancelExtendedPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1). Representerar responsens informationsstruktur — status för om återkallelsen utfördes. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-cancelextendedpatientrelation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelextendedpatientrelation.csv), [Excel](StructureDefinition-cancelextendedpatientrelation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelextendedpatientrelation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/cancelextendedpatientrelation",
  "version" : "1.0.1",
  "name" : "CancelExtendedPatientRelation",
  "title" : "CancelExtendedPatientRelation",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CancelExtendedPatientRelation\n(RIV-TA urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1).\nRepresenterar responsens informationsstruktur — status för om återkallelsen utfördes.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/cancelextendedpatientrelation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelextendedpatientrelation",
      "path" : "cancelextendedpatientrelation",
      "short" : "CancelExtendedPatientRelation",
      "definition" : "Logisk modell för tjänstekontraktet CancelExtendedPatientRelation\n(RIV-TA urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1).\nRepresenterar responsens informationsstruktur — status för om återkallelsen utfördes."
    },
    {
      "id" : "cancelextendedpatientrelation.resultCode",
      "path" : "cancelextendedpatientrelation.resultCode",
      "short" : "Svarskod för åtgärden",
      "definition" : "Svarskod för åtgärden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientrelationship/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "cancelextendedpatientrelation.resultText",
      "path" : "cancelextendedpatientrelation.resultText",
      "short" : "Optionellt felmeddelande (tomt om resultCode=OK)",
      "definition" : "Optionellt felmeddelande (tomt om resultCode=OK)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
