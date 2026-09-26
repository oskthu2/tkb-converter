# HamtaOrginalforpackning — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaOrginalforpackning — Response**

## Logical Model: HamtaOrginalforpackning — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/hamtaorginalforpackning | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaOrginalforpackning |
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
  "version" : "1.1.0",
  "name" : "HamtaOrginalforpackning",
  "title" : "HamtaOrginalforpackning — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
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
      "definition" : "resultatkod",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader",
      "path" : "hamtaorginalforpackning.Bestallningsrader",
      "short" : "Bestallningsrader",
      "definition" : "Bestallningsrader",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.bestallningsid",
      "path" : "hamtaorginalforpackning.Bestallningsrader.bestallningsid",
      "short" : "bestallningsid",
      "definition" : "bestallningsid",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
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
      "definition" : "identitetstyp",
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
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "path" : "hamtaorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
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
      "definition" : "bestallningsstatus",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
