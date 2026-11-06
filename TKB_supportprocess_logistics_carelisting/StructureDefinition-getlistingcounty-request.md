# GetListingCounty — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingCounty — Request**

## Logical Model: GetListingCounty — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingcounty-request | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetListingCountyRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetListingCounty (urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlistingcounty-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingcounty-request.csv), [Excel](StructureDefinition-getlistingcounty-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingcounty-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingcounty-request",
  "version" : "2.0",
  "name" : "GetListingCountyRequest",
  "title" : "GetListingCounty — Request",
  "status" : "active",
  "date" : "2026-11-06T21:53:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetListingCounty\n(urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingcounty-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingcounty-request",
      "path" : "getlistingcounty-request",
      "short" : "GetListingCounty — Request",
      "definition" : "Logisk modell för begäran i GetListingCounty\n(urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getlistingcounty-request.logicalAddress",
      "path" : "getlistingcounty-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingcounty-request.actor",
      "path" : "getlistingcounty-request.actor",
      "short" : "actor",
      "definition" : "Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren.",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlistingcounty-request.actor.actorId",
      "path" : "getlistingcounty-request.actor.actorId",
      "short" : "actorId",
      "definition" : "Id för den aktören som utför handlingen.",
      "comment" : "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlistingcounty-request.actor.actorId.root",
      "path" : "getlistingcounty-request.actor.actorId.root",
      "short" : "root",
      "definition" : "OID som visar typ av id.\n\nOm aktören representeras av invånare eller vårdnadshavare kan OID vara:\n\n”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.\n\n” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV\n\nOm aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1”",
      "comment" : "TKB-fält: `actor.actorId.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingcounty-request.actor.actorId.iIExtension",
      "path" : "getlistingcounty-request.actor.actorId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett HSAId om aktören är en organisation.",
      "comment" : "TKB-fält: `actor.actorId.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlistingcounty-request.actor.actorType",
      "path" : "getlistingcounty-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "comment" : "TKB-fält: `../actorType` (`ActorTypeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-actortype-vs"
      }
    },
    {
      "id" : "getlistingcounty-request.personId",
      "path" : "getlistingcounty-request.personId",
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
      "id" : "getlistingcounty-request.personId.root",
      "path" : "getlistingcounty-request.personId.root",
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
      "id" : "getlistingcounty-request.personId.iIExtension",
      "path" : "getlistingcounty-request.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck.",
      "comment" : "TKB-fält: `personId.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
