# CancelTemporaryExtendedRevoke — Response - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelTemporaryExtendedRevoke — Response**

## Logical Model: CancelTemporaryExtendedRevoke — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/canceltemporaryextendedrevoke | *Version*:4.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:CancelTemporaryExtendedRevoke |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i CancelTemporaryExtendedRevoke (urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4, CancelTemporaryExtendedRevokeResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-canceltemporaryextendedrevoke.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-canceltemporaryextendedrevoke.csv), [Excel](StructureDefinition-canceltemporaryextendedrevoke.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "canceltemporaryextendedrevoke",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/canceltemporaryextendedrevoke",
  "version" : "4.0.4",
  "name" : "CancelTemporaryExtendedRevoke",
  "title" : "CancelTemporaryExtendedRevoke — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:02:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i CancelTemporaryExtendedRevoke\n(urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4, CancelTemporaryExtendedRevokeResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/canceltemporaryextendedrevoke",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "canceltemporaryextendedrevoke",
      "path" : "canceltemporaryextendedrevoke",
      "short" : "CancelTemporaryExtendedRevoke — Response",
      "definition" : "Logisk modell för svaret i CancelTemporaryExtendedRevoke\n(urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4, CancelTemporaryExtendedRevokeResponseType)."
    },
    {
      "id" : "canceltemporaryextendedrevoke.result",
      "path" : "canceltemporaryextendedrevoke.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke.result.resultCode",
      "path" : "canceltemporaryextendedrevoke.result.resultCode",
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
      "id" : "canceltemporaryextendedrevoke.result.resultText",
      "path" : "canceltemporaryextendedrevoke.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
