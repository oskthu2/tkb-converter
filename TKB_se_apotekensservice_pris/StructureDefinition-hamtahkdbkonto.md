# HamtaHkdbKonto — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbKonto — Response**

## Logical Model: HamtaHkdbKonto — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbkonto | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaHkdbKonto |
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
  "version" : "1.0",
  "name" : "HamtaHkdbKonto",
  "title" : "HamtaHkdbKonto — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:49:42+00:00",
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
      "short" : "Personens högkostnadsstatus. False - Ej ansluten True - Ansluten",
      "definition" : "Personens högkostnadsstatus. False - Ej ansluten True - Ansluten",
      "comment" : "TKB-fält: `ansluten` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod",
      "path" : "hamtahkdbkonto.foregPeriod",
      "short" : "PeriodResponse",
      "definition" : "Föregående högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar.",
      "comment" : "TKB-fält: `foregPeriod` (`PeriodResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.balans",
      "path" : "hamtahkdbkonto.foregPeriod.balans",
      "short" : "BalansResponse",
      "definition" : "Ackumulerad balans",
      "comment" : "TKB-fält: `../balans` (`BalansResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.balans.brutto",
      "path" : "hamtahkdbkonto.foregPeriod.balans.brutto",
      "short" : "Bruttobelopp i kronor och ören",
      "definition" : "Bruttobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../brutto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.balans.netto",
      "path" : "hamtahkdbkonto.foregPeriod.balans.netto",
      "short" : "Nettobelopp i kronor och ören",
      "definition" : "Nettobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../netto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.foregPeriod.start",
      "path" : "hamtahkdbkonto.foregPeriod.start",
      "short" : "Periodens startdatum.",
      "definition" : "Periodens startdatum.",
      "comment" : "TKB-fält: `../start` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbkonto.formansNiva",
      "path" : "hamtahkdbkonto.formansNiva",
      "short" : "Kundens aktuella förmånsnivå i procent.",
      "definition" : "Kundens aktuella förmånsnivå i procent.",
      "comment" : "TKB-fält: `formansNiva` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtahkdbkonto.huvudPersNr",
      "path" : "hamtahkdbkonto.huvudPersNr",
      "short" : "Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas.",
      "definition" : "Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas.",
      "comment" : "TKB-fält: `huvudPersNr` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod",
      "path" : "hamtahkdbkonto.innevPeriod",
      "short" : "PeriodResponse",
      "definition" : "Innevarande högkostnadsperiod. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar.",
      "comment" : "TKB-fält: `innevPeriod` (`PeriodResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.balans",
      "path" : "hamtahkdbkonto.innevPeriod.balans",
      "short" : "BalansResponse",
      "definition" : "Ackumulerad balans",
      "comment" : "TKB-fält: `../balans` (`BalansResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.balans.brutto",
      "path" : "hamtahkdbkonto.innevPeriod.balans.brutto",
      "short" : "Bruttobelopp i kronor och ören",
      "definition" : "Bruttobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../brutto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.balans.netto",
      "path" : "hamtahkdbkonto.innevPeriod.balans.netto",
      "short" : "Nettobelopp i kronor och ören",
      "definition" : "Nettobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../netto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.innevPeriod.start",
      "path" : "hamtahkdbkonto.innevPeriod.start",
      "short" : "Periodens startdatum.",
      "definition" : "Periodens startdatum.",
      "comment" : "TKB-fält: `../start` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod",
      "path" : "hamtahkdbkonto.kommandePeriod",
      "short" : "PeriodResponse",
      "definition" : "Kommande högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen kommande period existerar.",
      "comment" : "TKB-fält: `kommandePeriod` (`PeriodResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.balans",
      "path" : "hamtahkdbkonto.kommandePeriod.balans",
      "short" : "BalansResponse",
      "definition" : "Ackumulerad balans",
      "comment" : "TKB-fält: `../balans` (`BalansResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.balans.brutto",
      "path" : "hamtahkdbkonto.kommandePeriod.balans.brutto",
      "short" : "Bruttobelopp i kronor och ören",
      "definition" : "Bruttobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../brutto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.balans.netto",
      "path" : "hamtahkdbkonto.kommandePeriod.balans.netto",
      "short" : "Nettobelopp i kronor och ören",
      "definition" : "Nettobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../netto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kommandePeriod.start",
      "path" : "hamtahkdbkonto.kommandePeriod.start",
      "short" : "Periodens startdatum.",
      "definition" : "Periodens startdatum.",
      "comment" : "TKB-fält: `../start` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kvarTillFrikort",
      "path" : "hamtahkdbkonto.kvarTillFrikort",
      "short" : "BalansResponse",
      "definition" : "Nettobelopp i kronor och ören som återstår innan kunden får frikort. Saknar värde om personen ej är ansluten.",
      "comment" : "TKB-fält: `kvarTillFrikort` (`BalansResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kvarTillFrikort.brutto",
      "path" : "hamtahkdbkonto.kvarTillFrikort.brutto",
      "short" : "Bruttobelopp i kronor och ören",
      "definition" : "Bruttobelopp i kronor och ören",
      "comment" : "TKB-fält: `../brutto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.kvarTillFrikort.netto",
      "path" : "hamtahkdbkonto.kvarTillFrikort.netto",
      "short" : "Nettobelopp i kronor och ören",
      "definition" : "Nettobelopp i kronor och ören",
      "comment" : "TKB-fält: `../netto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbkonto.persNr",
      "path" : "hamtahkdbkonto.persNr",
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
