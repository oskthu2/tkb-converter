# RevokeExtendedBlock — Response - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeExtendedBlock — Response**

## Logical Model: RevokeExtendedBlock — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/revokeextendedblock | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:RevokeExtendedBlock |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i RevokeExtendedBlock (urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-revokeextendedblock.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokeextendedblock.csv), [Excel](StructureDefinition-revokeextendedblock.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokeextendedblock",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/revokeextendedblock",
  "version" : "4.0",
  "name" : "RevokeExtendedBlock",
  "title" : "RevokeExtendedBlock — Response",
  "status" : "active",
  "date" : "2026-11-09T03:35:16+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i RevokeExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/revokeextendedblock",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokeextendedblock",
      "path" : "revokeextendedblock",
      "short" : "RevokeExtendedBlock — Response",
      "definition" : "Logisk modell för svaret i RevokeExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockResponseType)."
    },
    {
      "id" : "revokeextendedblock.result",
      "path" : "revokeextendedblock.result",
      "short" : "ResultType",
      "definition" : "Status för om operationen lyckades eller inte.",
      "comment" : "TKB-fält: `result` (`urn:riv:informationsecurity:authorization:blocking:4:ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "revokeextendedblock.result.resultCode",
      "path" : "revokeextendedblock.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
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
      "id" : "revokeextendedblock.result.resultText",
      "path" : "revokeextendedblock.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "comment" : "TKB-fält: `../resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
