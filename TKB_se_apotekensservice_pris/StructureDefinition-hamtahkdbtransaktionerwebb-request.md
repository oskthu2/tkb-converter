# HamtaHkdbTransaktionerWebb — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktionerWebb — Request**

## Logical Model: HamtaHkdbTransaktionerWebb — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaHkdbTransaktionerWebbRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaHkdbTransaktionerWebb (urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtahkdbtransaktionerwebb-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtahkdbtransaktionerwebb-request.csv), [Excel](StructureDefinition-hamtahkdbtransaktionerwebb-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtahkdbtransaktionerwebb-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb-request",
  "version" : "2.0.0",
  "name" : "HamtaHkdbTransaktionerWebbRequest",
  "title" : "HamtaHkdbTransaktionerWebb — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaHkdbTransaktionerWebb\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtahkdbtransaktionerwebb-request",
      "path" : "hamtahkdbtransaktionerwebb-request",
      "short" : "HamtaHkdbTransaktionerWebb — Request",
      "definition" : "Logisk modell för begäran i HamtaHkdbTransaktionerWebb\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.logicalAddress",
      "path" : "hamtahkdbtransaktionerwebb-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.forskrivarkod",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.legitimationskod",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.fornamn",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.efternamn",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.yrkesgrupp",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.befattningskod",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.arbetsplatskod",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.arbetsplatsnamn",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.postort",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.postadress",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.postnummer",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.telefonnummer",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.requestId",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.rollnamn",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.hsaID",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.katalog",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.organisationsnummer",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.systemnamn",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.systemversion",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.argosHeader.systemIp",
      "path" : "hamtahkdbtransaktionerwebb-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation.anvandare",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation.session",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation.system",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.persNr",
      "path" : "hamtahkdbtransaktionerwebb-request.persNr",
      "short" : "persNr",
      "definition" : "Personnummer för den som sökningen gäller.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
