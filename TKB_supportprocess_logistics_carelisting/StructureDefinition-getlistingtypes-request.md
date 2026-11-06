# GetListingTypes — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingTypes — Request**

## Logical Model: GetListingTypes — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes-request | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetListingTypesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetListingTypes (urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlistingtypes-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingtypes-request.csv), [Excel](StructureDefinition-getlistingtypes-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingtypes-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes-request",
  "version" : "2.0",
  "name" : "GetListingTypesRequest",
  "title" : "GetListingTypes — Request",
  "status" : "active",
  "date" : "2026-11-06T21:53:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetListingTypes\n(urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingtypes-request",
      "path" : "getlistingtypes-request",
      "short" : "GetListingTypes — Request",
      "definition" : "Logisk modell för begäran i GetListingTypes\n(urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getlistingtypes-request.logicalAddress",
      "path" : "getlistingtypes-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes-request.personId",
      "path" : "getlistingtypes-request.personId",
      "short" : "personId",
      "definition" : "Invånares personnummer. Tillåts utelämnas om konsument efterfrågar samtliga listningstyper som region (logicalAddress) erbjuder.",
      "comment" : "TKB-fält: `personId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlistingtypes-request.personId.root",
      "path" : "getlistingtypes-request.personId.root",
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
      "id" : "getlistingtypes-request.personId.iIExtension",
      "path" : "getlistingtypes-request.personId.iIExtension",
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
      "id" : "getlistingtypes-request.homeCountyCode",
      "path" : "getlistingtypes-request.homeCountyCode",
      "short" : "homeCountyCode",
      "definition" : "homeCountyCode",
      "comment" : "TKB-fält: `homeCountyCode` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlistingtypes-request.homeCountyCode.root",
      "path" : "getlistingtypes-request.homeCountyCode.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingtypes-request.homeCountyCode.iIExtension",
      "path" : "getlistingtypes-request.homeCountyCode.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
