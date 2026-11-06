# UpdateListing — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateListing — Request**

## Logical Model: UpdateListing — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/updatelisting-request | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:UpdateListingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdateListing (urn:riv:supportprocess:logistics:carelisting:UpdateListingResponder:2, UpdateListingType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-updatelisting-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatelisting-request.csv), [Excel](StructureDefinition-updatelisting-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatelisting-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/updatelisting-request",
  "version" : "2.0",
  "name" : "UpdateListingRequest",
  "title" : "UpdateListing — Request",
  "status" : "active",
  "date" : "2026-11-06T21:53:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdateListing\n(urn:riv:supportprocess:logistics:carelisting:UpdateListingResponder:2, UpdateListingType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/updatelisting-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatelisting-request",
      "path" : "updatelisting-request",
      "short" : "UpdateListing — Request",
      "definition" : "Logisk modell för begäran i UpdateListing\n(urn:riv:supportprocess:logistics:carelisting:UpdateListingResponder:2, UpdateListingType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "updatelisting-request.logicalAddress",
      "path" : "updatelisting-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.personId",
      "path" : "updatelisting-request.personId",
      "short" : "personId",
      "definition" : "Invånares personnummer",
      "comment" : "TKB-fält: `personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatelisting-request.personId.root",
      "path" : "updatelisting-request.personId.root",
      "short" : "root",
      "definition" : "OID som visar typ av person-id som förmedlas. Kan vara:\n\n”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.\n\n” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV",
      "comment" : "TKB-fält: `personId.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.personId.iIExtension",
      "path" : "updatelisting-request.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck.",
      "comment" : "TKB-fält: `personId.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.newListingCounty",
      "path" : "updatelisting-request.newListingCounty",
      "short" : "newListingCounty",
      "definition" : "Region i vilken invånare valt att utomlänslista sig hos.\n\nOm länskoden är densamma som för den region som tar emot anropet, då ska anropet tolkas som att en tidigare utomlänslistning har upphört och att folkbokföringsregionen åter har ansvaret för invånaren. Folkbokföringsregionen ska då makulera information om att invånaren är utomlänslistad. Detta scenario kan exempelvis inträffa om den vårdenhet som invånaren utomlänslistat sig på upphör med sin verksamhet.",
      "comment" : "TKB-fält: `newListingCounty` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatelisting-request.newListingCounty.root",
      "path" : "updatelisting-request.newListingCounty.root",
      "short" : "root",
      "definition" : "OID för regionskod (enligt SCB).\n\n1.2.752.129.2.2.1.18",
      "comment" : "TKB-fält: `newListingCounty.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.newListingCounty.iIExtension",
      "path" : "updatelisting-request.newListingCounty.iIExtension",
      "short" : "iIExtension",
      "definition" : "Regionskod",
      "comment" : "TKB-fält: `newListingCounty.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.homeCounty",
      "path" : "updatelisting-request.homeCounty",
      "short" : "homeCounty",
      "definition" : "Invånares folkbokföringsregion.",
      "comment" : "TKB-fält: `homeCounty` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatelisting-request.homeCounty.root",
      "path" : "updatelisting-request.homeCounty.root",
      "short" : "root",
      "definition" : "OID för regionskod (enligt SCB).\n\n1.2.752.129.2.2.1.18",
      "comment" : "TKB-fält: `homeCounty.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.homeCounty.iIExtension",
      "path" : "updatelisting-request.homeCounty.iIExtension",
      "short" : "iIExtension",
      "definition" : "Regionskod",
      "comment" : "TKB-fält: `homeCounty.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.listingType",
      "path" : "updatelisting-request.listingType",
      "short" : "listingType",
      "definition" : "Listningstyp som omlistningen (utomlänslistningen) gäller. Fältet ska endast förmedlas om den nya regionen har ett samverkansavtal med folkbokföringsregionen och behöver förmedla gemensamt överenskomna listningstyper som gäller i de båda regionerna.\n\nSe listningstyper i referens [R3]",
      "comment" : "TKB-fält: `listingType` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatelisting-request.listingType.cVCode",
      "path" : "updatelisting-request.listingType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "comment" : "TKB-fält: `../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.listingType.codeSystem",
      "path" : "updatelisting-request.listingType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatelisting-request.listingType.codeSystemName",
      "path" : "updatelisting-request.listingType.codeSystemName",
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
      "id" : "updatelisting-request.listingType.codeSystemVersion",
      "path" : "updatelisting-request.listingType.codeSystemVersion",
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
      "id" : "updatelisting-request.listingType.displayName",
      "path" : "updatelisting-request.listingType.displayName",
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
      "id" : "updatelisting-request.listingType.originalText",
      "path" : "updatelisting-request.listingType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
