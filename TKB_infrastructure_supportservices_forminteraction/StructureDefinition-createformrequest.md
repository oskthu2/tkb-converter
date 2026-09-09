# CreateFormRequest - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateFormRequest**

## Logical Model: CreateFormRequest 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createformrequest | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:CreateFormRequestResponse |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet CreateFormRequest (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2). Bekräftar att formulärbegäran har registrerats. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-createformrequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createformrequest.csv), [Excel](StructureDefinition-createformrequest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createformrequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createformrequest",
  "version" : "2.0.0",
  "name" : "CreateFormRequestResponse",
  "title" : "CreateFormRequest",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet CreateFormRequest\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).\nBekräftar att formulärbegäran har registrerats.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createformrequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createformrequest",
      "path" : "createformrequest",
      "short" : "CreateFormRequest",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet CreateFormRequest\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).\nBekräftar att formulärbegäran har registrerats."
    },
    {
      "id" : "createformrequest.resultCode",
      "path" : "createformrequest.resultCode",
      "short" : "Svarskod (OK = formulärbegäran registrerad)",
      "definition" : "Svarskod (OK = formulärbegäran registrerad)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.comment",
      "path" : "createformrequest.comment",
      "short" : "Kommentar",
      "definition" : "Kommentar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formId",
      "path" : "createformrequest.formId",
      "short" : "Formulär-id (bekräftelse på det ID som skickades i begäran)",
      "definition" : "Formulär-id (bekräftelse på det ID som skickades i begäran)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
