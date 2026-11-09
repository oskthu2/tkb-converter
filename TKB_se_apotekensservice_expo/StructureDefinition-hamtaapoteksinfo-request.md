# HamtaApoteksInfo — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaApoteksInfo — Request**

## Logical Model: HamtaApoteksInfo — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfo-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaApoteksInfoRequest |
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
  "version" : "1.0",
  "name" : "HamtaApoteksInfoRequest",
  "title" : "HamtaApoteksInfo — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
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
      "id" : "hamtaapoteksinfo-request.glnKod",
      "path" : "hamtaapoteksinfo-request.glnKod",
      "short" : "glnKod",
      "definition" : "Lista med en eller flera GLN-koder som identifierar de expeditionsställen man vill ha information om. GLN-koderna i listan ska vara unika.",
      "comment" : "TKB-fält: `glnKod` (`string`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfo-request.tidpunkt",
      "path" : "hamtaapoteksinfo-request.tidpunkt",
      "short" : "Om givet så returneras information som gällde vid tidpunkten, annars aktuell information.",
      "definition" : "Om givet så returneras information som gällde vid tidpunkten, annars aktuell information.",
      "comment" : "TKB-fält: `tidpunkt` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
