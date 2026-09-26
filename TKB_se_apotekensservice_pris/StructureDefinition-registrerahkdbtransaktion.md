# RegistreraHkdbTransaktion — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegistreraHkdbTransaktion — Response**

## Logical Model: RegistreraHkdbTransaktion — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/registrerahkdbtransaktion | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:RegistreraHkdbTransaktion |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i RegistreraHkdbTransaktion (urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-registrerahkdbtransaktion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registrerahkdbtransaktion.csv), [Excel](StructureDefinition-registrerahkdbtransaktion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registrerahkdbtransaktion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/registrerahkdbtransaktion",
  "version" : "2.0.0",
  "name" : "RegistreraHkdbTransaktion",
  "title" : "RegistreraHkdbTransaktion — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i RegistreraHkdbTransaktion\n(urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/registrerahkdbtransaktion",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registrerahkdbtransaktion",
      "path" : "registrerahkdbtransaktion",
      "short" : "RegistreraHkdbTransaktion — Response",
      "definition" : "Logisk modell för svaret i RegistreraHkdbTransaktion\n(urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionResponseType)."
    },
    {
      "id" : "registrerahkdbtransaktion.fpBalans",
      "path" : "registrerahkdbtransaktion.fpBalans",
      "short" : "fpBalans",
      "definition" : "Nya ackumulerade brutto/netto belopp i kronor och ören för föregånde period.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.fpBalans.brutto",
      "path" : "registrerahkdbtransaktion.fpBalans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.fpBalans.netto",
      "path" : "registrerahkdbtransaktion.fpBalans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.ipBalans",
      "path" : "registrerahkdbtransaktion.ipBalans",
      "short" : "ipBalans",
      "definition" : "Nya ackumulerade brutto/netto belopp i kronor och ören för innevarande period.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.ipBalans.brutto",
      "path" : "registrerahkdbtransaktion.ipBalans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.ipBalans.netto",
      "path" : "registrerahkdbtransaktion.ipBalans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.kpBalans",
      "path" : "registrerahkdbtransaktion.kpBalans",
      "short" : "kpBalans",
      "definition" : "Nya ackumulerade brutto/netto belopp i kronor och ören för kommande period.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.kpBalans.brutto",
      "path" : "registrerahkdbtransaktion.kpBalans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.kpBalans.netto",
      "path" : "registrerahkdbtransaktion.kpBalans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion.resultat",
      "path" : "registrerahkdbtransaktion.resultat",
      "short" : "resultat",
      "definition" : "Resultat av högkostnadsuppdatering. 1 - Transaktionen accepterad och registrerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
