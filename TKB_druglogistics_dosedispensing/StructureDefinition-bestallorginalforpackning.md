# BestallOrginalforpackning — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BestallOrginalforpackning — Response**

## Logical Model: BestallOrginalforpackning — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:BestallOrginalforpackning |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i BestallOrginalforpackning (urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-bestallorginalforpackning.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bestallorginalforpackning.csv), [Excel](StructureDefinition-bestallorginalforpackning.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bestallorginalforpackning",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning",
  "version" : "1.0",
  "name" : "BestallOrginalforpackning",
  "title" : "BestallOrginalforpackning — Response",
  "status" : "active",
  "date" : "2026-11-09T03:27:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i BestallOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "bestallorginalforpackning",
      "path" : "bestallorginalforpackning",
      "short" : "BestallOrginalforpackning — Response",
      "definition" : "Logisk modell för svaret i BestallOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningResponseType)."
    },
    {
      "id" : "bestallorginalforpackning.resultatkod",
      "path" : "bestallorginalforpackning.resultatkod",
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
      "id" : "bestallorginalforpackning.meddelandetext",
      "path" : "bestallorginalforpackning.meddelandetext",
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
      "id" : "bestallorginalforpackning.meddelandeid",
      "path" : "bestallorginalforpackning.meddelandeid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader",
      "path" : "bestallorginalforpackning.Bestallningsrader",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningsid",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningsid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.radid",
      "path" : "bestallorginalforpackning.Bestallningsrader.radid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.identitetstyp",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.identitetstyp",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.personid",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.personid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.NPLpackid",
      "path" : "bestallorginalforpackning.Bestallningsrader.NPLpackid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.varunummer",
      "path" : "bestallorginalforpackning.Bestallningsrader.varunummer",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.receptid",
      "path" : "bestallorginalforpackning.Bestallningsrader.receptid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.ordinationsid",
      "path" : "bestallorginalforpackning.Bestallningsrader.ordinationsid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.dosunderlagsversion",
      "path" : "bestallorginalforpackning.Bestallningsrader.dosunderlagsversion",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningsresultat",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningsresultat",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningsresultattext",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningsresultattext",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningsstatus",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningsstatus",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.statustidpunkt",
      "path" : "bestallorginalforpackning.Bestallningsrader.statustidpunkt",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningstatustext",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningstatustext",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.meddelandefranapotek",
      "path" : "bestallorginalforpackning.Bestallningsrader.meddelandefranapotek",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.onskadleveranstid",
      "path" : "bestallorginalforpackning.Bestallningsrader.onskadleveranstid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.planeradleveranstid",
      "path" : "bestallorginalforpackning.Bestallningsrader.planeradleveranstid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.dosmottagareid",
      "path" : "bestallorginalforpackning.Bestallningsrader.dosmottagareid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.dosmottagarenamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.dosmottagarenamn",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningstid",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningstid",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallarefornamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallarefornamn",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallareefternamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallareefternamn",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallarearbetsplats",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallarearbetsplats",
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
