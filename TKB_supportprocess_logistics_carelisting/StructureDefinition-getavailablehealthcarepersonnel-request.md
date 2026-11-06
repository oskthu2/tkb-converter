# GetAvailableHealthcarePersonnel — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcarePersonnel — Request**

## Logical Model: GetAvailableHealthcarePersonnel — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetAvailableHealthcarePersonnelRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableHealthcarePersonnel (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarepersonnel-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarepersonnel-request.csv), [Excel](StructureDefinition-getavailablehealthcarepersonnel-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarepersonnel-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request",
  "version" : "2.0",
  "name" : "GetAvailableHealthcarePersonnelRequest",
  "title" : "GetAvailableHealthcarePersonnel — Request",
  "status" : "active",
  "date" : "2026-11-06T21:53:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarepersonnel-request",
      "path" : "getavailablehealthcarepersonnel-request",
      "short" : "GetAvailableHealthcarePersonnel — Request",
      "definition" : "Logisk modell för begäran i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.logicalAddress",
      "path" : "getavailablehealthcarepersonnel-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.personId",
      "path" : "getavailablehealthcarepersonnel-request.personId",
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
      "id" : "getavailablehealthcarepersonnel-request.personId.root",
      "path" : "getavailablehealthcarepersonnel-request.personId.root",
      "short" : "root",
      "definition" : "OID som visar typ av person-id som förmedlas. Kan vara:\n\n”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.\n\n” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV",
      "comment" : "TKB-fält: `personId.root` (`string`).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.personId.iIExtension",
      "path" : "getavailablehealthcarepersonnel-request.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck.",
      "comment" : "TKB-fält: `personId.extension` (`string`).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.healthcareFacilityHSAId",
      "path" : "getavailablehealthcarepersonnel-request.healthcareFacilityHSAId",
      "short" : "healthcareFacilityHSAId",
      "definition" : "healthcareFacilityHSAId",
      "comment" : "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes",
      "short" : "listingTypes",
      "definition" : "Lista med listningstyper som konsument önskar filtrera på. Se listningstyper i referens [R3]",
      "comment" : "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.cVCode",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.cVCode",
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
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystem",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystem",
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
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemName",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemName",
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
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemVersion",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemVersion",
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
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.displayName",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.displayName",
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
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.originalText",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.originalText",
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
