# SaveFormTemplate - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormTemplate**

## Logical Model: SaveFormTemplate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveformtemplate | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:SaveFormTemplate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet SaveFormTemplate (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2). Bekräftar att formulärmallen har sparats. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-saveformtemplate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveformtemplate.csv), [Excel](StructureDefinition-saveformtemplate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveformtemplate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveformtemplate",
  "version" : "2.0.0",
  "name" : "SaveFormTemplate",
  "title" : "SaveFormTemplate",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet SaveFormTemplate\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2).\nBekräftar att formulärmallen har sparats.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveformtemplate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformtemplate",
      "path" : "saveformtemplate",
      "short" : "SaveFormTemplate",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet SaveFormTemplate\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2).\nBekräftar att formulärmallen har sparats."
    },
    {
      "id" : "saveformtemplate.resultCode",
      "path" : "saveformtemplate.resultCode",
      "short" : "Svarskod (OK = mallen har sparats)",
      "definition" : "Svarskod (OK = mallen har sparats)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate.comment",
      "path" : "saveformtemplate.comment",
      "short" : "Kommentar",
      "definition" : "Kommentar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate.formTemplates",
      "path" : "saveformtemplate.formTemplates",
      "short" : "Sparade mallar (bekräftelse, FormTemplateType)",
      "definition" : "ASSUME: TKB anger Response: FormTemplates [0..*] FormTemplateType — oklart om detta är\nen lista med alla mallar eller bara den sparade mallen. Antagande: det är en bekräftelse.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveformtemplate.formTemplates.templateId",
      "path" : "saveformtemplate.formTemplates.templateId",
      "short" : "Mallens typ-id",
      "definition" : "Mallens typ-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate.formTemplates.templateVersion",
      "path" : "saveformtemplate.formTemplates.templateVersion",
      "short" : "Mallens version",
      "definition" : "Mallens version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
