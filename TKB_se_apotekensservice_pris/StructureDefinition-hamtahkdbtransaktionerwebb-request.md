# HamtaHkdbTransaktionerWebb — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktionerWebb — Request**

## Logical Model: HamtaHkdbTransaktionerWebb — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaHkdbTransaktionerWebbRequest |
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
  "version" : "1.0",
  "name" : "HamtaHkdbTransaktionerWebbRequest",
  "title" : "HamtaHkdbTransaktionerWebb — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:49:42+00:00",
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
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation",
      "short" : "KlientinformationRequest",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "comment" : "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation.anvandare",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation.anvandare",
      "short" : "Unikt användarid i anropande system.",
      "definition" : "Unikt användarid i anropande system.",
      "comment" : "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation.session",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation.session",
      "short" : "Sessionens id i anropande system.",
      "definition" : "Sessionens id i anropande system.",
      "comment" : "TKB-fält: `../session` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.klientinformation.system",
      "path" : "hamtahkdbtransaktionerwebb-request.klientinformation.system",
      "short" : "GLN-kod för anropande system.",
      "definition" : "GLN-kod för anropande system.",
      "comment" : "TKB-fält: `../system` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb-request.persNr",
      "path" : "hamtahkdbtransaktionerwebb-request.persNr",
      "short" : "Personnummer för den som sökningen gäller.",
      "definition" : "Personnummer för den som sökningen gäller.",
      "comment" : "TKB-fält: `persNr` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
