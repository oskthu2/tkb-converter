# HamtaOrginalforpackning — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaOrginalforpackning — Response**

## Logical Model: HamtaOrginalforpackning — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtaorginalforpackning | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:HamtaOrginalforpackning |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaOrginalforpackning (urn:riv:druglogistics:dosedispensing:HamtaOrginalforpackningResponder:1, HamtaOrginalforpackningResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-hamtaorginalforpackning.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaorginalforpackning.csv), [Excel](StructureDefinition-hamtaorginalforpackning.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaorginalforpackning",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtaorginalforpackning",
  "version" : "1.0",
  "name" : "HamtaOrginalforpackning",
  "title" : "HamtaOrginalforpackning — Response",
  "status" : "active",
  "date" : "2026-11-09T03:27:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:HamtaOrginalforpackningResponder:1, HamtaOrginalforpackningResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtaorginalforpackning",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaorginalforpackning",
      "path" : "hamtaorginalforpackning",
      "short" : "HamtaOrginalforpackning — Response",
      "definition" : "Logisk modell för svaret i HamtaOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:HamtaOrginalforpackningResponder:1, HamtaOrginalforpackningResponseType)."
    },
    {
      "id" : "hamtaorginalforpackning.resultatkod",
      "path" : "hamtaorginalforpackning.resultatkod",
      "short" : "resultatkod",
      "definition" : "resultatkod Tillåtna värden: 1, 2, 3.",
      "comment" : "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** resultatkod Tillåtna värden: 1, 2, 3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-resultatkod-vs"
      }
    },
    {
      "id" : "hamtaorginalforpackning.meddelandetext",
      "path" : "hamtaorginalforpackning.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "comment" : "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.meddelandeid",
      "path" : "hamtaorginalforpackning.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "comment" : "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader",
      "path" : "hamtaorginalforpackning.Bestallningsrader",
      "short" : "BestallningsinfoResponse",
      "definition" : "Bestallningsrader",
      "comment" : "TKB-fält: `Bestallningsrader` (`BestallningsinfoResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningsid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningsid",
      "short" : "bestallningsid",
      "definition" : "bestallningsid",
      "comment" : "TKB-fält: `../bestallningsid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.radid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.radid",
      "short" : "radid",
      "definition" : "radid",
      "comment" : "TKB-fält: `../radid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation",
      "short" : "PatientinfoResponse",
      "definition" : "Patientinformation",
      "comment" : "TKB-fält: `../Patientinformation` (`PatientinfoResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "short" : "Anvandarens fornamn.",
      "definition" : "Anvandarens fornamn.",
      "comment" : "TKB-fält: `../../fornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "short" : "Anvandarens mellanamn.",
      "definition" : "Anvandarens mellanamn.",
      "comment" : "TKB-fält: `../../mellannamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "short" : "Anvandarens efternamn.",
      "definition" : "Anvandarens efternamn.",
      "comment" : "TKB-fält: `../../efternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.identitetstyp",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.identitetstyp",
      "short" : "identitetstyp",
      "definition" : "identitetstyp Tillåtna värden: P, R, S.",
      "comment" : "TKB-fält: `../../identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** identitetstyp Tillåtna värden: P, R, S.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-identitetstyp-vs"
      }
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.personid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.personid",
      "short" : "Anvandarens personid",
      "definition" : "Anvandarens personid",
      "comment" : "TKB-fält: `../../personid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "short" : "Anvandarens folkbokforda lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "comment" : "TKB-fält: `../../lanskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "short" : "Anvandarens folkbokforda kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "comment" : "TKB-fält: `../../kommunkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.NPLpackid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.NPLpackid",
      "short" : "NPLpackid",
      "definition" : "NPLpackid",
      "comment" : "TKB-fält: `../NPLpackid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.varunummer",
      "path" : "hamtaorginalforpackning.Bestallningsrader.varunummer",
      "short" : "varunummer",
      "definition" : "varunummer",
      "comment" : "TKB-fält: `../varunummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.receptid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.receptid",
      "short" : "receptid",
      "definition" : "receptid",
      "comment" : "TKB-fält: `../receptid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.ordinationsid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.ordinationsid",
      "short" : "ordinationsid",
      "definition" : "ordinationsid",
      "comment" : "TKB-fält: `../ordinationsid` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.dosunderlagsversion",
      "path" : "hamtaorginalforpackning.Bestallningsrader.dosunderlagsversion",
      "short" : "dosunderlagsversion",
      "definition" : "dosunderlagsversion",
      "comment" : "TKB-fält: `../dosunderlagsversion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningsresultat",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningsresultat",
      "short" : "bestallningsresultat",
      "definition" : "bestallningsresultat",
      "comment" : "TKB-fält: `../bestallningsresultat` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningsresultattext",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningsresultattext",
      "short" : "bestallningsresultattext",
      "definition" : "bestallningsresultattext",
      "comment" : "TKB-fält: `../bestallningsresultattext` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningsstatus",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningsstatus",
      "short" : "bestallningsstatus",
      "definition" : "bestallningsstatus Tillåtna värden: 1, 2, 3, 4, 5.",
      "comment" : "TKB-fält: `../bestallningsstatus` (`BestallningsStatusEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** bestallningsstatus Tillåtna värden: 1, 2, 3, 4, 5.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-bestallningsstatus-vs"
      }
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.statustidpunkt",
      "path" : "hamtaorginalforpackning.Bestallningsrader.statustidpunkt",
      "short" : "statustidpunkt",
      "definition" : "statustidpunkt",
      "comment" : "TKB-fält: `../statustidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningstatustext",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningstatustext",
      "short" : "bestallningstatustext",
      "definition" : "bestallningstatustext",
      "comment" : "TKB-fält: `../bestallningstatustext` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.meddelandefranapotek",
      "path" : "hamtaorginalforpackning.Bestallningsrader.meddelandefranapotek",
      "short" : "meddelandefranapotek",
      "definition" : "meddelandefranapotek",
      "comment" : "TKB-fält: `../meddelandefranapotek` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.onskadleveranstid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.onskadleveranstid",
      "short" : "onskadleveranstid",
      "definition" : "onskadleveranstid",
      "comment" : "TKB-fält: `../onskadleveranstid` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.planeradleveranstid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.planeradleveranstid",
      "short" : "planeradleveranstid",
      "definition" : "planeradleveranstid",
      "comment" : "TKB-fält: `../planeradleveranstid` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.dosmottagareid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.dosmottagareid",
      "short" : "dosmottagareid",
      "definition" : "dosmottagareid",
      "comment" : "TKB-fält: `../dosmottagareid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.dosmottagarenamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.dosmottagarenamn",
      "short" : "dosmottagarenamn",
      "definition" : "dosmottagarenamn",
      "comment" : "TKB-fält: `../dosmottagarenamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningstid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningstid",
      "short" : "bestallningstid",
      "definition" : "bestallningstid",
      "comment" : "TKB-fält: `../bestallningstid` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallarefornamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallarefornamn",
      "short" : "bestallarefornamn",
      "definition" : "bestallarefornamn",
      "comment" : "TKB-fält: `../bestallarefornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallareefternamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallareefternamn",
      "short" : "bestallareefternamn",
      "definition" : "bestallareefternamn",
      "comment" : "TKB-fält: `../bestallareefternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallarearbetsplats",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallarearbetsplats",
      "short" : "bestallarearbetsplats",
      "definition" : "bestallarearbetsplats",
      "comment" : "TKB-fält: `../bestallarearbetsplats` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
