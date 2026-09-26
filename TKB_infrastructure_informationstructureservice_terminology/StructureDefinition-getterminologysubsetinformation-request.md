# GetTerminologySubsetInformation — Request - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubsetInformation — Request**

## Logical Model: GetTerminologySubsetInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubsetinformation-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetTerminologySubsetInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetTerminologySubsetInformation (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-informationstructureservice-terminology|current/StructureDefinition/StructureDefinition-getterminologysubsetinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getterminologysubsetinformation-request.csv), [Excel](StructureDefinition-getterminologysubsetinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getterminologysubsetinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubsetinformation-request",
  "version" : "1.0.0",
  "name" : "GetTerminologySubsetInformationRequest",
  "title" : "GetTerminologySubsetInformation — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:32:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetTerminologySubsetInformation\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubsetinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getterminologysubsetinformation-request",
      "path" : "getterminologysubsetinformation-request",
      "short" : "GetTerminologySubsetInformation — Request",
      "definition" : "Logisk modell för begäran i GetTerminologySubsetInformation\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getterminologysubsetinformation-request.logicalAddress",
      "path" : "getterminologysubsetinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. HSA-id for the entity responsible for the subset",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubsetinformation-request.SubsetIdentity",
      "path" : "getterminologysubsetinformation-request.SubsetIdentity",
      "short" : "SubsetIdentity",
      "definition" : "Identifierare som representerar urvalet",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubsetinformation-request.LocalOrganizationExtensionId",
      "path" : "getterminologysubsetinformation-request.LocalOrganizationExtensionId",
      "short" : "LocalOrganizationExtensionId",
      "definition" : "Id för system eller organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubsetinformation-request.TermType",
      "path" : "getterminologysubsetinformation-request.TermType",
      "short" : "TermType",
      "definition" : "Type of term",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
