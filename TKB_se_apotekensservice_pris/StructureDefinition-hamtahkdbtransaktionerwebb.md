# HamtaHkdbTransaktionerWebb — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktionerWebb — Response**

## Logical Model: HamtaHkdbTransaktionerWebb — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:HamtaHkdbTransaktionerWebb |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaHkdbTransaktionerWebb (urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-hamtahkdbtransaktionerwebb.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtahkdbtransaktionerwebb.csv), [Excel](StructureDefinition-hamtahkdbtransaktionerwebb.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtahkdbtransaktionerwebb",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb",
  "version" : "1.0",
  "name" : "HamtaHkdbTransaktionerWebb",
  "title" : "HamtaHkdbTransaktionerWebb — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:49:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaHkdbTransaktionerWebb\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtahkdbtransaktionerwebb",
      "path" : "hamtahkdbtransaktionerwebb",
      "short" : "HamtaHkdbTransaktionerWebb — Response",
      "definition" : "Logisk modell för svaret i HamtaHkdbTransaktionerWebb\n(urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbResponseType)."
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.periodSlut",
      "path" : "hamtahkdbtransaktionerwebb.periodSlut",
      "short" : "Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår.",
      "definition" : "Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår.",
      "comment" : "TKB-fält: `periodSlut` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista",
      "short" : "TransaktionResponse",
      "definition" : "Lista med de senaste transaktionerna för personens högkostnadskonto. Defaultvärde för antalet returnerade transaktioner är fem, men detta är valbart. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan.",
      "comment" : "TKB-fält: `transaktionsLista` (`TransaktionResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.anvandare",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.anvandare",
      "short" : "Användare som registrerat transaktionen.",
      "definition" : "Användare som registrerat transaktionen.",
      "comment" : "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksNamn",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksNamn",
      "short" : "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "definition" : "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "comment" : "TKB-fält: `../apoteksNamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksOrt",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksOrt",
      "short" : "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "definition" : "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "comment" : "TKB-fält: `../apoteksOrt` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.expeditionsId",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.expeditionsId",
      "short" : "Unikt expeditionsID.",
      "definition" : "Unikt expeditionsID.",
      "comment" : "TKB-fält: `../expeditionsId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.flags",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.flags",
      "short" : "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt.",
      "definition" : "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt.",
      "comment" : "TKB-fält: `../flags` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.inBrutto",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.inBrutto",
      "short" : "Ingående brutto före transaktionen",
      "definition" : "Ingående brutto före transaktionen",
      "comment" : "TKB-fält: `../inBrutto` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.inEgenavgift",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.inEgenavgift",
      "short" : "Ingående högkostnadssaldo vid transaktionen",
      "definition" : "Ingående högkostnadssaldo vid transaktionen",
      "comment" : "TKB-fält: `../inEgenavgift` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.kommentar",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.kommentar",
      "short" : "Eventuell kommentar från korrigeringstransaktion",
      "definition" : "Eventuell kommentar från korrigeringstransaktion",
      "comment" : "TKB-fält: `../kommentar` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.orgAktorId",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.orgAktorId",
      "short" : "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "definition" : "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "comment" : "TKB-fält: `../orgAktorId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.persNr",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.persNr",
      "short" : "Personnummer för den som transaktionen gäller.",
      "definition" : "Personnummer för den som transaktionen gäller.",
      "comment" : "TKB-fält: `../persNr` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.sign",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.sign",
      "short" : "Typ av trans: +,-,ABC, ... Detta fält används enbart internt.",
      "definition" : "Typ av trans: +,-,ABC, ... Detta fält används enbart internt.",
      "comment" : "TKB-fält: `../sign` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transId",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transId",
      "short" : "Aktörens expeditions-ID / verifikationsnr.",
      "definition" : "Aktörens expeditions-ID\n\nverifikationsnr.",
      "comment" : "TKB-fält: `../transId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod",
      "short" : "PeriodResponse",
      "definition" : "Transaktionens högkostnadsuppgifter.",
      "comment" : "TKB-fält: `../transPeriod` (`PeriodResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans",
      "short" : "BalansResponse",
      "definition" : "Ackumulerad balans",
      "comment" : "TKB-fält: `../../balans` (`BalansResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.brutto",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.brutto",
      "short" : "Bruttobelopp i kronor och ören",
      "definition" : "Bruttobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../../brutto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.netto",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.netto",
      "short" : "Nettobelopp i kronor och ören",
      "definition" : "Nettobelopp i kronor och ören",
      "comment" : "TKB-fält: `../../../netto` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.start",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.start",
      "short" : "Periodens startdatum.",
      "definition" : "Periodens startdatum.",
      "comment" : "TKB-fält: `../../start` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transTid",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transTid",
      "short" : "Transaktionstidpunkt.",
      "definition" : "Transaktionstidpunkt.",
      "comment" : "TKB-fält: `../transTid` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transaktionBehandlades",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transaktionBehandlades",
      "short" : "Tidpunkt då transaktionen behandlades av HKDB",
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
