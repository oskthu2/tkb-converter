# HamtaHkdbTransaktionerWebb — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaHkdbTransaktionerWebb — Response**

## Logical Model: HamtaHkdbTransaktionerWebb — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/hamtahkdbtransaktionerwebb | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaHkdbTransaktionerWebb |
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
  "version" : "2.0.0",
  "name" : "HamtaHkdbTransaktionerWebb",
  "title" : "HamtaHkdbTransaktionerWebb — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
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
      "short" : "periodSlut",
      "definition" : "Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista",
      "short" : "transaktionsLista",
      "definition" : "Lista med de senaste transaktionerna för personens högkostnadskonto. Defaultvärde för antalet returnerade transaktioner är fem, men detta är valbart. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.anvandare",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.anvandare",
      "short" : "anvandare",
      "definition" : "Användare som registrerat transaktionen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksNamn",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksNamn",
      "short" : "apoteksNamn",
      "definition" : "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksOrt",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.apoteksOrt",
      "short" : "apoteksOrt",
      "definition" : "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.expeditionsId",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.expeditionsId",
      "short" : "expeditionsId",
      "definition" : "Unikt expeditionsID.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.flags",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.flags",
      "short" : "flags",
      "definition" : "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.inBrutto",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.inBrutto",
      "short" : "inBrutto",
      "definition" : "Ingående brutto före transaktionen (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.inEgenavgift",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.inEgenavgift",
      "short" : "inEgenavgift",
      "definition" : "Ingående högkostnadssaldo vid transaktionen (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.kommentar",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.kommentar",
      "short" : "kommentar",
      "definition" : "Eventuell kommentar från korrigeringstransaktion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.orgAktorId",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.orgAktorId",
      "short" : "orgAktorId",
      "definition" : "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.persNr",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.persNr",
      "short" : "persNr",
      "definition" : "Personnummer för den som transaktionen gäller.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.sign",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.sign",
      "short" : "sign",
      "definition" : "Typ av trans: +,-,ABC, ... Detta fält används enbart internt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transId",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transId",
      "short" : "transId",
      "definition" : "Aktörens expeditions-ID / verifikationsnr.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod",
      "short" : "transPeriod",
      "definition" : "Transaktionens högkostnadsuppgifter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans",
      "short" : "balans",
      "definition" : "Ackumulerad balans",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.brutto",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.brutto",
      "short" : "brutto",
      "definition" : "Bruttobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.netto",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.balans.netto",
      "short" : "netto",
      "definition" : "Nettobelopp i kronor och ören",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.start",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transPeriod.start",
      "short" : "start",
      "definition" : "Periodens startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transTid",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transTid",
      "short" : "transTid",
      "definition" : "Transaktionstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtahkdbtransaktionerwebb.transaktionsLista.transaktionBehandlades",
      "path" : "hamtahkdbtransaktionerwebb.transaktionsLista.transaktionBehandlades",
      "short" : "transaktionBehandlades",
      "definition" : "Tidpunkt då transaktionen behandlades av HKDB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
