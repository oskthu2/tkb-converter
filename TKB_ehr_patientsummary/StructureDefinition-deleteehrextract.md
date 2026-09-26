# DeleteEhrExtract — Response - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteEhrExtract — Response**

## Logical Model: DeleteEhrExtract — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextract | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:DeleteEhrExtract |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i DeleteEhrExtract (urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientsummary|current/StructureDefinition/StructureDefinition-deleteehrextract.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteehrextract.csv), [Excel](StructureDefinition-deleteehrextract.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteehrextract",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextract",
  "version" : "1.0.0",
  "name" : "DeleteEhrExtract",
  "title" : "DeleteEhrExtract — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:25:56+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i DeleteEhrExtract\n(urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextract",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteehrextract",
      "path" : "deleteehrextract",
      "short" : "DeleteEhrExtract — Response",
      "definition" : "Logisk modell för svaret i DeleteEhrExtract\n(urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractResponseType)."
    },
    {
      "id" : "deleteehrextract.success",
      "path" : "deleteehrextract.success",
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
