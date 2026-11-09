# CheckBlocks - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckBlocks**

## Logical Model: CheckBlocks 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/checkblocks | *Version*:3.0 |
| Active as of 2026-11-09 | *Computable Name*:CheckBlocks |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CheckBlocks (RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3). Kontrollerar om spärr finns relativ viss personal/vårdenhet och information. Version 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-checkblocks.json)

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
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/checkblocks",
  "version" : "3.0",
  "name" : "CheckBlocks",
  "title" : "CheckBlocks",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CheckBlocks\n(RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3).\nKontrollerar om spärr finns relativ viss personal/vårdenhet och information.\nVersion 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/checkblocks",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkblocks",
      "path" : "checkblocks",
      "short" : "CheckBlocks",
      "definition" : "Logisk modell för tjänstekontraktet CheckBlocks\n(RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3).\nKontrollerar om spärr finns relativ viss personal/vårdenhet och information.\nVersion 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "checkblocks.CheckBlocksResultType",
      "path" : "checkblocks.CheckBlocksResultType",
      "short" : "CheckBlocksResultType",
      "definition" : "CheckBlocksResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
