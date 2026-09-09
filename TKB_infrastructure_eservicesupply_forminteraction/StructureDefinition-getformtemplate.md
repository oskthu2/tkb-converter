# GetFormTemplate - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormTemplate**

## Logical Model: GetFormTemplate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormTemplate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetFormTemplate (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplate:2). Representerar responsens informationsstruktur — returnerar en eller flera formulärmallar. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getformtemplate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformtemplate.csv), [Excel](StructureDefinition-getformtemplate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformtemplate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate",
  "version" : "2.1",
  "name" : "GetFormTemplate",
  "title" : "GetFormTemplate",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetFormTemplate\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplate:2).\nRepresenterar responsens informationsstruktur — returnerar en eller flera formulärmallar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformtemplate",
      "path" : "getformtemplate",
      "short" : "GetFormTemplate",
      "definition" : "Logisk modell för tjänstekontraktet GetFormTemplate\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplate:2).\nRepresenterar responsens informationsstruktur — returnerar en eller flera formulärmallar."
    },
    {
      "id" : "getformtemplate.formTemplates",
      "path" : "getformtemplate.formTemplates",
      "short" : "Formulärmallar (FormTemplateType)",
      "definition" : "De hämtade formulärmallarna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.templateId",
      "path" : "getformtemplate.formTemplates.templateId",
      "short" : "Mall-id",
      "definition" : "Typ av formulär. Kodverk för standardiserade id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.templateVersion",
      "path" : "getformtemplate.formTemplates.templateVersion",
      "short" : "Mallens version",
      "definition" : "Versionsnummer för formulärmallen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.healthcare-facility-CareUnit",
      "path" : "getformtemplate.formTemplates.healthcare_facility_CareUnit",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Ägare till formulärmallen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.anonymousForm",
      "path" : "getformtemplate.formTemplates.anonymousForm",
      "short" : "Anonym formulär",
      "definition" : "Styr huruvida formulärmotorn stöder anonym användning av formuläret.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.category",
      "path" : "getformtemplate.formTemplates.category",
      "short" : "Formulärkategori",
      "definition" : "Formulärets kategori.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/formcategory-vs"
      }
    },
    {
      "id" : "getformtemplate.formTemplates.publishStatus",
      "path" : "getformtemplate.formTemplates.publishStatus",
      "short" : "Publiceringsstatus",
      "definition" : "Mallens publiceringsstatus.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/publishstatus-vs"
      }
    },
    {
      "id" : "getformtemplate.formTemplates.mandatory",
      "path" : "getformtemplate.formTemplates.mandatory",
      "short" : "Obligatorisk",
      "definition" : "Indikerar om formuläret är obligatoriskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.formLanguage",
      "path" : "getformtemplate.formTemplates.formLanguage",
      "short" : "Språk",
      "definition" : "Formulärets språk, t.ex. swe eller eng.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplate.formTemplates.formCompleteText",
      "path" : "getformtemplate.formTemplates.formCompleteText",
      "short" : "Avslutningstext",
      "definition" : "Text som visas när formuläret är besvarat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
