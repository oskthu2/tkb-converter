# GetPersonQueueStatus — Request - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonQueueStatus — Request**

## Logical Model: GetPersonQueueStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus-request | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetPersonQueueStatusRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetPersonQueueStatus (Visa köstatus). (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getpersonqueuestatus-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersonqueuestatus-request.csv), [Excel](StructureDefinition-getpersonqueuestatus-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersonqueuestatus-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus-request",
  "version" : "1.0.0",
  "name" : "GetPersonQueueStatusRequest",
  "title" : "GetPersonQueueStatus — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:48:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetPersonQueueStatus (Visa köstatus).\n(RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersonqueuestatus-request",
      "path" : "getpersonqueuestatus-request",
      "short" : "GetPersonQueueStatus — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetPersonQueueStatus (Visa köstatus).\n(RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1)."
    },
    {
      "id" : "getpersonqueuestatus-request.personId",
      "path" : "getpersonqueuestatus-request.personId",
      "short" : "PersonID för den person vars köstatus önskas",
      "definition" : "Identitetsbeteckning för vård- och omsorgstagaren vars köstatus efterfrågas.\nPattern: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
