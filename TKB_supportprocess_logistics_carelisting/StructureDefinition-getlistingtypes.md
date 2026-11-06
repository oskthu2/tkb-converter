# GetListingTypes — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingTypes — Response**

## Logical Model: GetListingTypes — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetListingTypes |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetListingTypes (urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlistingtypes.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingtypes.csv), [Excel](StructureDefinition-getlistingtypes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingtypes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes",
  "version" : "2.0",
  "name" : "GetListingTypes",
  "title" : "GetListingTypes — Response",
  "status" : "active",
  "date" : "2026-11-06T21:53:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetListingTypes\n(urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingtypes",
      "path" : "getlistingtypes",
      "short" : "GetListingTypes — Response",
      "definition" : "Logisk modell för svaret i GetListingTypes\n(urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType)."
    },
    {
      "id" : "getlistingtypes.listingTypes",
      "path" : "getlistingtypes.listingTypes",
      "short" : "listingTypes",
      "definition" : "Listningstyper som producent erbjuder.\n\nSe listningstyper i referens [R3]",
      "comment" : "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlistingtypes.listingTypes.cVCode",
      "path" : "getlistingtypes.listingTypes.cVCode",
      "short" : "cVCode",
      "definition" : "Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket.",
      "comment" : "TKB-fält: `listingTypes.code`.\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes.listingTypes.codeSystem",
      "path" : "getlistingtypes.listingTypes.codeSystem",
      "short" : "codeSystem",
      "definition" : "Sätt till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i.\n\nOm listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27.\n\nhttps://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2",
      "comment" : "TKB-fält: `listingTypes.codeSystem`.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes.listingTypes.codeSystemName",
      "path" : "getlistingtypes.listingTypes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes.listingTypes.codeSystemVersion",
      "path" : "getlistingtypes.listingTypes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes.listingTypes.displayName",
      "path" : "getlistingtypes.listingTypes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes.listingTypes.originalText",
      "path" : "getlistingtypes.listingTypes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes.resultCode",
      "path" : "getlistingtypes.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR.",
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
      "id" : "getlistingtypes.resultText",
      "path" : "getlistingtypes.resultText",
      "short" : "resultText",
      "definition" : "Kan utelämnas om resultCode = OK.\n\nProducent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR",
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
