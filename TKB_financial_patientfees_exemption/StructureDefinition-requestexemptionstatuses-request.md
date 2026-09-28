# RequestExemptionStatuses — Request - financial: patientfees: exemption v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RequestExemptionStatuses — Request**

## Logical Model: RequestExemptionStatuses — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/financial-patientfees-exemption/StructureDefinition/requestexemptionstatuses-request | *Version*:1.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:RequestExemptionStatusesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RequestExemptionStatuses (urn:riv:financial:patientfees:exemption:RequestExemptionStatusesResponder:1, RequestExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.financial-patientfees-exemption|current/StructureDefinition/StructureDefinition-requestexemptionstatuses-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-requestexemptionstatuses-request.csv), [Excel](StructureDefinition-requestexemptionstatuses-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "requestexemptionstatuses-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/financial-patientfees-exemption/StructureDefinition/requestexemptionstatuses-request",
  "version" : "1.0.0",
  "name" : "RequestExemptionStatusesRequest",
  "title" : "RequestExemptionStatuses — Request",
  "status" : "draft",
  "date" : "2026-09-28T08:58:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RequestExemptionStatuses\n(urn:riv:financial:patientfees:exemption:RequestExemptionStatusesResponder:1, RequestExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/financial-patientfees-exemption/StructureDefinition/requestexemptionstatuses-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "requestexemptionstatuses-request",
      "path" : "requestexemptionstatuses-request",
      "short" : "RequestExemptionStatuses — Request",
      "definition" : "Logisk modell för begäran i RequestExemptionStatuses\n(urn:riv:financial:patientfees:exemption:RequestExemptionStatusesResponder:1, RequestExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "requestexemptionstatuses-request.logicalAddress",
      "path" : "requestexemptionstatuses-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.requestId",
      "path" : "requestexemptionstatuses-request.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.requestId.root",
      "path" : "requestexemptionstatuses-request.requestId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.requestId.iiExtension",
      "path" : "requestexemptionstatuses-request.requestId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.patientId",
      "path" : "requestexemptionstatuses-request.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.patientId.root",
      "path" : "requestexemptionstatuses-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.patientId.iiExtension",
      "path" : "requestexemptionstatuses-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor",
      "path" : "requestexemptionstatuses-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor.actorTypeEnum",
      "path" : "requestexemptionstatuses-request.actor.actorTypeEnum",
      "short" : "actorTypeEnum",
      "definition" : "actorTypeEnum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/financial-patientfees-exemption/ValueSet/patientfees-exemption-actortype-vs"
      }
    },
    {
      "id" : "requestexemptionstatuses-request.actor.actorId",
      "path" : "requestexemptionstatuses-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor.actorId.root",
      "path" : "requestexemptionstatuses-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor.actorId.iiExtension",
      "path" : "requestexemptionstatuses-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor.careGiverId",
      "path" : "requestexemptionstatuses-request.actor.careGiverId",
      "short" : "careGiverId",
      "definition" : "careGiverId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor.careGiverId.root",
      "path" : "requestexemptionstatuses-request.actor.careGiverId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.actor.careGiverId.iiExtension",
      "path" : "requestexemptionstatuses-request.actor.careGiverId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "requestexemptionstatuses-request.responseLogicalAddress",
      "path" : "requestexemptionstatuses-request.responseLogicalAddress",
      "short" : "responseLogicalAddress",
      "definition" : "responseLogicalAddress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
