# TaBortHkdbKonto — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TaBortHkdbKonto — Response**

## Logical Model: TaBortHkdbKonto — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/taborthkdbkonto | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:TaBortHkdbKonto |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i TaBortHkdbKonto (urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-taborthkdbkonto.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-taborthkdbkonto.csv), [Excel](StructureDefinition-taborthkdbkonto.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "taborthkdbkonto",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/taborthkdbkonto",
  "version" : "2.0.0",
  "name" : "TaBortHkdbKonto",
  "title" : "TaBortHkdbKonto — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i TaBortHkdbKonto\n(urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/taborthkdbkonto",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "taborthkdbkonto",
      "path" : "taborthkdbkonto",
      "short" : "TaBortHkdbKonto — Response",
      "definition" : "Logisk modell för svaret i TaBortHkdbKonto\n(urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoResponseType)."
    },
    {
      "id" : "taborthkdbkonto.innevPeriod",
      "path" : "taborthkdbkonto.innevPeriod",
      "short" : "innevPeriod",
      "definition" : "Innevarande högkostnadsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "taborthkdbkonto.innevPeriod.balans",
      "path" : "taborthkdbkonto.innevPeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "taborthkdbkonto.innevPeriod.balans.brutto",
      "path" : "taborthkdbkonto.innevPeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "taborthkdbkonto.innevPeriod.balans.netto",
      "path" : "taborthkdbkonto.innevPeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "taborthkdbkonto.innevPeriod.start",
      "path" : "taborthkdbkonto.innevPeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "taborthkdbkonto.kommandePeriod",
      "path" : "taborthkdbkonto.kommandePeriod",
      "short" : "kommandePeriod",
      "definition" : "Kommande högkostnadsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "taborthkdbkonto.kommandePeriod.balans",
      "path" : "taborthkdbkonto.kommandePeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "taborthkdbkonto.kommandePeriod.balans.brutto",
      "path" : "taborthkdbkonto.kommandePeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "taborthkdbkonto.kommandePeriod.balans.netto",
      "path" : "taborthkdbkonto.kommandePeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "taborthkdbkonto.kommandePeriod.start",
      "path" : "taborthkdbkonto.kommandePeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "taborthkdbkonto.resultat",
      "path" : "taborthkdbkonto.resultat",
      "short" : "resultat",
      "definition" : "Resultat av kontouppdatering i HKDB. True - Konto borttaget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "taborthkdbkonto.samlingBort",
      "path" : "taborthkdbkonto.samlingBort",
      "short" : "samlingBort",
      "definition" : "Anger om samlingskonto tagits bort i samband med anropet. True - Samlingskonto borttaget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
