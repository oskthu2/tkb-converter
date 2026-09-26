# HamtaApoteksInfo — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaApoteksInfo — Request**

## Logical Model: HamtaApoteksInfo — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfo-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaApoteksInfoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaApoteksInfo (urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1, HamtaApoteksInfoRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-hamtaapoteksinfo-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaapoteksinfo-request.csv), [Excel](StructureDefinition-hamtaapoteksinfo-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaapoteksinfo-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfo-request",
  "version" : "2.0.0",
  "name" : "HamtaApoteksInfoRequest",
  "title" : "HamtaApoteksInfo — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaApoteksInfo\n(urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1, HamtaApoteksInfoRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfo-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaapoteksinfo-request",
      "path" : "hamtaapoteksinfo-request",
      "short" : "HamtaApoteksInfo — Request",
      "definition" : "Logisk modell för begäran i HamtaApoteksInfo\n(urn:riv:se.apotekensservice:expo:HamtaApoteksInfoResponder:1, HamtaApoteksInfoRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtaapoteksinfo-request.logicalAddress",
      "path" : "hamtaapoteksinfo-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader",
      "path" : "hamtaapoteksinfo-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.forskrivarkod",
      "path" : "hamtaapoteksinfo-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.legitimationskod",
      "path" : "hamtaapoteksinfo-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.fornamn",
      "path" : "hamtaapoteksinfo-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.efternamn",
      "path" : "hamtaapoteksinfo-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.yrkesgrupp",
      "path" : "hamtaapoteksinfo-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.befattningskod",
      "path" : "hamtaapoteksinfo-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.arbetsplatskod",
      "path" : "hamtaapoteksinfo-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.arbetsplatsnamn",
      "path" : "hamtaapoteksinfo-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.postort",
      "path" : "hamtaapoteksinfo-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.postadress",
      "path" : "hamtaapoteksinfo-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.postnummer",
      "path" : "hamtaapoteksinfo-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.telefonnummer",
      "path" : "hamtaapoteksinfo-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.requestId",
      "path" : "hamtaapoteksinfo-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.rollnamn",
      "path" : "hamtaapoteksinfo-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.hsaID",
      "path" : "hamtaapoteksinfo-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.katalog",
      "path" : "hamtaapoteksinfo-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.organisationsnummer",
      "path" : "hamtaapoteksinfo-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.systemnamn",
      "path" : "hamtaapoteksinfo-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.systemversion",
      "path" : "hamtaapoteksinfo-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.argosHeader.systemIp",
      "path" : "hamtaapoteksinfo-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.glnKod",
      "path" : "hamtaapoteksinfo-request.glnKod",
      "short" : "glnKod",
      "definition" : "Lista med en eller flera GLN-koder som identifierar de expeditionsställen man vill ha information om. GLN-koderna i listan ska vara unika.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.tidpunkt",
      "path" : "hamtaapoteksinfo-request.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Om givet så returneras information som gällde vid tidpunkten, annars aktuell information.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
