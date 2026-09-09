# SaveForm - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveForm**

## Logical Model: SaveForm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveform | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:SaveForm |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet SaveForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2). Bekräftar att formuläret har avslutats och fått status COMPLETED. Formulärmotorn skickar notifiering till engagemangsindex (categorization = FormComplete). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-saveform.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveform.csv), [Excel](StructureDefinition-saveform.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveform",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveform",
  "version" : "2.0.0",
  "name" : "SaveForm",
  "title" : "SaveForm",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet SaveForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).\nBekräftar att formuläret har avslutats och fått status COMPLETED.\nFormulärmotorn skickar notifiering till engagemangsindex (categorization = FormComplete).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveform",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveform",
      "path" : "saveform",
      "short" : "SaveForm",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet SaveForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).\nBekräftar att formuläret har avslutats och fått status COMPLETED.\nFormulärmotorn skickar notifiering till engagemangsindex (categorization = FormComplete)."
    },
    {
      "id" : "saveform.resultCode",
      "path" : "saveform.resultCode",
      "short" : "Svarskod (OK = formuläret har avslutats)",
      "definition" : "Svarskod (OK = formuläret har avslutats)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveform.comment",
      "path" : "saveform.comment",
      "short" : "Kommentar",
      "definition" : "Kommentar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveform.formId",
      "path" : "saveform.formId",
      "short" : "Formulärets unika ID (bekräftelse)",
      "definition" : "Formulärets unika ID (bekräftelse)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
