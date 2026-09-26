# HamtaHkdbKonto — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbKonto — Response**

## Logical Model: HamtaHkdbKonto — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaHkdbKonto |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaHkdbKonto (urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtahkdbkonto.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtahkdbkonto.csv), [Excel](StructureDefinition-hamtahkdbkonto.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtahkdbkonto",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto",
  "version" : "2.0.0",
  "name" : "HamtaHkdbKonto",
  "title" : "HamtaHkdbKonto — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaHkdbKonto\n(urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtahkdbkonto",
      "path" : "hamtahkdbkonto",
      "short" : "HamtaHkdbKonto — Response",
      "definition" : "Logisk modell för svaret i HamtaHkdbKonto\n(urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoResponseType)."
    },
    {
      "id" : "hamtahkdbkonto.ansluten",
      "path" : "hamtahkdbkonto.ansluten",
      "short" : "ansluten",
      "definition" : "Personens högkostnadsstatus. False - Ej ansluten True - Ansluten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod",
      "path" : "hamtahkdbkonto.foregPeriod",
      "short" : "foregPeriod",
      "definition" : "Föregående högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.balans",
      "path" : "hamtahkdbkonto.foregPeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.balans.brutto",
      "path" : "hamtahkdbkonto.foregPeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.balans.netto",
      "path" : "hamtahkdbkonto.foregPeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.start",
      "path" : "hamtahkdbkonto.foregPeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbkonto.formansNiva",
      "path" : "hamtahkdbkonto.formansNiva",
      "short" : "formansNiva",
      "definition" : "Kundens aktuella förmånsnivå i procent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtahkdbkonto.huvudPersNr",
      "path" : "hamtahkdbkonto.huvudPersNr",
      "short" : "huvudPersNr",
      "definition" : "Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod",
      "path" : "hamtahkdbkonto.innevPeriod",
      "short" : "innevPeriod",
      "definition" : "Innevarande högkostnadsperiod. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.balans",
      "path" : "hamtahkdbkonto.innevPeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.balans.brutto",
      "path" : "hamtahkdbkonto.innevPeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.balans.netto",
      "path" : "hamtahkdbkonto.innevPeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.start",
      "path" : "hamtahkdbkonto.innevPeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod",
      "path" : "hamtahkdbkonto.kommandePeriod",
      "short" : "kommandePeriod",
      "definition" : "Kommande högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen kommande period existerar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.balans",
      "path" : "hamtahkdbkonto.kommandePeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.balans.brutto",
      "path" : "hamtahkdbkonto.kommandePeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.balans.netto",
      "path" : "hamtahkdbkonto.kommandePeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.start",
      "path" : "hamtahkdbkonto.kommandePeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kvarTillFrikort",
      "path" : "hamtahkdbkonto.kvarTillFrikort",
      "short" : "kvarTillFrikort",
      "definition" : "Nettobelopp i kronor och ören som återstår innan kunden får frikort. Saknar värde om personen ej är ansluten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kvarTillFrikort.brutto",
      "path" : "hamtahkdbkonto.kvarTillFrikort.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kvarTillFrikort.netto",
      "path" : "hamtahkdbkonto.kvarTillFrikort.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.persNr",
      "path" : "hamtahkdbkonto.persNr",
      "short" : "persNr",
      "definition" : "Personnummer för den som sökningen gäller.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
