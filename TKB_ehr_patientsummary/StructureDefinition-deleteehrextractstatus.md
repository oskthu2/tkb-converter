# DeleteEhrExtractStatus — Response - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteEhrExtractStatus — Response**

## Logical Model: DeleteEhrExtractStatus — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextractstatus | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:DeleteEhrExtractStatus |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i DeleteEhrExtractStatus (urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientsummary|current/StructureDefinition/StructureDefinition-deleteehrextractstatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteehrextractstatus.csv), [Excel](StructureDefinition-deleteehrextractstatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteehrextractstatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextractstatus",
  "version" : "1.0.0",
  "name" : "DeleteEhrExtractStatus",
  "title" : "DeleteEhrExtractStatus — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:25:56+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i DeleteEhrExtractStatus\n(urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextractstatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteehrextractstatus",
      "path" : "deleteehrextractstatus",
      "short" : "DeleteEhrExtractStatus — Response",
      "definition" : "Logisk modell för svaret i DeleteEhrExtractStatus\n(urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusResponseType)."
    },
    {
      "id" : "deleteehrextractstatus.success",
      "path" : "deleteehrextractstatus.success",
      "short" : "success",
      "definition" : "success",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
