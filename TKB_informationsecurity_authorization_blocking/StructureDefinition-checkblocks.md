# CheckBlocks — Response - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckBlocks — Response**

## Logical Model: CheckBlocks — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/checkblocks | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:CheckBlocks |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i CheckBlocks (urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-checkblocks.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkblocks.csv), [Excel](StructureDefinition-checkblocks.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkblocks",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/checkblocks",
  "version" : "4.0",
  "name" : "CheckBlocks",
  "title" : "CheckBlocks — Response",
  "status" : "active",
  "date" : "2026-11-09T03:35:16+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i CheckBlocks\n(urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/checkblocks",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkblocks",
      "path" : "checkblocks",
      "short" : "CheckBlocks — Response",
      "definition" : "Logisk modell för svaret i CheckBlocks\n(urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksResponseType)."
    },
    {
      "id" : "checkblocks.checkBlocksResult",
      "path" : "checkblocks.checkBlocksResult",
      "short" : "CheckBlocksResultType",
      "definition" : "Lista med resultat motsvarande den informationslista som angavs som inparameter.",
      "comment" : "TKB-fält: `checkBlocksResult` (`urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "checkblocks.checkBlocksResult.result",
      "path" : "checkblocks.checkBlocksResult.result",
      "short" : "ResultType",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "comment" : "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "checkblocks.checkBlocksResult.result.resultCode",
      "path" : "checkblocks.checkBlocksResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "comment" : "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
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
      "id" : "checkblocks.checkBlocksResult.result.resultText",
      "path" : "checkblocks.checkBlocksResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "comment" : "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks.checkBlocksResult.checkResults",
      "path" : "checkblocks.checkBlocksResult.checkResults",
      "short" : "CheckResultType",
      "definition" : "Datatyp som representerar ett svar från kontrollen av åtkomst till information.",
      "comment" : "TKB-fält: `../checkResults` (`CheckResultType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "checkblocks.checkBlocksResult.checkResults.status",
      "path" : "checkblocks.checkBlocksResult.checkResults.status",
      "short" : "status",
      "definition" : "status Tillåtna värden: OK, BLOCKED, VALIDATIONERROR.",
      "comment" : "TKB-fält: `../../status` (`CheckStatusType`, kardinalitet 1..1).\n\n**Modellanteckning:** status Tillåtna värden: OK, BLOCKED, VALIDATIONERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ValueSet/authorization-blocking-checkstatus-vs"
      }
    },
    {
      "id" : "checkblocks.checkBlocksResult.checkResults.rowNumber",
      "path" : "checkblocks.checkBlocksResult.checkResults.rowNumber",
      "short" : "rowNumber",
      "definition" : "rowNumber",
      "comment" : "TKB-fält: `../../rowNumber` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
