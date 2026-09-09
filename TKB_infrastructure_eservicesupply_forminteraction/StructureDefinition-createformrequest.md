# CreateFormRequest - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateFormRequest**

## Logical Model: CreateFormRequest 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:CreateFormRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CreateFormRequest (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateFormRequest:2). Representerar responsens informationsstruktur — returnerar skapade formulärbegärans unika id:n. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-createformrequest.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest",
  "version" : "2.1",
  "name" : "CreateFormRequest",
  "title" : "CreateFormRequest",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CreateFormRequest\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateFormRequest:2).\nRepresenterar responsens informationsstruktur — returnerar skapade formulärbegärans unika id:n.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createformrequest",
      "path" : "createformrequest",
      "short" : "CreateFormRequest",
      "definition" : "Logisk modell för tjänstekontraktet CreateFormRequest\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateFormRequest:2).\nRepresenterar responsens informationsstruktur — returnerar skapade formulärbegärans unika id:n."
    },
    {
      "id" : "createformrequest.formRequestResponses",
      "path" : "createformrequest.formRequestResponses",
      "short" : "Formulärbegäranssvar (FormRequestResponseType)",
      "definition" : "Lista med svar per formulärbegäran.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createformrequest.formRequestResponses.clinicalProcessInterestId",
      "path" : "createformrequest.formRequestResponses.clinicalProcessInterestId",
      "short" : "Hälsoärende-id",
      "definition" : "Hälsoärende id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest.formRequestResponses.formId",
      "path" : "createformrequest.formRequestResponses.formId",
      "short" : "Formulär-id",
      "definition" : "Det skapade formulärets unika id, sätts av producenten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest.formRequestResponses.healthcare-Facility-CareUnit",
      "path" : "createformrequest.formRequestResponses.healthcare_Facility_CareUnit",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Hsa-id vårdenhet (informationsägare).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest.formRequestResponses.subjectOfCare",
      "path" : "createformrequest.formRequestResponses.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Personnummer patient/invånare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createformrequest.comment",
      "path" : "createformrequest.comment",
      "short" : "Kommentar",
      "definition" : "Attribut för felsignalering. Skall kunna visas för slutanvändaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.resultCode",
      "path" : "createformrequest.resultCode",
      "short" : "Resultatkod",
      "definition" : "Möjliga värden: OK, INFO, ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/resultcode-vs"
      }
    }]
  }
}

```
