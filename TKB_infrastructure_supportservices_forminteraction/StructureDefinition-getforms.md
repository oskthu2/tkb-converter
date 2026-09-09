# GetForms - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForms**

## Logical Model: GetForms 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetForms |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet GetForms (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2). Returnerar lista med formulär (summering, ej komplett formulär med frågor). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getforms.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getforms.csv), [Excel](StructureDefinition-getforms.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getforms",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms",
  "version" : "2.0.0",
  "name" : "GetForms",
  "title" : "GetForms",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet GetForms\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2).\nReturnerar lista med formulär (summering, ej komplett formulär med frågor).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getforms",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getforms",
      "path" : "getforms",
      "short" : "GetForms",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet GetForms\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2).\nReturnerar lista med formulär (summering, ej komplett formulär med frågor)."
    },
    {
      "id" : "getforms.form",
      "path" : "getforms.form",
      "short" : "Lista med formulär (FormType — summering)",
      "definition" : "Lista med formulär för invånaren. Tom lista = inga formulär hittades för angivna parametrar.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getforms.form.formId",
      "path" : "getforms.form.formId",
      "short" : "Formulärets unika ID (GUID)",
      "definition" : "Formulärets unika ID (GUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.subjectOfCare",
      "path" : "getforms.form.subjectOfCare",
      "short" : "Patientens personnummer",
      "definition" : "Patientens personnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.healthcareFacilityCareUnit",
      "path" : "getforms.form.healthcareFacilityCareUnit",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.healthcareFacilityCareUnitName",
      "path" : "getforms.form.healthcareFacilityCareUnitName",
      "short" : "Vårdenhetens namn",
      "definition" : "Vårdenhetens namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.formStatus",
      "path" : "getforms.form.formStatus",
      "short" : "Formulärets status",
      "definition" : "Formulärets status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/ValueSet/formstatus-vs"
      }
    },
    {
      "id" : "getforms.form.createdDateTime",
      "path" : "getforms.form.createdDateTime",
      "short" : "Datum när formuläret skapades",
      "definition" : "Datum när formuläret skapades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.lastSavedDate",
      "path" : "getforms.form.lastSavedDate",
      "short" : "Datum för senaste temporärsparning",
      "definition" : "Datum för senaste temporärsparning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.expireDate",
      "path" : "getforms.form.expireDate",
      "short" : "Formulärets giltighetstid",
      "definition" : "Formulärets giltighetstid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.formText",
      "path" : "getforms.form.formText",
      "short" : "Unik text för formuläret",
      "definition" : "Unik text för formuläret",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.formTemplate",
      "path" : "getforms.form.formTemplate",
      "short" : "Formulärmall kopplad till formuläret",
      "definition" : "Formulärmall kopplad till formuläret",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getforms.form.formTemplate.templateId",
      "path" : "getforms.form.formTemplate.templateId",
      "short" : "Mallens typ-id",
      "definition" : "Mallens typ-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.formTemplate.templateVersion",
      "path" : "getforms.form.formTemplate.templateVersion",
      "short" : "Mallens version",
      "definition" : "Mallens version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getforms.form.formTemplate.formName",
      "path" : "getforms.form.formTemplate.formName",
      "short" : "Mallens namn",
      "definition" : "Mallens namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
