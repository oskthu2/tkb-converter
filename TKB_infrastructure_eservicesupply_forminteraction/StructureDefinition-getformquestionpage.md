# GetFormQuestionPage - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormQuestionPage**

## Logical Model: GetFormQuestionPage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormQuestionPage |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetFormQuestionPage (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2). Representerar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getformquestionpage.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformquestionpage.csv), [Excel](StructureDefinition-getformquestionpage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformquestionpage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage",
  "version" : "2.1",
  "name" : "GetFormQuestionPage",
  "title" : "GetFormQuestionPage",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2).\nRepresenterar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformquestionpage",
      "path" : "getformquestionpage",
      "short" : "GetFormQuestionPage",
      "definition" : "Logisk modell för tjänstekontraktet GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2).\nRepresenterar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering."
    },
    {
      "id" : "getformquestionpage.form",
      "path" : "getformquestionpage.form",
      "short" : "Formulär (FormType)",
      "definition" : "Formuläret med den begärda sidan.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.formID",
      "path" : "getformquestionpage.form.formID",
      "short" : "Formulär-id",
      "definition" : "Formulärets unika ID (GUID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformquestionpage.form.formStatus",
      "path" : "getformquestionpage.form.formStatus",
      "short" : "Formulärstatus",
      "definition" : "Formulärets status.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/formstatus-vs"
      }
    },
    {
      "id" : "getformquestionpage.form.currentPage",
      "path" : "getformquestionpage.form.currentPage",
      "short" : "Begärd sida (PageType)",
      "definition" : "Den begärda sidan i formuläret.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.pageNumber",
      "path" : "getformquestionpage.form.currentPage.pageNumber",
      "short" : "Sidnummer",
      "definition" : "Sidans nummer i formuläret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.lastPage",
      "path" : "getformquestionpage.form.currentPage.lastPage",
      "short" : "Sista sidan",
      "definition" : "Indikerar om detta är den sista sidan.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
