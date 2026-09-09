# RegisterBlock — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterBlock — Request**

## Logical Model: RegisterBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registerblock-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RegisterBlock. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-registerblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerblock-request.csv), [Excel](StructureDefinition-registerblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registerblock-request",
  "version" : "3.2.2",
  "name" : "RegisterBlockRequest",
  "title" : "RegisterBlock — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RegisterBlock.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registerblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerblock-request",
      "path" : "registerblock-request",
      "short" : "RegisterBlock — Request",
      "definition" : "Logisk modell för requestparametrar i RegisterBlock."
    },
    {
      "id" : "registerblock-request.block",
      "path" : "registerblock-request.block",
      "short" : "Spärrobjektet som skall registreras i nationell spärrtjänst",
      "definition" : "Spärrobjektet som skall registreras i nationell spärrtjänst",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerblock-request.block.blockId",
      "path" : "registerblock-request.block.blockId",
      "short" : "Unik identifierare för spärren (UUID)",
      "definition" : "Unik identifierare för spärren (UUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.block.blockType",
      "path" : "registerblock-request.block.blockType",
      "short" : "Typ av spärr",
      "definition" : "Typ av spärr",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/blocktype-vs"
      }
    },
    {
      "id" : "registerblock-request.block.patientId",
      "path" : "registerblock-request.block.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.block.informationStartDate",
      "path" : "registerblock-request.block.informationStartDate",
      "short" : "Startdatum för information som spärren gäller",
      "definition" : "Startdatum för information som spärren gäller",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerblock-request.block.informationEndDate",
      "path" : "registerblock-request.block.informationEndDate",
      "short" : "Slutdatum för information som spärren gäller",
      "definition" : "Slutdatum för information som spärren gäller",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerblock-request.block.informationCareUnitId",
      "path" : "registerblock-request.block.informationCareUnitId",
      "short" : "HSA-id för vårdenhet (vid inre spärr)",
      "definition" : "HSA-id för vårdenhet (vid inre spärr)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.block.informationCareProviderId",
      "path" : "registerblock-request.block.informationCareProviderId",
      "short" : "HSA-id för vårdgivare vars information spärras",
      "definition" : "HSA-id för vårdgivare vars information spärras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.block.excludedInformationTypes",
      "path" : "registerblock-request.block.excludedInformationTypes",
      "short" : "Informationstyper undantagna från spärren",
      "definition" : "Informationstyper undantagna från spärren",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerblock-request.block.excludedInformationTypes.infoTypeId",
      "path" : "registerblock-request.block.excludedInformationTypes.infoTypeId",
      "short" : "ID för informationstypen",
      "definition" : "ID för informationstypen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.block.excludedInformationTypes.infoTypeDescription",
      "path" : "registerblock-request.block.excludedInformationTypes.infoTypeDescription",
      "short" : "Beskrivning av informationstypen",
      "definition" : "Beskrivning av informationstypen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.block.ownerId",
      "path" : "registerblock-request.block.ownerId",
      "short" : "System som registrerar spärren",
      "definition" : "System som registrerar spärren",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
