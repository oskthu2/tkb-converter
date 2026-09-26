# TaBortDosmottagare — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TaBortDosmottagare — Request**

## Logical Model: TaBortDosmottagare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/tabortdosmottagare-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:TaBortDosmottagareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i TaBortDosmottagare (urn:riv:se.apotekensservice:expo:TaBortDosmottagareResponder:1, TaBortDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-tabortdosmottagare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tabortdosmottagare-request.csv), [Excel](StructureDefinition-tabortdosmottagare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tabortdosmottagare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/tabortdosmottagare-request",
  "version" : "2.0.0",
  "name" : "TaBortDosmottagareRequest",
  "title" : "TaBortDosmottagare — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i TaBortDosmottagare\n(urn:riv:se.apotekensservice:expo:TaBortDosmottagareResponder:1, TaBortDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/tabortdosmottagare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "tabortdosmottagare-request",
      "path" : "tabortdosmottagare-request",
      "short" : "TaBortDosmottagare — Request",
      "definition" : "Logisk modell för begäran i TaBortDosmottagare\n(urn:riv:se.apotekensservice:expo:TaBortDosmottagareResponder:1, TaBortDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "tabortdosmottagare-request.logicalAddress",
      "path" : "tabortdosmottagare-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader",
      "path" : "tabortdosmottagare-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.forskrivarkod",
      "path" : "tabortdosmottagare-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.legitimationskod",
      "path" : "tabortdosmottagare-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.fornamn",
      "path" : "tabortdosmottagare-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.efternamn",
      "path" : "tabortdosmottagare-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.yrkesgrupp",
      "path" : "tabortdosmottagare-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.befattningskod",
      "path" : "tabortdosmottagare-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.arbetsplatskod",
      "path" : "tabortdosmottagare-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.arbetsplatsnamn",
      "path" : "tabortdosmottagare-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.postort",
      "path" : "tabortdosmottagare-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.postadress",
      "path" : "tabortdosmottagare-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.postnummer",
      "path" : "tabortdosmottagare-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.telefonnummer",
      "path" : "tabortdosmottagare-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.requestId",
      "path" : "tabortdosmottagare-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.rollnamn",
      "path" : "tabortdosmottagare-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.hsaID",
      "path" : "tabortdosmottagare-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.katalog",
      "path" : "tabortdosmottagare-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.organisationsnummer",
      "path" : "tabortdosmottagare-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.systemnamn",
      "path" : "tabortdosmottagare-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.systemversion",
      "path" : "tabortdosmottagare-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.argosHeader.systemIp",
      "path" : "tabortdosmottagare-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.apoteksIdDosproducent",
      "path" : "tabortdosmottagare-request.apoteksIdDosproducent",
      "short" : "apoteksIdDosproducent",
      "definition" : "Apoteks-id för dosproducent som dosmottagaren ska registreras på.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "tabortdosmottagare-request.dosmottagarId",
      "path" : "tabortdosmottagare-request.dosmottagarId",
      "short" : "dosmottagarId",
      "definition" : "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
