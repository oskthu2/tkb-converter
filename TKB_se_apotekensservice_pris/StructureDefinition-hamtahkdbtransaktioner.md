# HamtaHkdbTransaktioner — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktioner — Response**

## Logical Model: HamtaHkdbTransaktioner — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:HamtaHkdbTransaktioner |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaHkdbTransaktioner (urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtahkdbtransaktioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtahkdbtransaktioner.csv), [Excel](StructureDefinition-hamtahkdbtransaktioner.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtahkdbtransaktioner",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner",
  "version" : "1.0",
  "name" : "HamtaHkdbTransaktioner",
  "title" : "HamtaHkdbTransaktioner — Response",
  "status" : "draft",
  "date" : "2026-11-06T21:48:11+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaHkdbTransaktioner\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtahkdbtransaktioner",
      "path" : "hamtahkdbtransaktioner",
      "short" : "HamtaHkdbTransaktioner — Response",
      "definition" : "Logisk modell för svaret i HamtaHkdbTransaktioner\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerResponseType)."
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista",
      "path" : "hamtahkdbtransaktioner.transaktionsLista",
      "short" : "transaktionsLista",
      "definition" : "Lista med de senaste transaktionerna för personens högkostnadskonto. Antalet som returneras kan ställas in med maxantal, men default är fem. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan.",
      "comment" : "TKB-fält: `transaktionsLista` (`TransaktionResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.anvandare",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.anvandare",
      "short" : "anvandare",
      "definition" : "Användare som registrerat transaktionen.",
      "comment" : "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.apoteksNamn",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.apoteksNamn",
      "short" : "apoteksNamn",
      "definition" : "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "comment" : "TKB-fält: `../apoteksNamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.apoteksOrt",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.apoteksOrt",
      "short" : "apoteksOrt",
      "definition" : "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "comment" : "TKB-fält: `../apoteksOrt` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.expeditionsId",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.expeditionsId",
      "short" : "expeditionsId",
      "definition" : "Unikt expeditionsID.",
      "comment" : "TKB-fält: `../expeditionsId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.flags",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.flags",
      "short" : "flags",
      "definition" : "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt.",
      "comment" : "TKB-fält: `../flags` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.inBrutto",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.inBrutto",
      "short" : "inBrutto",
      "definition" : "Ingående brutto före transaktionen",
      "comment" : "TKB-fält: `../inBrutto` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.inEgenavgift",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.inEgenavgift",
      "short" : "inEgenavgift",
      "definition" : "Ingående högkostnadssaldo vid transaktionen",
      "comment" : "TKB-fält: `../inEgenavgift` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.kommentar",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.kommentar",
      "short" : "kommentar",
      "definition" : "Eventuell kommentar från korrigeringstransaktion",
      "comment" : "TKB-fält: `../kommentar` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.orgAktorId",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.orgAktorId",
      "short" : "orgAktorId",
      "definition" : "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "comment" : "TKB-fält: `../orgAktorId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.persNr",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.persNr",
      "short" : "persNr",
      "definition" : "Personnummer för den som transaktionen gäller.",
      "comment" : "TKB-fält: `../persNr` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.sign",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.sign",
      "short" : "sign",
      "definition" : "Typ av trans: +,-,ABC, ... Detta fält används enbart internt.",
      "comment" : "TKB-fält: `../sign` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transId",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transId",
      "short" : "transId",
      "definition" : "Aktörens expeditions-ID\n\nverifikationsnr.",
      "comment" : "TKB-fält: `../transId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod",
      "short" : "transPeriod",
      "definition" : "Transaktionens högkostnadsuppgifter.",
      "comment" : "TKB-fält: `../transPeriod` (`PeriodResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.balans",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "comment" : "TKB-fält: `../../balans` (`BalansResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.balans.brutto",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../../brutto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.balans.netto",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../../netto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.start",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transPeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "comment" : "TKB-fält: `../../start` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transTid",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transTid",
      "short" : "transTid",
      "definition" : "Transaktionstidpunkt.",
      "comment" : "TKB-fält: `../transTid` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktioner.transaktionsLista.transaktionBehandlades",
      "path" : "hamtahkdbtransaktioner.transaktionsLista.transaktionBehandlades",
      "short" : "transaktionBehandlades",
      "definition" : "Tidpunkt då transaktionen behandlades av HKDB",
      "comment" : "TKB-fält: `../transaktionBehandlades` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
