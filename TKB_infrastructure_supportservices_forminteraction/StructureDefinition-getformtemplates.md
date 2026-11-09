# GetFormTemplates - infrastructure: supportservices: forminteraction v2.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormTemplates**

## Logical Model: GetFormTemplates 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplates | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetFormTemplates |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet GetFormTemplates (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2). Returnerar lista med tillgängliga formulärmallar. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getformtemplates.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformtemplates.csv), [Excel](StructureDefinition-getformtemplates.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformtemplates",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplates",
  "version" : "2.0",
  "name" : "GetFormTemplates",
  "title" : "GetFormTemplates",
  "status" : "draft",
  "date" : "2026-11-09T03:41:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet GetFormTemplates\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2).\nReturnerar lista med tillgängliga formulärmallar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplates",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformtemplates",
      "path" : "getformtemplates",
      "short" : "GetFormTemplates",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet GetFormTemplates\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2).\nReturnerar lista med tillgängliga formulärmallar."
    },
    {
      "id" : "getformtemplates.formTemplates",
      "path" : "getformtemplates.formTemplates",
      "short" : "FormTemplateInfoType",
      "definition" : "formTemplates",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.anonymousForm",
      "path" : "getformtemplates.formTemplates.anonymousForm",
      "short" : "anonymousForm",
      "definition" : "Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. Värden True = Tillåter anonym användning. \"SubjectOfCare\" får inte användas. False = Tillåter inte anonym användning. \"SubjectOfCare\" är obligatorisk attribut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.category",
      "path" : "getformtemplates.formTemplates.category",
      "short" : "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration",
      "definition" : "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.code",
      "path" : "getformtemplates.formTemplates.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.code.codeValue",
      "path" : "getformtemplates.formTemplates.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.code.codeSystem",
      "path" : "getformtemplates.formTemplates.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.description",
      "path" : "getformtemplates.formTemplates.description",
      "short" : "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen.",
      "definition" : "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.formCompleteText",
      "path" : "getformtemplates.formTemplates.formCompleteText",
      "short" : "formCompleteText",
      "definition" : "formCompleteText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.formName",
      "path" : "getformtemplates.formTemplates.formName",
      "short" : "Mallens namn. T.ex. Hälsodeklaration Mödravård",
      "definition" : "Mallens namn. T.ex. Hälsodeklaration Mödravård",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.formTitle",
      "path" : "getformtemplates.formTemplates.formTitle",
      "short" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "definition" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.language",
      "path" : "getformtemplates.formTemplates.language",
      "short" : "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005.",
      "definition" : "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.media",
      "path" : "getformtemplates.formTemplates.media",
      "short" : "MediaType",
      "definition" : "media",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.media.mediaURL",
      "path" : "getformtemplates.formTemplates.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.media.mediaType",
      "path" : "getformtemplates.formTemplates.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.maxNumberOfQuestion",
      "path" : "getformtemplates.formTemplates.maxNumberOfQuestion",
      "short" : "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10",
      "definition" : "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.minNumberOfQuestion",
      "path" : "getformtemplates.formTemplates.minNumberOfQuestion",
      "short" : "minNumberOfQuestion",
      "definition" : "minNumberOfQuestion",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.maxNumberOfPages",
      "path" : "getformtemplates.formTemplates.maxNumberOfPages",
      "short" : "maxNumberOfPages",
      "definition" : "maxNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.minNumberOfPages",
      "path" : "getformtemplates.formTemplates.minNumberOfPages",
      "short" : "minNumberOfPages",
      "definition" : "minNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.mandatory",
      "path" : "getformtemplates.formTemplates.mandatory",
      "short" : "mandatory",
      "definition" : "Indikerar om formuläret är obligatoriskt att fylla i av användaren. T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. True = obligatoriskt False = Frivilligt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.publishStatus",
      "path" : "getformtemplates.formTemplates.publishStatus",
      "short" : "publishStatus",
      "definition" : "publishStatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.templateVersion",
      "path" : "getformtemplates.formTemplates.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.templateId",
      "path" : "getformtemplates.formTemplates.templateId",
      "short" : "Typ av formulär. Kodverk för standardiserade id för formulärtyper. T.ex. Mödrahälsovårdsjournal 1 - MHV1. Kodverk!",
      "definition" : "Typ av formulär. Kodverk för standardiserade id för formulärtyper. T.ex. Mödrahälsovårdsjournal 1 - MHV1. Kodverk!",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates.formTemplates.term",
      "path" : "getformtemplates.formTemplates.term",
      "short" : "term",
      "definition" : "Villkor kopplade till formuläret. T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
