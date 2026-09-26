# HamtaApoteksinfoEget — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaApoteksinfoEget — Request**

## Logical Model: HamtaApoteksinfoEget — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaApoteksinfoEgetRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaApoteksinfoEget (urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-hamtaapoteksinfoeget-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaapoteksinfoeget-request.csv), [Excel](StructureDefinition-hamtaapoteksinfoeget-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaapoteksinfoeget-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget-request",
  "version" : "2.0.0",
  "name" : "HamtaApoteksinfoEgetRequest",
  "title" : "HamtaApoteksinfoEget — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaApoteksinfoEget\n(urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaapoteksinfoeget-request",
      "path" : "hamtaapoteksinfoeget-request",
      "short" : "HamtaApoteksinfoEget — Request",
      "definition" : "Logisk modell för begäran i HamtaApoteksinfoEget\n(urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtaapoteksinfoeget-request.logicalAddress",
      "path" : "hamtaapoteksinfoeget-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader",
      "path" : "hamtaapoteksinfoeget-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.forskrivarkod",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.legitimationskod",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.fornamn",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.efternamn",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.yrkesgrupp",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.befattningskod",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.arbetsplatskod",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.arbetsplatsnamn",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.postort",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.postadress",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.postnummer",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.telefonnummer",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.requestId",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.rollnamn",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.hsaID",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.katalog",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.organisationsnummer",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.systemnamn",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.systemversion",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.argosHeader.systemIp",
      "path" : "hamtaapoteksinfoeget-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.apoteksId",
      "path" : "hamtaapoteksinfoeget-request.apoteksId",
      "short" : "apoteksId",
      "definition" : "GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.orgNr",
      "path" : "hamtaapoteksinfoeget-request.orgNr",
      "short" : "orgNr",
      "definition" : "Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata. (xs:long i schemat.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
