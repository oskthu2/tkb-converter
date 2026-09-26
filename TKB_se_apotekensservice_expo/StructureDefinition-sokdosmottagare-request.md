# SokDosmottagare — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SokDosmottagare — Request**

## Logical Model: SokDosmottagare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/sokdosmottagare-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:SokDosmottagareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SokDosmottagare (urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1, SokDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-sokdosmottagare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sokdosmottagare-request.csv), [Excel](StructureDefinition-sokdosmottagare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sokdosmottagare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/sokdosmottagare-request",
  "version" : "2.0.0",
  "name" : "SokDosmottagareRequest",
  "title" : "SokDosmottagare — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SokDosmottagare\n(urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1, SokDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/sokdosmottagare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "sokdosmottagare-request",
      "path" : "sokdosmottagare-request",
      "short" : "SokDosmottagare — Request",
      "definition" : "Logisk modell för begäran i SokDosmottagare\n(urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1, SokDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "sokdosmottagare-request.logicalAddress",
      "path" : "sokdosmottagare-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader",
      "path" : "sokdosmottagare-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.forskrivarkod",
      "path" : "sokdosmottagare-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.legitimationskod",
      "path" : "sokdosmottagare-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.fornamn",
      "path" : "sokdosmottagare-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.efternamn",
      "path" : "sokdosmottagare-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.yrkesgrupp",
      "path" : "sokdosmottagare-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.befattningskod",
      "path" : "sokdosmottagare-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.arbetsplatskod",
      "path" : "sokdosmottagare-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.arbetsplatsnamn",
      "path" : "sokdosmottagare-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.postort",
      "path" : "sokdosmottagare-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.postadress",
      "path" : "sokdosmottagare-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.postnummer",
      "path" : "sokdosmottagare-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.telefonnummer",
      "path" : "sokdosmottagare-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.requestId",
      "path" : "sokdosmottagare-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.rollnamn",
      "path" : "sokdosmottagare-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.hsaID",
      "path" : "sokdosmottagare-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.katalog",
      "path" : "sokdosmottagare-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.organisationsnummer",
      "path" : "sokdosmottagare-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.systemnamn",
      "path" : "sokdosmottagare-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.systemversion",
      "path" : "sokdosmottagare-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.argosHeader.systemIp",
      "path" : "sokdosmottagare-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.aktorsnamn",
      "path" : "sokdosmottagare-request.aktorsnamn",
      "short" : "aktorsnamn",
      "definition" : "Aktörens namn. Inledande del av aktörsnamnet kan anges",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.arbetsplatskod",
      "path" : "sokdosmottagare-request.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Arbetsplatskod. Inledande del av arbetsplatskoden kan anges",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.dosproducentsNamn",
      "path" : "sokdosmottagare-request.dosproducentsNamn",
      "short" : "dosproducentsNamn",
      "definition" : "Dosproducentens namn. Inledande del av dosproducentens kan anges",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.kommunkod",
      "path" : "sokdosmottagare-request.kommunkod",
      "short" : "kommunkod",
      "definition" : "Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.mottagarnamn",
      "path" : "sokdosmottagare-request.mottagarnamn",
      "short" : "mottagarnamn",
      "definition" : "Mottagarens namn. Inledande del av mottagarnamn kan anges",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.postort",
      "path" : "sokdosmottagare-request.postort",
      "short" : "postort",
      "definition" : "Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.typ",
      "path" : "sokdosmottagare-request.typ",
      "short" : "typ",
      "definition" : "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
