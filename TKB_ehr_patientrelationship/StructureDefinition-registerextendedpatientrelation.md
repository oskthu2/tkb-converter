# RegisterExtendedPatientRelation - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterExtendedPatientRelation**

## Logical Model: RegisterExtendedPatientRelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/registerextendedpatientrelation | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterExtendedPatientRelation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterExtendedPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1). Representerar responsens informationsstruktur — status för om registreringen utfördes. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-registerextendedpatientrelation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerextendedpatientrelation.csv), [Excel](StructureDefinition-registerextendedpatientrelation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerextendedpatientrelation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/registerextendedpatientrelation",
  "version" : "1.0.1",
  "name" : "RegisterExtendedPatientRelation",
  "title" : "RegisterExtendedPatientRelation",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterExtendedPatientRelation\n(RIV-TA urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1).\nRepresenterar responsens informationsstruktur — status för om registreringen utfördes.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/registerextendedpatientrelation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerextendedpatientrelation",
      "path" : "registerextendedpatientrelation",
      "short" : "RegisterExtendedPatientRelation",
      "definition" : "Logisk modell för tjänstekontraktet RegisterExtendedPatientRelation\n(RIV-TA urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1).\nRepresenterar responsens informationsstruktur — status för om registreringen utfördes."
    },
    {
      "id" : "registerextendedpatientrelation.resultCode",
      "path" : "registerextendedpatientrelation.resultCode",
      "short" : "Svarskod för åtgärden",
      "definition" : "Anger om registreringen lyckades. Alla koder förutom OK och INFO indikerar att åtgärden ej genomfördes.",
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
      "id" : "registerextendedpatientrelation.resultText",
      "path" : "registerextendedpatientrelation.resultText",
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
