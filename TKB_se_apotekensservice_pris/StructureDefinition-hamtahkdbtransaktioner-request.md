# HamtaHkdbTransaktioner — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktioner — Request**

## Logical Model: HamtaHkdbTransaktioner — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaHkdbTransaktionerRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaHkdbTransaktioner (urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtahkdbtransaktioner-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtahkdbtransaktioner-request.csv), [Excel](StructureDefinition-hamtahkdbtransaktioner-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtahkdbtransaktioner-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner-request",
  "version" : "2.0.0",
  "name" : "HamtaHkdbTransaktionerRequest",
  "title" : "HamtaHkdbTransaktioner — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaHkdbTransaktioner\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtahkdbtransaktioner-request",
      "path" : "hamtahkdbtransaktioner-request",
      "short" : "HamtaHkdbTransaktioner — Request",
      "definition" : "Logisk modell för begäran i HamtaHkdbTransaktioner\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtahkdbtransaktioner-request.logicalAddress",
      "path" : "hamtahkdbtransaktioner-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader",
      "path" : "hamtahkdbtransaktioner-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.forskrivarkod",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.legitimationskod",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.fornamn",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.efternamn",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.yrkesgrupp",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.befattningskod",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.arbetsplatskod",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.arbetsplatsnamn",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.postort",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.postadress",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.postnummer",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.telefonnummer",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.requestId",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.rollnamn",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.hsaID",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.katalog",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.organisationsnummer",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.systemnamn",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.systemversion",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.argosHeader.systemIp",
      "path" : "hamtahkdbtransaktioner-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.klientinformation",
      "path" : "hamtahkdbtransaktioner-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.klientinformation.anvandare",
      "path" : "hamtahkdbtransaktioner-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.klientinformation.session",
      "path" : "hamtahkdbtransaktioner-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.klientinformation.system",
      "path" : "hamtahkdbtransaktioner-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.maxantal",
      "path" : "hamtahkdbtransaktioner-request.maxantal",
      "short" : "maxantal",
      "definition" : "Ställer in begränsning av maximala mängden returnerade transaktioner. T.ex innebär maxantal = 5, att endast de fem senaste transaktionerna hämtas. Om maxantal inte anges så är defaultvärde fem. Om man vill ha alla transaktioner sätts maxantal till -1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.persNr",
      "path" : "hamtahkdbtransaktioner-request.persNr",
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
