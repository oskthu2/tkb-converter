# KopplaBarnKonto — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KopplaBarnKonto — Request**

## Logical Model: KopplaBarnKonto — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kopplabarnkonto-request | *Version*:4.0 |
| Draft as of 2026-11-09 | *Computable Name*:KopplaBarnKontoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i KopplaBarnKonto (urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-kopplabarnkonto-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kopplabarnkonto-request.csv), [Excel](StructureDefinition-kopplabarnkonto-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kopplabarnkonto-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kopplabarnkonto-request",
  "version" : "4.0",
  "name" : "KopplaBarnKontoRequest",
  "title" : "KopplaBarnKonto — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:49:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i KopplaBarnKonto\n(urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/kopplabarnkonto-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kopplabarnkonto-request",
      "path" : "kopplabarnkonto-request",
      "short" : "KopplaBarnKonto — Request",
      "definition" : "Logisk modell för begäran i KopplaBarnKonto\n(urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "kopplabarnkonto-request.huvudPersNr",
      "path" : "kopplabarnkonto-request.huvudPersNr",
      "short" : "Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot.",
      "definition" : "Personnummer för huvudperson (Förmånsmottagare). Anges ej om barnkontot ska kopplas bort från samlingskontot.",
      "comment" : "TKB-fält: `huvudPersNr` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kopplabarnkonto-request.klientinformation",
      "path" : "kopplabarnkonto-request.klientinformation",
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
      "id" : "kopplabarnkonto-request.klientinformation.anvandare",
      "path" : "kopplabarnkonto-request.klientinformation.anvandare",
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
      "id" : "kopplabarnkonto-request.klientinformation.session",
      "path" : "kopplabarnkonto-request.klientinformation.session",
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
      "id" : "kopplabarnkonto-request.klientinformation.system",
      "path" : "kopplabarnkonto-request.klientinformation.system",
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
      "id" : "kopplabarnkonto-request.persNr",
      "path" : "kopplabarnkonto-request.persNr",
      "short" : "Personnummer för den vars konto ska uppdateras.",
      "definition" : "Personnummer för den vars konto ska uppdateras.",
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
