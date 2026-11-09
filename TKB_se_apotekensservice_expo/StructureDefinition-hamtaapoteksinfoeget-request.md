# HamtaApoteksinfoEget — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaApoteksinfoEget — Request**

## Logical Model: HamtaApoteksinfoEget — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget-request | *Version*:5.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaApoteksinfoEgetRequest |
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
  "version" : "5.0",
  "name" : "HamtaApoteksinfoEgetRequest",
  "title" : "HamtaApoteksinfoEget — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
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
      "id" : "hamtaapoteksinfoeget-request.apoteksId",
      "path" : "hamtaapoteksinfoeget-request.apoteksId",
      "short" : "GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata.",
      "definition" : "GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata.",
      "comment" : "TKB-fält: `apoteksId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget-request.orgNr",
      "path" : "hamtaapoteksinfoeget-request.orgNr",
      "short" : "Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata.",
      "definition" : "Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata.",
      "comment" : "TKB-fält: `orgNr` (`long`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
