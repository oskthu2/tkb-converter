# SokDosmottagare — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SokDosmottagare — Request**

## Logical Model: SokDosmottagare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/sokdosmottagare-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:SokDosmottagareRequest |
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
  "version" : "1.0",
  "name" : "SokDosmottagareRequest",
  "title" : "SokDosmottagare — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
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
      "id" : "sokdosmottagare-request.aktorsnamn",
      "path" : "sokdosmottagare-request.aktorsnamn",
      "short" : "Aktörens namn. Inledande del av aktörsnamnet kan anges",
      "definition" : "Aktörens namn. Inledande del av aktörsnamnet kan anges",
      "comment" : "TKB-fält: `aktorsnamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.arbetsplatskod",
      "path" : "sokdosmottagare-request.arbetsplatskod",
      "short" : "Arbetsplatskod. Inledande del av arbetsplatskoden kan anges",
      "definition" : "Arbetsplatskod. Inledande del av arbetsplatskoden kan anges",
      "comment" : "TKB-fält: `arbetsplatskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.dosproducentsNamn",
      "path" : "sokdosmottagare-request.dosproducentsNamn",
      "short" : "Dosproducentens namn. Inledande del av dosproducentens kan anges",
      "definition" : "Dosproducentens namn. Inledande del av dosproducentens kan anges",
      "comment" : "TKB-fält: `dosproducentsNamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.kommunkod",
      "path" : "sokdosmottagare-request.kommunkod",
      "short" : "Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "definition" : "Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "comment" : "TKB-fält: `kommunkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.mottagarnamn",
      "path" : "sokdosmottagare-request.mottagarnamn",
      "short" : "Mottagarens namn. Inledande del av mottagarnamn kan anges",
      "definition" : "Mottagarens namn. Inledande del av mottagarnamn kan anges",
      "comment" : "TKB-fält: `mottagarnamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "sokdosmottagare-request.postort",
      "path" : "sokdosmottagare-request.postort",
      "short" : "Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges",
      "definition" : "Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges",
      "comment" : "TKB-fält: `postort` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `typ` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
