# CreateForm - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateForm**

## Logical Model: CreateForm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:CreateForm |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CreateForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateForm:2). Representerar responsens informationsstruktur — returnerar ett skapat och initierat formulär. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-createform.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createform.csv), [Excel](StructureDefinition-createform.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createform",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform",
  "version" : "2.1",
  "name" : "CreateForm",
  "title" : "CreateForm",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CreateForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateForm:2).\nRepresenterar responsens informationsstruktur — returnerar ett skapat och initierat formulär.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createform",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createform",
      "path" : "createform",
      "short" : "CreateForm",
      "definition" : "Logisk modell för tjänstekontraktet CreateForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateForm:2).\nRepresenterar responsens informationsstruktur — returnerar ett skapat och initierat formulär."
    },
    {
      "id" : "createform.form",
      "path" : "createform.form",
      "short" : "Formulär (FormType)",
      "definition" : "Skapat formulär med grundläggande information och egenskaper.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createform.form.healthcare-CareGiver",
      "path" : "createform.form.healthcare_CareGiver",
      "short" : "Enhets-id vårdgivare",
      "definition" : "Ansvarig vårdgivare (huvudman). HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.healthcare-MedUnit",
      "path" : "createform.form.healthcare_MedUnit",
      "short" : "Enhets-id medicinskt ansvarig",
      "definition" : "Medicinsk ansvarig klinik/vårdcentral. HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.healthcare-facility-CareUnit",
      "path" : "createform.form.healthcare_facility_CareUnit",
      "short" : "Enhets-id vårdenhet",
      "definition" : "Vårdenheten som tillhandahåller formuläret. HSA-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.healthcare-facility-CareUnitName",
      "path" : "createform.form.healthcare_facility_CareUnitName",
      "short" : "Enhetsnamn",
      "definition" : "Vårdenhetens namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform.form.healthcare-systemID",
      "path" : "createform.form.healthcare_systemID",
      "short" : "System-id",
      "definition" : "Id för att identifiera mottagande system. HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.clinicalProcessInterestId",
      "path" : "createform.form.clinicalProcessInterestId",
      "short" : "Hälsoärende-id",
      "definition" : "Globalt/nationellt hälsoärende ID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.formStatus",
      "path" : "createform.form.formStatus",
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
      "id" : "createform.form.formText",
      "path" : "createform.form.formText",
      "short" : "Formulärtext",
      "definition" : "Unik text för formuläret, t.ex. 'Hälsoundersökning inför besök X'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform.form.formID",
      "path" : "createform.form.formID",
      "short" : "Formulär-id",
      "definition" : "Formulärets unika ID (GUID). Sätts av formulärmotorn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.subjectOfCare",
      "path" : "createform.form.subjectOfCare",
      "short" : "Patient-id",
      "definition" : "Patienten formuläret avser. Personnummer format yyyymmddnnnn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createform.form.expireDate",
      "path" : "createform.form.expireDate",
      "short" : "Giltighetsdatum",
      "definition" : "Formulärets giltighetstid. Datum (ÅÅÅÅMMDD).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "createform.form.createdDateTime",
      "path" : "createform.form.createdDateTime",
      "short" : "Skapandedatum",
      "definition" : "Datum när användaren/patienten skapade formuläret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "createform.form.lastSavedDate",
      "path" : "createform.form.lastSavedDate",
      "short" : "Senaste sparningsdatum",
      "definition" : "Datum för senaste temporärsparning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "createform.form.keepUntil",
      "path" : "createform.form.keepUntil",
      "short" : "Bevaras till",
      "definition" : "Datum för hur länge formuläret skall lagras. Tomt indikerar tillsvidare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "createform.form.formTemplate",
      "path" : "createform.form.formTemplate",
      "short" : "Formulärmall",
      "definition" : "Koppling till formulärmallen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createform.form.formTemplate.templateId",
      "path" : "createform.form.formTemplate.templateId",
      "short" : "Mall-id",
      "definition" : "Typ av formulär.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform.form.formTemplate.templateVersion",
      "path" : "createform.form.formTemplate.templateVersion",
      "short" : "Mallens version",
      "definition" : "Versionsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
