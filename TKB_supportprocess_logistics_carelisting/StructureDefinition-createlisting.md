# CreateListing — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateListing — Response**

## Logical Model: CreateListing — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:CreateListing |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i CreateListing (urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-createlisting.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createlisting.csv), [Excel](StructureDefinition-createlisting.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createlisting",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting",
  "version" : "2.0",
  "name" : "CreateListing",
  "title" : "CreateListing — Response",
  "status" : "active",
  "date" : "2026-11-09T03:52:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i CreateListing\n(urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createlisting",
      "path" : "createlisting",
      "short" : "CreateListing — Response",
      "definition" : "Logisk modell för svaret i CreateListing\n(urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingResponseType)."
    },
    {
      "id" : "createlisting.resultCode",
      "path" : "createlisting.resultCode",
      "short" : "resultCode",
      "definition" : "Kan vara OK, INFO, ERROR alternativt något av följande specifika koder (se även resultText nedan):\n\nERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED\n\nERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT\n\nERROR_GUARDIAN_CONSENT_NEEDED\n\nERROR_AGE_LIMIT",
      "comment" : "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-resultcode-vs"
      }
    },
    {
      "id" : "createlisting.resultText",
      "path" : "createlisting.resultText",
      "short" : "resultText",
      "definition" : "Kan utelämnas om resultCode = OK.\n\nProducent förväntas skicka ett tillräckligt informativt meddelande som kan presenteras för slutanvändare i ett användargränssnitt i de fall resultCode == ERROR.\n\nOBSERVERA:\n\nProducent ska returnera specifika felkoder för följande situationer:\n\nInvånares maximalt antal tillåtna omlistningar under en 12-månaders-period har uppnåtts\n\nDen valda vårdenheten som invånare vill lista sig på har uppnått det maximala antalet tillåtna invånare (*)\n\nOmlistningen tillåts inte då det saknas fullvärdigt samtycke (t ex att båda vårdnadshavare har samtyckt om omlistningen)\n\nInvånares ålder är utanför tillåtet åldersspann för listningstypen\n\n(*)\n\nDetta kan inträffa då anropet görs med addToQueue = FALSE och maxtaket för antal tillåtna listningar/invånare på mottagningen uppnåtts. I det fall addToQueue = TRUE och invånare kan placeras i kö ska resultCode=OK returneras.",
      "comment" : "TKB-fält: `resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
