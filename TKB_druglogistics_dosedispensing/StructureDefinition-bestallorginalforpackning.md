# BestallOrginalforpackning — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BestallOrginalforpackning — Response**

## Logical Model: BestallOrginalforpackning — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/bestallorginalforpackning | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:BestallOrginalforpackning |
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
  "version" : "1.1.0",
  "name" : "BestallOrginalforpackning",
  "title" : "BestallOrginalforpackning — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
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
      "id" : "bestallorginalforpackning.meddelandetext",
      "path" : "bestallorginalforpackning.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader",
      "path" : "bestallorginalforpackning.Bestallningsrader",
      "short" : "Bestallningsrader",
      "definition" : "Bestallningsrader",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.bestallningsid",
      "path" : "bestallorginalforpackning.Bestallningsrader.bestallningsid",
      "short" : "bestallningsid",
      "definition" : "bestallningsid",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.personid",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "path" : "bestallorginalforpackning.Bestallningsrader.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
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
      "id" : "bestallorginalforpackning.Bestallningsrader.statustidpunkt",
      "path" : "bestallorginalforpackning.Bestallningsrader.statustidpunkt",
      "short" : "statustidpunkt",
      "definition" : "statustidpunkt",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
