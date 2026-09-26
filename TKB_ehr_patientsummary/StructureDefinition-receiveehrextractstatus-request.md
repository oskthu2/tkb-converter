# ReceiveEhrExtractStatus — Request - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReceiveEhrExtractStatus — Request**

## Logical Model: ReceiveEhrExtractStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/receiveehrextractstatus-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:ReceiveEhrExtractStatusRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ReceiveEhrExtractStatus (urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientsummary|current/StructureDefinition/StructureDefinition-receiveehrextractstatus-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-receiveehrextractstatus-request.csv), [Excel](StructureDefinition-receiveehrextractstatus-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "receiveehrextractstatus-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/receiveehrextractstatus-request",
  "version" : "1.0.0",
  "name" : "ReceiveEhrExtractStatusRequest",
  "title" : "ReceiveEhrExtractStatus — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:25:56+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ReceiveEhrExtractStatus\n(urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/receiveehrextractstatus-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "receiveehrextractstatus-request",
      "path" : "receiveehrextractstatus-request",
      "short" : "ReceiveEhrExtractStatus — Request",
      "definition" : "Logisk modell för begäran i ReceiveEhrExtractStatus\n(urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "receiveehrextractstatus-request.logicalAddress",
      "path" : "receiveehrextractstatus-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. the HSA-id of the service producer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters",
      "path" : "receiveehrextractstatus-request.parameters",
      "short" : "parameters",
      "definition" : "parameters",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters.parameterCode",
      "path" : "receiveehrextractstatus-request.parameters.parameterCode",
      "short" : "parameterCode",
      "definition" : "parameterCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters.parameterName",
      "path" : "receiveehrextractstatus-request.parameters.parameterName",
      "short" : "parameterName",
      "definition" : "parameterName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters.parameterValue",
      "path" : "receiveehrextractstatus-request.parameters.parameterValue",
      "short" : "parameterValue",
      "definition" : "parameterValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail",
      "path" : "receiveehrextractstatus-request.response_detail",
      "short" : "response_detail",
      "definition" : "response_detail",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail.responseDetailCode",
      "path" : "receiveehrextractstatus-request.response_detail.responseDetailCode",
      "short" : "responseDetailCode",
      "definition" : "responseDetailCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail.responseDetailText",
      "path" : "receiveehrextractstatus-request.response_detail.responseDetailText",
      "short" : "responseDetailText",
      "definition" : "responseDetailText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail.type-code",
      "path" : "receiveehrextractstatus-request.response_detail.type_code",
      "short" : "type_code",
      "definition" : "(XML-attribut.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientsummary/ValueSet/patientsummary-responsedetailtypecodes-vs"
      }
    }]
  }
}

```
