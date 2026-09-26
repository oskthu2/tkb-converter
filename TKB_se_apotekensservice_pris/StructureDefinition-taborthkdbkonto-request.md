# TaBortHkdbKonto — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TaBortHkdbKonto — Request**

## Logical Model: TaBortHkdbKonto — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/taborthkdbkonto-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:TaBortHkdbKontoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i TaBortHkdbKonto (urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-taborthkdbkonto-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-taborthkdbkonto-request.csv), [Excel](StructureDefinition-taborthkdbkonto-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "taborthkdbkonto-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/taborthkdbkonto-request",
  "version" : "2.0.0",
  "name" : "TaBortHkdbKontoRequest",
  "title" : "TaBortHkdbKonto — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i TaBortHkdbKonto\n(urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/taborthkdbkonto-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "taborthkdbkonto-request",
      "path" : "taborthkdbkonto-request",
      "short" : "TaBortHkdbKonto — Request",
      "definition" : "Logisk modell för begäran i TaBortHkdbKonto\n(urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "taborthkdbkonto-request.logicalAddress",
      "path" : "taborthkdbkonto-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader",
      "path" : "taborthkdbkonto-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.forskrivarkod",
      "path" : "taborthkdbkonto-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.legitimationskod",
      "path" : "taborthkdbkonto-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.fornamn",
      "path" : "taborthkdbkonto-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.efternamn",
      "path" : "taborthkdbkonto-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.yrkesgrupp",
      "path" : "taborthkdbkonto-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.befattningskod",
      "path" : "taborthkdbkonto-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.arbetsplatskod",
      "path" : "taborthkdbkonto-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.arbetsplatsnamn",
      "path" : "taborthkdbkonto-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.postort",
      "path" : "taborthkdbkonto-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.postadress",
      "path" : "taborthkdbkonto-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.postnummer",
      "path" : "taborthkdbkonto-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.telefonnummer",
      "path" : "taborthkdbkonto-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.requestId",
      "path" : "taborthkdbkonto-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.rollnamn",
      "path" : "taborthkdbkonto-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.hsaID",
      "path" : "taborthkdbkonto-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.katalog",
      "path" : "taborthkdbkonto-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.organisationsnummer",
      "path" : "taborthkdbkonto-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.systemnamn",
      "path" : "taborthkdbkonto-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.systemversion",
      "path" : "taborthkdbkonto-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.argosHeader.systemIp",
      "path" : "taborthkdbkonto-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.klientinformation",
      "path" : "taborthkdbkonto-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.klientinformation.anvandare",
      "path" : "taborthkdbkonto-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.klientinformation.session",
      "path" : "taborthkdbkonto-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.klientinformation.system",
      "path" : "taborthkdbkonto-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "taborthkdbkonto-request.persNr",
      "path" : "taborthkdbkonto-request.persNr",
      "short" : "persNr",
      "definition" : "Personnummer för den som ska tas bort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
