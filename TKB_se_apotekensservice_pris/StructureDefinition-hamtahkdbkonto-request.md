# HamtaHkdbKonto — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbKonto — Request**

## Logical Model: HamtaHkdbKonto — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaHkdbKontoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaHkdbKonto (urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtahkdbkonto-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtahkdbkonto-request.csv), [Excel](StructureDefinition-hamtahkdbkonto-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtahkdbkonto-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto-request",
  "version" : "1.0",
  "name" : "HamtaHkdbKontoRequest",
  "title" : "HamtaHkdbKonto — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:49:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaHkdbKonto\n(urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtahkdbkonto-request",
      "path" : "hamtahkdbkonto-request",
      "short" : "HamtaHkdbKonto — Request",
      "definition" : "Logisk modell för begäran i HamtaHkdbKonto\n(urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtahkdbkonto-request.klientinformation",
      "path" : "hamtahkdbkonto-request.klientinformation",
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
      "id" : "hamtahkdbkonto-request.klientinformation.anvandare",
      "path" : "hamtahkdbkonto-request.klientinformation.anvandare",
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
      "id" : "hamtahkdbkonto-request.klientinformation.session",
      "path" : "hamtahkdbkonto-request.klientinformation.session",
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
      "id" : "hamtahkdbkonto-request.klientinformation.system",
      "path" : "hamtahkdbkonto-request.klientinformation.system",
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
      "id" : "hamtahkdbkonto-request.persNr",
      "path" : "hamtahkdbkonto-request.persNr",
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
