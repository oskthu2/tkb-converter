# UppdateraVardtagareinformation — Response - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UppdateraVardtagareinformation — Response**

## Logical Model: UppdateraVardtagareinformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdateravardtagareinformation | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:UppdateraVardtagareinformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UppdateraVardtagareinformation (urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-uppdateravardtagareinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uppdateravardtagareinformation.csv), [Excel](StructureDefinition-uppdateravardtagareinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uppdateravardtagareinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdateravardtagareinformation",
  "version" : "1.1.0",
  "name" : "UppdateraVardtagareinformation",
  "title" : "UppdateraVardtagareinformation — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UppdateraVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/uppdateravardtagareinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "uppdateravardtagareinformation",
      "path" : "uppdateravardtagareinformation",
      "short" : "UppdateraVardtagareinformation — Response",
      "definition" : "Logisk modell för svaret i UppdateraVardtagareinformation\n(urn:riv:druglogistics:dosedispensing:UppdateraVardtagareinformationResponder:1, UppdateraVardtagareinformationResponseType)."
    },
    {
      "id" : "uppdateravardtagareinformation.resultatkod",
      "path" : "uppdateravardtagareinformation.resultatkod",
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
      "id" : "uppdateravardtagareinformation.meddelandetext",
      "path" : "uppdateravardtagareinformation.meddelandetext",
      "short" : "meddelandetext",
      "definition" : "meddelandetext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.meddelandeid",
      "path" : "uppdateravardtagareinformation.meddelandeid",
      "short" : "meddelandeid",
      "definition" : "meddelandeid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation",
      "path" : "uppdateravardtagareinformation.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation.fornamn",
      "path" : "uppdateravardtagareinformation.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation.mellannamn",
      "path" : "uppdateravardtagareinformation.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation.efternamn",
      "path" : "uppdateravardtagareinformation.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation.identitetstyp",
      "path" : "uppdateravardtagareinformation.Patientinformation.identitetstyp",
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
      "id" : "uppdateravardtagareinformation.Patientinformation.personid",
      "path" : "uppdateravardtagareinformation.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation.lanskod",
      "path" : "uppdateravardtagareinformation.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateravardtagareinformation.Patientinformation.kommunkod",
      "path" : "uppdateravardtagareinformation.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
