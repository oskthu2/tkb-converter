# ReceiveEhrExtractStatus — Request - ehr: patientsummary v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReceiveEhrExtractStatus — Request**

## Logical Model: ReceiveEhrExtractStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/receiveehrextractstatus-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ReceiveEhrExtractStatusRequest |
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
  "version" : "1.0",
  "name" : "ReceiveEhrExtractStatusRequest",
  "title" : "ReceiveEhrExtractStatus — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:31:00+00:00",
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
      "id" : "receiveehrextractstatus-request.parameters",
      "path" : "receiveehrextractstatus-request.parameters",
      "short" : "ParameterType",
      "definition" : "Transaktions-id: detta är samma värde som användes i anropet till tjänsten ReceiveEhrExtract. Med hjälp av detta värde går det koppla samman statusanropet med ett tidigare anrop till tjänsten ReceiveEhrExtract.",
      "comment" : "TKB-fält: `parameters` (`ParameterType`, kardinalitet 1..1).\n\nObs: modellen anger 0..* där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters.code",
      "path" : "receiveehrextractstatus-request.parameters.code",
      "short" : "code",
      "definition" : "code",
      "comment" : "TKB-fält: `../code` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters.name",
      "path" : "receiveehrextractstatus-request.parameters.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../name` (`ST`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.parameters.value",
      "path" : "receiveehrextractstatus-request.parameters.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../value` (`ST`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail",
      "path" : "receiveehrextractstatus-request.response_detail",
      "short" : "ResponseDetailType",
      "definition" : "Fel-, varnings- och/eller informationsmeddelanden.",
      "comment" : "TKB-fält: `response_detail` (`ResponseDetailType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail.code",
      "path" : "receiveehrextractstatus-request.response_detail.code",
      "short" : "code",
      "definition" : "code",
      "comment" : "TKB-fält: `../code` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "receiveehrextractstatus-request.response-detail.text",
      "path" : "receiveehrextractstatus-request.response_detail.text",
      "short" : "text",
      "definition" : "text",
      "comment" : "TKB-fält: `../text` (`ST`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../type_code` (`ResponseDetailTypeCodes`, kardinalitet 0..1).\n\n**Modellanteckning:** type_code (XML-attribut) Tillåtna värden: E, W, I.",
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
