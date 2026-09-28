# GetPatientIds — Response - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientIds — Response**

## Logical Model: GetPatientIds — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/getpatientids | *Version*:4.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:GetPatientIds |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPatientIds (urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-getpatientids.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientids.csv), [Excel](StructureDefinition-getpatientids.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientids",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/getpatientids",
  "version" : "4.0.4",
  "name" : "GetPatientIds",
  "title" : "GetPatientIds — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:02:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPatientIds\n(urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/getpatientids",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientids",
      "path" : "getpatientids",
      "short" : "GetPatientIds — Response",
      "definition" : "Logisk modell för svaret i GetPatientIds\n(urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsResponseType)."
    },
    {
      "id" : "getpatientids.getPatientIdResult",
      "path" : "getpatientids.getPatientIdResult",
      "short" : "getPatientIdResult",
      "definition" : "Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider. Datatypen utökar datatypen Result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientids.getPatientIdResult.result",
      "path" : "getpatientids.getPatientIdResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientids.getPatientIdResult.result.resultCode",
      "path" : "getpatientids.getPatientIdResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ValueSet/authorization-blocking-resultcode-vs"
      }
    },
    {
      "id" : "getpatientids.getPatientIdResult.result.resultText",
      "path" : "getpatientids.getPatientIdResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientids.getPatientIdResult.patientIds",
      "path" : "getpatientids.getPatientIdResult.patientIds",
      "short" : "patientIds",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientids.getPatientIdResult.patientIds.root",
      "path" : "getpatientids.getPatientIdResult.patientIds.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientids.getPatientIdResult.patientIds.iiExtension",
      "path" : "getpatientids.getPatientIdResult.patientIds.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
