# CreateFormRequest - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateFormRequest**

## Logical Model: CreateFormRequest 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/createformrequest | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:CreateFormRequest |
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
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
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
      "id" : "createformrequest.formRequests",
      "path" : "createformrequest.formRequests",
      "short" : "FormRequestType",
      "definition" : "formRequests",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "createformrequest.formRequests.clinicalProcessInterestId",
      "path" : "createformrequest.formRequests.clinicalProcessInterestId",
      "short" : "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID.",
      "definition" : "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.expireDate",
      "path" : "createformrequest.formRequests.expireDate",
      "short" : "expireDate",
      "definition" : "expireDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.formText",
      "path" : "createformrequest.formRequests.formText",
      "short" : "formText",
      "definition" : "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.healthcare-CareGiver",
      "path" : "createformrequest.formRequests.healthcare_CareGiver",
      "short" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting.",
      "definition" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.healthcare-facility-CareUnit",
      "path" : "createformrequest.formRequests.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.healthcare-MedUnit",
      "path" : "createformrequest.formRequests.healthcare_MedUnit",
      "short" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "definition" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.healthcare-systemID",
      "path" : "createformrequest.formRequests.healthcare_systemID",
      "short" : "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "definition" : "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.keepUntil",
      "path" : "createformrequest.formRequests.keepUntil",
      "short" : "keepUntil",
      "definition" : "keepUntil",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.subjectOfCare",
      "path" : "createformrequest.formRequests.subjectOfCare",
      "short" : "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "definition" : "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.templateId",
      "path" : "createformrequest.formRequests.templateId",
      "short" : "Typ av formulär. Kodverk för standardiserade id för formulärtyper.",
      "definition" : "Typ av formulär. Kodverk för standardiserade id för formulärtyper.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createformrequest.formRequests.templateVersion",
      "path" : "createformrequest.formRequests.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
