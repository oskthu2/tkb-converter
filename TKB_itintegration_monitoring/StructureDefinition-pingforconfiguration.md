# PingForConfiguration - itintegration: monitoring v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PingForConfiguration**

## Logical Model: PingForConfiguration 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-monitoring/StructureDefinition/pingforconfiguration | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:PingForConfiguration |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet PingForConfiguration (RIV-TA urn:riv:itintegration:monitoring:PingForConfigurationResponder:1). Generisk "ping"-tjänst som varje RIVTA 2.1-tjänstekomponent ska exponera, utöver sina funktionella kontrakt, för att kunna övervakas och felsökas via ett enhetligt gränssnitt. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-monitoring|current/StructureDefinition/StructureDefinition-pingforconfiguration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pingforconfiguration.csv), [Excel](StructureDefinition-pingforconfiguration.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pingforconfiguration",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-monitoring/StructureDefinition/pingforconfiguration",
  "version" : "1.0",
  "name" : "PingForConfiguration",
  "title" : "PingForConfiguration",
  "status" : "active",
  "date" : "2026-11-09T03:43:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet PingForConfiguration\n(RIV-TA urn:riv:itintegration:monitoring:PingForConfigurationResponder:1).\nGenerisk \"ping\"-tjänst som varje RIVTA 2.1-tjänstekomponent ska exponera,\nutöver sina funktionella kontrakt, för att kunna övervakas och felsökas\nvia ett enhetligt gränssnitt. Representerar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-monitoring/StructureDefinition/pingforconfiguration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pingforconfiguration",
      "path" : "pingforconfiguration",
      "short" : "PingForConfiguration",
      "definition" : "Logisk modell för tjänstekontraktet PingForConfiguration\n(RIV-TA urn:riv:itintegration:monitoring:PingForConfigurationResponder:1).\nGenerisk \"ping\"-tjänst som varje RIVTA 2.1-tjänstekomponent ska exponera,\nutöver sina funktionella kontrakt, för att kunna övervakas och felsökas\nvia ett enhetligt gränssnitt. Representerar responsens informationsstruktur."
    },
    {
      "id" : "pingforconfiguration.version",
      "path" : "pingforconfiguration.version",
      "short" : "Version of the service component that responds.",
      "definition" : "Version av den tjänstekomponent som svarar. Formatet och semantik är specifikt för respektive tjänsteproducent.",
      "comment" : "TKB-fält: `version` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pingforconfiguration.pingDateTime",
      "path" : "pingforconfiguration.pingDateTime",
      "short" : "Date and time for the ping response.",
      "definition" : "Datum och klockslag när ett svar skapades, på tidigare angivet tidsformat, ned på sekundnivå. Exempel: 20110311121021",
      "comment" : "TKB-fält: `pingDateTime` (`TS (tidsformat, se avsnitt 4)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/itintegration-monitoring/StructureDefinition/TS"]
      }]
    },
    {
      "id" : "pingforconfiguration.configuration",
      "path" : "pingforconfiguration.configuration",
      "short" : "ConfigurationType",
      "definition" : "Lista med värden av miljövariabler från den svarande tjänstekomponenten. Ta med så mycket som möjligt som kan vara till hjälp vid felsökning och dialog kring vilken version som \"finns i andra änden\". Exempel kan vara JVM/.Net-version, operativsystem.",
      "comment" : "TKB-fält: `configuration` (`ConfigurationType`, kardinalitet 0..*).\n\n**Modellanteckning:** Optional list of environment information from the service component.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "pingforconfiguration.configuration.name",
      "path" : "pingforconfiguration.configuration.name",
      "short" : "name",
      "definition" : "Namn på miljövariabel",
      "comment" : "TKB-fält: `configuration.name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pingforconfiguration.configuration.value",
      "path" : "pingforconfiguration.configuration.value",
      "short" : "value",
      "definition" : "Värde på miljövariabel",
      "comment" : "TKB-fält: `configuration.value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
