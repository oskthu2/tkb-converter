# UnregisterTemporaryRevoke — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnregisterTemporaryRevoke — Request**

## Logical Model: UnregisterTemporaryRevoke — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregistertemporaryrevoke-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:UnregisterTemporaryRevokeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i UnregisterTemporaryRevoke. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-unregistertemporaryrevoke-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-unregistertemporaryrevoke-request.csv), [Excel](StructureDefinition-unregistertemporaryrevoke-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "unregistertemporaryrevoke-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregistertemporaryrevoke-request",
  "version" : "3.2.2",
  "name" : "UnregisterTemporaryRevokeRequest",
  "title" : "UnregisterTemporaryRevoke — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i UnregisterTemporaryRevoke.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregistertemporaryrevoke-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "unregistertemporaryrevoke-request",
      "path" : "unregistertemporaryrevoke-request",
      "short" : "UnregisterTemporaryRevoke — Request",
      "definition" : "Logisk modell för requestparametrar i UnregisterTemporaryRevoke."
    },
    {
      "id" : "unregistertemporaryrevoke-request.temporaryRevokeId",
      "path" : "unregistertemporaryrevoke-request.temporaryRevokeId",
      "short" : "Unik identifierare (UUID) för den tillfälliga hävning som skall avregistreras.",
      "definition" : "Unik identifierare (UUID) för den tillfälliga hävning som skall avregistreras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
