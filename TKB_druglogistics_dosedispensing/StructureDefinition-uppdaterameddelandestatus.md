# UppdateraMeddelandeStatus — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UppdateraMeddelandeStatus — Response**

## Logical Model: UppdateraMeddelandeStatus — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdaterameddelandestatus | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:UppdateraMeddelandeStatus |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UppdateraMeddelandeStatus (urn:riv:druglogistics:dosedispensing:UppdateraMeddelandeStatusResponder:1, UppdateraMeddelandeStatusResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-uppdaterameddelandestatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uppdaterameddelandestatus.csv), [Excel](StructureDefinition-uppdaterameddelandestatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uppdaterameddelandestatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdaterameddelandestatus",
  "version" : "1.1.0",
  "name" : "UppdateraMeddelandeStatus",
  "title" : "UppdateraMeddelandeStatus — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UppdateraMeddelandeStatus\n(urn:riv:druglogistics:dosedispensing:UppdateraMeddelandeStatusResponder:1, UppdateraMeddelandeStatusResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdaterameddelandestatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "uppdaterameddelandestatus",
      "path" : "uppdaterameddelandestatus",
      "short" : "UppdateraMeddelandeStatus — Response",
      "definition" : "Logisk modell för svaret i UppdateraMeddelandeStatus\n(urn:riv:druglogistics:dosedispensing:UppdateraMeddelandeStatusResponder:1, UppdateraMeddelandeStatusResponseType)."
    },
    {
      "id" : "uppdaterameddelandestatus.resultatkod",
      "path" : "uppdaterameddelandestatus.resultatkod",
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
      "id" : "uppdaterameddelandestatus.meddelandetext",
      "path" : "uppdaterameddelandestatus.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdaterameddelandestatus.meddelandeid",
      "path" : "uppdaterameddelandestatus.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdaterameddelandestatus.Meddelandeninfo",
      "path" : "uppdaterameddelandestatus.Meddelandeninfo",
      "short" : "Meddelandeninfo",
      "definition" : "Meddelandeninfo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdaterameddelandestatus.Meddelandeninfo.meddelandeid",
      "path" : "uppdaterameddelandestatus.Meddelandeninfo.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdaterameddelandestatus.Meddelandeninfo.meddelandestatus",
      "path" : "uppdaterameddelandestatus.Meddelandeninfo.meddelandestatus",
      "short" : "meddelandestatus",
      "definition" : "meddelandestatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-meddelandestatus-vs"
      }
    },
    {
      "id" : "uppdaterameddelandestatus.Meddelandeninfo.statustidpunkt",
      "path" : "uppdaterameddelandestatus.Meddelandeninfo.statustidpunkt",
      "short" : "statustidpunkt",
      "definition" : "statustidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
