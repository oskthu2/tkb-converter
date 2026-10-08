# UnregisterTemporaryRevoke — Response - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnregisterTemporaryRevoke — Response**

## Logical Model: UnregisterTemporaryRevoke — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/unregistertemporaryrevoke | *Version*:4.0 |
| Active as of 2026-10-08 | *Computable Name*:UnregisterTemporaryRevoke |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UnregisterTemporaryRevoke (urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-unregistertemporaryrevoke.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-unregistertemporaryrevoke.csv), [Excel](StructureDefinition-unregistertemporaryrevoke.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "unregistertemporaryrevoke",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/unregistertemporaryrevoke",
  "version" : "4.0",
  "name" : "UnregisterTemporaryRevoke",
  "title" : "UnregisterTemporaryRevoke — Response",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UnregisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/unregistertemporaryrevoke",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "unregistertemporaryrevoke",
      "path" : "unregistertemporaryrevoke",
      "short" : "UnregisterTemporaryRevoke — Response",
      "definition" : "Logisk modell för svaret i UnregisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeResponseType)."
    },
    {
      "id" : "unregistertemporaryrevoke.result",
      "path" : "unregistertemporaryrevoke.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unregistertemporaryrevoke.result.resultCode",
      "path" : "unregistertemporaryrevoke.result.resultCode",
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
      "id" : "unregistertemporaryrevoke.result.resultText",
      "path" : "unregistertemporaryrevoke.result.resultText",
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
