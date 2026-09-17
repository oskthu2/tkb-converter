# PingForConfiguration - itintegration: monitoring v1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PingForConfiguration**

## Logical Model: PingForConfiguration 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-monitoring/StructureDefinition/pingforconfiguration | *Version*:1 |
| Draft as of 2026-09-17 | *Computable Name*:PingForConfiguration |
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
  "version" : "1",
  "name" : "PingForConfiguration",
  "title" : "PingForConfiguration",
  "status" : "draft",
  "date" : "2026-09-17T11:17:29+00:00",
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
      "id" : "pingforconfiguration.pingVersion",
      "path" : "pingforconfiguration.pingVersion",
      "short" : "Version av tjänstekomponenten",
      "definition" : "Version av den tjänstekomponent som svarar. Formatet och semantiken är\nspecifik för respektive tjänsteproducent.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pingforconfiguration.pingDateTime",
      "path" : "pingforconfiguration.pingDateTime",
      "short" : "Tidpunkt för svar",
      "definition" : "Datum och klockslag när svaret skapades. Källdokumentets fälttyp är TS\n(RIV-TA-lokal regex-begränsad sträng på formatet YYYYMMDDhhmmss, se\nitintegration_monitoring_1.0.xsd), mappad till FHIR `instant`.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "pingforconfiguration.configuration",
      "path" : "pingforconfiguration.configuration",
      "short" : "Konfigurationsvärde",
      "definition" : "Lista med värden av miljövariabler från den svarande tjänstekomponenten\n(t.ex. JVM/.Net-version, operativsystem). Så mycket som möjligt ska tas\nmed som kan vara till hjälp vid felsökning.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pingforconfiguration.configuration.configurationName",
      "path" : "pingforconfiguration.configuration.configurationName",
      "short" : "Namn på miljövariabel",
      "definition" : "Namn på miljövariabel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pingforconfiguration.configuration.configurationValue",
      "path" : "pingforconfiguration.configuration.configurationValue",
      "short" : "Värde på miljövariabel",
      "definition" : "Värde på miljövariabel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
