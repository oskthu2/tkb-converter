# HamtaHkdbTransaktioner — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktioner — Request**

## Logical Model: HamtaHkdbTransaktioner — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaHkdbTransaktionerRequest |
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
  "version" : "1.0",
  "name" : "HamtaHkdbTransaktionerRequest",
  "title" : "HamtaHkdbTransaktioner — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:49:42+00:00",
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
      "id" : "hamtahkdbtransaktioner-request.klientinformation",
      "path" : "hamtahkdbtransaktioner-request.klientinformation",
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
      "id" : "hamtahkdbtransaktioner-request.klientinformation.anvandare",
      "path" : "hamtahkdbtransaktioner-request.klientinformation.anvandare",
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
      "id" : "hamtahkdbtransaktioner-request.klientinformation.session",
      "path" : "hamtahkdbtransaktioner-request.klientinformation.session",
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
      "id" : "hamtahkdbtransaktioner-request.klientinformation.system",
      "path" : "hamtahkdbtransaktioner-request.klientinformation.system",
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
      "id" : "hamtahkdbtransaktioner-request.maxantal",
      "path" : "hamtahkdbtransaktioner-request.maxantal",
      "short" : "maxantal",
      "definition" : "Ställer in begränsning av maximala mängden returnerade transaktioner. T.ex innebär maxantal = 5, att endast de fem senaste transaktionerna hämtas. Om maxantal inte anges så är defaultvärde fem. Om man vill ha alla transaktioner sätts maxantal till -1.",
      "comment" : "TKB-fält: `maxantal` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner-request.persNr",
      "path" : "hamtahkdbtransaktioner-request.persNr",
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
