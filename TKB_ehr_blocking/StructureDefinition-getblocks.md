# GetBlocks - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBlocks**

## Logical Model: GetBlocks 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocks | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetBlocks |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetBlocks (RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2). Läser alla registrerade spärrar för en viss organisation (lokal nivå). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getblocks.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getblocks.csv), [Excel](StructureDefinition-getblocks.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getblocks",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocks",
  "version" : "3.2.2",
  "name" : "GetBlocks",
  "title" : "GetBlocks",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).\nLäser alla registrerade spärrar för en viss organisation (lokal nivå).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocks",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getblocks",
      "path" : "getblocks",
      "short" : "GetBlocks",
      "definition" : "Logisk modell för tjänstekontraktet GetBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).\nLäser alla registrerade spärrar för en viss organisation (lokal nivå).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "getblocks.result",
      "path" : "getblocks.result",
      "short" : "Resultat av anropet",
      "definition" : "Resultat av anropet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getblocks.result.resultCode",
      "path" : "getblocks.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getblocks.result.resultText",
      "path" : "getblocks.result.resultText",
      "short" : "Beskrivande text till svarskoden",
      "definition" : "Beskrivande text till svarskoden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks",
      "path" : "getblocks.blocks",
      "short" : "Lista över funna aktiva spärrar för angiven vårdgivare",
      "definition" : "Lista över funna aktiva spärrar för angiven vårdgivare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getblocks.blocks.blockId",
      "path" : "getblocks.blocks.blockId",
      "short" : "Unik identifierare för spärren (UUID)",
      "definition" : "Unik identifierare för spärren (UUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.blockType",
      "path" : "getblocks.blocks.blockType",
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
      "id" : "getblocks.blocks.patientId",
      "path" : "getblocks.blocks.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.informationStartDate",
      "path" : "getblocks.blocks.informationStartDate",
      "short" : "Startdatum för vilken information spärren gäller",
      "definition" : "Startdatum för vilken information spärren gäller",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.blocks.informationEndDate",
      "path" : "getblocks.blocks.informationEndDate",
      "short" : "Slutdatum för vilken information spärren gäller",
      "definition" : "Slutdatum för vilken information spärren gäller",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.blocks.informationCareUnitId",
      "path" : "getblocks.blocks.informationCareUnitId",
      "short" : "HSA-id för vårdenhet (vid inre spärr)",
      "definition" : "HSA-id för vårdenhet (vid inre spärr)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.informationCareProviderId",
      "path" : "getblocks.blocks.informationCareProviderId",
      "short" : "HSA-id för vårdgivare",
      "definition" : "HSA-id för vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.excludedInformationTypes",
      "path" : "getblocks.blocks.excludedInformationTypes",
      "short" : "Informationstyper undantagna från spärren",
      "definition" : "Informationstyper undantagna från spärren",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getblocks.blocks.excludedInformationTypes.infoTypeId",
      "path" : "getblocks.blocks.excludedInformationTypes.infoTypeId",
      "short" : "ID för informationstypen",
      "definition" : "ID för informationstypen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.excludedInformationTypes.infoTypeDescription",
      "path" : "getblocks.blocks.excludedInformationTypes.infoTypeDescription",
      "short" : "Beskrivning av informationstypen",
      "definition" : "Beskrivning av informationstypen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.temporaryRevokes",
      "path" : "getblocks.blocks.temporaryRevokes",
      "short" : "Aktiva tillfälliga hävningar",
      "definition" : "Aktiva tillfälliga hävningar",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getblocks.blocks.temporaryRevokes.temporaryRevokeId",
      "path" : "getblocks.blocks.temporaryRevokes.temporaryRevokeId",
      "short" : "Unik ID för tillfällig hävning",
      "definition" : "Unik ID för tillfällig hävning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.temporaryRevokes.endDate",
      "path" : "getblocks.blocks.temporaryRevokes.endDate",
      "short" : "Datum när hävningen upphör",
      "definition" : "Datum när hävningen upphör",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.blocks.temporaryRevokes.revokedForCareUnitId",
      "path" : "getblocks.blocks.temporaryRevokes.revokedForCareUnitId",
      "short" : "HSA-id för vårdenhet med hävning",
      "definition" : "HSA-id för vårdenhet med hävning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.temporaryRevokes.revokedForEmployeeId",
      "path" : "getblocks.blocks.temporaryRevokes.revokedForEmployeeId",
      "short" : "HSA-id för enskild medarbetare",
      "definition" : "HSA-id för enskild medarbetare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.temporaryRevokes.ownerId",
      "path" : "getblocks.blocks.temporaryRevokes.ownerId",
      "short" : "System som registrerade hävningen",
      "definition" : "System som registrerade hävningen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.blocks.ownerId",
      "path" : "getblocks.blocks.ownerId",
      "short" : "System som registrerade spärren",
      "definition" : "System som registrerade spärren",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.nextCreatedOnOrAfter",
      "path" : "getblocks.nextCreatedOnOrAfter",
      "short" : "Tidsstämpel för nästa inkrementella hämtning",
      "definition" : "Tidsstämpel för nästa inkrementella hämtning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.latestCancellation",
      "path" : "getblocks.latestCancellation",
      "short" : "Senaste makulerings- eller hävningstidpunkt",
      "definition" : "Senaste makulerings- eller hävningstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
