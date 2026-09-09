# GetForms - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForms**

## Logical Model: GetForms 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getforms | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetForms |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetForms (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2). Representerar responsens informationsstruktur — returnerar lista med pågående/avslutade formulär. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getforms.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getforms",
  "version" : "2.1",
  "name" : "GetForms",
  "title" : "GetForms",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetForms\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2).\nRepresenterar responsens informationsstruktur — returnerar lista med pågående/avslutade formulär.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getforms",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getforms",
      "path" : "getforms",
      "short" : "GetForms",
      "definition" : "Logisk modell för tjänstekontraktet GetForms\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2).\nRepresenterar responsens informationsstruktur — returnerar lista med pågående/avslutade formulär."
    },
    {
      "id" : "getforms.form",
      "path" : "getforms.form",
      "short" : "Formulär",
      "definition" : "Lista med formulär som matchar sökkriterierna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getforms.form.healthcare-facility-CareUnit",
      "path" : "getforms.form.healthcare_facility_CareUnit",
      "short" : "Enhets-id vårdenhet",
      "definition" : "Vårdenheten som tillhandahåller formuläret. HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getforms.form.clinicalProcessInterestId",
      "path" : "getforms.form.clinicalProcessInterestId",
      "short" : "Hälsoärende-id",
      "definition" : "Globalt/nationellt hälsoärende ID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getforms.form.formStatus",
      "path" : "getforms.form.formStatus",
      "short" : "Formulärstatus",
      "definition" : "Formulärets status: ONGOING, PENDING_COMPLETION eller COMPLETED.",
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
      "id" : "getforms.form.formID",
      "path" : "getforms.form.formID",
      "short" : "Formulär-id",
      "definition" : "Formulärets unika ID (GUID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getforms.form.subjectOfCare",
      "path" : "getforms.form.subjectOfCare",
      "short" : "Patient-id",
      "definition" : "Patienten formuläret avser. Personnummer format yyyymmddnnnn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getforms.form.formTemplate",
      "path" : "getforms.form.formTemplate",
      "short" : "Formulärmall",
      "definition" : "Referens till formulärmallen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getforms.form.formTemplate.templateId",
      "path" : "getforms.form.formTemplate.templateId",
      "short" : "Mall-id",
      "definition" : "Typ av formulär.",
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
      "definition" : "Versionsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getforms.form.createdDateTime",
      "path" : "getforms.form.createdDateTime",
      "short" : "Skapandedatum",
      "definition" : "Datum när formuläret skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getforms.form.lastSavedDate",
      "path" : "getforms.form.lastSavedDate",
      "short" : "Senaste sparningsdatum",
      "definition" : "Datum för senaste temporärsparning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
